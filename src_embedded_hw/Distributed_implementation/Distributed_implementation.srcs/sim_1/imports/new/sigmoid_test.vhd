----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 26.10.2016 22:22:34
-- Design Name: 
-- Module Name: sigmoid_test - sigmoid_t
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity sigmoid_test is
    --Port ( );
end sigmoid_test;

architecture sigmoid_t of sigmoid_test is

    component sigmoid
        PORT(
               input : in signed (31 downto 0);
               output : out signed (11 downto 0);
               ACLK : in STD_LOGIC
        );
    end component; 
    signal input : signed (31 downto 0) := to_signed(0,32);
    signal output : signed (11 downto 0):= to_signed(0,12);
    signal ACLK : STD_LOGIC :='0';
    
 begin
    uut : sigmoid PORT MAP(
        input => input,
        output => output,
        ACLK => ACLK
    );
    
    simulation : process
    begin
            -- setting everything to o
        ACLK <= '0';
        wait for 20 ns;
        ACLK <= '1';
        wait for 20 ns;
       
       
        ACLK <= '0';
        wait for 20 ns;
        ACLK <= '1';
        wait for 20 ns;
        
        input <= to_signed(-225,32); 
                 
        ACLK <= '0';
        wait for 20 ns;
        ACLK <= '1';
        wait for 20 ns;
             
        input <= to_signed(2802,32);
                 
        ACLK <= '0';
        wait for 20 ns;
        ACLK <= '1';
        wait for 20 ns;

        input <= to_signed(-40960,32); 
                         
        ACLK <= '0';
        wait for 20 ns;
        ACLK <= '1';
        wait for 20 ns;
    
        input <= to_signed(41200,32);
                                
        ACLK <= '0';
        wait for 20 ns; 
        ACLK <= '1';
        wait for 20 ns;
        
        input <= to_signed(-65304,32);
                                        
        ACLK <= '0';
        wait for 20 ns;
        ACLK <= '1';
        wait for 20 ns;
                
        input <= to_signed(986397,32); 
                                                
        ACLK <= '0';
        wait for 20 ns;
        ACLK <= '1';
        wait for 20 ns;        
        
        input <= to_signed(-16371985,32);
                                                                
        ACLK <= '0';
        wait for 20 ns;
        ACLK <= '1';
        wait for 20 ns;
        
        input <= to_signed(16773120,32);
                                                                        
        ACLK <= '0';
        wait for 20 ns;
        ACLK <= '1';
        wait for 20 ns;
        
        input <= to_signed(-33554432,32);
        
        ACLK <= '0';
        wait for 20 ns;
        ACLK <= '1';
        wait for 20 ns;
                
        input <= to_signed(0,32);
        
--        for i in 0 to 10 loop                                                                
--        ACLK <= '0';
--        wait for 20 ns;
--        ACLK <= '1';
--        wait for 20 ns;
--        end loop;
        
    end process;
end sigmoid_t;
