library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.utility.all;

entity back_prop_controller_BRAM is
    generic (
        nb_features          : natural;
        nb_hidden_nodes      : natural;
        nb_output_nodes      : natural;
        nb_classes           : natural;
        nb_examples_max      : natural );
    port (
        feature_read_ram         : in signed(11 downto 0);
        feature_read_req         : out std_logic;
        feature_read_addr_ex          : out natural range 0 to (nb_examples_max - 1);
        feature_read_addr_idx         : out natural range 0 to (nb_features - 1);
        
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
        
        big_delta1_read_ram      : in signed(31 downto 0);
        big_delta1_read_req      : out std_logic;
        big_delta1_read_addr     : out natural range 0 to (nb_hidden_nodes*(nb_features+1)-1);
        
        big_delta1_write_ram     : out signed(31 downto 0);
        big_delta1_write_req     : out std_logic;
        big_delta1_write_addr    : out natural range 0 to (nb_hidden_nodes*(nb_features+1)-1);
        
        big_delta2_read_ram      : in signed(31 downto 0);
        big_delta2_read_req      : out std_logic;
        big_delta2_read_addr     : out natural range 0 to (nb_output_nodes*(nb_hidden_nodes+1)-1) ;
        
        big_delta2_write_ram     : out signed(31 downto 0);
        big_delta2_write_req     : out std_logic;
        big_delta2_write_addr    : out natural range 0 to (nb_output_nodes*(nb_hidden_nodes+1)-1);
        
        label_read_ram           : in unsigned (3 downto 0);
        label_read_req           : out std_logic;
        label_read_addr          : out natural range 0 to (nb_examples_max - 1);
        
        clk                      : in std_logic;
        nb_examples              : in natural range 0 to (nb_examples_max-1);
        backprop_en              : in std_logic;
        feedforward_out          : in feedforward_out_t(0 to nb_output_nodes-1);
        activ1_out               : in activ1_out_t(0 to nb_hidden_nodes-1);
        result_available         : in std_logic;
        
        backprop_not_ready       : out std_logic;
        epoch_done               : out std_logic;
        cost_function            : out unsigned(15 downto 0) );
end back_prop_controller_BRAM;

architecture version_1 of back_prop_controller_BRAM is

begin


end version_1;
