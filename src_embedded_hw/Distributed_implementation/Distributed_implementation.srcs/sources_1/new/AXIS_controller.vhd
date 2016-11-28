library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.utility.all;

entity AXIS_controller is
    generic (
        nb_features:            natural;
        nb_hidden_nodes:        natural;
        nb_output_nodes:        natural;
        examples_block_size:    natural;
        axis_data_width:        natural;
        nb_examples_max:        natural );
	port (
        clk :                   in std_logic;
        AXIS_in :               in AXIS_in_t;
        AXIS_out :              out AXIS_out_t;
--        nb_examples :           in natural range 0 to (nb_examples_max - 1);
--        session :               in session_t; -- maybe store locally in the module...
        
        feature_ram:            out signed(11 downto 0);
        feature_write_req:      out std_logic;
        feature_addr:           out natural range 0 to (nb_features*examples_block_size - 1);
        
        weight1_ram:            out signed(11 downto 0);
        weight1_write_req:      out std_logic;
        weight1_addr:           out natural range 0 to ((nb_features+1)*nb_hidden_nodes);
        
        weight2_ram:            out signed(11 downto 0);
        weight2_write_req:      out std_logic;
        weight2_addr:           out natural range 0 to ((nb_hidden_nodes+1)*nb_output_nodes);
        
        label_ram:              out unsigned(3 downto 0);
        label_write_req:        out std_logic;
        label_addr:             out natural range 0 to (nb_features*examples_block_size - 1);
        
        results_ram:            in signed(11 downto 0);
        results_read_req:       out std_logic;
        results_addr:           out natural range 0 to (nb_examples_max - 1);
        
        pred_ram:               in unsigned(3 downto 0);
        pred_read_req:          out std_logic;
        pred_addr:              out natural range 0 to (nb_examples_max - 1);
        
        cost:                   in unsigned(15 downto 0);
        
        axis_command:           in axis_command_t;
		opcode:                 out std_logic_vector(31 downto 0);
		task_done:              out std_logic;
		read_write_last:        in std_logic ); -- tells if we reading or writing the last block of data (features, labels...)

    attribute SIGIS : string; 
    attribute SIGIS of clk : signal is "Clk"; 
end AXIS_controller;

architecture version1 of AXIS_controller is

    attribute mark_debug : string;
    attribute keep : string;
    
    signal nb_examples, nb_examples_new :  natural range 0 to (nb_examples_max - 1);

    signal ARESETN : std_logic;
    signal S_AXIS_TLAST, S_AXIS_TVALID, M_AXIS_TREADY : std_logic;
    signal M_AXIS_TLAST, M_AXIS_TVALID, S_AXIS_TREADY : std_logic;
    signal S_AXIS_TDATA, M_AXIS_TDATA : std_logic_vector((axis_data_width-1) downto 0);

    constant features_per_transfer : natural := axis_data_width / 8;
    constant transfers_per_example : natural := ceil_div((nb_features + 1), features_per_transfer);
    constant results_per_transfer : natural := axis_data_width / 12; -- to be later changed to 3, make sure it is a power of two...
    constant predictions_per_transfer : natural := axis_data_width / 4;

    type state_t is (Idle, Read_Opcode, Read_Weights1, Read_Weights2, Read_Data, Write_Raw, Write_Pred, Write_cost);
    signal state_curr, state_next : state_t := Idle;
    
    -- Input signals and counters
    signal cnt_weights, cnt_weights_next: natural range 0 to max((nb_features+1)*nb_hidden_nodes,(nb_hidden_nodes+1)*nb_output_nodes) := 0;
    signal cnt_features, cnt_features_next: natural range 0 to (nb_features - 1);
    signal cnt_transfers, cnt_transfers_next: natural range 0 to (transfers_per_example - 1);
    
    -- Output signals and counters
    signal output_buffer, output_buffer_next : std_logic_vector( (axis_data_width - 1) downto 0);
    signal cnt_examples, cnt_examples_next: natural range 0 to nb_examples_max;
    
    constant stop_condition: natural := ((nb_features+1)*nb_hidden_nodes - 1);
        
