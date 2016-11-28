library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.utility.all;

entity feedforward_controller is
    generic (
        nb_features:            natural;
        nb_hidden_nodes:        natural;
        nb_output_nodes:        natural;
        nb_examples_max:        natural;
        single_ended:           boolean
    );
    port (
        feature_ram:            in signed(11 downto 0);
        feature_read_req:       out std_logic;
        feature_addr_ex:        out natural range 0 to (nb_examples_max - 1);
        feature_addr_idx:       out natural range 0 to (nb_features - 1);
   
        weight1_ram:            in signed(11 downto 0);
        weight1_read_req:       out std_logic;
        weight1_addr:           out natural range 0 to ((nb_features+1)*nb_hidden_nodes);
        
        weight2_ram:            in signed(11 downto 0);
        weight2_read_req:       out std_logic;
        weight2_addr:           out natural range 0 to ((nb_hidden_nodes+1)*nb_output_nodes);
        
        feedforward_out:        out feedforward_out_t(0 to (nb_output_nodes-1));
        activ1_out:             out activ1_out_t(0 to (nb_hidden_nodes-1));
        
        clk:                    in std_logic;
        nb_examples:            in natural range 0 to (nb_examples_max-1);
        feedforward_en:         in std_logic;
        feedforward_new:        in std_logic;
        feedforward_out_avail:  out std_logic := '0';
        examples_in:            out natural range 0 to nb_examples_max;
        examples_out:           out natural range 0 to nb_examples_max
    );
    
    attribute SIGIS : string; 
    attribute SIGIS of clk : signal is "Clk"; 
    
end feedforward_controller;

architecture version1 of feedforward_controller is

    attribute mark_debug : string;
    attribute keep : string;

    constant unit: signed(11 downto 0) := to_signed(1,12);
    constant delay_sigmoid : natural := 3; -- was 2 without pipelining
    constant delay_stage1 : natural := 4;
    constant delay_stage3 : natural := 4;

    component feedforward_dataflow is
    generic (
        nb_hidden_nodes:        natural;
        nb_output_nodes:        natural;
        delay_sigmoid:          natural );
    port (
        feature :               in signed(11 downto 0);
        weight1 :               in signed(11 downto 0);
        weight2 :               in signed(11 downto 0);
        hidden_layer_out :      out activ1_out_t(0 to (nb_hidden_nodes - 1));
        raw_output :            out feedforward_out_t;
        cnt_s1_hidden :         in natural range 0 to nb_hidden_nodes;
        cnt_s3_hidden :         in Natural range 0 to nb_hidden_nodes;
        cnt_s3_out :            in Natural range 0 to (nb_output_nodes - 1);
        clk :                   in std_logic;
        feedforward_en:         in std_logic;
        stage1_en :             in std_logic;
        stage1_rst :            in std_logic;
        stage2_latch :          in std_logic;
        stage3_en :             in std_logic;
        stage3_rst :            in std_logic;
        stage4_latch :          in std_logic );
    end component;
    
    type state1_t is (Idle, Setup, Accumulate, Wait_processing);
    signal state1_curr, state1_next : state1_t := Idle;
    signal state2_curr, state2_next : natural range 0 to (delay_sigmoid + 1) := 0;
    type state3_t is (Idle, Setup, Accumulate, Wait_processing);
    signal state3_curr, state3_next : state3_t := Idle;
    signal state4_curr, state4_next : natural range 0 to (delay_sigmoid + 1) := 0;
    
    signal feature: signed(11 downto 0);
    
    signal stage1_en, stage1_rst, stage2_latch, stage3_en, stage3_rst, stage4_latch: std_logic := '0';
    signal stage1_done, stage2_done, stage3_done: std_logic;
    
    signal cnt_examples_in, cnt_examples_in_next, cnt_examples_out, cnt_examples_out_next : natural range 0 to nb_examples_max;
    signal cnt_s1_features, cnt_s1_features_next : natural range 0 to nb_features; -- take into account the bias values
    signal cnt_s1_hidden, cnt_s1_hidden_next : natural range 0 to nb_hidden_nodes;
    signal cnt_s1_delay, cnt_s1_delay_next : natural range 0 to delay_stage1;
    
    signal cnt_s3_hidden, cnt_s3_hidden_next : natural range 0 to nb_hidden_nodes;
    signal cnt_s3_out, cnt_s3_out_next : natural range 0 to (nb_output_nodes - 1);
    signal cnt_s3_delay, cnt_s3_delay_next : natural range 0 to delay_stage3;
    
