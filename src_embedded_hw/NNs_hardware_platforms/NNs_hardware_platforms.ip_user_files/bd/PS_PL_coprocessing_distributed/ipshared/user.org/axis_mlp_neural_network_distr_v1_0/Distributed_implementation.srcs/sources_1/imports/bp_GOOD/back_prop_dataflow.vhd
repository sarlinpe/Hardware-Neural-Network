library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.utility.all;

entity back_prop_dataflow_BRAM is
    generic
    (
        nb_features          : natural := 13;
        nb_hidden_nodes      : natural := 4;
        nb_output_nodes      : natural := 1;
        nb_classes           : natural := 10
    );

    port
    (
        ---------------BRAM INTERFACE-------------------
        weight1_read_ram            : in signed(11 downto 0);
        weight1_write_ram           : out signed(11 downto 0);
        weight2_read_ram            : in signed(11 downto 0);
        weight2_write_ram           : out signed(11 downto 0);
        BIG_DELTA1_read_ram         : in signed(31 downto 0);
        BIG_DELTA1_write_ram1        : out signed(31 downto 0);
        BIG_DELTA1_write_ram2        : out signed(31 downto 0);
        BIG_DELTA2_read_ram         : in signed(31 downto 0);
        BIG_DELTA2_write_ram1        : out signed(31 downto 0);
        BIG_DELTA2_write_ram2        : out signed(31 downto 0);
        feature_read_ram            : in signed(11 downto 0);
        label_read_ram              : in unsigned (3 downto 0);
        -----------------------
        CLK                         : in STD_LOGIC;
        backprop_en                 : in std_logic;
        feedforward_out                      : in feedforward_out_t(0 to nb_output_nodes-1);
        activ1_out                          : in activ1_out_t(0 to nb_hidden_nodes-1);
        ----Control_inputs-----
        stage1_en                   : in STD_LOGIC;
        update_delta3_en            : in STD_LOGIC;
        stage2_rst                  : in STD_LOGIC;
        stage2_en                   : in STD_LOGIC;
        latch_stage3_en             : in STD_LOGIC;
        stage3_en                   : in STD_LOGIC;
        cnt_hidden_nodes            : in NATURAL range 0 to (nb_hidden_nodes+3);
        cnt_output_nodes            : in NATURAL range 0 to (nb_output_nodes-1);
        cnt_features                : in NATURAL range 0  to (nb_features+3);
        cnt_hidden_nodes_st3        : in NATURAL range 0 to (nb_hidden_nodes-1);
        stage2_finished             : in STD_LOGIC;
        updating_weights_done_loc   : in STD_LOGIC;
        -----Control_outputs-----------
        sum_delta2_same             : out STD_LOGIC;
        FSM2_latch                  : out STD_LOGIC;
        FSM1_latch                  : out STD_LOGIC;
        cost                        : out unsigned(15 downto 0)
     );

    attribute SIGIS : string;
    attribute SIGIS of clk : signal is "Clk";

end back_prop_dataflow_BRAM;



architecture version1 of back_prop_dataflow_BRAM is

    attribute mark_debug : string;
    attribute keep : string;

  --------defining-constants-------------
  constant B_square                 : unsigned(21 downto 0) := to_unsigned(((2**11) - 1)*((2**11) - 1),22);
  -----defining-types-----
  type sum_delta2_t is array (0 to nb_hidden_nodes-1) of signed(27 downto 0);
  type Derivative_t is array (0 to nb_hidden_nodes-1) of unsigned(21 downto 0);
  type scaled_labels_t is array (0 to nb_classes-1) of signed(11 downto 0);      -- problem: only works for one output node
  type expected_scaled_result_t is array (0 to nb_output_nodes-1) of signed(11 downto 0);
  ----signals-------------
  signal scaled_labels              : scaled_labels_t;
  ----signals-stage-1-----
  signal stored_result              : feedforward_out_t(0 to nb_output_nodes-1) := (others => (others => '0'));
  signal stored_a2                  : activ1_out_t(0 to nb_hidden_nodes-1);
  signal expected_scaled_result     : expected_scaled_result_t;
  signal delta3                     : signed(12 downto 0);
  ----signals-stage-2-----
  signal add_sum_delta2             : signed(24 downto 0);
  signal sum_delta2                 : sum_delta2_t := (others => (others => '0'));
  signal a2_square                  : unsigned(21 downto 0);
  signal add_BIG_DELTA2             : signed(24 downto 0);
  signal Derivative                 : Derivative_t;
  ----signals-stage-3-----
  signal delta2                     : signed(12 downto 0);
  signal sum_delta2_store           : sum_delta2_t := (others => (others => '0'));
  signal Derivative_store           : Derivative_t;
  signal add_BIG_DELTA1             : signed(24 downto 0);
  ----------- added signals--------
  signal next_weight2_write_ram     : signed(11 downto 0);
  signal next_weight1_write_ram     : signed(11 downto 0);
  signal next_BIG_DELTA1_write_ram2 : signed(31 downto 0);
  signal next_BIG_DELTA2_write_ram2 : signed(31 downto 0);
  signal delta3_square_tmp1         : unsigned(25 downto 0);
  signal delta3_square              : unsigned(15 downto 0);
  signal cost_loc                   : unsigned(23 downto 0) := (others => '0');
  signal next_BIG_DELTA2_write_ram1 : signed(31 downto 0);

  begin


    ---creating-look-up-table-for-the-scaling-of-expected-input------------
    nb_output_nodes_check : if nb_output_nodes = 1 generate
      label_scaling : for i in 0 to nb_classes-1 generate
        scaled_labels(i) <= to_signed(-2048+(4095/(nb_classes-1))*i,12);
        end generate label_scaling;
    end generate nb_output_nodes_check;
