library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.utility.all;

entity test_axis_controller_v1 is
--  Port ( );
end test_axis_controller_v1;

architecture Behavioral of test_axis_controller_v1 is

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
        
        feature_ram:            out signed(11 downto 0);
        feature_write_req:      out std_logic;
        feature_addr:           out natural range 0 to (nb_features*examples_block_size - 1);
        
        weight1_ram:            out signed(11 downto 0);
        weight1_write_req:      out std_logic;
        weight1_addr:           out natural range 0 to ((nb_features+1)*nb_hidden_nodes);
        
        weight2_ram:            out signed(11 downto 0);
        weight2_write_req:      out std_logic;
        weight2_addr:           out natural range 0 to ((nb_hidden_nodes+1)*nb_output_nodes);
        
        label_ram:            out unsigned(3 downto 0);
        label_write_req:      out std_logic;
        label_addr:           out natural range 0 to (nb_examples_max - 1);
        
        axis_command:           in axis_command_t;
		opcode:                 out std_logic_vector(15 downto 0);
		task_done:           out std_logic );
    end component AXIS_controller;

    signal clk: std_logic;
    signal AXIS_in : AXIS_in_t;
    signal AXIS_out : AXIS_out_t;
    signal axis_command : axis_command_t;
    
    signal opcode: std_logic_vector(15 downto 0);
    signal task_done: std_logic;
    
    constant nb_features: natural := 5;
    constant nb_hidden_nodes: natural := 3;
    constant nb_output_nodes: natural := 1;
    constant examples_block_size: natural := 3;
    constant axis_data_width: natural := 32;
    constant nb_examples_max: natural := 200;
    constant single_ended: std_logic := '1';
    constant nb_examples : natural range 0 to (nb_examples_max-1) := 3;
    
    constant features_per_transfer : natural := axis_data_width / 8;
    constant transfers_per_example : natural := ceil_div((nb_features + 1), features_per_transfer);
    constant nb_transfers : natural := nb_examples * transfers_per_example;
    
    type features_t is array (0 to (nb_features*nb_examples - 1)) of signed(11 downto 0);
    signal features_RAM : features_t;
    type labels_t is array (0 to (nb_examples - 1)) of unsigned(3 downto 0);
    signal labels_RAM : labels_t;
    type weights1_t is array (0 to ((nb_features+1)*nb_hidden_nodes -1)) of signed(11 downto 0);
    signal weights1_RAM: weights1_t;
    type weights2_t is array (0 to ((nb_hidden_nodes+1)*nb_output_nodes -1)) of signed(11 downto 0);
    signal weights2_RAM: weights2_t;
    
    signal feature_ram, weight1_ram, weight2_ram : signed(11 downto 0);
    signal label_ram : unsigned(3 downto 0);
    signal feature_write_req, weight1_write_req, weight2_write_req, label_write_req : std_logic;
    signal feature_addr : natural range 0 to (nb_features*nb_examples_max - 1);
    signal weight1_addr : natural range 0 to ((nb_features+1)*nb_hidden_nodes);
    signal weight2_addr : natural range 0 to ((nb_hidden_nodes+1)*nb_output_nodes);
    signal label_addr: natural range 0 to (nb_examples_max - 1);
    
    type M_features_t is array (0 to (nb_examples*nb_features - 1)) of integer;
    signal M_features : M_features_t := (1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 200, 254, 255);
    type M_labels_t is array (0 to (nb_examples - 1)) of integer;
    signal M_labels : M_labels_t := (4, 7, 11);
    signal M_opcode : std_logic_vector(31 downto 0) := (others => '0');
    
    signal i : integer range 0 to (nb_transfers - 1) := 0;
    signal cnt_examples: natural range 0 to nb_examples := 0;
    
begin

    uut: AXIS_controller
    generic map (
        nb_features, nb_hidden_nodes, nb_output_nodes, 
        examples_block_size, axis_data_width, nb_examples_max)
    port map (
        clk, AXIS_in, AXIS_out, 
        feature_ram, feature_write_req, feature_addr,
        weight1_ram, weight1_write_req, weight1_addr,
        weight2_ram, weight2_write_req, weight2_addr,
        label_ram, label_write_req, label_addr,
        axis_command, opcode, task_done );
        
    AXIS_in.ARESETN <= '1';
    AXIS_in.S_AXIS_TLAST <= '0';
        
    sim: process
        variable T_half : time := 100 ns;
        variable offset: natural range 0 to nb_features*nb_examples := 0;
    begin
        M_opcode <= (15 => '0', 14 => '1', others => '0'); 
        M_opcode(13 downto 0) <= std_logic_vector(to_unsigned(nb_examples,14));
        
        AXIS_in.S_AXIS_TDATA <= (others => '0');
        AXIS_in.M_AXIS_TREADY <= '0';
        AXIS_in.S_AXIS_TVALID <= '0';
        axis_command <= axis_wait;
        clk <= '0';
        
        wait for T_half; clk <= '1';
        wait for T_half; clk <= '0';
        
        AXIS_in.S_AXIS_TDATA <= M_opcode;
        AXIS_in.S_AXIS_TVALID <= '1';
        axis_command <= axis_read_opcode;
        
        wait for T_half; clk <= '1';
        wait for T_half; clk <= '0';
        
        wait for T_half; clk <= '1';
        wait for T_half; clk <= '0';
        
        AXIS_in.S_AXIS_TVALID <= '0';
        axis_command <= axis_read_examples;
        
        wait for T_half; clk <= '1';
        wait for T_half; clk <= '0';
        
        axis_command <= axis_wait;
        
        while (i < nb_transfers ) loop
            AXIS_in.S_AXIS_TVALID <= '1';
            offset := cnt_examples * nb_features + (i - cnt_examples*transfers_per_example)*features_per_transfer;
            if ( ((i+1) mod transfers_per_example) = 0) then
                AXIS_in.S_AXIS_TDATA <= x"00000" & std_logic_vector(to_unsigned(M_labels((i+1)/transfers_per_example - 1),4)) 
                                                  & std_logic_vector(to_unsigned(M_features(offset),8));
            else
                AXIS_in.S_AXIS_TDATA <=   std_logic_vector(to_unsigned(M_features(3+offset),8)) 
                                        & std_logic_vector(to_unsigned(M_features(2+offset),8)) 
                                        & std_logic_vector(to_unsigned(M_features(1+offset),8)) 
                                        & std_logic_vector(to_unsigned(M_features(offset),8));
                
            end if;
            wait for T_half;
            if (AXIS_out.S_AXIS_TREADY = '1') then
                if ( ((i+1) mod transfers_per_example) = 0) then
                    cnt_examples <= cnt_examples + 1;
                end if;
                i <= i +1;
            end if;
            -- Check BRAM for write
            if (feature_write_req = '1') then
                features_RAM(feature_addr) <= feature_ram;
            end if;
            if (weight1_write_req = '1') then
                weights1_RAM(weight1_addr) <= weight1_ram;
            end if;
            if (weight2_write_req = '1') then
                weights2_RAM(weight2_addr) <= weight2_ram;
            end if;
            if (label_write_req = '1') then
                labels_RAM(label_addr) <= label_ram;
            end if;
            clk <= '1';
            wait for T_half;
            clk <= '0';
        end loop;
        
        wait for T_half; clk <= '1';
        wait for T_half; clk <= '0';
        
        wait for T_half; clk <= '1';
        wait for T_half; clk <= '0';
        
        wait;
    
    end process;

end Behavioral;
