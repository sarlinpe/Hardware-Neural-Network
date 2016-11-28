library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.utility.all;

entity test_feedforward_controller_stage4 is
--  Port ( );
end test_feedforward_controller_stage4;

architecture Behavioral of test_feedforward_controller_stage4 is

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
        --feature_addr:           out natural range 0 to (nb_features*nb_examples_max - 1);
        feature_addr_ex:        out natural range 0 to (nb_examples_max - 1);
        feature_addr_idx:       out natural range 0 to (nb_features - 1);
    
        weight1_ram:            in signed(11 downto 0);
        weight1_read_req:       out std_logic;
        weight1_addr:           out natural range 0 to ((nb_features+1)*nb_hidden_nodes);
        
        weight2_ram:            in signed(11 downto 0);
        weight2_read_req:       out std_logic;
        weight2_addr:           out natural range 0 to ((nb_hidden_nodes+1)*nb_output_nodes);
        
        clk:                    in std_logic;
        nb_examples:            in natural range 0 to (nb_examples_max-1);
        feedforward_en:         in std_logic;
        feedforward_new:        in std_logic;
        result_available:       out std_logic;
        raw_output:             out feedforward_out_t );
    end component;
    
    constant nb_features: natural := 3;
    constant nb_hidden_nodes: natural := 3;
    constant nb_output_nodes: natural := 1;
    constant nb_examples_max: natural := 200;
    constant single_ended: boolean := true;
    constant nb_examples : natural range 0 to (nb_examples_max-1) := 2;
    
    type features_t is array (0 to (nb_features*nb_examples - 1)) of integer;
    signal features_RAM : features_t := (400,500,1000, 800, 1000, 2000);
    type weights1_t is array (0 to ((nb_features+1)*nb_hidden_nodes -1)) of integer;
    signal weights1_RAM: weights1_t := (1,2,3,4,5,6,7,8,9,10,11,12);
    type weights2_t is array (0 to ((nb_hidden_nodes+1)*nb_output_nodes -1)) of integer;
    signal weights2_RAM: weights2_t := (1000,1100,1200,1300);
    
    signal feature_ram, weight1_ram, weight2_ram : signed(11 downto 0);
    signal feature_read_req, weight1_read_req, weight2_read_req : std_logic;
    --signal feature_addr: natural range 0 to (nb_features*nb_examples_max - 1);
    signal feature_addr_ex: natural range 0 to (nb_examples_max - 1); --
    signal feature_addr_idx: natural range 0 to (nb_features - 1); --
    signal weight1_addr: natural range 0 to ((nb_features+1)*nb_hidden_nodes);
    signal weight2_addr: natural range 0 to ((nb_hidden_nodes+1)*nb_output_nodes);
    
    signal clk, feedforward_en, feedforward_new, result_available: std_logic;
    signal result: feedforward_out_t (0 to (nb_output_nodes-1));
    
    signal feature_read_req_buf, weight1_read_req_buf, weight2_read_req_buf: std_logic := '0';
    signal feature_addr_ex_buf : natural range 0 to (nb_examples_max - 1);
    signal feature_addr_idx_buf : natural range 0 to (nb_features - 1);
    signal weight1_addr_buf : natural range 0 to ((nb_features+1)*nb_hidden_nodes);
    signal weight2_addr_buf : natural range 0 to ((nb_hidden_nodes+1)*nb_output_nodes);
    
    signal count_results : natural range 0 to nb_examples := 0;
    signal disable_flag : boolean := true;

begin

    uut: feedforward_controller
    generic map (
        nb_features => nb_features,
        nb_hidden_nodes => nb_hidden_nodes,
        nb_output_nodes => nb_output_nodes,
        nb_examples_max => nb_examples_max,
        single_ended => single_ended )
    port map (
        feature_ram, feature_read_req, feature_addr_ex, feature_addr_idx,
        weight1_ram, weight1_read_req, weight1_addr,
        weight2_ram, weight2_read_req, weight2_addr,
        clk, nb_examples, feedforward_en, feedforward_new,
        result_available, result );
    
    sim: process
        variable T_half : time := 50 ns;
    begin
        clk <= '0';
        feedforward_en <= '1';
        feedforward_new <= '0';
        feature_ram <= (others => '-');
        weight1_ram <= (others => '-');
        weight2_ram <= (others => '-');
        
        wait for T_half; clk <= '1';
        wait for T_half; clk <= '0';
        
        feedforward_new <= '1';

        while (count_results < nb_examples) loop
            wait for T_half;
            feature_addr_ex_buf <= feature_addr_ex;
            feature_addr_idx_buf <= feature_addr_idx;
            weight1_addr_buf <= weight1_addr;
            weight2_addr_buf <= weight2_addr;
            feature_read_req_buf <= feature_read_req;
            weight1_read_req_buf <= weight1_read_req;
            weight2_read_req_buf <= weight2_read_req;
            clk <= '1';
            wait for 0.2*T_half;
            feedforward_en <= '1';
            if (feature_read_req_buf = '1') then
                feature_ram <= to_signed(features_ram(feature_addr_ex_buf*nb_features + feature_addr_idx_buf),12);
            else
                feature_ram <= (others => '-');
            end if;
            if (weight1_read_req_buf = '1') then
                if disable_flag then
                    feedforward_en <= '0';
                    disable_flag <= false;
                end if;
                weight1_ram <= to_signed(weights1_ram(weight1_addr_buf),12);
            else
                weight1_ram <= (others => '-');
            end if;
            if (weight2_read_req_buf = '1') then
                weight2_ram <= to_signed(weights2_ram(weight2_addr_buf),12);
            else
                weight2_ram <= (others => '-');
            end if;
            
            wait for 0.8*T_half;
            clk <= '0';
            feedforward_new <= '0';
            if (result_available = '1') then
                count_results <= count_results + 1;
            end if;
        end loop;
        
        wait for T_half; clk <= '1';
        wait for T_half; clk <= '0';
        
        wait for T_half; clk <= '1';
        wait for T_half; clk <= '0';
        
        wait;
    end process;

end Behavioral;