--    nb_output_nodes_check_2 : if nb_output_nodes > 1 generate
--       label_scaling_2 : for i in 0 to 1 generate
--          scaled_labels(i) <= to_signed(-2048+4095*i,12);
--        end generate label_scaling_2;
--    end generate nb_output_nodes_check_2;
    -------------------------------------------------------------------------
        
        
        
        --------------------------Storing_Input_and_updating_delta_3------------------------------
        stage_1 : process (CLK) is
        begin
            if rising_edge(CLK) then
            if (backprop_en = '1') then
            FSM1_latch <= '0';
                if (stage1_en ='1') then -- store_new_output
                    FSM1_latch <= '1';
                    stored_result <= feedforward_out;
                    stored_a2 <= activ1_out;
                    if (nb_output_nodes=1) then
                        expected_scaled_result(0) <= scaled_labels(to_integer(label_read_ram));
                    else
                        expected_scaled_result <= (others => to_signed(-2048,12));
                        expected_scaled_result(to_integer(label_read_ram)) <= to_signed(2047,12);
                    end if;
               -- elsif (update_delta3_en='1') then
                  --  expected_scaled_result <= scaled_labels(to_integer(label_read_ram));
                end if;
            end if;
            end if;
        end process stage_1;
        
       stage1_comb : process (stored_result, cnt_output_nodes, expected_scaled_result) is
       begin
            delta3 <= resize(stored_result(cnt_output_nodes),13)-resize(expected_scaled_result(cnt_output_nodes),13);
       end process stage1_comb;
            -- calc cost---
       calc_delta2_sq : process (CLK) is
       begin
       if rising_edge(CLK) then
            if (backprop_en = '1') then
                delta3_square_tmp1 <= unsigned(delta3*delta3);  -- 24 bits
                delta3_square <= delta3_square_tmp1(23 downto 8);
            end if;
       end if;
       end process calc_delta2_sq;   
            
        
        calc_cost : process (CLK) is
        begin
            if rising_edge(CLK) then
                if (backprop_en = '1') then
                if (updating_weights_done_loc = '1') then
                    cost_loc <= (others => '0');
                    cost <= cost_loc(23 downto 8);
                elsif (stage2_finished = '1') then
                    cost_loc <= cost_loc + delta3_square;
                end if;
                end if;
            end if;
        end process calc_cost;

        ---------------------------multiplying_weights_and_updating_DELTA_2--------------------------
        stage_2 : process (CLK) is
        variable a2_square_tmp : unsigned(23 downto 0);
        begin
            if rising_edge(CLK) then
                if (backprop_en = '1') then
                if (stage2_rst='1') then
                   sum_delta2 <= (others => (others => '0'));
                elsif (stage2_en='1') then -- cnt_hidden_nodes from 0 to nb_hidden_nodes+1
                    if ((0 < cnt_hidden_nodes) and (cnt_hidden_nodes < (nb_hidden_nodes+2))) then
                       if (cnt_hidden_nodes=1) then
                            add_BIG_DELTA2 <= resize(delta3,25);
                       else
                            add_BIG_DELTA2 <= stored_a2(cnt_hidden_nodes-2)*delta3;
                       end if;
                    end if;
                    add_sum_delta2 <= weight2_read_ram*delta3; -- input valid weight 2 for cnt_hidden_nodes 1 to nb_hidden_nodes
                    if ((1 < cnt_hidden_nodes) and (cnt_hidden_nodes < (nb_hidden_nodes+2))) then
                        sum_delta2(cnt_hidden_nodes-2) <= sum_delta2(cnt_hidden_nodes-2) + add_sum_delta2;
                    end if;
                    if (cnt_output_nodes=0) then
                        if (cnt_hidden_nodes < nb_hidden_nodes) then
                            a2_square_tmp := unsigned(stored_a2(cnt_hidden_nodes)*stored_a2(cnt_hidden_nodes)); -- unsigned 24
                            a2_square <= a2_square_tmp(21 downto 0);
                        end if;
                        if ((0 < cnt_hidden_nodes) and (cnt_hidden_nodes < (nb_hidden_nodes+1))) then
                            Derivative(cnt_hidden_nodes-1) <= (B_square-a2_square);
                        end if;
                    end if;
                end if;
                end if;
            end if;
        end process stage_2;

        stage_2_comb : process (BIG_DELTA2_read_ram, add_BIG_DELTA2) is
        begin
            next_BIG_DELTA2_write_ram1 <= BIG_DELTA2_read_ram+add_BIG_DELTA2; -- valid BIG_DELTA_2 for cnt_hidden_node 1 to nb_hidden_node+1
        end process stage_2_comb;
        clk_pro : process (CLK) is
        begin
            if rising_edge(CLK) then
                if (backprop_en = '1') then
                    BIG_DELTA2_write_ram1 <= next_BIG_DELTA2_write_ram1;
                end if;
            end if;
        end process clk_pro;
                 
        ---------------------------calculating_delta_2_and_DELTA_1-----------------------
        stage_3 : process (CLK) is
        variable tmp_delta2 : signed(50 downto 0);
        begin
            if rising_edge(CLK) then
                if (backprop_en = '1') then
                FSM2_latch <= '0';
                if (latch_stage3_en='1') then
                    ---------latch_sum_delta_2----------
                    sum_delta2_store <= sum_delta2;
                    Derivative_store <= Derivative;
                    FSM2_latch <= '1';
                    -------resetting_counter------------
                elsif (stage3_en='1') then
                    --tmp_delta2 := signed(resize(Derivative_store(cnt_hidden_nodes_st3),28))*sum_delta2_store(cnt_hidden_nodes_st3); -- error
                    tmp_delta2 := signed('0'&Derivative_store(cnt_hidden_nodes_st3))*sum_delta2_store(cnt_hidden_nodes_st3);
                    delta2 <= tmp_delta2(49 downto 37);
                    if (cnt_features < 2) then
                        add_BIG_DELTA1 <= resize(delta2,25);
                    else
                        add_BIG_DELTA1 <= delta2*feature_read_ram;
                    end if;
                end if;
                BIG_DELTA1_write_ram1 <= BIG_DELTA1_read_ram+add_BIG_DELTA1;
                end if;
            end if;
        end process stage_3;

