library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.utility.all;

entity weights_generator is
    generic (
        nb_features :           natural := 13;
        nb_hidden_nodes:        natural := 20;
        nb_output_nodes :       natural := 1);
    port ( 
       clk, clk_en, reset, gen_req :            in std_logic;
       gen_done :                               out std_logic;
       weight1_ram, weight2_ram :               out signed(11 downto 0);
       weight1_addr :                           out natural range 0 to ((nb_features+1)*nb_hidden_nodes - 1);
       weight2_addr :                           out natural range 0 to ((nb_hidden_nodes+1)*nb_output_nodes - 1);
       weight1_write_req, weight2_write_req :   out std_logic );
end weights_generator;

architecture version1 of weights_generator is

    component lfsr_counter is
    port (
        ce , rst, clk :     in std_logic;
        lfsr_done :         out std_logic;
        count:              out std_logic_vector (11 downto 0);
        seed:               in std_logic_vector (11 downto 0) );
    end component lfsr_counter;
    
    signal count, seed: std_logic_vector (11 downto 0);
    signal lfsr_rst: std_logic := '0';
    type state_t is (gen_wait, gen_weights1, gen_weights2);
    signal state_curr, state_next : state_t := gen_wait;
    signal cnt_weights, cnt_weights_next: natural range 0 to max( (nb_features+1)*nb_hidden_nodes,
                                                                  (nb_hidden_nodes+1)*nb_output_nodes ) := 0;

begin

    RNG_unit: lfsr_counter
    port map (
        ce => clk_en, rst => lfsr_rst, clk => clk, 
        lfsr_done => open, count => count, seed => seed );
        
    fsm_proc: process (clk) is
    begin
        if rising_edge(clk) then
            if (clk_en = '1') then
                state_curr <= state_next;
                cnt_weights <= cnt_weights_next;
            end if;
        end if;
    end process fsm_proc;
    
    seed <= x"6BF"; -- could be set by user using DIP switches, or by reading floating ADC pin value...
    
    combi_proc: process (reset, state_curr, cnt_weights, count, gen_req) is
    begin
    
        weight1_ram <= (others => '-');
        weight1_write_req <= '0';
        weight1_addr <= 0;
        weight2_ram <= (others => '-');
        weight2_write_req <= '0';
        weight2_addr <= 0;
        gen_done <= '0';
        state_next <= state_curr;
        cnt_weights_next <= cnt_weights;
                
        if (reset = '0') then -- Active low
            state_next <= gen_wait;
            cnt_weights_next <= 0;
        else
            case state_curr is
                when gen_wait =>
                    if (gen_req = '1') then
                        state_next <= gen_weights1;
                        cnt_weights_next <= 0;
                    end if;
                    
                when gen_weights1 =>
                    weight1_ram <= signed(count);
                    weight1_write_req <= '1';
                    weight1_addr <= cnt_weights;
                    if (cnt_weights = ((nb_features+1)*nb_hidden_nodes - 1)) then
                        cnt_weights_next <= 0;
                        state_next <= gen_weights2;
                    else
                        cnt_weights_next <= cnt_weights + 1;
                    end if;
                    
                when others => -- gen_weights2
                    weight2_ram <= signed(count);
                    weight2_write_req <= '1';
                    weight2_addr <= cnt_weights;
                    if (cnt_weights = ((nb_hidden_nodes+1)*nb_output_nodes - 1)) then
                        cnt_weights_next <= 0;
                        state_next <= gen_wait;
                        gen_done <= '1';
                    else
                        cnt_weights_next <= cnt_weights + 1;
                    end if;
                
            end case;
        end if;
    end process combi_proc;

end version1;
