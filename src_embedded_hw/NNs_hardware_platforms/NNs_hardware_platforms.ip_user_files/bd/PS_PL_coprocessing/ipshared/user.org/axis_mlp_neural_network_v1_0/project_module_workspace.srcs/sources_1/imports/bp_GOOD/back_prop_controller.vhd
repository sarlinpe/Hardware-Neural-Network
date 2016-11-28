library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.utility.all;




entity back_prop_controller is

   generic
   (
       nb_features          : natural := 13;
       nb_hidden_nodes      : natural := 4;
       nb_output_nodes      : natural := 1;
       nb_classes           : natural := 10;
       nb_examples_max      : natural := 200
   );
   port
   (
       ----------------BRAM INTERFACE------------------
       feature_read_ram         : in signed(11 downto 0);
       feature_read_req         : out std_logic;
       feature_read_addr_ex     : out natural range 0 to (nb_examples_max - 1);
       feature_read_addr_idx    : out natural range 0 to (nb_features-1);

       weight1_read_ram         : in signed(11 downto 0);
       weight1_read_req         : out std_logic;
       weight1_read_addr        : out natural range 0 to ((nb_features+1)*nb_hidden_nodes);

       weight1_write_ram        : out signed(11 downto 0);
       weight1_write_req        : out std_logic;
       weight1_write_addr       : out natural range 0 to ((nb_features+1)*nb_hidden_nodes-1);

       weight2_read_ram         : in signed(11 downto 0);
       weight2_read_req         : out std_logic;
       weight2_read_addr        : out natural range 0 to ((nb_hidden_nodes+1)*nb_output_nodes-1);

       weight2_write_ram        : out signed(11 downto 0);
       weight2_write_req        : out std_logic;
       weight2_write_addr       : out natural range 0 to ((nb_hidden_nodes+1)*nb_output_nodes-1);

       BIG_DELTA1_read_ram      : in signed(31 downto 0);
       BIG_DELTA1_read_req      : out STD_LOGIC;
       BIG_DELTA1_read_addr     : out natural range 0 to (nb_hidden_nodes*(nb_features+1)-1);

       BIG_DELTA1_write_ram     : out signed(31 downto 0);
       BIG_DELTA1_write_req     : out STD_LOGIC;
       BIG_DELTA1_write_addr    : out natural range 0 to (nb_hidden_nodes*(nb_features+1)-1);

       BIG_DELTA2_read_ram      : in signed(31 downto 0);
       BIG_DELTA2_read_req      : out STD_LOGIC;
       BIG_DELTA2_read_addr     : out natural range 0 to (nb_output_nodes*(nb_hidden_nodes+1)-1) ;

       BIG_DELTA2_write_ram     : out signed(31 downto 0);
       BIG_DELTA2_write_req     : out STD_LOGIC;
       BIG_DELTA2_write_addr    : out natural range 0 to (nb_output_nodes*(nb_hidden_nodes+1)-1);

       label_read_ram          : in unsigned (3 downto 0);
       label_read_req          : out STD_LOGIC;
       label_read_addr         : out natural range 0 to nb_examples_max-1;  -- changed name
       --label_read_addr_idx     : out natural range 0 to nb_output_nodes-1;



       CLK                      : in std_logic;
       nb_examples              : in natural range 0 to (nb_examples_max-1);
       backprop_en              : in std_logic;
       feedforward_out          : in feedforward_out_t(0 to nb_output_nodes-1);
       activ1_out                 : in activ1_out_t(0 to nb_hidden_nodes-1);
       result_available           : in STD_LOGIC;

       backprop_not_ready         : out STD_LOGIC;
       epoch_done                 : out STD_LOGIC;
       cost_function              : out unsigned (15 downto 0)
    );

end back_prop_controller;

architecture version_1 of back_prop_controller is

    attribute mark_debug : string;
    attribute keep : string;

