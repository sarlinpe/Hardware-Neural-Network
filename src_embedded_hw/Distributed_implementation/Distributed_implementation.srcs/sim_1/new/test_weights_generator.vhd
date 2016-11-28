library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.utility.all;

entity test_weights_generator is
--  Port ( );
end test_weights_generator;

architecture Behavioral of test_weights_generator is

    component weights_generator is
    generic (
        nb_features :           natural;
        nb_hidden_nodes:        natural;
        nb_output_nodes :       natural );
    port ( 
       clk :                    in std_logic;
       clk_en :                 in std_logic;
       reset :                  in std_logic;
       gen_req :                in std_logic;
       gen_done :               out std_logic;
       
       weight1_ram :            out signed(11 downto 0);
       weight1_addr :           out natural range 0 to ((nb_features+1)*nb_hidden_nodes - 1);
       weight1_write_req :      out std_logic;
       
       weight2_ram :            out signed(11 downto 0);
       weight2_addr :           out natural range 0 to ((nb_hidden_nodes+1)*nb_output_nodes - 1);
       weight2_write_req :      out std_logic );
    end component weights_generator;

    -- Entity related parameters
    constant nb_features: natural := 5;
    constant nb_hidden_nodes: natural := 3;
    constant nb_classes: natural := 3;
    constant single_ended: boolean := true;
    
    constant nb_output_nodes: natural := sel(single_ended, 1, nb_classes);
    
    -- BRAM inference
    type weights1_t is array (0 to ((nb_features+1)*nb_hidden_nodes -1)) of signed(11 downto 0);
    signal weights1_RAM: weights1_t;
    type weights2_t is array (0 to ((nb_hidden_nodes+1)*nb_output_nodes -1)) of signed(11 downto 0);
    signal weights2_RAM: weights2_t;
    
    signal weight1_ram, weight2_ram : signed(11 downto 0);
    signal weight1_write_req, weight2_write_req : std_logic;
    signal weight1_addr: natural range 0 to ((nb_features+1)*nb_hidden_nodes);
    signal weight2_addr: natural range 0 to ((nb_hidden_nodes+1)*nb_output_nodes);
    
    signal clk, gen_req, gen_done : std_logic;

begin

    uut: weights_generator
    generic map ( nb_features, nb_hidden_nodes, nb_output_nodes )
    port map ( clk => clk, clk_en => '1', reset => '1',
               gen_req => gen_req, gen_done => gen_done,
               weight1_ram => weight1_ram, weight1_addr => weight1_addr, weight1_write_req => weight1_write_req,
               weight2_ram => weight2_ram, weight2_addr => weight2_addr, weight2_write_req => weight2_write_req );
               
    sim: process is
        variable T_half : time := 50 ns;
    begin
        clk <= '0';
        gen_req <= '0';
        
        for i in 0 to 5 loop
            wait for T_half; clk <= '1';
            wait for T_half; clk <= '0';
        end loop;
        
        gen_req <= '1';
        
        loop
            if (weight1_write_req = '1') then
                weights1_RAM(weight1_addr) <= weight1_ram;
            end if;
            if (weight2_write_req = '1') then
                weights2_RAM(weight2_addr) <= weight2_ram;
            end if;
            if (gen_done = '1') then
                exit;
            end if;
            wait for T_half; clk <= '1';
            wait for T_half; clk <= '0';
            gen_req <= '0';
        end loop;
        
        wait for T_half; clk <= '1';
        wait for T_half; clk <= '0';
        
        wait;
    end process sim;


end Behavioral;
