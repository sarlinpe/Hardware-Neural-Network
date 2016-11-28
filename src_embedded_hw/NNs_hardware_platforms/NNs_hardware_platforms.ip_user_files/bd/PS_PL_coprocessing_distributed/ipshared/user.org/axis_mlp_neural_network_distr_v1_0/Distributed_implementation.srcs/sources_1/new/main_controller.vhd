library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.utility.all;

entity main_controller is
    generic (
        nb_features:            natural;
        nb_hidden_nodes:        natural;
        nb_classes:             natural;
        single_ended:           boolean;
        nb_examples_max:        natural;
        examples_block_size:    natural;       -- this has to be a power of 2
        axis_data_width:        natural );
    port ( 
        clk:        in std_logic;
        AXIS_in :   in AXIS_in_t;
        
        AXIS_out :  out AXIS_out_t;
        LED_1:      out std_logic;
        LED_2:      out std_logic;
        LED_3:      out std_logic;
        LED_4:      out std_logic;
        LED_5:      out std_logic;
        LED_6:      out std_logic );
            
        attribute SIGIS : string; 
        attribute SIGIS of clk : signal is "Clk"; 
end main_controller;

architecture implementation of main_controller is

    attribute mark_debug : string;
    attribute keep : string;

    component feedforward_controller is
    generic (
        nb_features:            natural;
        nb_hidden_nodes:        natural;
        nb_output_nodes:        natural;
        nb_examples_max:        natural;
        single_ended:           boolean );
    port (
        feature_ram:            in signed(11 downto 0);
        feature_read_req:       out std_logic;
        feature_addr_ex:        out natural range 0 to (nb_examples_max - 1);
        feature_addr_idx:       out natural range 0 to (nb_features - 1);
   
        weight1_ram:            in weights1_bus_t(0 to nb_hidden_nodes-1);
        weight1_read_req:       out weights1_req_t(0 to nb_hidden_nodes-1);
        weight1_addr:           out weights1_addr_bus_t(0 to nb_hidden_nodes-1);
        
        weight2_ram:            in weights2_bus_t(0 to nb_output_nodes-1);
        weight2_read_req:       out weights2_req_t(0 to nb_output_nodes-1);
        weight2_addr:           out weights2_addr_bus_t(0 to nb_output_nodes-1);
        
        feedforward_out:        out feedforward_out_t(0 to (nb_output_nodes-1));
        activ1_out:             out activ1_out_t(0 to nb_hidden_nodes-1);
        
        clk:                    in std_logic;
        nb_examples:            in natural range 0 to (nb_examples_max-1);
        feedforward_en:         in std_logic;
        feedforward_new:        in std_logic;
        feedforward_out_avail:  out std_logic := '0';
        examples_in:            out natural range 0 to nb_examples_max;
        examples_out:           out natural range 0 to nb_examples_max );
    end component;
    
    component AXIS_controller is
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
        --session :               in session_t;
        
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
        read_write_last:        in std_logic );
    end component;
    