component back_prop_dataflow is
    generic (
            nb_features          : natural := 13;
            nb_hidden_nodes      : natural := 4;
            nb_output_nodes      : natural := 1;
            nb_classes           : natural := 10
        );
    port (
        ---------------BRAM INTERFACE-------------------
        weight1_read_ram            : in signed(11 downto 0);
        weight1_write_ram           : out signed(11 downto 0);
        weight2_read_ram            : in signed(11 downto 0);
        weight2_write_ram           : out signed(11 downto 0);
        BIG_DELTA1_read_ram         : in signed(31 downto 0);
        BIG_DELTA1_write_ram1       : out signed(31 downto 0);
        BIG_DELTA1_write_ram2       : out signed(31 downto 0);
        BIG_DELTA2_read_ram         : in signed(31 downto 0);
        BIG_DELTA2_write_ram1       : out signed(31 downto 0);
        BIG_DELTA2_write_ram2       : out signed(31 downto 0);
        feature_read_ram            : in signed(11 downto 0);
        label_read_ram              : in unsigned (3 downto 0);
        -----------------------
        CLK                         : in STD_LOGIC;
        backprop_en              : in std_logic;
        feedforward_out                      : in feedforward_out_t(0 to nb_output_nodes-1);
        activ1_out                          : in activ1_out_t(0 to nb_hidden_nodes-1);
        ----Control_inputs-----
        stage1_en                   : in STD_LOGIC;
        update_delta3_en            : in STD_LOGIC;
        stage2_rst                  : in STD_LOGIC;
        stage2_en                   : in STD_LOGIC;
        latch_stage3_en             : in STD_LOGIC;
        stage3_en                   : in STD_LOGIC;
        cnt_hidden_nodes            : in NATURAL range 0 to (nb_hidden_nodes+1);
        cnt_output_nodes            : in NATURAL range 0 to (nb_output_nodes-1);
        cnt_features                : in NATURAL range 0  to (nb_features+3);
        cnt_hidden_nodes_st3        : in NATURAL range 0 to (nb_hidden_nodes-1);
        stage2_finished             : in STD_LOGIC;
        updating_weights_done_loc   : in STD_LOGIC;
        -----Control_outputs-----------
        sum_delta2_same             : out STD_LOGIC;
        FSM2_latch                  : out STD_LOGIC;
        FSM1_latch                  : out STD_LOGIC;
        cost                        : out unsigned(15 downto 0)
    );
end component;


type state_FSM_1_t is (Idle, process_stage_1, process_stage_2);
signal state_FSM_1, next_state_FSM_1 : state_FSM_1_t := Idle;
type state_FSM_2_t is (Idle, LATCH, PROCESSING);
signal state_FSM_2, next_state_FSM_2 : state_FSM_2_t := Idle;

--------------BRAM------------
signal weight2_read_req1        : STD_LOGIC;
signal weight2_read_addr1       : natural range 0 to ((nb_hidden_nodes+1)*nb_output_nodes-1);
signal BIG_DELTA1_read_req1     : STD_LOGIC;
signal BIG_DELTA1_read_addr1    : natural range 0 to (nb_hidden_nodes*(nb_features+1)-1);
signal BIG_DELTA1_write_req1    : STD_LOGIC;
signal BIG_DELTA1_write_addr1   : natural range 0 to (nb_hidden_nodes*(nb_features+1)-1);
signal BIG_DELTA1_write_ram1    : signed (31 downto 0);
signal BIG_DELTA2_read_req1     : STD_LOGIC;
signal BIG_DELTA2_read_addr1    : natural range 0 to ((nb_hidden_nodes+1)*nb_output_nodes-1);
signal BIG_DELTA2_write_ram1    : signed (31 downto 0);
signal BIG_DELTA2_write_req1    : STD_LOGIC;
signal BIG_DELTA2_write_addr1   : natural range 0 to ((nb_hidden_nodes+1)*nb_output_nodes-1);
signal weight2_read_req2        : STD_LOGIC;
signal weight2_read_addr2       : natural range 0 to ((nb_hidden_nodes+1)*nb_output_nodes-1);
signal BIG_DELTA1_read_req2     : STD_LOGIC;
signal BIG_DELTA1_read_addr2    : natural range 0 to (nb_hidden_nodes*(nb_features+1)-1);
signal BIG_DELTA1_write_req2    : STD_LOGIC;
signal BIG_DELTA1_write_addr2   : natural range 0 to (nb_hidden_nodes*(nb_features+1)-1);
signal BIG_DELTA1_write_ram2    : signed (31 downto 0);
signal BIG_DELTA2_read_req2     : STD_LOGIC;
signal BIG_DELTA2_read_addr2    : natural range 0 to ((nb_hidden_nodes+1)*nb_output_nodes-1);
signal BIG_DELTA2_write_ram2    : signed (31 downto 0);
signal BIG_DELTA2_write_req2    : STD_LOGIC;
signal BIG_DELTA2_write_addr2   : natural range 0 to ((nb_hidden_nodes+1)*nb_output_nodes-1);

