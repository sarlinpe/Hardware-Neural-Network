library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity sigmoid is
    Port ( input    : in signed (31 downto 0);
           output   : out signed (11 downto 0);
           clk      : in std_logic;
           en       : in std_logic );
           
    attribute SIGIS : string; 
    attribute SIGIS of clk : signal is "Clk";
end sigmoid;


architecture version1 of sigmoid is

    constant Saturation_in : signed(31 downto 0) := x"01000000"; --to_signed(16777216,32);
    constant Max_out : unsigned (11 downto 0) := to_unsigned(2**11 - 1,12);

    type state is (SET_MAX, SET_MIN, SET_0, IN_POS, IN_NEG);
    signal CODE_1,CODE_2, CODE_3 : state;
    signal tmp1 : unsigned (15 downto 0);
    signal tmp2 : unsigned(31 downto 0);
    signal tmp3 : unsigned(31 downto 0);
    
begin    
       
     input_proc : process (clk) is
        variable var1 : unsigned (31 downto 0);
         begin
            if rising_edge(clk) then
                if (en = '1') then 
                 -- determining state
                    if (input >= 0) then
                        if (input = to_signed(0,32)) then
                            CODE_1 <= SET_0;
                        elsif (input >= Saturation_in) then
                            CODE_1 <= SET_MAX;
                        else
                            CODE_1 <= IN_POS;
                        end if;
                        var1 := unsigned(Saturation_in-input);
                    else
                       if (input <= -Saturation_in) then
                          CODE_1 <= SET_MIN;
                        else
                          CODE_1 <= IN_NEG;
                        end if;
                        var1 :=  unsigned(Saturation_in+input);
                    end if;
                
                    tmp1 <= var1(23 downto 8);
                    tmp2 <= tmp1*tmp1;
                    tmp3 <= tmp2;
                    CODE_2 <= CODE_1;
                    CODE_3 <= CODE_2;
                end if;
            end if;
     end process input_proc;
     
     output_proc : process (tmp3, CODE_3)
        variable var2 : unsigned(11 downto 0);
        variable var3 : signed(11 downto 0);
        begin
            var2 := '0' & tmp3(31 downto 21);
            var3 := signed(Max_out-var2);
            case CODE_3 is
              when SET_MAX =>
                output <= signed(Max_out);
              when SET_MIN =>
                output <= -signed(Max_out);
              when SET_0 =>
                output <= to_signed(0,12);
              when IN_POS =>
                output <= var3;
              when IN_NEG =>
                output <= -var3;
            end case;
     end process output_proc;   
     
end version1;
