library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.utility.all;

entity test_prediction_multi_ended is
--  Port ( );
end test_prediction_multi_ended;

architecture Behavioral of test_prediction_multi_ended is

    component prediction is
        generic (
            nb_examples_max :       natural;
            single_ended :          boolean;
            nb_classes :            natural;
            nb_output_nodes :       natural
            );
        port (
            clk:                        in std_logic;
            pred_req :                  in std_logic;
            pred_done :                 out std_logic;
            feedforward_out :    in feedforward_out_t(0 to (nb_output_nodes - 1));
            cnt_feedforward_out :       in natural range 0 to nb_examples_max;
            
            pred_ram :            out unsigned(3 downto 0);
            pred_addr :           out natural range 0 to nb_examples_max;
            pred_write_req :      out std_logic );		    
    end component prediction;

    -- Entity related parameters
    constant nb_features: natural := 13;
    constant nb_hidden_nodes: natural := 20;
    constant nb_classes: natural := 4;
    constant single_ended: boolean := false;
    constant nb_examples_max: natural := 200;
    constant axis_data_width: natural := 32;
    constant examples_block_size: natural := 8;
    
    constant nb_output_nodes: natural := sel(single_ended, 1, nb_classes);
    
    signal pred_req, pred_done, clk: std_logic := '0';
    signal cnt_feedforward_out: integer;
    signal result_raw: feedforward_out_t(0 to (nb_output_nodes - 1));

begin

    uut: prediction
    generic map (
        nb_examples_max, single_ended, nb_classes, nb_output_nodes )
    port map (
        clk => clk, pred_req => pred_req, pred_done => pred_done, feedforward_out => result_raw, 
        cnt_feedforward_out => cnt_feedforward_out, pred_ram => open, pred_addr => open, pred_write_req => open
    );
    
    sim_proc: process is
	variable T_half: time := 50 ns;
    begin
        cnt_feedforward_out <= 1;
	    result_raw <= (others => (others => '0'));

        wait for T_half; clk <= '1';
        wait for T_half; clk <= '0';

        cnt_feedforward_out <= 1;
	    pred_req <= '1';
	    result_raw <= (to_signed(3, 12), to_signed(2000, 12), to_signed(-1897, 12), to_signed(0, 12));
	    
	    for i in 0 to 5 loop
            wait for T_half; clk <= '1';
            wait for T_half; clk <= '0';
            pred_req <= '0';
	    end loop;
	    
	    cnt_feedforward_out <= 2;
	    pred_req <= '1';
        result_raw <= (to_signed(-22, 12), to_signed(-2040, 12), to_signed(-245, 12), to_signed(-2, 12));
                
        for i in 0 to 5 loop
            wait for T_half; clk <= '1';
            wait for T_half; clk <= '0';
            pred_req <= '0';
        end loop;
	
        wait;
    end process sim_proc;
	
    
end Behavioral;