----------Counter-----------
signal cnt_stage1, next_cnt_stage1: natural range 0 to 1;
signal cnt_hidden_nodes, next_cnt_hidden_nodes : natural range 0 to nb_hidden_nodes+6;
signal cnt_output_nodes, next_cnt_output_nodes : natural range 0 to nb_output_nodes-1;
signal cnt_features, next_cnt_features : natural range 0 to nb_features+4;
signal cnt_hidden_nodes_st3, next_cnt_hidden_nodes_st3 : natural range 0 to nb_hidden_nodes-1;
----------------------------
signal result_waiting                                           : std_logic := '0';
signal sum_delta2_same                              : std_logic;
signal error                                        : std_logic;
signal updating_weights, last_updating_weights , reset_updating_weights      : std_logic := '0';
signal set_updating_weights : std_logic := '0';
signal stage2_finished                              : std_logic;
signal update_derivative                            : std_logic;
signal update_delta3_en                             : std_logic;
signal stage2_rst                                   : std_logic;
signal stage2_en                                    : std_logic;
signal latch_stage3_en                              : std_logic;
signal stage3_en                                    : std_logic;
signal stage1_en                                    : std_logic;
signal training_example_finished                                    : std_logic := '0';
signal stage3_started                                   : std_logic;
signal stage3_start_en                                    : std_logic;
signal cnt_hidden_nodes_FSM_3, next_cnt_hidden_nodes_FSM_3                       : natural range 0 to nb_hidden_nodes+4 :=0; ---
signal cnt_output_nodes_FSM_3, next_cnt_output_nodes_FSM_3                       : natural range 0 to nb_output_nodes-1 :=0;
signal cnt_features_FSM_3, next_cnt_features_FSM_3                       : natural range 0 to nb_features+4 :=0;
signal cnt_hidden_nodes_FSM_3_2, next_cnt_hidden_nodes_FSM_3_2 : natural range 0 to nb_hidden_nodes-1 := 0; -- problem
signal weight1_done, next_weight1_done : std_logic := '0';
signal weight2_done, next_weight2_done : std_logic := '0';
signal cnt_training_examples : natural range 0 to (nb_examples_max-1) :=0;
signal next_cnt_training_examples : natural range 0 to (nb_examples_max-1) :=0;
signal updating_weights_done_loc : STD_LOGIC := '0';
signal cnt_stop, next_cnt_stop : natural range 0 to 5 :=0;
signal cnt_labels, next_cnt_labels : natural range 0 to nb_examples_max*nb_output_nodes-1 :=0;
signal cnt_features_addr, next_cnt_features_addr :  natural range 0 to nb_examples_max*nb_features-1 :=0;
signal FSM1_waiting, FSM1_busy, FSM2_busy : std_logic := '0';
signal FSM1_latch, FSM2_latch : std_logic := '0';

begin

 controlled_unit: back_prop_dataflow
    generic map (
            nb_features          => nb_features,
            nb_hidden_nodes      => nb_hidden_nodes,
            nb_output_nodes      => nb_output_nodes,
            nb_classes           => nb_classes
        )
    port map (
        ---------------BRAM INTERFACE-------------------
        weight1_read_ram            => weight1_read_ram,
        weight1_write_ram           => weight1_write_ram,
        weight2_read_ram            => weight2_read_ram,
        weight2_write_ram           => weight2_write_ram,
        BIG_DELTA1_read_ram         => BIG_DELTA1_read_ram,
        BIG_DELTA1_write_ram1       => BIG_DELTA1_write_ram1,
        BIG_DELTA1_write_ram2       => BIG_DELTA1_write_ram2,
        BIG_DELTA2_read_ram         => BIG_DELTA2_read_ram,
        BIG_DELTA2_write_ram1       => BIG_DELTA2_write_ram1,
        BIG_DELTA2_write_ram2       => BIG_DELTA2_write_ram2,
        feature_read_ram            => feature_read_ram,
        label_read_ram              => label_read_ram,
        -----------------------
        CLK                         => CLK,
        backprop_en                 => backprop_en,
        feedforward_out             => feedforward_out,
        activ1_out                  => activ1_out,
        ----Control_inputs-----
        stage1_en                   => stage1_en,
        update_delta3_en            => update_delta3_en,
        stage2_rst                  => stage2_rst,
        stage2_en                   => stage2_en,
        latch_stage3_en             => latch_stage3_en,
        stage3_en                   => stage3_en,
        cnt_hidden_nodes            => cnt_hidden_nodes,
        cnt_output_nodes            => cnt_output_nodes,
        cnt_features                => cnt_features,
        cnt_hidden_nodes_st3        => cnt_hidden_nodes_st3,
        stage2_finished             => stage2_finished,
        updating_weights_done_loc   => updating_weights_done_loc,
        -----Control_outputs-----------
        sum_delta2_same             => sum_delta2_same,
        FSM2_latch                  => FSM2_latch,
        FSM1_latch                  => FSM1_latch,
        cost                        => cost_function
        );

