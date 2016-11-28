library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Simulation time: 4000 ns

entity test_lfsr_counter is
--  Port ( );
end test_lfsr_counter;

architecture Behavioral of test_lfsr_counter is

    component lfsr_counter is
    port (
        ce , rst, clk : in std_logic;
        lfsr_done : out std_logic;
        count: out std_logic_vector (11 downto 0);
        seed: in std_logic_vector (11 downto 0) );
    end component lfsr_counter;

    signal ce, rst, clk, lfsr_done: std_logic;
    signal count, seed: std_logic_vector (11 downto 0);
    

begin

    uut: lfsr_counter
    port map (
        ce, rst, clk, lfsr_done, count, seed );
        
    sim : process is
        variable T_half : time := 50 ns;
    begin
        ce <= '1';
        clk <= '0';
        seed <= x"86B";
        
        rst <= '1'; -- Initialiaze counter
        wait for T_half; clk <= '1';
        wait for T_half; clk <= '0';
        rst <= '0';
        
        for i in 0 to 100 loop
            wait for T_half; clk <= '1';
            wait for T_half; clk <= '0';
        end loop;
        
        wait;
    end process sim;

end Behavioral;