--    component back_prop_controller is
--    generic (
--        nb_features          : natural;
--        nb_hidden_nodes      : natural;
--        nb_output_nodes      : natural;
--        nb_classes           : natural;
--        nb_examples_max      : natural );
--    port (
--        feature_read_ram         : in signed(11 downto 0);
--        feature_read_req         : out std_logic;
--        feature_read_addr_ex          : out natural range 0 to (nb_examples_max - 1);
--        feature_read_addr_idx         : out natural range 0 to (nb_features - 1);
        
--        weight1_read_ram         : in signed(11 downto 0);
--        weight1_read_req         : out std_logic;
--        weight1_read_addr        : out natural range 0 to ((nb_features+1)*nb_hidden_nodes);
        
--        weight1_write_ram        : out signed(11 downto 0);
--        weight1_write_req        : out std_logic;
--        weight1_write_addr       : out natural range 0 to ((nb_features+1)*nb_hidden_nodes-1);
        
--        weight2_read_ram         : in signed(11 downto 0);
--        weight2_read_req         : out std_logic;
--        weight2_read_addr        : out natural range 0 to ((nb_hidden_nodes+1)*nb_output_nodes-1);
        
--        weight2_write_ram        : out signed(11 downto 0);
--        weight2_write_req        : out std_logic;
--        weight2_write_addr       : out natural range 0 to ((nb_hidden_nodes+1)*nb_output_nodes-1);
        
--        big_delta1_read_ram      : in signed(31 downto 0);
--        big_delta1_read_req      : out std_logic;
--        big_delta1_read_addr     : out natural range 0 to (nb_hidden_nodes*(nb_features+1)-1);
        
--        big_delta1_write_ram     : out signed(31 downto 0);
--        big_delta1_write_req     : out std_logic;
--        big_delta1_write_addr    : out natural range 0 to (nb_hidden_nodes*(nb_features+1)-1);
        
--        big_delta2_read_ram      : in signed(31 downto 0);
--        big_delta2_read_req      : out std_logic;
--        big_delta2_read_addr     : out natural range 0 to (nb_output_nodes*(nb_hidden_nodes+1)-1) ;
        
--        big_delta2_write_ram     : out signed(31 downto 0);
--        big_delta2_write_req     : out std_logic;
--        big_delta2_write_addr    : out natural range 0 to (nb_output_nodes*(nb_hidden_nodes+1)-1);
        
--        label_read_ram           : in unsigned (3 downto 0);
--        label_read_req           : out std_logic;
--        label_read_addr          : out natural range 0 to (nb_examples_max - 1);
        
--        clk                      : in std_logic;
--        nb_examples              : in natural range 0 to (nb_examples_max-1);
--        backprop_en              : in std_logic;
--        feedforward_out          : in feedforward_out_t(0 to nb_output_nodes-1);
--        activ1_out               : in activ1_out_t(0 to nb_hidden_nodes-1);
--        result_available         : in std_logic;
        
--        backprop_not_ready       : out std_logic;
--        epoch_done               : out std_logic;
--        cost_function            : out unsigned(15 downto 0) );
--    end component back_prop_controller;
    
    component weights_generator is
    generic (
        nb_features :           natural;
        nb_hidden_nodes:        natural;
        nb_output_nodes :       natural );
    port ( 
        clk, clk_en, reset, gen_req :            in std_logic;
        gen_done :                               out std_logic;
        weight1_ram, weight2_ram :               out signed(11 downto 0);
        weight1_addr :                           out natural range 0 to ((nb_features+1)*nb_hidden_nodes - 1);
        weight2_addr :                           out natural range 0 to ((nb_hidden_nodes+1)*nb_output_nodes - 1);
        weight1_write_req, weight2_write_req :   out std_logic );
    end component weights_generator;
    
    component prediction is
    generic (
        nb_examples_max :       natural;
        single_ended :          boolean;
        nb_classes :            natural;
        nb_output_nodes :       natural );
    port (
        clk:                        in std_logic;
        pred_req :                  in std_logic;
        pred_done :                 out std_logic;
        feedforward_out :           in feedforward_out_t(0 to (nb_output_nodes - 1));
        cnt_feedforward_out :       in natural range 0 to nb_examples_max;
        
        pred_ram :            out unsigned(3 downto 0);
        pred_addr :           out natural range 0 to (nb_examples_max - 1);
        pred_write_req :      out std_logic );
    end component prediction;

    constant nb_output_nodes: natural := sel(single_ended, 1, nb_classes); -- see utility package for function definition
    constant nb_examples_blocks: natural := 2; -- do not modify, hardcoded in the design
    
    -- RAM instantiation
    type features_t is array (0 to (nb_features*examples_block_size*nb_examples_blocks)) of signed(11 downto 0);
    shared variable features_f_RAM, features_b_RAM : features_t;
    type labels_t is array (0 to (examples_block_size*nb_examples_blocks)) of unsigned(3 downto 0);
    shared variable labels_RAM : labels_t;
    
    type weights1_t is array (0 to ((nb_features+1)*nb_hidden_nodes -1)) of signed(11 downto 0);
    shared variable weights1_f_RAM, weights1_b_RAM : weights1_t; --
    type weights2_t is array (0 to ((nb_hidden_nodes+1)*nb_output_nodes -1)) of signed(11 downto 0);
    shared variable weights2_f_RAM, weights2_b_RAM : weights2_t; --
    
    --type raw_outputs_t is array (0 to (nb_examples_max*nb_output_nodes - 1)) of signed(11 downto 0);
    --shared variable raw_outputs_RAM : raw_outputs_t;
    type predictions_t is array (0 to (nb_examples_max - 1)) of unsigned(3 downto 0);
    shared variable predictions_RAM : predictions_t;
    
    --type big_deltas1_t is array (0 to ((nb_features+1)*nb_hidden_nodes -1)) of signed(31 downto 0);
    --shared variable big_deltas1_RAM : big_deltas1_t := (others => (others => '0'));
    --type big_deltas2_t is array (0 to ((nb_hidden_nodes+1)*nb_output_nodes -1)) of signed(31 downto 0);
    --shared variable big_deltas2_RAM : big_deltas2_t := (others => (others => '0'));
    
    --attribute ram_style : string;
    --attribute ram_style of weights1_f_RAM, weights2_f_RAM : variable is "block";
    
    -- BRAM MUX signals
    signal weights1_mux_write, weights2_mux_write : signed(11 downto 0);
    signal weights1_mux_addr_write : natural range 0 to ((nb_features+1)*nb_hidden_nodes);
    signal weights2_mux_addr_write : natural range 0 to ((nb_hidden_nodes+1)*nb_output_nodes);
    signal weights1_mux_write_req, weights2_mux_write_req : std_logic;
    
    -- Data lines for feedforward ('_f')
    signal feature_f : signed(11 downto 0);
    signal feedforward_out : feedforward_out_t (0 to (nb_output_nodes - 1));
    signal activ1_out : activ1_out_t(0 to nb_hidden_nodes-1);
    signal feature_f_read_req, raw_output_f_write_req : std_logic;
    signal feature_f_addr_ex : natural range 0 to (nb_examples_max - 1);
    signal feature_f_addr_ex_mod : natural range 0 to (nb_examples_blocks*examples_block_size - 1);
    signal feature_f_addr_idx : natural range 0 to (nb_features - 1);
    signal raw_output_f_addr : natural range 0 to (nb_examples_max*nb_output_nodes - 1);
    
    signal weight1_f : weights1_bus_t(0 to nb_hidden_nodes-1); -- distributed version
    signal weight2_f : weights2_bus_t(0 to nb_output_nodes-1); -- distributed version
    signal weight1_f_read_req : weights1_req_t(0 to nb_hidden_nodes-1); -- distributed version
    signal weight2_f_read_req : weights2_req_t(0 to nb_output_nodes-1); -- distributed version
    signal weight1_f_addr : weights1_addr_bus_t(0 to nb_hidden_nodes-1); -- distributed version
    signal weight2_f_addr : weights2_addr_bus_t(0 to nb_output_nodes-1); -- distributed version
    
    -- Data lines for backpropagation ('_b')
    signal feature_b, weight1_b_read, weight1_b_write, weight2_b_read, weight2_b_write : signed(11 downto 0);
    signal label_b : unsigned(3 downto 0);
    signal big_delta1_read, big_delta1_write, big_delta2_read, big_delta2_write : signed(31 downto 0);
    signal feature_b_read_req, weight1_b_read_req, weight1_b_write_req, weight2_b_read_req, weight2_b_write_req,
           big_delta1_read_req, big_delta1_write_req, big_delta2_read_req, big_delta2_write_req, label_b_read_req : std_logic;
    signal feature_b_addr_ex, label_b_addr_ex : natural range 0 to (nb_examples_max - 1);
    signal feature_b_addr_ex_mod, label_b_addr_ex_mod : natural range 0 to (nb_examples_blocks*examples_block_size - 1);
    signal feature_b_addr_idx : natural range 0 to (nb_features - 1);     -- REMOVE ADDR_IDX FOR LABEL --, label_b_addr_idx
    signal weight1_b_read_addr, weight1_b_write_addr, 
           big_delta1_read_addr, big_delta1_write_addr : natural range 0 to ((nb_features+1)*nb_hidden_nodes);
    signal weight2_b_read_addr, weight2_b_write_addr, 
           big_delta2_read_addr, big_delta2_write_addr : natural range 0 to ((nb_hidden_nodes+1)*nb_output_nodes);
    
    -- Data lines for AXIS ('_a')
    signal feature_a, weight1_a, weight2_a, raw_output_a : signed(11 downto 0);
    signal label_a, pred_a : unsigned(3 downto 0);
    signal feature_a_write_req, label_a_write_req, weight1_a_write_req, weight2_a_write_req, 
           raw_output_a_read_req, pred_a_read_req: std_logic;
    signal feature_a_addr, label_a_addr : natural range 0 to (nb_features*examples_block_size - 1);
    signal pred_a_addr: natural range 0 to (nb_examples_max - 1);
    signal weight1_a_addr: natural range 0 to ((nb_features+1)*nb_hidden_nodes);
    signal weight2_a_addr: natural range 0 to ((nb_hidden_nodes+1)*nb_output_nodes);
    signal raw_output_a_addr: natural range 0 to (nb_examples_max - 1);
    
    -- Data lines for Generator ('_g')
    signal weight1_g, weight2_g : signed(11 downto 0);
    signal weight1_g_addr : natural range 0 to ((nb_features+1)*nb_hidden_nodes - 1);
    signal weight2_g_addr : natural range 0 to ((nb_hidden_nodes+1)*nb_output_nodes - 1);
    signal weight1_g_write_req, weight2_g_write_req : std_logic ;
    
    -- Data lines for Prediction ('_p')
    signal pred_p : unsigned(3 downto 0);
    signal pred_p_addr : natural range 0 to (nb_examples_max - 1);
    signal pred_p_write_req : std_logic;
    
    -- General state registers and signals
    signal opcode_in, opcode_reg, opcode_reg_next: std_logic_vector(31 downto 0) := (others => '0');
    signal session_curr, session_new : session_t := none;
    type option_t is (given_weights, random_weights, previous_weights);
    signal option_curr, option_new : option_t;
    signal nb_examples : natural range 0 to (nb_examples_max - 1) := 0;
    
    type main_state_t is (Idle, Process_Opcode, Get_Weights, Generate_Weights, Get_first_examples, Processing, Send_raw, Send_pred, Send_epoch_done);
    signal main_state_curr, main_state_next : main_state_t := Idle;
    
    -- AXIS control signals
    signal axis_command : axis_command_t := axis_wait;
    signal axis_task_done, read_write_last : std_logic;
    
    -- Feedforward control signals
    signal feedforward_en, feedforward_new : std_logic := '0';
    signal feedforward_out_avail : std_logic;
    
    -- Backpropagation control signals
    signal backprop_en : std_logic;
    signal backprop_not_ready, epoch_done : std_logic;
    signal cost : unsigned(15 downto 0);
    
    -- Random weights generator control signals
    signal gen_req, gen_done : std_logic;
    
    -- Prediction control signals
    signal pred_req, pred_done : std_logic;
    
    -- Data management signals
    signal cnt_ex_block_outdated, cnt_ex_block_outdated_next, nb_virtual_blocks, cnt_f_ex_block_curr, cnt_b_ex_block_curr : natural range 0 to ceil_div(nb_examples_max, examples_block_size);
    signal cnt_examples_in, cnt_examples_out, cnt_ex_predicted, cnt_ex_predicted_next : natural range 0 to nb_examples_max := 0;
    signal update_requested, update_requested_next : std_logic := '0';

