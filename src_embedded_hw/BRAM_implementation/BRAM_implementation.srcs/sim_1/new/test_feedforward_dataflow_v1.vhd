library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity test_feedforward_dataflow_v1 is
--  Port ( );
end test_feedforward_dataflow_v1;

architecture Behavioral of test_feedforward_dataflow_v1 is

    component feedforward_dataflow is
    generic
    (
        nb_hidden_nodes:        Natural;
        nb_output_nodes:        Natural 
    );
    
    port
    (
        feature :       in signed(11 downto 0);
        weight1 :       in signed(11 downto 0);
        weight2 :       in signed(11 downto 0);
    
        result :        out signed(11 downto 0);
        counter_1 :     out Natural range 0 to (nb_hidden_nodes);
        
        clk :           in std_logic; 
        clk_EN :        in std_logic;
        rst_1 :         in std_logic
    );
    end component;

    constant nb_features : Natural := 3;
    constant nb_hidden_nodes : Natural := 3;
    
    type features_t is array (0 to (nb_features - 1)) of natural;
    signal features_RAM : features_t := (1,2,3);
    
    type weights_t is array (0 to (nb_hidden_nodes*(nb_features+1)-1)) of natural;
    signal weights_RAM: weights_t := (1,2,3,4,5,6,7,8,9,10,11,12);
    
    signal feature, weight1, weight2, result : signed(11 downto 0);
    signal counter_stage_1 : Natural range 0 to (nb_hidden_nodes);
    signal clk, clk_EN, rst_1: std_logic := '0';
   
begin

    uut: feedforward_dataflow
    generic map
    (
        nb_hidden_nodes => nb_hidden_nodes,
        nb_output_nodes => 1
    )
    port map
    (
        feature, weight1, weight2,
        result, counter_stage_1,
        clk, clk_EN, rst_1
    );

    sim: process
    --variable i : integer range 0 to 10;
    begin
    
        wait for 100 ns; clk <= '1';
        wait for 100 ns; clk <= '0';
        
        rst_1 <= '1';
        
        wait for 100 ns; clk <= '1';
        wait for 100 ns; clk <= '0';
        
        rst_1 <= '0';
        
        wait for 100 ns; clk <= '1';
        wait for 100 ns; clk <= '0';
        
        clk_EN <= '1';
        for i in 0 to 3 loop
            if (i = 0) then
                feature <= (0 => '1', others => '0');
            else
                feature <= to_signed(features_RAM(i-1),12);
            end if;
            for j in 0 to 2 loop
                weight1 <= to_signed(weights_RAM(i*3 + j),12);
                wait for 100 ns; clk <= '1';
                wait for 100 ns; clk <= '0';
            end loop;
        end loop;
        
        wait for 100 ns; clk <= '1';
        wait for 100 ns; clk <= '0';
        
        clk_EN <= '0';
        
        wait for 100 ns; clk <= '1';
        wait for 100 ns; clk <= '0';
        wait;
    end process;

end Behavioral;