--stop_feedfor_clk : process (CLK) is
--begin
--    if rising_edge(CLK) then
--        if (backprop_en = '1') then
--            cnt_stop <= next_cnt_stop;
--        end if;
--    end if;
--end process stop_feedfor_clk;
--
--stop_feedfor : process (result_waiting, cnt_stop) is
--begin
--    next_cnt_stop <= 0;
--    if (result_waiting='1' and cnt_stop < 5)then
--        next_cnt_stop <= cnt_stop+1;
--        backprop_not_ready <= '0';
--    elsif (result_waiting = '1' and cnt_stop = 5) then
--        next_cnt_stop <= cnt_stop;
--        backprop_not_ready <= '1';
--    else
--        backprop_not_ready <='0';
--    end if;
--end process stop_feedfor;
   
   FSM1_wait_pro : process (CLK) is
   begin
      if rising_edge(CLK) then
         if (backprop_en = '1') then
            if (stage2_finished = '1') then
               FSM1_waiting <= '1';
            elsif (FSM2_latch = '1') then
               FSM1_waiting <= '0';
            end if;
         end if;
      end if;
   end process FSM1_wait_pro;  
   
   FSM1_busy_pro : process (CLK) is
   begin
      if rising_edge (CLK) then
         if (backprop_en = '1') then
            if (FSM1_latch = '1') then
               FSM1_busy <= '1';
            elsif (FSM2_latch = '1') then
               FSM1_busy <= '0';
            end if;
         end if;  
      end if;     
   end process FSM1_busy_pro; 
   
   FSM2_busy_pro : process (CLK) is
   begin
      if rising_edge (CLK) then
         if (backprop_en = '1') then
            if (FSM2_latch = '1') then 
               FSM2_busy <= '1';
            elsif (training_example_finished = '1') then
               FSM2_busy <= '0';
            end if;
         end if;
      end if;       
   end process FSM2_busy_pro; 

stop_feedfor : process (result_waiting, FSM1_busy) is
begin
    if ((result_waiting='1') and (FSM1_busy = '1')) then
        backprop_not_ready <= '1';
    else
        backprop_not_ready <= '0';
    end if;
end process stop_feedfor;

result_av : process (CLK) is
begin
    if rising_edge(CLK) then
       if (backprop_en = '1') then
           if(result_available = '1') then
               result_waiting <= '1';
           elsif(FSM1_latch = '1') then
               result_waiting <= '0';
           end if;
       end if;
    end if;
end process result_av;

FSM_1_clk : process (CLK) is
begin
if rising_edge(CLK) then
    if ((backprop_en='1') and (updating_weights='0')) then
        state_FSM_1 <= next_state_FSM_1;
        cnt_stage1 <= next_cnt_stage1;
        cnt_hidden_nodes <= next_cnt_hidden_nodes;
        cnt_output_nodes <= next_cnt_output_nodes;
        cnt_labels <= next_cnt_labels;
    end if;
end if;
end process FSM_1_clk;


FSM_1_comb : process (updating_weights_done_loc, FSM1_busy, result_waiting, sum_delta2_same, state_FSM_1, cnt_stage1, cnt_hidden_nodes, cnt_output_nodes, cnt_training_examples, cnt_labels) is
begin
    stage2_rst <= '0';
    stage1_en <= '0';
    stage2_en <= '0';
    update_delta3_en <= '0';
    stage2_finished <='0';
    next_cnt_hidden_nodes <= cnt_hidden_nodes;
    update_derivative <= '0';
    BIG_DELTA2_read_req1 <= '0';
    BIG_DELTA2_write_req1 <= '0';
    BIG_DELTA2_write_addr1 <= 0;
    BIG_DELTA2_read_addr1 <= 0; -- do not reset since read one clock longer
    weight2_read_req1 <= '0';
    label_read_req <= '0';
    label_read_addr <= 0;
    -- label_read_addr_idx <= 0;
    weight2_read_addr1 <= 0;
    next_cnt_labels <= cnt_labels;
    next_cnt_stage1 <= cnt_stage1;
    case state_FSM_1 is
    when IDLE =>
        next_cnt_output_nodes <= 0;
        if ((result_waiting='1') and (FSM1_busy = '0')) then
            next_state_FSM_1 <= process_stage_1;
        else
            next_state_FSM_1 <= IDLE;
        end if;
    when process_stage_1 =>
        if (cnt_stage1 = 0) then
            next_cnt_stage1 <= cnt_stage1+1;
            if (cnt_output_nodes = 0) then
                label_read_req <= '1';
                next_cnt_labels <= cnt_labels+1;
                label_read_addr <= cnt_labels;
                --label_read_addr_idx <= cnt_output_nodes;
            end if;
            next_state_FSM_1 <= process_stage_1;
        elsif (cnt_stage1 = 1) then
            -- next_cnt_stage1 <= cnt_stage1+1;
            if (cnt_output_nodes = 0) then
                stage1_en <= '1';
            else
                update_delta3_en <= '1';
            end if;
            stage2_rst <= '1';
            next_state_FSM_1 <= process_stage_2;
            next_cnt_stage1 <= 0;
