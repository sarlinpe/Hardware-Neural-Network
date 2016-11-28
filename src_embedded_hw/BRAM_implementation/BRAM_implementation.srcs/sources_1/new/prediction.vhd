library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.utility.all;

entity prediction is
    generic (
        nb_examples_max :       natural := 200;
        single_ended :          boolean := true;
        nb_classes :            natural := 3;
        nb_output_nodes :       natural := 1
        );
    port (
        clk:                        in std_logic;
        pred_req :                  in std_logic;
        pred_done :                 out std_logic;
        feedforward_out :           in feedforward_out_t(0 to (nb_output_nodes - 1));
        cnt_feedforward_out :       in natural range 0 to nb_examples_max;
        
        pred_ram :            out unsigned(3 downto 0);
        pred_addr :           out natural range 0 to (nb_examples_max - 1);
        pred_write_req :      out std_logic );
end prediction;

architecture version1 of prediction is

    constant step: natural:= (2**12)/nb_classes;
    
    signal cnt_classes, cnt_classes_next, idx_max, idx_max_next: natural range 0 to nb_classes;
    signal tmp, tmp_next: signed(11 downto 0);

begin

    predict_fsm_proc: process (clk) is
    begin
        if rising_edge(clk) then
            cnt_classes <= cnt_classes_next;
            tmp <= tmp_next;
            if (not single_ended) then
                idx_max <= idx_max_next;
            end if;
        end if;
    end process predict_fsm_proc;
    
    predict_combi_proc: process (cnt_classes, feedforward_out, tmp, cnt_feedforward_out, pred_req, idx_max) is
    begin
        cnt_classes_next <= cnt_classes;
        tmp_next <= tmp;
        idx_max_next <= idx_max;
        pred_ram <= (others => '-');
        pred_addr <= 0;
        pred_write_req <= '0';
        pred_done <= '0';
        
        if single_ended then
            if (cnt_classes = 0) then
                if (pred_req = '1') then
                    cnt_classes_next <= 1;
                    tmp_next <= feedforward_out(0);
                end if;
            else
                if(tmp > (2**11 - 1 - step)) then
                    pred_write_req <= '1';
                    pred_ram <= to_unsigned(cnt_classes,4);
                    pred_addr <= cnt_feedforward_out - 1;
                    pred_done<= '1';
                    cnt_classes_next <= 0;
                else
                    tmp_next <= tmp + to_signed(step,12);
                    cnt_classes_next <= cnt_classes + 1;
                end if;
            end if;
        else
            if (cnt_classes = 0) then
                if (pred_req = '1') then
                    cnt_classes_next <= 1;
                    tmp_next <= feedforward_out(0);
                    idx_max_next <= 0;
                end if;
            elsif (cnt_classes = nb_classes) then
                pred_write_req <= '1';
                pred_ram <= to_unsigned(idx_max,4);
                pred_addr <= cnt_feedforward_out - 1;
                pred_done<= '1';
                cnt_classes_next <= 0;
            else
                if(feedforward_out(cnt_classes) > tmp) then
                    tmp_next <= feedforward_out(cnt_classes);
                    idx_max_next <= cnt_classes;
                end if;
                cnt_classes_next <= cnt_classes + 1;
            end if;
        end if;
    
    end process predict_combi_proc;

end version1;
