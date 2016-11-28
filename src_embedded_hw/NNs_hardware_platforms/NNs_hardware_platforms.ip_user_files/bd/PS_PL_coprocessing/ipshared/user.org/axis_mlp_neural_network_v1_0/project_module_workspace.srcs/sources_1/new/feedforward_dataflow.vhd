library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.utility.all;

entity feedforward_dataflow is
    generic (
        nb_hidden_nodes:        natural;
        nb_output_nodes:        natural;
        delay_sigmoid:          natural 
    );
    port (
        feature :               in signed(11 downto 0);
        weight1 :               in signed(11 downto 0);
        weight2 :               in signed(11 downto 0);
        hidden_layer_out :      out activ1_out_t(0 to (nb_hidden_nodes - 1));
        raw_output :            out feedforward_out_t(0 to (nb_output_nodes-1));

        cnt_s1_hidden :         in natural range 0 to nb_hidden_nodes;
        cnt_s3_hidden :         in natural range 0 to nb_hidden_nodes;
        cnt_s3_out :            in natural range 0 to (nb_output_nodes - 1);
        
        clk :                   in std_logic;
        feedforward_en:         in std_logic;
        stage1_en :             in std_logic;
        stage1_rst :            in std_logic;
        stage2_latch :          in std_logic;
        stage3_en :             in std_logic;
        stage3_rst :            in std_logic;
        stage4_latch :          in std_logic 
    );
    
    attribute SIGIS : string; 
    attribute SIGIS of clk : signal is "Clk";
end feedforward_dataflow;


architecture version1 of feedforward_dataflow is
    
    -- Stage 1 registers
    signal prod_s1, buf_prod_s1: signed(23 downto 0);
    signal buf_weight_s1, buf_feat_s1: signed(11 downto 0);
    type sum_s1_t is array (0 to (nb_hidden_nodes - 1)) of signed(31 downto 0);
    signal sum_s1: sum_s1_t := (others => (others => '0'));
    signal idx_sum1_tmp1, idx_sum1_tmp2, idx_sum1_tmp3, idx_sum1_tmp4  : natural range 0 to (nb_hidden_nodes - 1) := 0;
    
    -- Stage 2 registers
    type activ1_in_t is array (0 to (nb_hidden_nodes - 1)) of signed(31 downto 0);
    signal activ1_in: activ1_in_t;
    type activ1_out_t is array (0 to (nb_hidden_nodes - 1)) of signed(11 downto 0);
    signal activ1_out: activ1_out_t;
    type latch_hidden_layer_t is array (0 to (nb_hidden_nodes - 1)) of signed(11 downto 0);
    signal latch_hidden_layer: latch_hidden_layer_t := (others => (others => '0'));
    
    -- Stage 3 registers
    signal prod_s3, buf_prod_s3: signed(23 downto 0);
    signal buf_weight_s3, buf_feat_s3: signed(11 downto 0);
    type sum_s3_t is array (0 to (nb_output_nodes - 1)) of signed(31 downto 0);
    signal sum_s3: sum_s3_t;
    signal idx_sum3_tmp1, idx_sum3_tmp2, idx_sum3_tmp3, idx_sum3_tmp4 : natural range 0 to (nb_output_nodes - 1) := 0;
    signal idx_prod3_tmp1, idx_prod3_tmp2 : natural range 0 to nb_hidden_nodes := 0;
    
    -- Stage 4 registers
    type activ2_in_t is array (0 to (nb_output_nodes - 1)) of signed(31 downto 0);
    signal activ2_in: activ2_in_t;
    type activ2_out_t is array (0 to (nb_output_nodes - 1)) of signed(11 downto 0);
    signal activ2_out: activ2_out_t;
    type latch_output_layer_t is array (0 to (nb_output_nodes - 1)) of signed(11 downto 0);
    signal latch_output_layer: latch_output_layer_t := (others => (others => '-'));
    
    component sigmoid is
    port (
        input :    in signed(31 downto 0);
        output :   out signed(11 downto 0);
        clk :      in std_logic;
        en :       in std_logic );
    end component;