--        elsif (cnt_stage1 = 2) then
--            next_cnt_stage1 <= 0;
--            --update_delta3_en <= '1';
--            next_state_FSM_1 <= process_stage_2;
        else
            error <= '1';
        end if;
     when process_stage_2 =>  -- 8 cycles nb_hidden_nodes+3
        stage2_en <= '1';
        next_cnt_hidden_nodes <= cnt_hidden_nodes+1;
        next_state_FSM_1 <= process_stage_2;
        if((cnt_hidden_nodes > 2) and (cnt_hidden_nodes < (nb_hidden_nodes +4))) then     -- Big_DELTA2_read_req1 too early --changed
            BIG_DELTA2_write_req1 <= '1';
            BIG_DELTA2_write_addr1 <= ((nb_hidden_nodes+1)*cnt_output_nodes+(cnt_hidden_nodes-3)); --changed
        end if;
        if(cnt_hidden_nodes < nb_hidden_nodes) then --cnt hidden_nodes range 0 to nb_hidden_nodes+1
            weight2_read_req1 <= '1';
            weight2_read_addr1 <= (nb_hidden_nodes*cnt_output_nodes+cnt_hidden_nodes+1);  -- changed
            BIG_DELTA2_read_req1 <= '1';
            BIG_DELTA2_read_addr1 <= ((nb_hidden_nodes+1)*cnt_output_nodes+(cnt_hidden_nodes));  ---- takes too long
        elsif (cnt_hidden_nodes = nb_hidden_nodes) then
            BIG_DELTA2_read_req1 <= '1';
            BIG_DELTA2_read_addr1 <= ((nb_hidden_nodes+1)*cnt_output_nodes+(cnt_hidden_nodes));  ---- takes too long
       -- elsif (cnt_hidden_nodes = nb_hidden_nodes+1) then
            --BIG_DELTA2_read_req1 <= '1';
        end if;
        if( (cnt_hidden_nodes > (nb_hidden_nodes+5)) and (cnt_output_nodes = (nb_output_nodes-1))) then
            next_state_FSM_1 <= IDLE;
            stage2_finished <='1';
            next_cnt_hidden_nodes <= 0;
        elsif (cnt_hidden_nodes > (nb_hidden_nodes+5)) then
            next_state_FSM_1 <= process_stage_1;
            next_cnt_output_nodes <= cnt_output_nodes+1;
            next_cnt_hidden_nodes <= 0;
        end if;
     when others =>
         next_state_FSM_1 <= IDLE;
     end case;
    if (updating_weights_done_loc = '1') then
         next_cnt_labels <= 0;
     end if;
end process FSM_1_comb;

stage_3_start : process (CLK) is
begin
    if rising_edge(CLK) then
       if (backprop_en = '1') then
           if ((FSM1_waiting = '1') and (FSM2_busy = '0')) then
                   stage3_start_en <= '1';
           else--elsif (stage3_started = '1') then
                   stage3_start_en <= '0';
           end if;
       end if;
    end if;
end process stage_3_start;


FSM_2_clk : process (CLK) is
begin
if rising_edge(CLK) then
    if ((backprop_en='1') and (updating_weights='0')) then
        state_FSM_2 <= next_state_FSM_2;
        cnt_hidden_nodes_st3 <= next_cnt_hidden_nodes_st3;
        cnt_features <= next_cnt_features;
        cnt_features_addr <= next_cnt_features_addr;
    end if;
end if;
end process FSM_2_clk;

