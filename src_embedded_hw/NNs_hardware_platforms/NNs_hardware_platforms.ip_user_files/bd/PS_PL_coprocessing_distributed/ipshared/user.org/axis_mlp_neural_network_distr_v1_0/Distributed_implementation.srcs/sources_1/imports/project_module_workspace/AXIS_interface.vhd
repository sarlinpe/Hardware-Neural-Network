library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.utility.all;

entity AXIS_interface is
    generic (
        nb_features:            natural := 13;
        nb_hidden_nodes:        natural := 20;
        nb_classes:             natural := 3;
        single_ended:           boolean := false;
        nb_examples_max:        natural := 1020;
        examples_block_size:    natural := 8;       -- this has to be a power of 2
        axis_data_width:        natural := 32 );
	port 
	(
		ACLK	: in	std_logic;
		ARESETN	: in	std_logic;
		S_AXIS_TREADY	: out	std_logic;
		S_AXIS_TDATA	: in	std_logic_vector(31 downto 0);
		S_AXIS_TLAST	: in	std_logic;
		S_AXIS_TVALID	: in	std_logic;
		M_AXIS_TVALID	: out	std_logic;
		M_AXIS_TDATA	: out	std_logic_vector(31 downto 0);
		M_AXIS_TLAST	: out	std_logic;
		M_AXIS_TREADY	: in	std_logic;
		LED_1:      out std_logic;
        LED_2:      out std_logic;
        LED_3:      out std_logic;
        LED_4:      out std_logic;
        LED_5:      out std_logic;
        LED_6:      out std_logic
	);

    attribute SIGIS : string; 
    attribute SIGIS of ACLK : signal is "Clk"; 
    
end AXIS_interface;

architecture version1 of AXIS_interface is

    signal AXIS_in : AXIS_in_t;
    signal AXIS_out : AXIS_out_t; 
    
    component main_controller is
    generic (
        nb_features:            natural;
        nb_hidden_nodes:        natural;
        nb_classes:             natural;
        single_ended:           boolean;
        nb_examples_max:        natural;
        examples_block_size:    natural;  -- this has to be a power of 2
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
    end component;
    
begin

    application: main_controller
    generic map  (
        nb_features, nb_hidden_nodes, nb_classes, single_ended, 
        nb_examples_max, examples_block_size, axis_data_width )
    port map ( 
        clk => ACLK,
        AXIS_in => AXIS_in,
        AXIS_out => AXIS_out,
        LED_1 => LED_1,
        LED_2 => LED_2,
        LED_3 => LED_3,
        LED_4 => LED_4,
        LED_5 => LED_5,
        LED_6 => LED_6 );
        
    (M_AXIS_TDATA, M_AXIS_TLAST, M_AXIS_TVALID, S_AXIS_TREADY) <= AXIS_out;
    AXIS_in <= (S_AXIS_TDATA, S_AXIS_TLAST, S_AXIS_TVALID, M_AXIS_TREADY, ARESETN);
   
end architecture version1;