begin

    controlled_unit: feedforward_dataflow
    generic map (
        nb_hidden_nodes => nb_hidden_nodes,
        nb_output_nodes => nb_output_nodes,
        delay_sigmoid => delay_sigmoid )
    port map (
        feature => feature,
        weight1 => weight1_ram,
        weight2 => weight2_ram,
        hidden_layer_out => activ1_out,
        raw_output => feedforward_out,
        cnt_s1_hidden => cnt_s1_hidden,
        cnt_s3_hidden => cnt_s3_hidden,
        cnt_s3_out => cnt_s3_out,
        clk => clk,
        feedforward_en => feedforward_en,
        stage1_en => stage1_en, 
        stage1_rst => stage1_rst,
        stage2_latch => stage2_latch,
        stage3_en => stage3_en,
        stage3_rst => stage3_rst,
        stage4_latch => stage4_latch );
        
    examples_in <= cnt_examples_in;
    examples_out <= cnt_examples_out;

    stage1_fsm_proc: process (clk) is
    begin
        if rising_edge(clk) then
                if (feedforward_en = '1') then
                    state1_curr <= state1_next;
                    cnt_s1_features <= cnt_s1_features_next;
                    cnt_s1_hidden <= cnt_s1_hidden_next;
                    cnt_s1_delay <= cnt_s1_delay_next;
                    cnt_examples_in <= cnt_examples_in_next;
                end if;
        end if;
    end process stage1_fsm_proc;
    
    feature_addr_ex <= cnt_examples_in;
    
    stage1_combi_proc: process (state1_curr, cnt_examples_in, cnt_s1_features, cnt_s1_hidden, cnt_s1_delay,
                                feedforward_en, feedforward_new, nb_examples,
                                feature_ram, weight1_ram) is
    begin
        stage1_rst <= '0';
        feature <= feature_ram;
        feature_addr_idx <= 0; --
        feature_read_req <= '0';
        weight1_addr <= 0;
        weight1_read_req <= '0';
        stage1_done <= '0';
        cnt_s1_hidden_next <= cnt_s1_hidden;
        cnt_s1_features_next <= cnt_s1_features;
        cnt_s1_delay_next <= 0;
        cnt_examples_in_next <= cnt_examples_in;
        
        case state1_curr is
        
            when Idle =>
                stage1_en <= '0';  
                cnt_s1_features_next <= 0;
                cnt_s1_hidden_next <= 0;
                           
                if (feedforward_new = '1') then
                    cnt_examples_in_next <= 0;
                    state1_next <= Accumulate;
                    stage1_en <= '1'; -- should probably be removed since stage1_rst has the priority
                    stage1_rst <= '1';
                    weight1_addr <= 0;
                    weight1_read_req <= '1';
                    if (nb_hidden_nodes = 1) then -- special case
                        cnt_s1_features_next <= 1;
                        feature_addr_idx <= 0;
                        feature_read_req <= '1';
                    else
                        cnt_s1_hidden_next <= 1;
                    end if;
                else
                    state1_next <= Idle;
                    cnt_examples_in_next <= cnt_examples_in;
                end if;
            
            when Accumulate =>
                state1_next <= Accumulate;
                stage1_en <= '1';
                
                weight1_read_req <= '1';
                weight1_addr <= cnt_s1_hidden * (nb_features + 1) + cnt_s1_features;--cnt_s1_features * nb_hidden_nodes + cnt_s1_hidden;
                
                if ((cnt_s1_features = 0) or ( (cnt_s1_features = 1) and (cnt_s1_hidden = 0))) then
                    feature <= unit;
                end if;
                if (cnt_s1_features > 0) then
                    feature_read_req <= '1';
                    feature_addr_idx <= cnt_s1_features - 1;
                end if;
                
                if (cnt_s1_hidden = (nb_hidden_nodes - 1)) then -- move to another feature
                    if (cnt_s1_features = nb_features) then -- move to another example
                        state1_next <= Wait_processing;
                        cnt_s1_delay_next <= 0;
                        cnt_s1_hidden_next <= 0;
                        cnt_s1_features_next <= 0;
                    else
                        cnt_s1_hidden_next <= 0;
                        cnt_s1_features_next <= cnt_s1_features + 1;
                    end if;
                else
                    cnt_s1_hidden_next <= cnt_s1_hidden + 1;
                end if;

            when others => -- Wait_processing
                if (cnt_s1_delay = delay_stage1) then
                    stage1_done <= '1';
                    cnt_s1_delay_next <= 0;
                    stage1_en <= '0';
                    if (cnt_examples_in = (nb_examples - 1)) then
                        state1_next <= Idle;
                        cnt_examples_in_next <= cnt_examples_in;
                    else
                        state1_next <= Accumulate;
                        cnt_examples_in_next <= cnt_examples_in + 1;
                        --stage1_en <= '1';
                        stage1_rst <= '1';
                        weight1_addr <= 0;
                        weight1_read_req <= '1';
                        if (nb_hidden_nodes = 1) then -- special case
                            cnt_s1_features_next <= 1;
                            feature_addr_idx <= 0;
                            feature_read_req <= '1';
                        else
                            cnt_s1_hidden_next <= 1;
                        end if;
                    end if;
                else
                    state1_next <= Wait_processing;
                    stage1_en <= '1';
                    cnt_s1_delay_next <= cnt_s1_delay + 1;
                end if;
                
        end case;
    end process stage1_combi_proc;
    
    stage2_fsm_proc: process (clk) is
    begin
        if rising_edge(clk) then
            if (feedforward_en = '1') then
                state2_curr <= state2_next;
            end if;
        end if;
    end process stage2_fsm_proc;
    
    stage2_combi_proc: process (state2_curr, stage1_done, feedforward_en) is
    begin
        stage2_latch <= '0';
        stage2_done <= '0';
        state2_next <= state2_curr;
        if(stage1_done = '1') then -- start processing
            state2_next <= 1;
        else
            if (state2_curr > 0) then
                if (state2_curr = delay_sigmoid) then -- sigmoid has finished processing
                    state2_next <= 0;
                    stage2_latch <= '1';
                    stage2_done <= '1';
                else -- sigmoid is still processing 
                    state2_next <= state2_curr + 1;
                end if;
            else -- waiting that stage 1 is done
                state2_next <= 0;
            end if;
        end if;
    end process stage2_combi_proc;
    
    stage3_fsm_proc: process (clk) is
    begin
        if rising_edge(clk) then
            if (feedforward_en = '1') then
                state3_curr <= state3_next;
                cnt_s3_hidden <= cnt_s3_hidden_next;
                cnt_s3_out <= cnt_s3_out_next;
                cnt_s3_delay <= cnt_s3_delay_next;
            end if;
        end if;
    end process stage3_fsm_proc;
    
    stage3_combi_proc: process (state3_curr, cnt_s3_hidden, cnt_s3_out, cnt_s3_delay,
                                feedforward_en, weight2_ram, stage2_done) is
    begin
        stage3_rst <= '0';
        weight2_addr <= 0;
        weight2_read_req <= '0';
        stage3_done <= '0';
        cnt_s3_hidden_next <= cnt_s3_hidden;
        cnt_s3_out_next <= cnt_s3_out;
        cnt_s3_delay_next <= 0;
        
        case state3_curr is
        
            when Idle =>
                stage3_en <= '0';
                cnt_s3_hidden_next <= 0;
                cnt_s3_out_next <= 0;
                           
                if (stage2_done = '1') then
                    stage3_en <= '1'; -- should probably be removed since stage3_rst has the priority
                    state3_next <= Accumulate;
                    stage3_rst <= '1';
                    weight2_addr <= 0;
                    weight2_read_req <= '1';
                    if (single_ended) then
                        cnt_s3_hidden_next <= 1;
                    else
                        cnt_s3_out_next <= 1;
                    end if;
                else
                    state3_next <= Idle;
                end if;
            
            when Accumulate =>
                state3_next <= Accumulate;
                stage3_en <= '1';
                
                weight2_read_req <= '1';
                weight2_addr <= cnt_s3_out * (nb_hidden_nodes + 1) + cnt_s3_hidden; --cnt_s3_hidden * nb_output_nodes + cnt_s3_out;
                
                if (cnt_s3_out = (nb_output_nodes - 1)) then
                    if (cnt_s3_hidden = nb_hidden_nodes) then
                        state3_next <= Wait_processing;
                        cnt_s3_delay_next <= 0;
                        cnt_s3_out_next <= 0;
                        cnt_s3_hidden_next <= 0;
                    else
                        cnt_s3_out_next <= 0;
                        cnt_s3_hidden_next <= cnt_s3_hidden + 1;
                    end if;
                else
                    cnt_s3_out_next <= cnt_s3_out + 1;
                end if;

            when others => -- Wait_processing
                if (cnt_s3_delay = delay_stage3) then
                    stage3_done <= '1';
                    stage3_en <= '0';
                    cnt_s3_delay_next <= 0;
                    state3_next <= Idle;
                else
                    state3_next <= Wait_processing;
                    stage3_en <= '1';
                    cnt_s3_delay_next <= cnt_s3_delay + 1;
                end if;
                
        end case;
    end process stage3_combi_proc;
    
    stage4_fsm_proc: process (clk) is
    begin
        if rising_edge(clk) then
            if (feedforward_en = '1') then
                state4_curr <= state4_next;
                feedforward_out_avail <= stage4_latch;
                cnt_examples_out <= cnt_examples_out_next;
            end if;
        end if;
    end process stage4_fsm_proc;
    
    stage4_combi_proc: process (state4_curr, stage3_done, cnt_examples_out, feedforward_new, feedforward_en) is
    begin
        stage4_latch <= '0';
        state4_next <= state4_curr;
        if (feedforward_new = '1') then
            cnt_examples_out_next <= 0;
        else
            cnt_examples_out_next <= cnt_examples_out;
        end if;
        if (feedforward_en = '1') then
            if(stage3_done = '1') then -- start processing
                state4_next <= 1;
            else
                if (state4_curr > 0) then
                    if (state4_curr = delay_sigmoid) then -- sigmoid has finished processing
                        state4_next <= 0;
                        stage4_latch <= '1';
                        cnt_examples_out_next <= cnt_examples_out + 1;
                    else -- sigmoid is still processing 
                        state4_next <= state4_curr + 1;
                    end if;
                else -- waiting that stage 3 is done
                    state4_next <= 0;
                end if;
            end if;
        end if;
    end process stage4_combi_proc;
    
end version1;