FSM_2_comb : process (updating_weights_done_loc, stage3_start_en, state_FSM_2, cnt_hidden_nodes_st3, cnt_features, cnt_features_addr) is
begin
    stage3_en <= '0';
    stage3_started <= '0';
    latch_stage3_en <='0';
    training_example_finished <= '0';
    BIG_DELTA1_read_req1 <= '0';
    BIG_DELTA1_write_req1 <= '0';
    BIG_DELTA1_read_addr1 <= 0;
    BIG_DELTA1_read_addr1 <= 0; ---- not sure if ok
    feature_read_req <= '0';
    feature_read_addr_ex <= 0;
    feature_read_addr_idx <= 0;
    BIG_DELTA1_write_addr1 <= 0;
    next_cnt_features_addr <= cnt_features_addr;
    next_cnt_features <= cnt_features;
    next_cnt_hidden_nodes_st3 <= cnt_hidden_nodes_st3;
    
    case state_FSM_2 is
    when IDLE =>
        if (stage3_start_en = '1') then
            next_state_FSM_2 <= LATCH;
            stage3_started <= '1';
            next_cnt_hidden_nodes_st3 <=0;
        else
            next_state_FSM_2 <= IDLE;
        end if;
    when LATCH =>
        latch_stage3_en <='1';
        next_cnt_features_addr <= cnt_features_addr+1;
        next_cnt_hidden_nodes_st3 <= 0;
        next_state_FSM_2 <= PROCESSING;
    when PROCESSING =>
        stage3_en <='1';
        next_cnt_features <= cnt_features+1;
        next_state_FSM_2 <= PROCESSING;
        if((cnt_features > 0) and (cnt_features < nb_features+2)) then
            BIG_DELTA1_read_req1 <= '1';
            BIG_DELTA1_read_addr1 <= (nb_features+1)*cnt_hidden_nodes_st3+(cnt_features-1);
        end if;
        if(cnt_features > 2) then
            BIG_DELTA1_write_req1 <= '1';
            BIG_DELTA1_write_addr1 <= (nb_features+1)*cnt_hidden_nodes_st3+(cnt_features-3);
        end if;
        if((cnt_features > 0) and (cnt_features < (nb_features+1))) then
            feature_read_req <= '1';
            feature_read_addr_ex <= (cnt_features_addr-1);
            feature_read_addr_idx <= (cnt_features-1);
        end if;
        if ((cnt_hidden_nodes_st3 = (nb_hidden_nodes-1)) and (cnt_features > (nb_features+2))) then
            next_cnt_hidden_nodes_st3 <= 0;
            next_cnt_features <= 0;
            training_example_finished <= '1';
            if(stage3_start_en='1') then
                 next_state_FSM_2 <= LATCH;
                 stage3_started <= '1';
            else
                 next_state_FSM_2 <= IDLE;
            end if;
        elsif (cnt_features > (nb_features+2)) then
            next_cnt_features <= 0;
            next_cnt_hidden_nodes_st3 <= cnt_hidden_nodes_st3+1;
        end if;
    end case;
    if (updating_weights_done_loc = '1') then
        next_cnt_features_addr <= 0;
    end if;
end process FSM_2_comb;

FSM_3_clk : process (CLK) is
begin
    if rising_edge(CLK) then
        if (backprop_en='1' and updating_weights='1') then
            cnt_features_FSM_3 <= next_cnt_features_FSM_3;
            cnt_hidden_nodes_FSM_3 <= next_cnt_hidden_nodes_FSM_3;
            cnt_hidden_nodes_FSM_3_2 <= next_cnt_hidden_nodes_FSM_3_2;
            cnt_output_nodes_FSM_3 <= next_cnt_output_nodes_FSM_3;
         end if;
         weight2_done <= next_weight2_done;
         weight1_done <= next_weight1_done;
    end if;
end process FSM_3_clk;