--    attribute mark_debug of opcode_reg, main_state_curr, feedforward_en, backprop_en: signal is "true";
--    attribute mark_debug of feedforward_out_avail, backprop_not_ready, epoch_done, label_b_read_req: signal is "true";

begin

    feedforward_unit: feedforward_controller
    generic map (
        nb_features => nb_features,
        nb_hidden_nodes => nb_hidden_nodes,
        nb_output_nodes => nb_output_nodes,
        nb_examples_max => nb_examples_max,
        single_ended => single_ended )
    port map (
        feature_ram => feature_f, feature_read_req => feature_f_read_req, feature_addr_ex => feature_f_addr_ex, feature_addr_idx => feature_f_addr_idx,
        weight1_ram => weight1_f, weight1_read_req => weight1_f_read_req, weight1_addr => weight1_f_addr,
        weight2_ram => weight2_f, weight2_read_req => weight2_f_read_req, weight2_addr => weight2_f_addr,
        clk => clk, nb_examples => nb_examples, feedforward_en => feedforward_en, feedforward_new => feedforward_new,
        feedforward_out_avail => feedforward_out_avail, feedforward_out => feedforward_out, activ1_out => activ1_out,
        examples_in => cnt_examples_in, examples_out => cnt_examples_out );
        
--    backprop_unit: back_prop_controller
--    generic  map (
--        nb_features => nb_features,
--        nb_hidden_nodes => nb_hidden_nodes,
--        nb_output_nodes => nb_output_nodes,
--        nb_classes => nb_classes,
--        nb_examples_max => nb_examples_max )
--    port  map (
--        feature_read_ram => feature_b, feature_read_req => feature_b_read_req, feature_read_addr_ex => feature_b_addr_ex, feature_read_addr_idx => feature_b_addr_idx,
--        weight1_read_ram => weight1_b_read, weight1_read_req => weight1_b_read_req, weight1_read_addr => weight1_b_read_addr,
--        weight1_write_ram => weight1_b_write, weight1_write_req => weight1_b_write_req, weight1_write_addr => weight1_b_write_addr,
--        weight2_read_ram => weight2_b_read, weight2_read_req => weight2_b_read_req, weight2_read_addr => weight2_b_read_addr,
--        weight2_write_ram => weight2_b_write, weight2_write_req => weight2_b_write_req, weight2_write_addr => weight2_b_write_addr,        
--        big_delta1_read_ram => big_delta1_read, big_delta1_read_req => big_delta1_read_req, big_delta1_read_addr => big_delta1_read_addr,
--        big_delta1_write_ram => big_delta1_write, big_delta1_write_req => big_delta1_write_req, big_delta1_write_addr => big_delta1_write_addr,
--        big_delta2_read_ram => big_delta2_read, big_delta2_read_req => big_delta2_read_req, big_delta2_read_addr => big_delta2_read_addr,
--        big_delta2_write_ram => big_delta2_write, big_delta2_write_req => big_delta2_write_req, big_delta2_write_addr => big_delta2_write_addr,
--        label_read_ram => label_b, label_read_req => label_b_read_req, label_read_addr => label_b_addr_ex, --label_read_addr_idx => label_b_addr_idx,
--        clk => clk, nb_examples => nb_examples, backprop_en => backprop_en,
--        feedforward_out => feedforward_out , activ1_out => activ1_out, result_available => feedforward_out_avail,
--        backprop_not_ready => backprop_not_ready, epoch_done => epoch_done, cost_function => cost );
        
    axis_unit: AXIS_controller
    generic map (
        nb_features => nb_features,
        nb_hidden_nodes => nb_hidden_nodes,
        nb_output_nodes => nb_output_nodes,
        examples_block_size => examples_block_size,
        axis_data_width => axis_data_width,
        nb_examples_max => nb_examples_max )
    port map (
        clk => clk, AXIS_in => AXIS_in, AXIS_out => AXIS_out, --session => session_curr,--nb_examples => nb_examples,
        feature_ram => feature_a, feature_write_req => feature_a_write_req, feature_addr => feature_a_addr,
        weight1_ram => weight1_a, weight1_write_req => weight1_a_write_req, weight1_addr => weight1_a_addr,
        weight2_ram => weight2_a, weight2_write_req => weight2_a_write_req, weight2_addr => weight2_a_addr,
        label_ram => label_a, label_write_req => label_a_write_req, label_addr => label_a_addr,
        results_ram => raw_output_a, results_read_req => raw_output_a_read_req, results_addr => raw_output_a_addr,
        pred_ram => pred_a, pred_read_req => pred_a_read_req, pred_addr => pred_a_addr, cost => cost,
        axis_command => axis_command, opcode => opcode_in, task_done => axis_task_done, read_write_last => read_write_last );
        
    generation_unit: weights_generator
    generic map (
        nb_features, nb_hidden_nodes, nb_output_nodes )
    port map ( 
       clk => clk , clk_en => '1', reset => AXIS_in.ARESETN,
       gen_req => gen_req, gen_done => gen_done,
       weight1_ram => weight1_g, weight1_addr => weight1_g_addr, weight1_write_req => weight1_g_write_req,
       weight2_ram => weight2_g, weight2_addr => weight2_g_addr, weight2_write_req => weight2_g_write_req );
       
    prediction_unit: prediction
    generic map (
        nb_examples_max, single_ended, nb_classes, nb_output_nodes)
    port map (
        clk => clk, pred_req => pred_req, pred_done => pred_done,
        feedforward_out => feedforward_out, cnt_feedforward_out => cnt_examples_out,
        pred_ram => pred_p, pred_addr => pred_p_addr, pred_write_req => pred_p_write_req );

    feature_f_addr_ex_mod <= feature_f_addr_ex mod (examples_block_size*nb_examples_blocks); -- this has to be a power of 2
    feature_b_addr_ex_mod <= feature_b_addr_ex mod (examples_block_size*nb_examples_blocks);
    label_b_addr_ex_mod <= label_b_addr_ex mod (examples_block_size*nb_examples_blocks);
    
    cnt_f_ex_block_curr <= feature_f_addr_ex/examples_block_size;
    cnt_b_ex_block_curr <= feature_b_addr_ex/examples_block_size;
    nb_examples <= to_integer(unsigned(opcode_reg(15 downto 0)));
       
    raw_output_f_write_req <= feedforward_out_avail; -- DEBUG
    raw_output_f_addr <= cnt_examples_out - 1; -- DEBUG

    -- manage BRAM write port
    BRAM_controller_write: process (clk) is
    begin
        if rising_edge(clk) then
        
            if (feature_a_write_req = '1') then
                features_f_RAM((cnt_ex_block_outdated mod nb_examples_blocks)*examples_block_size*nb_features + feature_a_addr) := feature_a;
                features_B_RAM((cnt_ex_block_outdated mod nb_examples_blocks)*examples_block_size*nb_features + feature_a_addr) := feature_a;
            end if;
            if (label_a_write_req = '1') then
                labels_RAM((cnt_ex_block_outdated mod nb_examples_blocks)*examples_block_size + label_a_addr) := label_a;   -- THIS IS WRONG FOR THE LABELS!!!
            end if;
            
            if (weights1_mux_write_req = '1') then
                weights1_f_RAM(weights1_mux_addr_write) := weights1_mux_write;
                weights1_b_RAM(weights1_mux_addr_write) := weights1_mux_write;
            end if;
            
            if (weights2_mux_write_req = '1') then
                weights2_f_RAM(weights2_mux_addr_write) := weights2_mux_write;
                weights2_b_RAM(weights2_mux_addr_write) := weights2_mux_write;
            end if;
            