--        stage_3_comb : process (BIG_DELTA1_read_ram, add_BIG_DELTA1) is
--        begin
--              BIG_DELTA1_write_ram1 <= BIG_DELTA1_read_ram+add_BIG_DELTA1; -- valid BIG_DELTA_1 for cnt_features 2 to nb_features+2
--        end process stage_3_comb;


        --------------------Updating_the_Weights-------------------
        -- does is make sense to have 32 bits for BIG_DELTA and than shift by 20 bits?
        -- Maybe updating weights in controller since just substraction?
--        stage_4 : process (CLK) is ---- error read write at same time
--        begin
--            if rising_edge(CLK) then
--                weight2_write_ram <= weight2_read_ram - BIG_DELTA2_read_ram(31 downto 20);
--                weight1_write_ram <= weight1_read_ram - BIG_DELTA1_read_ram(31 downto 20);
--                BIG_DELTA1_write_ram2 <= to_signed(0,32);
--                BIG_DELTA2_write_ram2 <= to_signed(0,32);
--            end if;
--        end process stage_4;

        stage_4 : process (CLK) is
        begin
            if rising_edge(CLK) then
                if (backprop_en = '1') then
                next_weight2_write_ram <= weight2_read_ram - BIG_DELTA2_read_ram(31 downto 20);
                next_weight1_write_ram <= weight1_read_ram - BIG_DELTA1_read_ram(31 downto 20);
                next_BIG_DELTA1_write_ram2 <= to_signed(0,32);
                next_BIG_DELTA2_write_ram2 <= to_signed(0,32);
                weight2_write_ram <= next_weight2_write_ram;
                weight1_write_ram <= next_weight1_write_ram;
                BIG_DELTA1_write_ram2 <= next_BIG_DELTA1_write_ram2;
                BIG_DELTA2_write_ram2 <= next_BIG_DELTA2_write_ram2;
                end if;
            end if;
        end process stage_4;

        ---------------------supplementary-processes------------------------
        --------------------------------------------------------------------

        ---checking-if-input-to-backpropagation-is-different-from-stored-input---


--        check_input : process (feedforward_out, stored_result) is
--        begin
--            if (feedforward_out=stored_result) then
--                result_waiting <= '0';
--            else
--                result_waiting <= '1';
--            end if;
--        end process check_input;


        -------------
        check_input_stage_3 : process (sum_delta2_store, sum_delta2) is
        begin
            if (sum_delta2_store = sum_delta2) then
               sum_delta2_same <= '1';
           else
               sum_delta2_same <= '0';
           end if;
        end process check_input_stage_3;
end version1;