FSM_3_comb : process (updating_weights_done_loc, cnt_output_nodes_FSM_3, updating_weights, weight1_done, weight2_done, cnt_output_nodes, cnt_hidden_nodes_FSM_3, cnt_hidden_nodes_FSM_3_2, cnt_features_FSM_3) is
begin
     epoch_done <= updating_weights_done_loc;
     weight1_write_req <= '0';
     weight2_write_req <= '0';
     weight1_write_addr <= 0;
     weight2_write_addr <= 0;
     weight1_read_req <= '0';
     weight2_read_req2 <= '0';
     weight1_read_addr <= 0;
     weight2_read_addr2 <= 0;
     BIG_DELTA1_read_req2 <='0';
     BIG_DELTA1_write_req2 <='0';
     BIG_DELTA1_read_addr2 <= 0;
     BIG_DELTA1_write_addr2 <= 0;
     BIG_DELTA2_read_req2 <='0';
     BIG_DELTA2_write_req2 <='0';
     BIG_DELTA2_read_addr2 <= 0;
     BIG_DELTA2_write_addr2 <= 0;
     next_cnt_features_FSM_3 <= cnt_features_FSM_3;
     next_cnt_hidden_nodes_FSM_3 <= cnt_hidden_nodes_FSM_3;
     next_cnt_hidden_nodes_FSM_3_2 <= cnt_hidden_nodes_FSM_3_2;
     next_weight1_done <= weight1_done;
     next_weight2_done <= weight2_done;
    -------Weights_2------
    --if (backprop_en = '1') then
       if (updating_weights = '1') then
           if (weight2_done='0') then
               if (cnt_output_nodes_FSM_3 < nb_output_nodes) then
                   if (cnt_hidden_nodes_FSM_3 < (nb_hidden_nodes+4)) then
                       next_cnt_hidden_nodes_FSM_3 <= cnt_hidden_nodes_FSM_3+1;
                       if (cnt_hidden_nodes_FSM_3 < (nb_hidden_nodes+1)) then
                           weight2_read_req2 <= '1';
                           weight2_read_addr2 <= (nb_hidden_nodes+1)*cnt_output_nodes_FSM_3+cnt_hidden_nodes_FSM_3;
                           BIG_DELTA2_read_req2 <='1';
                           BIG_DELTA2_read_addr2 <= (nb_hidden_nodes+1)*cnt_output_nodes_FSM_3+cnt_hidden_nodes_FSM_3;
                       end if;
                       if (cnt_hidden_nodes_FSM_3 > 2) then -- change 1 to 2 and shift index
                           weight2_write_req <= '1';
                           weight2_write_addr <= (nb_hidden_nodes+1)*cnt_output_nodes_FSM_3+(cnt_hidden_nodes_FSM_3-3);
                           BIG_DELTA2_write_req2 <='1';
                           BIG_DELTA2_write_addr2 <= (nb_hidden_nodes+1)*cnt_output_nodes_FSM_3+(cnt_hidden_nodes_FSM_3-3);
                       end if;
                   elsif (cnt_output_nodes_FSM_3 > (nb_output_nodes-2)) then --- finished
                       next_cnt_hidden_nodes_FSM_3 <= 0;
                       next_cnt_output_nodes_FSM_3 <= 0;
                       next_weight2_done <= '1';
                   else
                       next_cnt_hidden_nodes_FSM_3 <= 0;
                       next_cnt_output_nodes_FSM_3 <= cnt_output_nodes_FSM_3+1;
                   end if;
               end if;
           end if;
   
           if (weight1_done='0') then
               if (cnt_hidden_nodes_FSM_3_2 < nb_hidden_nodes) then
                   if (cnt_features_FSM_3 < (nb_features+4)) then
                       next_cnt_features_FSM_3 <= cnt_features_FSM_3+1;
                       if (cnt_features_FSM_3 < (nb_features+1)) then
                           weight1_read_req <= '1';
                           weight1_read_addr <= (nb_features+1)*cnt_hidden_nodes_FSM_3_2+cnt_features_FSM_3;
                           BIG_DELTA1_read_req2 <='1';
                           BIG_DELTA1_read_addr2 <= (nb_features+1)*cnt_hidden_nodes_FSM_3_2+cnt_features_FSM_3;
                       end if;
                       if (cnt_features_FSM_3 > 2) then
                           weight1_write_req <= '1';
                           weight1_write_addr <= (nb_features+1)*cnt_hidden_nodes_FSM_3_2+(cnt_features_FSM_3-3);
                           BIG_DELTA1_write_req2 <='1';
                           BIG_DELTA1_write_addr2 <= (nb_features+1)*cnt_hidden_nodes_FSM_3_2+(cnt_features_FSM_3-3);
                       end if;
                   elsif (cnt_hidden_nodes_FSM_3_2 > (nb_hidden_nodes-2)) then --- finished
                       next_cnt_hidden_nodes_FSM_3_2 <= 0;
                       next_cnt_features_FSM_3 <= 0;
                       next_weight1_done <= '1';
                   else
                       next_cnt_features_FSM_3 <= 0;
                       next_cnt_hidden_nodes_FSM_3_2 <= cnt_hidden_nodes_FSM_3_2+1;
                   end if;
               end if;
           end if;
   
   --        if (weight1_done='1' and weight2_done='1') then
   --            updating_weights <='0';
   --        end if;
        end if;
        ------Reset-----
          if (updating_weights_done_loc = '1') then
              next_weight1_done <= '0';
              next_weight2_done <= '0';
          end if;
    --end if;