--    attribute mark_debug of state_curr, axis_command: signal is "true";
    
begin

    AXIS_out <= (M_AXIS_TDATA, M_AXIS_TLAST, M_AXIS_TVALID, S_AXIS_TREADY);
    (S_AXIS_TDATA, S_AXIS_TLAST, S_AXIS_TVALID, M_AXIS_TREADY, ARESETN) <= AXIS_in;
    M_AXIS_TDATA <= output_buffer_next;
  
    axis_fsm_proc: process (clk) is
    begin
        if rising_edge(clk) then
            state_curr <= state_next;
            cnt_weights <= cnt_weights_next;
            cnt_features <= cnt_features_next;
            cnt_transfers <= cnt_transfers_next;
            cnt_examples <= cnt_examples_next;
            output_buffer <= output_buffer_next;
            
            nb_examples <= nb_examples_new;
        end if;
    end process axis_fsm_proc;
    
    axis_combi_proc: process (state_curr, axis_command, output_buffer, results_ram, pred_ram,
                              cnt_weights, cnt_features, cnt_transfers, cnt_examples,
                              ARESETN, S_AXIS_TVALID, S_AXIS_TDATA, M_AXIS_TREADY,
                              nb_examples, read_write_last, cost) is
        variable tmp: natural range 0 to max(results_per_transfer,predictions_per_transfer);
    begin
        S_AXIS_TREADY <= '0';
        M_AXIS_TVALID <= '0';
        M_AXIS_TLAST <= '0';
        state_next <= state_curr;
        opcode <= (others => '-');
        task_done <= '0';
        cnt_weights_next <= 0;
        cnt_features_next <= 0;
        cnt_transfers_next <= 0;
        cnt_examples_next <= 0;
        output_buffer_next <= (others => '0');
        feature_ram <= (others => '-');
        feature_write_req <= '0';
        feature_addr <= 0;
        weight1_ram <= (others => '-');
        weight1_write_req <= '0';
        weight1_addr <= 0;
        weight2_ram <= (others => '-');
        weight2_write_req <= '0';
        weight2_addr <= 0;
        label_ram <= (others => '-');
        label_write_req <= '0';
        label_addr <= 0;
        results_read_req <= '0';
        results_addr <= 0;
        pred_read_req <= '0';
        pred_addr <= 0;
        nb_examples_new <= nb_examples;
        
        if ARESETN = '0' then      -- Synchronous reset (active low)
            S_AXIS_TREADY <= '0';
        else
            case state_curr is
            
                when Idle =>
                    S_AXIS_TREADY <= '0';
                    case axis_command is
                        when axis_read_opcode =>
                            state_next <= Read_Opcode;
                        when axis_read_weights =>
                            state_next <= Read_Weights1;
                        when axis_read_examples =>
                            state_next <= Read_Data;
                        when axis_write_pred =>
                            state_next <= Write_Pred;
                           -- pred_read_req <= '1';
                            --pred_addr <= 0;
                        when axis_write_raw=>
                            state_next <= Write_Raw;
                            results_read_req <= '1';
                            results_addr <= 0;
                        when axis_write_cost =>
                            state_next <= Write_cost;
                        when others => -- axis_wait...
                            state_next <= Idle;
                    end case;
                
                when Read_Opcode =>
                    S_AXIS_TREADY <= '1';
                    if (S_AXIS_TVALID = '1') then
                        opcode <= S_AXIS_TDATA;--(15 downto 0);
                        nb_examples_new <= to_integer(unsigned(S_AXIS_TDATA(15 downto 0))); -- save copy locally
                        task_done <= '1';
                        state_next <= Idle;
                    end if;
                    
                when Read_Weights1 =>
                    cnt_weights_next <= cnt_weights;
                    
                    if ( (cnt_weights mod 2) = 0) then
                        weight1_ram <= signed(S_AXIS_TDATA(11 downto 0));
                        S_AXIS_TREADY <= '0';
                    else
                        weight1_ram <= signed(S_AXIS_TDATA(23 downto 12));
                        S_AXIS_TREADY <= '1';
                    end if;
                    weight1_addr <= cnt_weights;
                        
                    if (S_AXIS_TVALID = '1') then
                        weight1_write_req <= '1';
                        if (cnt_weights = (((nb_features+1)*nb_hidden_nodes) - 1)) then
                            state_next <= Read_Weights2;
                            cnt_weights_next <= 0;
                            S_AXIS_TREADY <= '1';
                        else
                            cnt_weights_next <= cnt_weights + 1;
                        end if;
                    end if;
                
                when Read_Weights2 =>
                    cnt_weights_next <= cnt_weights;
                    
                    if ( (cnt_weights mod 2) = 0) then
                        weight2_ram <= signed(S_AXIS_TDATA(11 downto 0));
                        S_AXIS_TREADY <= '0';
                    else
                        weight2_ram <= signed(S_AXIS_TDATA(23 downto 12));
                        S_AXIS_TREADY <= '1';
                    end if;
                    weight2_addr <= cnt_weights;
                        
                    if (S_AXIS_TVALID = '1') then
                        weight2_write_req <= '1';
                        
                        if (cnt_weights = ((nb_hidden_nodes+1)*nb_output_nodes - 1)) then
                            S_AXIS_TREADY <= '1';
                            task_done <= '1';
                            cnt_weights_next <= 0;
                            state_next <= Idle;
                        else
                            cnt_weights_next <= cnt_weights + 1;
                        end if;
                    end if;
                
                when Read_Data =>
                    S_AXIS_TREADY <= '0';
                    cnt_features_next <= cnt_features;
                    cnt_transfers_next <= cnt_transfers;
                    cnt_examples_next <= cnt_examples;
                    
                    if (S_AXIS_TVALID = '1') then
                        S_AXIS_TREADY <= '1';
                        if (cnt_transfers < (transfers_per_example - 1)) then
                            feature_ram <= signed(std_logic_vector( unsigned(S_AXIS_TDATA(7+cnt_features*8 downto cnt_features*8)) 
                                                                    + to_unsigned(128,8)) & b"0000"); -- scale from 0_255 to -2048_2047
                            feature_write_req <= '1';
                            feature_addr <= cnt_examples*nb_features + cnt_transfers*features_per_transfer + cnt_features;
                            if (cnt_features = (features_per_transfer - 1)) then
                                cnt_features_next <= 0;
                                cnt_transfers_next <= cnt_transfers + 1;
                            else
                                cnt_features_next <= cnt_features + 1;
                                S_AXIS_TREADY <= '0';
                            end if;
                        else
                            if(cnt_features < ( (nb_features+1) - features_per_transfer*(transfers_per_example - 1) - 1)) then
                                feature_ram <= signed(std_logic_vector( unsigned(S_AXIS_TDATA(7+cnt_features*8 downto cnt_features*8)) 
                                                                        + to_unsigned(128,8)) & b"0000"); -- scale from 0_255 to -2048_2047
                                feature_write_req <= '1';
                                feature_addr <= cnt_examples*nb_features + cnt_transfers*features_per_transfer + cnt_features; -- can be simplified
                                cnt_features_next <= cnt_features + 1;
                                S_AXIS_TREADY <= '0';
                            else
                                label_ram <= unsigned(S_AXIS_TDATA(3+cnt_features*8 downto cnt_features*8)) - 1;
                                label_write_req <= '1';
                                label_addr <= cnt_examples;
                                cnt_features_next <= 0;
                                cnt_transfers_next <= 0;
                                if ( ( (read_write_last = '0') and (cnt_examples < (examples_block_size - 1)) )
                                  or ( (read_write_last = '1') and (cnt_examples < ((nb_examples - 1) mod examples_block_size)) ) ) then
                                    cnt_examples_next <= cnt_examples + 1;
                                else
                                    task_done <= '1';
                                    cnt_examples_next <= 0;