--            if (big_delta1_write_req = '1') then
--                big_deltas1_RAM(big_delta1_write_addr) := big_delta1_write;
--            end if;
--            if (big_delta2_write_req = '1') then
--                big_deltas2_RAM(big_delta2_write_addr) := big_delta2_write;
--            end if;
            
--            if (raw_output_f_write_req = '1') then
--                for i in 0 to (nb_output_nodes - 1) loop
--                    raw_outputs_RAM(raw_output_f_addr*nb_output_nodes + i) := feedforward_out(i); -- DEBUG
--                end loop;
--            end if;
            
            if (pred_p_write_req = '1') then
                predictions_RAM(pred_p_addr) := pred_p;
            end if;
            
        end if;
    end process BRAM_controller_write;
    
    BRAM_MUX_write: process (weight1_a_write_req, weight1_g_write_req, weight1_b_write_req,
                             weight1_a_addr, weight1_g_addr, weight1_b_write_addr,
                             weight1_a, weight1_g, weight1_b_write,
                             weight2_a_write_req, weight2_g_write_req, weight2_b_write_req,
                             weight2_a_addr, weight2_g_addr, weight2_b_write_addr,
                             weight2_a, weight2_g, weight2_b_write ) is
    begin
    
        if (weight1_a_write_req = '1') then
            weights1_mux_addr_write <= weight1_a_addr;
            weights1_mux_write <= weight1_a;
            weights1_mux_write_req <= '1';
        elsif (weight1_g_write_req = '1') then
            weights1_mux_addr_write <= weight1_g_addr;
            weights1_mux_write <= weight1_g;
            weights1_mux_write_req <= '1';
        elsif (weight1_b_write_req = '1') then
            weights1_mux_addr_write <= weight1_b_write_addr;
            weights1_mux_write <= weight1_b_write;
            weights1_mux_write_req <= '1';
        else
            weights1_mux_addr_write <= 0;
            weights1_mux_write <= (others => '-');
            weights1_mux_write_req <= '0';
        end if;
        
        if (weight2_a_write_req = '1') then
            weights2_mux_addr_write <= weight2_a_addr;
            weights2_mux_write <= weight2_a;
            weights2_mux_write_req <= '1';
        elsif (weight2_g_write_req = '1') then
            weights2_mux_addr_write <= weight2_g_addr;
            weights2_mux_write <= weight2_g;
            weights2_mux_write_req <= '1';
        elsif (weight2_b_write_req = '1') then
            weights2_mux_addr_write <= weight2_b_write_addr;
            weights2_mux_write <= weight2_b_write;
            weights2_mux_write_req <= '1';
        else
            weights2_mux_addr_write <= 0;
            weights2_mux_write <= (others => '-');
            weights2_mux_write_req <= '0';
        end if;
        
    raw_output_a <= (others => '-');
        
    end process BRAM_MUX_write;
    
    -- manage BRAM read port
    BRAM_controller_read: process (feature_f_read_req, feature_f_addr_ex_mod, feature_f_addr_idx,
                                   weight1_f_read_req, weight1_f_addr, weight2_f_read_req, weight2_f_addr,
                                   feature_b_read_req, feature_b_addr_ex_mod, feature_b_addr_idx,
                                   weight1_b_read_req, weight1_b_read_addr, weight2_b_read_req, weight2_b_read_addr,
                                   label_b_read_req, label_b_addr_ex_mod,
                                   big_delta1_read_req, big_delta1_read_addr, big_delta2_read_req, big_delta2_read_addr,
                                   raw_output_a_read_req, raw_output_a_addr, pred_a_read_req, pred_a_addr) is
    begin
        feature_f <= (others => '-');
        weight1_f <= (others => (others => '-'));
        weight2_f <= (others => (others => '-'));
        --raw_output_a <= (others => '-');
        pred_a <= (others => '-');
        
        if (feature_f_read_req = '1') then
            feature_f <= features_f_RAM(feature_f_addr_ex_mod*nb_features + feature_f_addr_idx);
        end if;
        for i in 0 to (nb_hidden_nodes-1) loop
            if (weight1_f_read_req(i) = '1') then
                weight1_f(i) <= weights1_f_RAM(weight1_f_addr(i));
            end if;
        end loop;
        for i in 0 to (nb_output_nodes-1) loop
            if (weight2_f_read_req(i) = '1') then
                weight2_f(i) <= weights2_f_RAM(weight2_f_addr(i));
            end if;
        end loop;
        
        if (feature_b_read_req = '1') then
            feature_b <= features_b_RAM(feature_b_addr_ex_mod*nb_features + feature_b_addr_idx);
        end if;
        if (weight1_b_read_req = '1') then
            weight1_b_read <= weights1_b_RAM(weight1_b_read_addr);
        end if;
        if (weight2_b_read_req = '1') then
            weight2_b_read <= weights2_b_RAM(weight2_b_read_addr);
        end if;
        if (label_b_read_req = '1') then
            label_b <= labels_RAM(label_b_addr_ex_mod);
        end if;
        