end process FSM_3_comb;

-------- count training example
count_training_examples_clk : process (CLK) is
begin
    if rising_edge(CLK) then
       if (backprop_en = '1') then
           cnt_training_examples <= next_cnt_training_examples;
       end if;
    end if;
end process count_training_examples_clk;

count_training_examples : process (weight1_done,weight2_done,training_example_finished, cnt_training_examples, nb_examples) is
begin
    set_updating_weights <= '0';
    reset_updating_weights <='0';
    next_cnt_training_examples <= cnt_training_examples;
    if(training_example_finished = '1') then
       next_cnt_training_examples <= cnt_training_examples + 1;
    end if;
    if (cnt_training_examples = nb_examples) then
       next_cnt_training_examples <= 0;
       set_updating_weights <= '1';
    elsif ((weight1_done='1') and (weight2_done='1')) then
        reset_updating_weights <='1';
    end if;
end process count_training_examples;

up_weights : process (CLK) is
begin
    if rising_edge(CLK) then
       if (backprop_en = '1') then
            if (set_updating_weights = '1') then
               updating_weights <= '1';
            elsif (reset_updating_weights = '1') then
               updating_weights <= '0';
            end if;
       end if;
    end if;
end process up_weights;

updating_weights_pro : process (CLK) is
begin
    if rising_edge(CLK) then
       if (backprop_en = '1') then
           last_updating_weights <= updating_weights;
           if ((updating_weights = '0') and (last_updating_weights = '1')) then
               updating_weights_done_loc <= '1';
           else
               updating_weights_done_loc <= '0';
           end if;
        end if;
     end if;
end process updating_weights_pro;

switch_access_BRAM : process (updating_weights, weight2_read_req1, weight2_read_addr1, BIG_DELTA1_read_req1, BIG_DELTA1_read_addr1, BIG_DELTA1_write_req1, BIG_DELTA1_write_addr1, BIG_DELTA1_write_ram1, BIG_DELTA2_read_req1, BIG_DELTA2_read_addr1, BIG_DELTA2_write_ram1, BIG_DELTA2_write_req1, BIG_DELTA2_write_addr1,weight2_read_req2, weight2_read_addr2, BIG_DELTA1_read_req2, BIG_DELTA1_read_addr2, BIG_DELTA1_write_req2, BIG_DELTA1_write_addr2, BIG_DELTA1_write_ram2, BIG_DELTA2_read_req2, BIG_DELTA2_read_addr2, BIG_DELTA2_write_ram2, BIG_DELTA2_write_req2, BIG_DELTA2_write_addr2) is
begin
    if (updating_weights = '0') then
        weight2_read_req <= weight2_read_req1;
        weight2_read_addr <= weight2_read_addr1;
        BIG_DELTA1_read_req <= BIG_DELTA1_read_req1;
        BIG_DELTA1_read_addr <= BIG_DELTA1_read_addr1;
        BIG_DELTA1_write_req <= BIG_DELTA1_write_req1;
        BIG_DELTA1_write_addr <= BIG_DELTA1_write_addr1;
        BIG_DELTA1_write_ram <= BIG_DELTA1_write_ram1;
        BIG_DELTA2_read_req <= BIG_DELTA2_read_req1;
        BIG_DELTA2_read_addr <= BIG_DELTA2_read_addr1;
        BIG_DELTA2_write_ram <= BIG_DELTA2_write_ram1;
        BIG_DELTA2_write_req <= BIG_DELTA2_write_req1;
        BIG_DELTA2_write_addr <= BIG_DELTA2_write_addr1;
    else
        weight2_read_req <= weight2_read_req2;
        weight2_read_addr <= weight2_read_addr2;
        BIG_DELTA1_read_req <= BIG_DELTA1_read_req2;
        BIG_DELTA1_read_addr <= BIG_DELTA1_read_addr2;
        BIG_DELTA1_write_req <= BIG_DELTA1_write_req2;
        BIG_DELTA1_write_addr <= BIG_DELTA1_write_addr2;
        BIG_DELTA1_write_ram <= BIG_DELTA1_write_ram2;
        BIG_DELTA2_read_req <= BIG_DELTA2_read_req2;
        BIG_DELTA2_read_addr <= BIG_DELTA2_read_addr2;
        BIG_DELTA2_write_ram <= BIG_DELTA2_write_ram2;
        BIG_DELTA2_write_req <= BIG_DELTA2_write_req2;
        BIG_DELTA2_write_addr <= BIG_DELTA2_write_addr2;
    end if;
end process switch_access_BRAM;



end version_1;