begin

    activation_1 :
    for i in 0 to (nb_hidden_nodes - 1) generate
        sigmoid_instances1 : sigmoid
        port map (
            input => activ1_in(i),
            output => activ1_out(i),
            clk => clk,
            en => feedforward_en);
    end generate activation_1;
    
    activation_2 :
    for i in 0 to (nb_output_nodes - 1) generate
        sigmoid_instances2 : sigmoid
        port map (
            input => activ2_in(i),
            output => activ2_out(i),
            clk => clk,
            en => feedforward_en );
    end generate activation_2;
    
    output_result: for i in 0 to (nb_output_nodes - 1) generate
        raw_output(i) <= latch_output_layer(i);
    end generate output_result;
    
    -- Stage 1: dot product inputs x weight1, for every hidden node
    stage_1 : process(clk) is
    begin
        if rising_edge(clk) then
            if(feedforward_en = '1') then
            
                idx_sum1_tmp1 <= cnt_s1_hidden;
                idx_sum1_tmp2 <= idx_sum1_tmp1;
                idx_sum1_tmp3 <= idx_sum1_tmp2;
                idx_sum1_tmp4 <= idx_sum1_tmp3;
            
                if (stage1_rst = '1') then
                    -- Reset all internal registers
                    buf_weight_s1 <= (others => '0');
                    buf_feat_s1 <= (others => '0');
                    prod_s1 <= (others => '0');
                    buf_prod_s1 <= (others => '0');
                    sum_s1 <= (others => (others => '0'));
                    idx_sum1_tmp2 <= 0;
                    idx_sum1_tmp3 <= 0;
                    idx_sum1_tmp4 <= 0;
                    
                elsif (stage1_en = '1') then
        
                    buf_weight_s1 <= weight1;
                    buf_feat_s1 <= feature;
                    prod_s1 <= buf_feat_s1 * buf_weight_s1;
                    buf_prod_s1 <= prod_s1;
                    sum_s1(idx_sum1_tmp4) <= sum_s1(idx_sum1_tmp4) + buf_prod_s1;
                end if;
            end if;
        end if;
    end process stage_1;
    
    -- Stage 2: activation function for every hidden node
    activation1_input : for i in 0 to (nb_hidden_nodes - 1) generate
        activ1_in(i) <= sum_s1(i);
        hidden_layer_out(i) <= latch_hidden_layer(i);
    end generate;
    
    stage_2 : process(clk) is
    begin
        if rising_edge(clk) then
            if (feedforward_en = '1') then
            if (stage2_latch = '1') then
                    for i in 0 to (nb_hidden_nodes - 1) loop
                        latch_hidden_layer(i) <= activ1_out(i);
                    end loop;
                end if;
            end if;
        end if;
    end process stage_2;
    
    -- Stage 3: dot product (outputs of hidden layer) x weight2, for every output node
    stage_3 : process(clk) is
    begin
        if rising_edge(clk) then
            if (feedforward_en = '1') then
            
                idx_sum3_tmp1 <= cnt_s3_out;
                idx_sum3_tmp2 <= idx_sum3_tmp1;
                idx_sum3_tmp3 <= idx_sum3_tmp2;
                idx_sum3_tmp4 <= idx_sum3_tmp3;
                
                idx_prod3_tmp1 <= cnt_s3_hidden;
                idx_prod3_tmp2 <= idx_prod3_tmp1;
                
                if (stage3_rst = '1') then
                    -- Reset all internal registers
                    buf_weight_s3 <= (others => '0');
                    buf_feat_s3 <= (others => '0');
                    prod_s3 <= (others => '0');
                    buf_prod_s3 <= (others => '0');
                    sum_s3 <= (others => (others => '0'));
                    idx_sum3_tmp2 <= 0;
                    idx_sum3_tmp3 <= 0;
                    idx_sum3_tmp4 <= 0;
                    
                elsif (stage3_en = '1') then
                    buf_weight_s3 <= weight2;
                    if (idx_prod3_tmp1 = 0) then
                        --prod_s3 <= to_signed(1,12) * weight2; -- bias values
                        buf_feat_s3 <= to_signed(1,12);
                    else
                        --prod_s3 <= latch_hidden_layer(idx_prod3_tmp - 1) * weight2;
                        buf_feat_s3 <= latch_hidden_layer(idx_prod3_tmp1 - 1);
                    end if;
                    prod_s3 <= buf_weight_s3 * buf_feat_s3;
                    buf_prod_s3 <= prod_s3;
                    sum_s3(idx_sum3_tmp4) <= sum_s3(idx_sum3_tmp4) + buf_prod_s3;
                end if;
            end if;
        end if;
    end process stage_3;

    -- Stage 4: activation function for every hidden node
    activation2_input : for i in 0 to (nb_output_nodes - 1) generate
        activ2_in(i) <= sum_s3(i);
    end generate;
    
    stage_4 : process(clk) is
    begin
        if rising_edge(clk) then
            if (feedforward_en = '1') then
                if (stage4_latch = '1') then
                    for i in 0 to (nb_output_nodes - 1) loop
                        latch_output_layer(i) <= activ2_out(i);
                    end loop;
                end if;
            end if;
        end if;
    end process stage_4;

end version1;