--        if (big_delta1_read_req = '1') then
--            big_delta1_read <= big_deltas1_RAM(big_delta1_read_addr);
--        end if;
--        if (big_delta2_read_req = '1') then
--            big_delta2_read <= big_deltas2_RAM(big_delta2_read_addr);
--        end if;
        
--        if (raw_output_a_read_req = '1') then
--            raw_output_a <= raw_outputs_RAM(raw_output_a_addr);
--        end if;
        if (pred_a_read_req = '1') then
            pred_a <= predictions_RAM(pred_a_addr);
        end if;
    end process BRAM_controller_read;

    main_fsm_proc: process (clk) is
    begin
        if rising_edge(clk) then
            main_state_curr <= main_state_next;
            session_curr <= session_new;
            update_requested <= update_requested_next;
            cnt_ex_block_outdated <= cnt_ex_block_outdated_next;
            cnt_ex_predicted <= cnt_ex_predicted_next;
            nb_virtual_blocks <= 1 + (nb_examples - 1)/examples_block_size; -- synthesizable ceil_div(nb_examples, examples_block_size);
            opcode_reg <= opcode_reg_next;
        end if;
    end process main_fsm_proc;
    
    main_combi_proc: process (main_state_curr, session_curr, option_curr, nb_examples, opcode_in, opcode_reg, feedforward_out_avail, 
                              cnt_ex_predicted, cnt_ex_block_outdated, nb_virtual_blocks, cnt_f_ex_block_curr, cnt_b_ex_block_curr,
                              feature_f_read_req, feature_b_read_req, cnt_examples_in, cnt_examples_out,
                              axis_task_done, update_requested, AXIS_in, gen_done, pred_done, epoch_done, backprop_not_ready ) is
    begin
        axis_command <= axis_wait;
        main_state_next <= main_state_curr;
        session_new <= session_curr;
        option_new <= option_curr;
        cnt_ex_block_outdated_next <= cnt_ex_block_outdated;
        feedforward_en <= '0';
        feedforward_new <= '0';
        update_requested_next <= update_requested;
        gen_req <= '0';
        pred_req <= '0';
        opcode_reg_next <= opcode_reg;
        cnt_ex_predicted_next <= 0;
        
        if (session_curr = train) then
            backprop_en <= '1';
        else
            backprop_en <= '0';
        end if;
        if ( (feedforward_out_avail = '1') and (session_curr = Predict) ) then
            pred_req <= '1';
        else
            
        end if;
        if ( cnt_ex_block_outdated = (nb_virtual_blocks - 1) ) then
            read_write_last <= '1';
        else
            read_write_last <= '0';
        end if;
        
        LED_1 <= '0'; -- DEBUG
        LED_2 <= '0';
        LED_3 <= '0';
        LED_4 <= '0';
        LED_5 <= '0';
        LED_6 <= '0';
        
        if(AXIS_in.ARESETN = '0') then
            main_state_next <= Idle;
            session_new <= none;
        else
            case main_state_curr is
                
                when Idle =>
                    LED_1 <= '1'; -- DEBUG
                    axis_command <= axis_read_opcode;
                    if (axis_task_done = '1') then
                        main_state_next <= Process_Opcode;
                        opcode_reg_next <= opcode_in;
                        axis_command <= axis_wait;
                    end if;
                        
                when Process_Opcode =>
                    if (opcode_reg(19) = '1') then -- New session
                        if (opcode_reg(18) = '0') then
                            session_new <= predict;
                        else
                            session_new <= train;
                        end if;
                        case to_integer(unsigned(opcode_reg(17 downto 16))) is
                            when 0 =>
                                option_new <= given_weights;
                                main_state_next <= Get_Weights;
                            when 1 =>
                                option_new <= random_weights;
                                main_state_next <= Generate_Weights;
                            when others =>
                                option_new <= previous_weights;
                                main_state_next <= Get_first_examples;
                        end case;
                    else -- if Training was already running
                        if ( session_curr = train) then
                            if (opcode_reg(18) = '1') then
                                -- continue training ?
                                main_state_next <= Get_first_examples;
                            else
                                -- send back weights maybe ? Or final pediction for training set ?
                                -- RESET EVERYTHING, including internal counters of BP!
                                session_new <= none;
                                main_state_next <= Idle;
                            end if;
                        else
                            main_state_next <= Idle;
                        end if;
                    end if;
                
                when Get_Weights =>
                    LED_2 <= '1'; -- DEBUG
                    axis_command <= axis_read_weights;
                    if (axis_task_done = '1') then
                        axis_command <= axis_wait;
                        main_state_next <= Get_first_examples;
                    end if;
                
                when Generate_Weights =>
                    LED_2 <= '1'; -- DEBUG
                    gen_req <= '1';
                    if (gen_done = '1') then
                        main_state_next <= Get_first_examples;
                    end if;
                
                when Get_first_examples =>
                    LED_2 <= '1'; -- DEBUG
                    axis_command <= axis_read_examples;
                    cnt_ex_block_outdated_next <= 0;
                    if (axis_task_done = '1') then
                        axis_command <= axis_wait;
                        cnt_ex_block_outdated_next <= 1;
                        feedforward_new <= '1';
                        feedforward_en <= '1';
                        main_state_next <= Processing;
                    end if;
                
                when Processing =>
                    if (session_curr = predict) then
                        LED_3 <= '1'; -- DEBUG
                    else
                        LED_4 <= '1'; -- DEBUG
                    end if;
                    feedforward_en <= '1';
                    if (pred_done = '1') then -- will only happend if session_curr is predict
                        cnt_ex_predicted_next <= cnt_ex_predicted + 1;
                    else
                        cnt_ex_predicted_next <= cnt_ex_predicted;
                    end if;

                    if ( cnt_ex_predicted = nb_examples ) then
                        --main_state_next <= Send_raw;
                        main_state_next <= Send_pred;
                        feedforward_en <= '0';
                    elsif (epoch_done = '1') then
                        main_state_next <= Send_epoch_done;
                        feedforward_en <= '0';
                        backprop_en <= '1'; -- do we have a global reset for backprop ? we'll have to use it later
                    else
                        if ( ((feature_f_read_req = '1') or (feature_b_read_req = '1')) and (cnt_ex_block_outdated /= nb_virtual_blocks) ) then -- if last example then no need to update next block
                            if ( (cnt_f_ex_block_curr = cnt_ex_block_outdated)
                                or ( (session_curr = predict) and (cnt_f_ex_block_curr = (cnt_ex_block_outdated-1)) )
                                or ( (session_curr = train) and (cnt_b_ex_block_curr = (cnt_ex_block_outdated-1)) ) ) then -- action needed
                                if ( cnt_f_ex_block_curr = cnt_ex_block_outdated ) then
                                    feedforward_en <= '0';
                                end if;
                                if (update_requested = '0') then
                                    update_requested_next <= '1';
                                    axis_command <= axis_read_examples;
                                else
                                    axis_command <= axis_wait;
                                    update_requested_next <= '1';
                                    if (axis_task_done = '1') then
                                        update_requested_next <= '0';
                                        cnt_ex_block_outdated_next <= cnt_ex_block_outdated + 1;
                                    end if;
                                end if;
                            end if;
                        end if;
                        if (backprop_not_ready = '1') then
                            feedforward_en <= '0';
                        end if;
                    end if;
                
                when Send_epoch_done =>
                    LED_5 <= '1'; -- DEBUG
                    axis_command <= axis_write_cost;
                    if (axis_task_done = '1') then
                        axis_command <= axis_wait;
                        main_state_next <= Idle;    -- do not reset session and parameters!
                    end if;
                
--                when Send_raw =>
--                    LED_6 <= '1'; -- DEBUG
--                    axis_command <= axis_write_raw;
--                    if (axis_task_done = '1') then
--                        axis_command <= axis_wait;
--                        session_new <= none;
--                        main_state_next <= Idle;
--                    end if;
                    
                when Send_pred =>
                    LED_6 <= '1'; -- DEBUG
                    axis_command <= axis_write_pred;
                    if (axis_task_done = '1') then
                        axis_command <= axis_wait;
                        session_new <= none;
                        main_state_next <= Idle;
                    end if;
                
                when others =>
                    main_state_next <= Idle;
            
            end case;
        end if;
    end process main_combi_proc;

end implementation;