--                                    case axis_command is
--                                        when axis_read_opcode =>
--                                            state_next <= Read_Opcode;
--                                        when axis_read_weights =>
--                                            state_next <= Read_Weights1;
--                                        when axis_read_examples =>
--                                            state_next <= Read_Data;
--                                        when axis_write_pred =>
--                                            state_next <= Write_Pred;
--                                            pred_read_req <= '1';
--                                            pred_addr <= 0;
--                                        when axis_write_raw=>
--                                            state_next <= Write_Raw;
--                                            results_read_req <= '1';
--                                            results_addr <= 0;
--                                        when others => -- axis_wait...
--                                            state_next <= Idle;
--                                    end case;
                                    state_next <= Idle;
                                end if;
                            end if;
                        end if;
                    end if;
                    
                when Write_Pred => -- Write_Results
                    cnt_examples_next <= cnt_examples;
                    
                    if ( (cnt_examples mod predictions_per_transfer) = 0) then
                        output_buffer_next <= (others => '0');
                    else
                        output_buffer_next <= output_buffer;
                    end if;
                    tmp := (cnt_examples mod predictions_per_transfer);
                    pred_read_req <= '1';
                    pred_addr <= cnt_examples;
                    output_buffer_next(tmp*4 + 3 downto tmp*4) <= std_logic_vector(pred_ram);

                    if (cnt_examples >= (nb_examples - 1)) then -- end of Results writing
                        M_AXIS_TVALID <= '1';
                        M_AXIS_TLAST <= '1';
                        if (M_AXIS_TREADY = '1') then
                            task_done <= '1';
                            cnt_examples_next <= 0;
                            state_next <= Idle;
                        end if;
                    else
                        if ( (cnt_examples mod predictions_per_transfer) = (predictions_per_transfer - 1) ) then -- flush buffer, go to next transfer
                            M_AXIS_TVALID <= '1';
                            if (M_AXIS_TREADY = '1') then
                                cnt_examples_next <= cnt_examples + 1;
                            end if;
                        else
                            cnt_examples_next <= cnt_examples + 1;
                        end if;
                        
                        --pred_read_req <= '1';
                        --pred_addr <= cnt_examples + 1;
                    end if;
                    
                when Write_Raw => -- Write_Results
                    S_AXIS_TREADY <= '0';
                    cnt_examples_next <= cnt_examples;
                    
                    if ( (cnt_examples mod results_per_transfer) = 0) then
                        output_buffer_next <= (others => '0');
                    else
                        output_buffer_next <= output_buffer;
                    end if;
                    tmp := (cnt_examples mod results_per_transfer);
                    output_buffer_next(tmp*12 + 11 downto tmp*12) <= std_logic_vector(results_ram);
    
                    if (cnt_examples >= (nb_examples - 1)) then -- end of Results writing
                        M_AXIS_TVALID <= '1';
                        M_AXIS_TLAST <= '1';
                        if (M_AXIS_TREADY = '1') then
                            task_done <= '1';
                            cnt_examples_next <= 0;
                            state_next <= Idle;
                        end if;
                    else
                        if ( (cnt_examples mod results_per_transfer) = (results_per_transfer - 1) ) then -- flush buffer, go to next transfer
                            M_AXIS_TVALID <= '1';
                            if (M_AXIS_TREADY = '1') then
                                cnt_examples_next <= cnt_examples + 1;
                            end if;
                        else
                            cnt_examples_next <= cnt_examples + 1;
                        end if;
                        results_read_req <= '1';
                        results_addr <= cnt_examples + 1;
                    end if;
                
                when Write_cost =>
                    M_AXIS_TVALID <= '1';
                    M_AXIS_TLAST <= '1';
                    output_buffer_next(15 downto 0) <= std_logic_vector(cost);
                    if (M_AXIS_TREADY = '1') then
                        task_done <= '1';
                        state_next <= Idle;
                    end if;
                    
                when others =>
                    state_next <= Idle;
            
            end case;
        end if;
    end process axis_combi_proc;
   
end architecture version1;