-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.2 (lin64) Build 1577090 Thu Jun  2 16:32:35 MDT 2016
-- Date        : Thu Nov  3 13:02:19 2016
-- Host        : Paul-Edouard running 64-bit Ubuntu 14.04.5 LTS
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               /home/pe_s/Documents/EHSD/Project/Hardware_designs/project_module_workspace/project_module_workspace.sim/sim_1/synth/func/test_main_controller_v1_func_synth.vhd
-- Design      : main_controller
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity AXIS_controller is
  port (
    \cnt_weights_reg[0]_0\ : out STD_LOGIC;
    \main_state_curr_reg[2]\ : out STD_LOGIC;
    \main_state_curr_reg[2]_0\ : out STD_LOGIC;
    \state_curr_reg[0]_0\ : out STD_LOGIC;
    \cnt_ex_block_updated_reg[0]\ : out STD_LOGIC;
    \state_curr_reg[1]_0\ : out STD_LOGIC;
    \sum_1_reg[0][0]\ : out STD_LOGIC;
    \cnt_ex_block_outdated_reg[0]\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    p_2_in : out STD_LOGIC_VECTOR ( 11 downto 0 );
    ADDRD : out STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \AXIS_out[S_AXIS_TREADY]\ : out STD_LOGIC;
    \feature_f_reg[0]\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    feature_a_write_req : out STD_LOGIC;
    \AXIS_out[M_AXIS_TVALID]\ : out STD_LOGIC;
    \AXIS_out[M_AXIS_TLAST]\ : out STD_LOGIC;
    \AXIS_out[M_AXIS_TDATA]_OBUF\ : out STD_LOGIC_VECTOR ( 23 downto 0 );
    ADDRBWRADDR : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \cnt_examples_reg[1]_0\ : out STD_LOGIC;
    \sum_1_reg[0]0\ : out STD_LOGIC_VECTOR ( 11 downto 0 );
    \sum_1_reg[0]0_0\ : out STD_LOGIC;
    \sum_1_reg[0]0_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \main_state_curr_reg[0]\ : out STD_LOGIC;
    feature_a : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \cnt_ex_block_outdated_reg[0]_0\ : out STD_LOGIC;
    update_requested_reg : out STD_LOGIC;
    \session_curr_reg[0]\ : out STD_LOGIC;
    \session_curr_reg[1]\ : out STD_LOGIC;
    clk_IBUF_BUFG : in STD_LOGIC;
    \main_state_curr_reg[0]_0\ : in STD_LOGIC;
    \main_state_curr_reg[0]_1\ : in STD_LOGIC;
    main_state_curr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    update_requested_reg_0 : in STD_LOGIC;
    \cnt_ex_block_outdated_reg[0]_1\ : in STD_LOGIC;
    \AXIS_in[ARESETN]\ : in STD_LOGIC;
    \AXIS_in[S_AXIS_TDATA][14]\ : in STD_LOGIC;
    session_curr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \cnt_weights_reg[2]_0\ : in STD_LOGIC;
    \AXIS_in[M_AXIS_TREADY]\ : in STD_LOGIC;
    \AXIS_in[S_AXIS_TVALID]\ : in STD_LOGIC;
    lfsr : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \state_curr_reg[1]_1\ : in STD_LOGIC;
    p_0_out : in STD_LOGIC_VECTOR ( 11 downto 0 );
    ADDRA : in STD_LOGIC_VECTOR ( 0 to 0 );
    \cnt_weights_reg[1]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    cnt_ex_block_outdated : in STD_LOGIC;
    DOBDO : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \nb_examples_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \state_curr_reg[1]_2\ : in STD_LOGIC;
    \lfsr_reg[7]\ : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \cnt_weights_reg[4]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \AXIS_in[S_AXIS_TDATA][15]\ : in STD_LOGIC;
    \AXIS_in[S_AXIS_TDATA][23]\ : in STD_LOGIC;
    \AXIS_in[S_AXIS_TDATA][31]\ : in STD_LOGIC;
    \AXIS_in[S_AXIS_TDATA][30]\ : in STD_LOGIC;
    \AXIS_in[S_AXIS_TDATA][22]\ : in STD_LOGIC;
    \AXIS_in[S_AXIS_TDATA][29]\ : in STD_LOGIC;
    \AXIS_in[S_AXIS_TDATA][21]\ : in STD_LOGIC;
    \AXIS_in[S_AXIS_TDATA][13]\ : in STD_LOGIC;
    \AXIS_in[S_AXIS_TDATA][28]\ : in STD_LOGIC;
    \AXIS_in[S_AXIS_TDATA][20]\ : in STD_LOGIC;
    \AXIS_in[S_AXIS_TDATA][12]\ : in STD_LOGIC;
    \AXIS_in[S_AXIS_TDATA][27]\ : in STD_LOGIC;
    \AXIS_in[S_AXIS_TDATA][19]\ : in STD_LOGIC;
    \AXIS_in[S_AXIS_TDATA][11]\ : in STD_LOGIC;
    \AXIS_in[S_AXIS_TDATA][26]\ : in STD_LOGIC;
    \AXIS_in[S_AXIS_TDATA][18]\ : in STD_LOGIC;
    \AXIS_in[S_AXIS_TDATA][10]\ : in STD_LOGIC;
    \AXIS_in[S_AXIS_TDATA][25]\ : in STD_LOGIC;
    \AXIS_in[S_AXIS_TDATA][17]\ : in STD_LOGIC;
    \AXIS_in[S_AXIS_TDATA][9]\ : in STD_LOGIC;
    \AXIS_in[S_AXIS_TDATA][24]\ : in STD_LOGIC;
    \AXIS_in[S_AXIS_TDATA][16]\ : in STD_LOGIC;
    \AXIS_in[S_AXIS_TDATA][8]\ : in STD_LOGIC;
    cnt_ex_block_updated : in STD_LOGIC;
    cnt_ex_block_outdated_next7_out : in STD_LOGIC;
    LED_8_OBUF : in STD_LOGIC;
    LED_5_OBUF : in STD_LOGIC;
    \cnt_features_reg[2]\ : in STD_LOGIC;
    \main_state_curr_reg[0]_2\ : in STD_LOGIC
  );
end AXIS_controller;

architecture STRUCTURE of AXIS_controller is
  signal A : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \AXIS_out[S_AXIS_TREADY]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \cnt_ex_block_outdated[0]_i_4_n_0\ : STD_LOGIC;
  signal \^cnt_ex_block_outdated_reg[0]\ : STD_LOGIC;
  signal cnt_examples : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \cnt_examples[0]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_examples[0]_i_3_n_0\ : STD_LOGIC;
  signal \cnt_examples[7]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_examples[7]_i_3_n_0\ : STD_LOGIC;
  signal \cnt_examples[7]_i_4_n_0\ : STD_LOGIC;
  signal \cnt_examples[7]_i_6_n_0\ : STD_LOGIC;
  signal cnt_examples_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^cnt_examples_reg[1]_0\ : STD_LOGIC;
  signal cnt_features : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \cnt_features[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \cnt_features[1]_i_1__0_n_0\ : STD_LOGIC;
  signal cnt_transfers : STD_LOGIC;
  signal \cnt_transfers[0]_i_1_n_0\ : STD_LOGIC;
  signal cnt_weights : STD_LOGIC_VECTOR ( 4 to 4 );
  signal \cnt_weights[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \cnt_weights[4]_i_3__0_n_0\ : STD_LOGIC;
  signal \cnt_weights[4]_i_4_n_0\ : STD_LOGIC;
  signal cnt_weights_next : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^cnt_weights_reg[0]_0\ : STD_LOGIC;
  signal \^feature_a_write_req\ : STD_LOGIC;
  signal features_f_RAM_reg_0_63_0_2_i_13_n_0 : STD_LOGIC;
  signal features_f_RAM_reg_0_63_0_2_i_21_n_0 : STD_LOGIC;
  signal features_f_RAM_reg_0_63_0_2_i_22_n_0 : STD_LOGIC;
  signal features_f_RAM_reg_0_63_0_2_i_23_n_0 : STD_LOGIC;
  signal features_f_RAM_reg_0_63_0_2_i_24_n_0 : STD_LOGIC;
  signal features_f_RAM_reg_0_63_0_2_i_25_n_0 : STD_LOGIC;
  signal \main_state_curr[2]_i_4_n_0\ : STD_LOGIC;
  signal \main_state_curr[2]_i_5_n_0\ : STD_LOGIC;
  signal \^main_state_curr_reg[2]_0\ : STD_LOGIC;
  signal output_buffer : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \output_buffer[11]_i_1_n_0\ : STD_LOGIC;
  signal \output_buffer[11]_i_2_n_0\ : STD_LOGIC;
  signal results_RAM_reg_i_18_n_0 : STD_LOGIC;
  signal results_RAM_reg_i_19_n_0 : STD_LOGIC;
  signal results_RAM_reg_i_20_n_0 : STD_LOGIC;
  signal results_RAM_reg_i_21_n_0 : STD_LOGIC;
  signal state_curr : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \state_curr[0]_i_1_n_0\ : STD_LOGIC;
  signal \state_curr[0]_i_2_n_0\ : STD_LOGIC;
  signal \state_curr[0]_i_3_n_0\ : STD_LOGIC;
  signal \state_curr[0]_i_4_n_0\ : STD_LOGIC;
  signal \state_curr[0]_i_5_n_0\ : STD_LOGIC;
  signal \state_curr[1]_i_1_n_0\ : STD_LOGIC;
  signal \state_curr[1]_i_2_n_0\ : STD_LOGIC;
  signal \state_curr[1]_i_3_n_0\ : STD_LOGIC;
  signal \state_curr[2]_i_10_n_0\ : STD_LOGIC;
  signal \state_curr[2]_i_13_n_0\ : STD_LOGIC;
  signal \state_curr[2]_i_15_n_0\ : STD_LOGIC;
  signal \state_curr[2]_i_20_n_0\ : STD_LOGIC;
  signal \state_curr[2]_i_24_n_0\ : STD_LOGIC;
  signal \state_curr[2]_i_2_n_0\ : STD_LOGIC;
  signal \state_curr[2]_i_33_n_0\ : STD_LOGIC;
  signal \state_curr[2]_i_3_n_0\ : STD_LOGIC;
  signal \state_curr[2]_i_4_n_0\ : STD_LOGIC;
  signal \state_curr[2]_i_5_n_0\ : STD_LOGIC;
  signal \state_curr[2]_i_7_n_0\ : STD_LOGIC;
  signal \state_curr[2]_i_8_n_0\ : STD_LOGIC;
  signal \state_curr[2]_i_9_n_0\ : STD_LOGIC;
  signal \^state_curr_reg[0]_0\ : STD_LOGIC;
  signal \^state_curr_reg[1]_0\ : STD_LOGIC;
  signal state_next1 : STD_LOGIC;
  signal \state_next1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal state_next1_carry_i_1_n_0 : STD_LOGIC;
  signal state_next1_carry_i_2_n_0 : STD_LOGIC;
  signal state_next1_carry_i_3_n_0 : STD_LOGIC;
  signal state_next1_carry_i_4_n_0 : STD_LOGIC;
  signal state_next1_carry_i_5_n_0 : STD_LOGIC;
  signal state_next1_carry_i_6_n_0 : STD_LOGIC;
  signal state_next1_carry_i_7_n_0 : STD_LOGIC;
  signal state_next1_carry_i_8_n_0 : STD_LOGIC;
  signal state_next1_carry_i_9_n_0 : STD_LOGIC;
  signal state_next1_carry_n_0 : STD_LOGIC;
  signal state_next1_carry_n_1 : STD_LOGIC;
  signal state_next1_carry_n_2 : STD_LOGIC;
  signal state_next1_carry_n_3 : STD_LOGIC;
  signal state_next2 : STD_LOGIC_VECTOR ( 8 to 8 );
  signal \^sum_1_reg[0]0_0\ : STD_LOGIC;
  signal \sum_1_reg[0]0_i_51_n_0\ : STD_LOGIC;
  signal \sum_1_reg[0]0_i_52_n_0\ : STD_LOGIC;
  signal \sum_1_reg[0]0_i_53_n_0\ : STD_LOGIC;
  signal \sum_1_reg[0]0_i_56_n_0\ : STD_LOGIC;
  signal weights1_f_RAM_reg_r1_0_31_0_5_i_17_n_0 : STD_LOGIC;
  signal weights1_f_RAM_reg_r1_0_31_0_5_i_20_n_0 : STD_LOGIC;
  signal weights1_f_RAM_reg_r1_0_31_0_5_i_21_n_0 : STD_LOGIC;
  signal weights1_f_RAM_reg_r1_0_31_0_5_i_22_n_0 : STD_LOGIC;
  signal weights1_f_RAM_reg_r1_0_31_0_5_i_23_n_0 : STD_LOGIC;
  signal weights1_f_RAM_reg_r1_0_31_0_5_i_24_n_0 : STD_LOGIC;
  signal weights1_f_RAM_reg_r1_0_31_0_5_i_25_n_0 : STD_LOGIC;
  signal weights1_f_RAM_reg_r1_0_31_6_11_i_10_n_0 : STD_LOGIC;
  signal weights1_f_RAM_reg_r1_0_31_6_11_i_11_n_0 : STD_LOGIC;
  signal weights1_f_RAM_reg_r1_0_31_6_11_i_12_n_0 : STD_LOGIC;
  signal weights1_f_RAM_reg_r1_0_31_6_11_i_7_n_0 : STD_LOGIC;
  signal weights1_f_RAM_reg_r1_0_31_6_11_i_8_n_0 : STD_LOGIC;
  signal weights1_f_RAM_reg_r1_0_31_6_11_i_9_n_0 : STD_LOGIC;
  signal weights2_f_RAM_reg_r1_0_3_0_5_i_11_n_0 : STD_LOGIC;
  signal NLW_state_next1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_state_next1_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_state_next1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \AXIS_out[M_AXIS_TDATA][3]_INST_0_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \AXIS_out[M_AXIS_TLAST]_INST_0_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \AXIS_out[S_AXIS_TREADY]_INST_0_i_2\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \cnt_ex_block_outdated[0]_i_4\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \cnt_ex_block_updated[0]_i_3\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \cnt_examples[0]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \cnt_examples[2]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \cnt_examples[3]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \cnt_examples[6]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \cnt_examples[7]_i_2\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \cnt_examples[7]_i_3\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \cnt_examples[7]_i_6\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \cnt_features[0]_i_1__0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \cnt_features[1]_i_1__0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \cnt_weights[0]_i_1__0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \cnt_weights[1]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \cnt_weights[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \cnt_weights[3]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \cnt_weights[4]_i_4\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of features_f_RAM_reg_0_63_0_2_i_13 : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of features_f_RAM_reg_0_63_0_2_i_25 : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \idx_stage_1[1]_i_5\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \main_state_curr[0]_i_3\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \main_state_curr[2]_i_5\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \nb_examples[7]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of results_RAM_reg_i_20 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of results_RAM_reg_i_21 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \state_curr[0]_i_3\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \state_curr[0]_i_4\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \state_curr[1]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \state_curr[1]_i_3\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \state_curr[2]_i_3\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \state_curr[2]_i_33\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \state_curr[2]_i_7\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \state_curr[2]_i_8\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \sum_1[2][31]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \sum_1_reg[0]0_i_51\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \sum_1_reg[0]0_i_52\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \sum_1_reg[0]0_i_53\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \sum_1_reg[0]0_i_56\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of update_requested_i_1 : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of weights1_f_RAM_reg_r1_0_31_0_5_i_17 : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of weights1_f_RAM_reg_r1_0_31_0_5_i_18 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of weights1_f_RAM_reg_r1_0_31_0_5_i_20 : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of weights1_f_RAM_reg_r1_0_31_0_5_i_21 : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of weights1_f_RAM_reg_r1_0_31_0_5_i_22 : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of weights1_f_RAM_reg_r1_0_31_0_5_i_23 : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of weights1_f_RAM_reg_r1_0_31_0_5_i_24 : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of weights1_f_RAM_reg_r1_0_31_0_5_i_25 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of weights1_f_RAM_reg_r1_0_31_6_11_i_10 : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of weights1_f_RAM_reg_r1_0_31_6_11_i_11 : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of weights1_f_RAM_reg_r1_0_31_6_11_i_12 : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of weights1_f_RAM_reg_r1_0_31_6_11_i_7 : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of weights1_f_RAM_reg_r1_0_31_6_11_i_8 : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of weights1_f_RAM_reg_r1_0_31_6_11_i_9 : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of weights2_f_RAM_reg_r1_0_3_0_5_i_11 : label is "soft_lutpair12";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
  \cnt_ex_block_outdated_reg[0]\ <= \^cnt_ex_block_outdated_reg[0]\;
  \cnt_examples_reg[1]_0\ <= \^cnt_examples_reg[1]_0\;
  \cnt_weights_reg[0]_0\ <= \^cnt_weights_reg[0]_0\;
  feature_a_write_req <= \^feature_a_write_req\;
  \main_state_curr_reg[2]_0\ <= \^main_state_curr_reg[2]_0\;
  \state_curr_reg[0]_0\ <= \^state_curr_reg[0]_0\;
  \state_curr_reg[1]_0\ <= \^state_curr_reg[1]_0\;
  \sum_1_reg[0]0_0\ <= \^sum_1_reg[0]0_0\;
\AXIS_out[M_AXIS_TDATA][0]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => DOBDO(0),
      I1 => cnt_examples_0(0),
      I2 => output_buffer(0),
      I3 => \output_buffer[11]_i_1_n_0\,
      O => \AXIS_out[M_AXIS_TDATA]_OBUF\(0)
    );
\AXIS_out[M_AXIS_TDATA][10]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => DOBDO(10),
      I1 => cnt_examples_0(0),
      I2 => output_buffer(10),
      I3 => \output_buffer[11]_i_1_n_0\,
      O => \AXIS_out[M_AXIS_TDATA]_OBUF\(10)
    );
\AXIS_out[M_AXIS_TDATA][11]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => DOBDO(11),
      I1 => cnt_examples_0(0),
      I2 => output_buffer(11),
      I3 => \output_buffer[11]_i_1_n_0\,
      O => \AXIS_out[M_AXIS_TDATA]_OBUF\(11)
    );
\AXIS_out[M_AXIS_TDATA][12]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A800000000000000"
    )
        port map (
      I0 => DOBDO(0),
      I1 => state_curr(0),
      I2 => state_curr(1),
      I3 => state_curr(2),
      I4 => \AXIS_in[ARESETN]\,
      I5 => cnt_examples_0(0),
      O => \AXIS_out[M_AXIS_TDATA]_OBUF\(12)
    );
\AXIS_out[M_AXIS_TDATA][13]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A800000000000000"
    )
        port map (
      I0 => DOBDO(1),
      I1 => state_curr(0),
      I2 => state_curr(1),
      I3 => state_curr(2),
      I4 => \AXIS_in[ARESETN]\,
      I5 => cnt_examples_0(0),
      O => \AXIS_out[M_AXIS_TDATA]_OBUF\(13)
    );
\AXIS_out[M_AXIS_TDATA][14]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A800000000000000"
    )
        port map (
      I0 => DOBDO(2),
      I1 => state_curr(0),
      I2 => state_curr(1),
      I3 => state_curr(2),
      I4 => \AXIS_in[ARESETN]\,
      I5 => cnt_examples_0(0),
      O => \AXIS_out[M_AXIS_TDATA]_OBUF\(14)
    );
\AXIS_out[M_AXIS_TDATA][15]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A800000000000000"
    )
        port map (
      I0 => DOBDO(3),
      I1 => state_curr(0),
      I2 => state_curr(1),
      I3 => state_curr(2),
      I4 => \AXIS_in[ARESETN]\,
      I5 => cnt_examples_0(0),
      O => \AXIS_out[M_AXIS_TDATA]_OBUF\(15)
    );
\AXIS_out[M_AXIS_TDATA][16]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A800000000000000"
    )
        port map (
      I0 => DOBDO(4),
      I1 => state_curr(0),
      I2 => state_curr(1),
      I3 => state_curr(2),
      I4 => \AXIS_in[ARESETN]\,
      I5 => cnt_examples_0(0),
      O => \AXIS_out[M_AXIS_TDATA]_OBUF\(16)
    );
\AXIS_out[M_AXIS_TDATA][17]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A800000000000000"
    )
        port map (
      I0 => DOBDO(5),
      I1 => state_curr(0),
      I2 => state_curr(1),
      I3 => state_curr(2),
      I4 => \AXIS_in[ARESETN]\,
      I5 => cnt_examples_0(0),
      O => \AXIS_out[M_AXIS_TDATA]_OBUF\(17)
    );
\AXIS_out[M_AXIS_TDATA][18]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A800000000000000"
    )
        port map (
      I0 => DOBDO(6),
      I1 => state_curr(0),
      I2 => state_curr(1),
      I3 => state_curr(2),
      I4 => \AXIS_in[ARESETN]\,
      I5 => cnt_examples_0(0),
      O => \AXIS_out[M_AXIS_TDATA]_OBUF\(18)
    );
\AXIS_out[M_AXIS_TDATA][19]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A800000000000000"
    )
        port map (
      I0 => DOBDO(7),
      I1 => state_curr(0),
      I2 => state_curr(1),
      I3 => state_curr(2),
      I4 => \AXIS_in[ARESETN]\,
      I5 => cnt_examples_0(0),
      O => \AXIS_out[M_AXIS_TDATA]_OBUF\(19)
    );
\AXIS_out[M_AXIS_TDATA][1]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => DOBDO(1),
      I1 => cnt_examples_0(0),
      I2 => output_buffer(1),
      I3 => \output_buffer[11]_i_1_n_0\,
      O => \AXIS_out[M_AXIS_TDATA]_OBUF\(1)
    );
\AXIS_out[M_AXIS_TDATA][20]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A800000000000000"
    )
        port map (
      I0 => DOBDO(8),
      I1 => state_curr(0),
      I2 => state_curr(1),
      I3 => state_curr(2),
      I4 => \AXIS_in[ARESETN]\,
      I5 => cnt_examples_0(0),
      O => \AXIS_out[M_AXIS_TDATA]_OBUF\(20)
    );
\AXIS_out[M_AXIS_TDATA][21]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A800000000000000"
    )
        port map (
      I0 => DOBDO(9),
      I1 => state_curr(0),
      I2 => state_curr(1),
      I3 => state_curr(2),
      I4 => \AXIS_in[ARESETN]\,
      I5 => cnt_examples_0(0),
      O => \AXIS_out[M_AXIS_TDATA]_OBUF\(21)
    );
\AXIS_out[M_AXIS_TDATA][22]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A800000000000000"
    )
        port map (
      I0 => DOBDO(10),
      I1 => state_curr(0),
      I2 => state_curr(1),
      I3 => state_curr(2),
      I4 => \AXIS_in[ARESETN]\,
      I5 => cnt_examples_0(0),
      O => \AXIS_out[M_AXIS_TDATA]_OBUF\(22)
    );
\AXIS_out[M_AXIS_TDATA][23]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A800000000000000"
    )
        port map (
      I0 => DOBDO(11),
      I1 => state_curr(0),
      I2 => state_curr(1),
      I3 => state_curr(2),
      I4 => \AXIS_in[ARESETN]\,
      I5 => cnt_examples_0(0),
      O => \AXIS_out[M_AXIS_TDATA]_OBUF\(23)
    );
\AXIS_out[M_AXIS_TDATA][2]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => DOBDO(2),
      I1 => cnt_examples_0(0),
      I2 => output_buffer(2),
      I3 => \output_buffer[11]_i_1_n_0\,
      O => \AXIS_out[M_AXIS_TDATA]_OBUF\(2)
    );
\AXIS_out[M_AXIS_TDATA][3]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => DOBDO(3),
      I1 => cnt_examples_0(0),
      I2 => output_buffer(3),
      I3 => \output_buffer[11]_i_1_n_0\,
      O => \AXIS_out[M_AXIS_TDATA]_OBUF\(3)
    );
\AXIS_out[M_AXIS_TDATA][4]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => DOBDO(4),
      I1 => cnt_examples_0(0),
      I2 => output_buffer(4),
      I3 => \output_buffer[11]_i_1_n_0\,
      O => \AXIS_out[M_AXIS_TDATA]_OBUF\(4)
    );
\AXIS_out[M_AXIS_TDATA][5]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => DOBDO(5),
      I1 => cnt_examples_0(0),
      I2 => output_buffer(5),
      I3 => \output_buffer[11]_i_1_n_0\,
      O => \AXIS_out[M_AXIS_TDATA]_OBUF\(5)
    );
\AXIS_out[M_AXIS_TDATA][6]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => DOBDO(6),
      I1 => cnt_examples_0(0),
      I2 => output_buffer(6),
      I3 => \output_buffer[11]_i_1_n_0\,
      O => \AXIS_out[M_AXIS_TDATA]_OBUF\(6)
    );
\AXIS_out[M_AXIS_TDATA][7]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => DOBDO(7),
      I1 => cnt_examples_0(0),
      I2 => output_buffer(7),
      I3 => \output_buffer[11]_i_1_n_0\,
      O => \AXIS_out[M_AXIS_TDATA]_OBUF\(7)
    );
\AXIS_out[M_AXIS_TDATA][8]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => DOBDO(8),
      I1 => cnt_examples_0(0),
      I2 => output_buffer(8),
      I3 => \output_buffer[11]_i_1_n_0\,
      O => \AXIS_out[M_AXIS_TDATA]_OBUF\(8)
    );
\AXIS_out[M_AXIS_TDATA][9]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => DOBDO(9),
      I1 => cnt_examples_0(0),
      I2 => output_buffer(9),
      I3 => \output_buffer[11]_i_1_n_0\,
      O => \AXIS_out[M_AXIS_TDATA]_OBUF\(9)
    );
\AXIS_out[M_AXIS_TLAST]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80808000"
    )
        port map (
      I0 => state_next1,
      I1 => \AXIS_in[ARESETN]\,
      I2 => state_curr(2),
      I3 => state_curr(1),
      I4 => state_curr(0),
      O => \AXIS_out[M_AXIS_TLAST]\
    );
\AXIS_out[M_AXIS_TVALID]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC000000A8000000"
    )
        port map (
      I0 => state_next1,
      I1 => state_curr(0),
      I2 => state_curr(1),
      I3 => state_curr(2),
      I4 => \AXIS_in[ARESETN]\,
      I5 => cnt_examples_0(0),
      O => \AXIS_out[M_AXIS_TVALID]\
    );
\AXIS_out[S_AXIS_TREADY]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2220222800200028"
    )
        port map (
      I0 => \AXIS_in[ARESETN]\,
      I1 => state_curr(2),
      I2 => state_curr(0),
      I3 => state_curr(1),
      I4 => \AXIS_out[S_AXIS_TREADY]_INST_0_i_2_n_0\,
      I5 => \^q\(0),
      O => \AXIS_out[S_AXIS_TREADY]\
    );
\AXIS_out[S_AXIS_TREADY]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"022A"
    )
        port map (
      I0 => \AXIS_in[S_AXIS_TVALID]\,
      I1 => cnt_transfers,
      I2 => cnt_features(1),
      I3 => cnt_features(0),
      O => \AXIS_out[S_AXIS_TREADY]_INST_0_i_2_n_0\
    );
\cnt_ex_block_outdated[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505CFFFF505C0000"
    )
        port map (
      I0 => cnt_ex_block_updated,
      I1 => \AXIS_in[ARESETN]\,
      I2 => main_state_curr(0),
      I3 => \^cnt_ex_block_outdated_reg[0]\,
      I4 => cnt_ex_block_outdated_next7_out,
      I5 => cnt_ex_block_outdated,
      O => \cnt_ex_block_outdated_reg[0]_0\
    );
\cnt_ex_block_outdated[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF55555545"
    )
        port map (
      I0 => \sum_1_reg[0]0_i_53_n_0\,
      I1 => \cnt_examples[7]_i_3_n_0\,
      I2 => state_curr(2),
      I3 => \cnt_ex_block_outdated[0]_i_4_n_0\,
      I4 => \cnt_examples[0]_i_2_n_0\,
      I5 => \sum_1_reg[0]0_i_51_n_0\,
      O => \^cnt_ex_block_outdated_reg[0]\
    );
\cnt_ex_block_outdated[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => state_curr(0),
      I1 => state_curr(1),
      O => \cnt_ex_block_outdated[0]_i_4_n_0\
    );
\cnt_ex_block_updated[0]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => \^state_curr_reg[1]_0\,
      I1 => main_state_curr(1),
      I2 => main_state_curr(2),
      O => \cnt_ex_block_updated_reg[0]\
    );
\cnt_examples[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"101010101010F000"
    )
        port map (
      I0 => state_next1,
      I1 => cnt_examples_0(0),
      I2 => state_curr(2),
      I3 => \cnt_examples[0]_i_2_n_0\,
      I4 => state_curr(1),
      I5 => state_curr(0),
      O => A(0)
    );
\cnt_examples[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => cnt_examples(2),
      I1 => cnt_examples(4),
      I2 => cnt_examples_0(0),
      I3 => cnt_examples(7),
      I4 => \cnt_examples[0]_i_3_n_0\,
      O => \cnt_examples[0]_i_2_n_0\
    );
\cnt_examples[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => cnt_examples(3),
      I1 => cnt_examples(1),
      I2 => cnt_examples(6),
      I3 => cnt_examples(5),
      O => \cnt_examples[0]_i_3_n_0\
    );
\cnt_examples[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000A800A80000"
    )
        port map (
      I0 => state_curr(2),
      I1 => state_curr(1),
      I2 => state_curr(0),
      I3 => state_next1,
      I4 => cnt_examples(1),
      I5 => cnt_examples_0(0),
      O => A(1)
    );
\cnt_examples[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \cnt_examples[7]_i_6_n_0\,
      I1 => cnt_examples_0(0),
      I2 => cnt_examples(1),
      I3 => cnt_examples(2),
      O => A(2)
    );
\cnt_examples[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => \cnt_examples[7]_i_6_n_0\,
      I1 => cnt_examples(1),
      I2 => cnt_examples_0(0),
      I3 => cnt_examples(2),
      I4 => cnt_examples(3),
      O => A(3)
    );
\cnt_examples[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA80000000"
    )
        port map (
      I0 => \cnt_examples[7]_i_6_n_0\,
      I1 => cnt_examples(2),
      I2 => cnt_examples_0(0),
      I3 => cnt_examples(1),
      I4 => cnt_examples(3),
      I5 => cnt_examples(4),
      O => A(4)
    );
\cnt_examples[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \cnt_examples[7]_i_6_n_0\,
      I1 => results_RAM_reg_i_19_n_0,
      O => A(5)
    );
\cnt_examples[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \cnt_examples[7]_i_6_n_0\,
      I1 => results_RAM_reg_i_18_n_0,
      I2 => cnt_examples(6),
      O => A(6)
    );
\cnt_examples[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D1D1D1DDFFFFFFFF"
    )
        port map (
      I0 => \cnt_examples[7]_i_3_n_0\,
      I1 => \cnt_examples[7]_i_4_n_0\,
      I2 => \AXIS_in[M_AXIS_TREADY]\,
      I3 => state_next1,
      I4 => cnt_examples_0(0),
      I5 => state_curr(2),
      O => \cnt_examples[7]_i_1_n_0\
    );
\cnt_examples[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7800"
    )
        port map (
      I0 => cnt_examples(6),
      I1 => results_RAM_reg_i_18_n_0,
      I2 => cnt_examples(7),
      I3 => \cnt_examples[7]_i_6_n_0\,
      O => A(7)
    );
\cnt_examples[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FFF"
    )
        port map (
      I0 => cnt_features(0),
      I1 => cnt_features(1),
      I2 => cnt_transfers,
      I3 => \AXIS_in[S_AXIS_TVALID]\,
      O => \cnt_examples[7]_i_3_n_0\
    );
\cnt_examples[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => state_curr(0),
      I1 => state_curr(1),
      O => \cnt_examples[7]_i_4_n_0\
    );
\cnt_examples[7]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0008CCC8"
    )
        port map (
      I0 => \cnt_examples[0]_i_2_n_0\,
      I1 => state_curr(2),
      I2 => state_curr(1),
      I3 => state_curr(0),
      I4 => state_next1,
      O => \cnt_examples[7]_i_6_n_0\
    );
\cnt_examples_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \cnt_examples[7]_i_1_n_0\,
      D => A(0),
      Q => cnt_examples_0(0),
      R => \^cnt_weights_reg[0]_0\
    );
\cnt_examples_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \cnt_examples[7]_i_1_n_0\,
      D => A(1),
      Q => cnt_examples(1),
      R => \^cnt_weights_reg[0]_0\
    );
\cnt_examples_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \cnt_examples[7]_i_1_n_0\,
      D => A(2),
      Q => cnt_examples(2),
      R => \^cnt_weights_reg[0]_0\
    );
\cnt_examples_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \cnt_examples[7]_i_1_n_0\,
      D => A(3),
      Q => cnt_examples(3),
      R => \^cnt_weights_reg[0]_0\
    );
\cnt_examples_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \cnt_examples[7]_i_1_n_0\,
      D => A(4),
      Q => cnt_examples(4),
      R => \^cnt_weights_reg[0]_0\
    );
\cnt_examples_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \cnt_examples[7]_i_1_n_0\,
      D => A(5),
      Q => cnt_examples(5),
      R => \^cnt_weights_reg[0]_0\
    );
\cnt_examples_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \cnt_examples[7]_i_1_n_0\,
      D => A(6),
      Q => cnt_examples(6),
      R => \^cnt_weights_reg[0]_0\
    );
\cnt_examples_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \cnt_examples[7]_i_1_n_0\,
      D => A(7),
      Q => cnt_examples(7),
      R => \^cnt_weights_reg[0]_0\
    );
\cnt_features[0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000F0070"
    )
        port map (
      I0 => cnt_transfers,
      I1 => cnt_features(1),
      I2 => \AXIS_in[S_AXIS_TVALID]\,
      I3 => features_f_RAM_reg_0_63_0_2_i_13_n_0,
      I4 => cnt_features(0),
      O => \cnt_features[0]_i_1__0_n_0\
    );
\cnt_features[1]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"001F0040"
    )
        port map (
      I0 => cnt_transfers,
      I1 => cnt_features(0),
      I2 => \AXIS_in[S_AXIS_TVALID]\,
      I3 => features_f_RAM_reg_0_63_0_2_i_13_n_0,
      I4 => cnt_features(1),
      O => \cnt_features[1]_i_1__0_n_0\
    );
\cnt_features_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \cnt_features[0]_i_1__0_n_0\,
      Q => cnt_features(0),
      R => \^cnt_weights_reg[0]_0\
    );
\cnt_features_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \cnt_features[1]_i_1__0_n_0\,
      Q => cnt_features(1),
      R => \^cnt_weights_reg[0]_0\
    );
\cnt_transfers[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1004444400000000"
    )
        port map (
      I0 => features_f_RAM_reg_0_63_0_2_i_13_n_0,
      I1 => cnt_transfers,
      I2 => cnt_features(1),
      I3 => cnt_features(0),
      I4 => \AXIS_in[S_AXIS_TVALID]\,
      I5 => \AXIS_in[ARESETN]\,
      O => \cnt_transfers[0]_i_1_n_0\
    );
\cnt_transfers_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \cnt_transfers[0]_i_1_n_0\,
      Q => cnt_transfers,
      R => '0'
    );
\cnt_weights[0]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => state_curr(2),
      I1 => state_curr(1),
      I2 => \^q\(0),
      O => cnt_weights_next(0)
    );
\cnt_weights[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \cnt_weights[4]_i_3__0_n_0\,
      I1 => \^q\(0),
      I2 => \^q\(1),
      O => cnt_weights_next(1)
    );
\cnt_weights[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \cnt_weights[4]_i_3__0_n_0\,
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(2),
      O => cnt_weights_next(2)
    );
\cnt_weights[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => \cnt_weights[4]_i_3__0_n_0\,
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(2),
      I4 => \^q\(3),
      O => cnt_weights_next(3)
    );
\cnt_weights[4]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => \AXIS_in[S_AXIS_TVALID]\,
      I1 => state_curr(2),
      I2 => state_curr(1),
      O => \cnt_weights[4]_i_1__0_n_0\
    );
\cnt_weights[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA80000000"
    )
        port map (
      I0 => \cnt_weights[4]_i_3__0_n_0\,
      I1 => \^q\(3),
      I2 => \^q\(2),
      I3 => \^q\(1),
      I4 => \^q\(0),
      I5 => cnt_weights(4),
      O => cnt_weights_next(4)
    );
\cnt_weights[4]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFDFFDFF00000000"
    )
        port map (
      I0 => \^q\(0),
      I1 => \cnt_weights[4]_i_4_n_0\,
      I2 => \^q\(1),
      I3 => cnt_weights(4),
      I4 => state_curr(0),
      I5 => weights1_f_RAM_reg_r1_0_31_0_5_i_25_n_0,
      O => \cnt_weights[4]_i_3__0_n_0\
    );
\cnt_weights[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      O => \cnt_weights[4]_i_4_n_0\
    );
\cnt_weights_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \cnt_weights[4]_i_1__0_n_0\,
      D => cnt_weights_next(0),
      Q => \^q\(0),
      R => \^cnt_weights_reg[0]_0\
    );
\cnt_weights_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \cnt_weights[4]_i_1__0_n_0\,
      D => cnt_weights_next(1),
      Q => \^q\(1),
      R => \^cnt_weights_reg[0]_0\
    );
\cnt_weights_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \cnt_weights[4]_i_1__0_n_0\,
      D => cnt_weights_next(2),
      Q => \^q\(2),
      R => \^cnt_weights_reg[0]_0\
    );
\cnt_weights_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \cnt_weights[4]_i_1__0_n_0\,
      D => cnt_weights_next(3),
      Q => \^q\(3),
      R => \^cnt_weights_reg[0]_0\
    );
\cnt_weights_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \cnt_weights[4]_i_1__0_n_0\,
      D => cnt_weights_next(4),
      Q => cnt_weights(4),
      R => \^cnt_weights_reg[0]_0\
    );
features_f_RAM_reg_0_63_0_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008080888"
    )
        port map (
      I0 => \AXIS_in[ARESETN]\,
      I1 => \AXIS_in[S_AXIS_TVALID]\,
      I2 => cnt_transfers,
      I3 => cnt_features(1),
      I4 => cnt_features(0),
      I5 => features_f_RAM_reg_0_63_0_2_i_13_n_0,
      O => \^feature_a_write_req\
    );
features_f_RAM_reg_0_63_0_2_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A95956AAAAAAAAA"
    )
        port map (
      I0 => cnt_ex_block_outdated,
      I1 => cnt_features(0),
      I2 => cnt_examples_0(0),
      I3 => cnt_features(1),
      I4 => cnt_examples(1),
      I5 => \^feature_a_write_req\,
      O => \feature_f_reg[0]\(1)
    );
features_f_RAM_reg_0_63_0_2_i_11: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \^feature_a_write_req\,
      I1 => cnt_features(0),
      I2 => cnt_examples_0(0),
      O => \feature_f_reg[0]\(0)
    );
features_f_RAM_reg_0_63_0_2_i_13: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => state_curr(1),
      I1 => state_curr(0),
      I2 => state_curr(2),
      O => features_f_RAM_reg_0_63_0_2_i_13_n_0
    );
features_f_RAM_reg_0_63_0_2_i_21: unisim.vcomponents.LUT6
    generic map(
      INIT => X"802A2A8000000000"
    )
        port map (
      I0 => cnt_ex_block_outdated,
      I1 => cnt_features(0),
      I2 => cnt_examples_0(0),
      I3 => cnt_features(1),
      I4 => cnt_examples(1),
      I5 => \^feature_a_write_req\,
      O => features_f_RAM_reg_0_63_0_2_i_21_n_0
    );
features_f_RAM_reg_0_63_0_2_i_22: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E83F17C017C0E83F"
    )
        port map (
      I0 => cnt_features(0),
      I1 => cnt_features(1),
      I2 => cnt_examples(1),
      I3 => cnt_examples_0(0),
      I4 => cnt_examples(2),
      I5 => cnt_transfers,
      O => features_f_RAM_reg_0_63_0_2_i_22_n_0
    );
features_f_RAM_reg_0_63_0_2_i_23: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9966900090000000"
    )
        port map (
      I0 => cnt_examples(2),
      I1 => cnt_transfers,
      I2 => cnt_features(0),
      I3 => cnt_examples_0(0),
      I4 => cnt_features(1),
      I5 => cnt_examples(1),
      O => features_f_RAM_reg_0_63_0_2_i_23_n_0
    );
features_f_RAM_reg_0_63_0_2_i_24: unisim.vcomponents.LUT5
    generic map(
      INIT => X"17E8E817"
    )
        port map (
      I0 => cnt_transfers,
      I1 => cnt_examples_0(0),
      I2 => cnt_examples(2),
      I3 => cnt_examples(1),
      I4 => cnt_examples(3),
      O => features_f_RAM_reg_0_63_0_2_i_24_n_0
    );
features_f_RAM_reg_0_63_0_2_i_25: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => cnt_examples_0(0),
      I1 => cnt_features(0),
      O => features_f_RAM_reg_0_63_0_2_i_25_n_0
    );
features_f_RAM_reg_0_63_0_2_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F22F222222222222"
    )
        port map (
      I0 => features_f_RAM_reg_0_63_0_2_i_21_n_0,
      I1 => features_f_RAM_reg_0_63_0_2_i_22_n_0,
      I2 => features_f_RAM_reg_0_63_0_2_i_23_n_0,
      I3 => features_f_RAM_reg_0_63_0_2_i_24_n_0,
      I4 => \^feature_a_write_req\,
      I5 => cnt_ex_block_outdated,
      O => \feature_f_reg[0]\(4)
    );
features_f_RAM_reg_0_63_0_2_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2DD2DDDDF00F0000"
    )
        port map (
      I0 => features_f_RAM_reg_0_63_0_2_i_21_n_0,
      I1 => features_f_RAM_reg_0_63_0_2_i_22_n_0,
      I2 => features_f_RAM_reg_0_63_0_2_i_23_n_0,
      I3 => features_f_RAM_reg_0_63_0_2_i_24_n_0,
      I4 => \^feature_a_write_req\,
      I5 => cnt_ex_block_outdated,
      O => \feature_f_reg[0]\(3)
    );
features_f_RAM_reg_0_63_0_2_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"690096FF00000000"
    )
        port map (
      I0 => cnt_examples(1),
      I1 => cnt_features(1),
      I2 => features_f_RAM_reg_0_63_0_2_i_25_n_0,
      I3 => cnt_ex_block_outdated,
      I4 => features_f_RAM_reg_0_63_0_2_i_22_n_0,
      I5 => \^feature_a_write_req\,
      O => \feature_f_reg[0]\(2)
    );
features_f_RAM_reg_0_63_3_5_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \AXIS_in[S_AXIS_TDATA][24]\,
      I1 => \AXIS_in[S_AXIS_TDATA][16]\,
      I2 => cnt_features(1),
      I3 => \AXIS_in[S_AXIS_TDATA][8]\,
      I4 => cnt_features(0),
      I5 => D(0),
      O => feature_a(0)
    );
features_f_RAM_reg_0_63_3_5_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \AXIS_in[S_AXIS_TDATA][25]\,
      I1 => \AXIS_in[S_AXIS_TDATA][17]\,
      I2 => cnt_features(1),
      I3 => \AXIS_in[S_AXIS_TDATA][9]\,
      I4 => cnt_features(0),
      I5 => D(1),
      O => feature_a(1)
    );
features_f_RAM_reg_0_63_6_8_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \AXIS_in[S_AXIS_TDATA][26]\,
      I1 => \AXIS_in[S_AXIS_TDATA][18]\,
      I2 => cnt_features(1),
      I3 => \AXIS_in[S_AXIS_TDATA][10]\,
      I4 => cnt_features(0),
      I5 => D(2),
      O => feature_a(2)
    );
features_f_RAM_reg_0_63_6_8_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \AXIS_in[S_AXIS_TDATA][27]\,
      I1 => \AXIS_in[S_AXIS_TDATA][19]\,
      I2 => cnt_features(1),
      I3 => \AXIS_in[S_AXIS_TDATA][11]\,
      I4 => cnt_features(0),
      I5 => D(3),
      O => feature_a(3)
    );
features_f_RAM_reg_0_63_6_8_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \AXIS_in[S_AXIS_TDATA][28]\,
      I1 => \AXIS_in[S_AXIS_TDATA][20]\,
      I2 => cnt_features(1),
      I3 => \AXIS_in[S_AXIS_TDATA][12]\,
      I4 => cnt_features(0),
      I5 => D(4),
      O => feature_a(4)
    );
features_f_RAM_reg_0_63_9_11_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \AXIS_in[S_AXIS_TDATA][29]\,
      I1 => \AXIS_in[S_AXIS_TDATA][21]\,
      I2 => cnt_features(1),
      I3 => \AXIS_in[S_AXIS_TDATA][13]\,
      I4 => cnt_features(0),
      I5 => D(5),
      O => feature_a(5)
    );
features_f_RAM_reg_0_63_9_11_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \AXIS_in[S_AXIS_TDATA][30]\,
      I1 => \AXIS_in[S_AXIS_TDATA][22]\,
      I2 => cnt_features(1),
      I3 => \AXIS_in[S_AXIS_TDATA][14]\,
      I4 => cnt_features(0),
      I5 => D(6),
      O => feature_a(6)
    );
features_f_RAM_reg_0_63_9_11_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"001D331DCC1DFF1D"
    )
        port map (
      I0 => D(7),
      I1 => cnt_features(0),
      I2 => \AXIS_in[S_AXIS_TDATA][15]\,
      I3 => cnt_features(1),
      I4 => \AXIS_in[S_AXIS_TDATA][23]\,
      I5 => \AXIS_in[S_AXIS_TDATA][31]\,
      O => feature_a(7)
    );
\idx_stage_1[1]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => main_state_curr(2),
      I1 => main_state_curr(1),
      O => \^state_curr_reg[0]_0\
    );
\main_state_curr[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => main_state_curr(1),
      I1 => main_state_curr(2),
      I2 => session_curr(1),
      I3 => session_curr(0),
      O => \main_state_curr_reg[0]\
    );
\main_state_curr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5757FFFF5454FFFC"
    )
        port map (
      I0 => \main_state_curr_reg[0]_0\,
      I1 => \^main_state_curr_reg[2]_0\,
      I2 => \main_state_curr[2]_i_4_n_0\,
      I3 => \main_state_curr[2]_i_5_n_0\,
      I4 => \main_state_curr_reg[0]_1\,
      I5 => main_state_curr(2),
      O => \main_state_curr_reg[2]\
    );
\main_state_curr[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"50FF0000C0505000"
    )
        port map (
      I0 => \^cnt_ex_block_outdated_reg[0]\,
      I1 => \cnt_weights_reg[2]_0\,
      I2 => \AXIS_in[ARESETN]\,
      I3 => main_state_curr(0),
      I4 => main_state_curr(1),
      I5 => main_state_curr(2),
      O => \^main_state_curr_reg[2]_0\
    );
\main_state_curr[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000007"
    )
        port map (
      I0 => \^state_curr_reg[1]_0\,
      I1 => main_state_curr(0),
      I2 => session_curr(0),
      I3 => session_curr(1),
      I4 => main_state_curr(2),
      I5 => main_state_curr(1),
      O => \main_state_curr[2]_i_4_n_0\
    );
\main_state_curr[2]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => main_state_curr(0),
      I1 => \^state_curr_reg[1]_0\,
      O => \main_state_curr[2]_i_5_n_0\
    );
\nb_examples[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => main_state_curr(1),
      I1 => main_state_curr(2),
      I2 => main_state_curr(0),
      I3 => \^state_curr_reg[1]_0\,
      O => E(0)
    );
\output_buffer[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FFF"
    )
        port map (
      I0 => state_curr(0),
      I1 => state_curr(1),
      I2 => state_curr(2),
      I3 => \AXIS_in[ARESETN]\,
      O => \output_buffer[11]_i_1_n_0\
    );
\output_buffer[11]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_examples_0(0),
      O => \output_buffer[11]_i_2_n_0\
    );
\output_buffer_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \output_buffer[11]_i_2_n_0\,
      D => DOBDO(0),
      Q => output_buffer(0),
      R => \output_buffer[11]_i_1_n_0\
    );
\output_buffer_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \output_buffer[11]_i_2_n_0\,
      D => DOBDO(10),
      Q => output_buffer(10),
      R => \output_buffer[11]_i_1_n_0\
    );
\output_buffer_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \output_buffer[11]_i_2_n_0\,
      D => DOBDO(11),
      Q => output_buffer(11),
      R => \output_buffer[11]_i_1_n_0\
    );
\output_buffer_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \output_buffer[11]_i_2_n_0\,
      D => DOBDO(1),
      Q => output_buffer(1),
      R => \output_buffer[11]_i_1_n_0\
    );
\output_buffer_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \output_buffer[11]_i_2_n_0\,
      D => DOBDO(2),
      Q => output_buffer(2),
      R => \output_buffer[11]_i_1_n_0\
    );
\output_buffer_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \output_buffer[11]_i_2_n_0\,
      D => DOBDO(3),
      Q => output_buffer(3),
      R => \output_buffer[11]_i_1_n_0\
    );
\output_buffer_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \output_buffer[11]_i_2_n_0\,
      D => DOBDO(4),
      Q => output_buffer(4),
      R => \output_buffer[11]_i_1_n_0\
    );
\output_buffer_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \output_buffer[11]_i_2_n_0\,
      D => DOBDO(5),
      Q => output_buffer(5),
      R => \output_buffer[11]_i_1_n_0\
    );
\output_buffer_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \output_buffer[11]_i_2_n_0\,
      D => DOBDO(6),
      Q => output_buffer(6),
      R => \output_buffer[11]_i_1_n_0\
    );
\output_buffer_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \output_buffer[11]_i_2_n_0\,
      D => DOBDO(7),
      Q => output_buffer(7),
      R => \output_buffer[11]_i_1_n_0\
    );
\output_buffer_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \output_buffer[11]_i_2_n_0\,
      D => DOBDO(8),
      Q => output_buffer(8),
      R => \output_buffer[11]_i_1_n_0\
    );
\output_buffer_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \output_buffer[11]_i_2_n_0\,
      D => DOBDO(9),
      Q => output_buffer(9),
      R => \output_buffer[11]_i_1_n_0\
    );
results_RAM_reg_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0006"
    )
        port map (
      I0 => results_RAM_reg_i_18_n_0,
      I1 => cnt_examples(6),
      I2 => \output_buffer[11]_i_1_n_0\,
      I3 => state_next1,
      O => ADDRBWRADDR(6)
    );
results_RAM_reg_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000A8000000"
    )
        port map (
      I0 => results_RAM_reg_i_19_n_0,
      I1 => state_curr(0),
      I2 => state_curr(1),
      I3 => state_curr(2),
      I4 => \AXIS_in[ARESETN]\,
      I5 => state_next1,
      O => ADDRBWRADDR(5)
    );
results_RAM_reg_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007FFF8000"
    )
        port map (
      I0 => cnt_examples(2),
      I1 => cnt_examples_0(0),
      I2 => cnt_examples(1),
      I3 => cnt_examples(3),
      I4 => cnt_examples(4),
      I5 => results_RAM_reg_i_20_n_0,
      O => ADDRBWRADDR(4)
    );
results_RAM_reg_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000007F80"
    )
        port map (
      I0 => cnt_examples(1),
      I1 => cnt_examples_0(0),
      I2 => cnt_examples(2),
      I3 => cnt_examples(3),
      I4 => \output_buffer[11]_i_1_n_0\,
      I5 => state_next1,
      O => ADDRBWRADDR(3)
    );
results_RAM_reg_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010100010001000"
    )
        port map (
      I0 => results_RAM_reg_i_21_n_0,
      I1 => state_next1,
      I2 => \AXIS_in[ARESETN]\,
      I3 => cnt_examples(2),
      I4 => cnt_examples(1),
      I5 => cnt_examples_0(0),
      O => ADDRBWRADDR(2)
    );
results_RAM_reg_i_15: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0006"
    )
        port map (
      I0 => cnt_examples(1),
      I1 => cnt_examples_0(0),
      I2 => \output_buffer[11]_i_1_n_0\,
      I3 => state_next1,
      O => ADDRBWRADDR(1)
    );
results_RAM_reg_i_16: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000054000000"
    )
        port map (
      I0 => cnt_examples_0(0),
      I1 => state_curr(0),
      I2 => state_curr(1),
      I3 => state_curr(2),
      I4 => \AXIS_in[ARESETN]\,
      I5 => state_next1,
      O => ADDRBWRADDR(0)
    );
results_RAM_reg_i_18: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => cnt_examples(2),
      I1 => cnt_examples_0(0),
      I2 => cnt_examples(1),
      I3 => cnt_examples(3),
      I4 => cnt_examples(4),
      I5 => cnt_examples(5),
      O => results_RAM_reg_i_18_n_0
    );
results_RAM_reg_i_19: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => cnt_examples(5),
      I1 => cnt_examples(2),
      I2 => cnt_examples_0(0),
      I3 => cnt_examples(1),
      I4 => cnt_examples(3),
      I5 => cnt_examples(4),
      O => results_RAM_reg_i_19_n_0
    );
results_RAM_reg_i_20: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFBFBFFF"
    )
        port map (
      I0 => state_next1,
      I1 => \AXIS_in[ARESETN]\,
      I2 => state_curr(2),
      I3 => state_curr(1),
      I4 => state_curr(0),
      O => results_RAM_reg_i_20_n_0
    );
results_RAM_reg_i_21: unisim.vcomponents.LUT3
    generic map(
      INIT => X"57"
    )
        port map (
      I0 => state_curr(2),
      I1 => state_curr(1),
      I2 => state_curr(0),
      O => results_RAM_reg_i_21_n_0
    );
results_RAM_reg_i_9: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000078"
    )
        port map (
      I0 => cnt_examples(6),
      I1 => results_RAM_reg_i_18_n_0,
      I2 => cnt_examples(7),
      I3 => \output_buffer[11]_i_1_n_0\,
      I4 => state_next1,
      O => ADDRBWRADDR(7)
    );
\session_curr[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF3FBE3F01000000"
    )
        port map (
      I0 => \^state_curr_reg[1]_0\,
      I1 => main_state_curr(2),
      I2 => main_state_curr(1),
      I3 => main_state_curr(0),
      I4 => \AXIS_in[S_AXIS_TDATA][15]\,
      I5 => session_curr(0),
      O => \session_curr_reg[0]\
    );
\session_curr[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BE3FBF3F00000100"
    )
        port map (
      I0 => \^state_curr_reg[1]_0\,
      I1 => main_state_curr(2),
      I2 => main_state_curr(1),
      I3 => main_state_curr(0),
      I4 => \AXIS_in[S_AXIS_TDATA][15]\,
      I5 => session_curr(1),
      O => \session_curr_reg[1]\
    );
state1_next1_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \nb_examples_reg[7]\(4),
      I1 => \nb_examples_reg[7]\(2),
      I2 => \nb_examples_reg[7]\(0),
      I3 => \nb_examples_reg[7]\(1),
      I4 => \nb_examples_reg[7]\(3),
      I5 => \nb_examples_reg[7]\(5),
      O => \^cnt_examples_reg[1]_0\
    );
\state_curr[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00EAFFFF00EA0000"
    )
        port map (
      I0 => \state_curr[0]_i_2_n_0\,
      I1 => \main_state_curr_reg[0]_2\,
      I2 => \state_curr[2]_i_5_n_0\,
      I3 => \state_curr[0]_i_3_n_0\,
      I4 => \state_curr[2]_i_7_n_0\,
      I5 => state_curr(0),
      O => \state_curr[0]_i_1_n_0\
    );
\state_curr[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF80000000"
    )
        port map (
      I0 => main_state_curr(0),
      I1 => \AXIS_in[ARESETN]\,
      I2 => main_state_curr(1),
      I3 => main_state_curr(2),
      I4 => \^cnt_ex_block_outdated_reg[0]\,
      I5 => \state_curr[0]_i_4_n_0\,
      O => \state_curr[0]_i_2_n_0\
    );
\state_curr[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAABAA"
    )
        port map (
      I0 => \state_curr[2]_i_9_n_0\,
      I1 => \state_curr[0]_i_5_n_0\,
      I2 => state_curr(2),
      I3 => state_curr(1),
      I4 => state_curr(0),
      O => \state_curr[0]_i_3_n_0\
    );
\state_curr[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"03023302"
    )
        port map (
      I0 => state_curr(0),
      I1 => state_curr(2),
      I2 => \AXIS_in[S_AXIS_TVALID]\,
      I3 => state_curr(1),
      I4 => \state_curr[2]_i_8_n_0\,
      O => \state_curr[0]_i_4_n_0\
    );
\state_curr[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000400000"
    )
        port map (
      I0 => \cnt_weights[4]_i_4_n_0\,
      I1 => \^q\(0),
      I2 => \AXIS_in[S_AXIS_TVALID]\,
      I3 => \^q\(1),
      I4 => cnt_weights(4),
      I5 => state_curr(0),
      O => \state_curr[0]_i_5_n_0\
    );
\state_curr[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF01FFFFFF010000"
    )
        port map (
      I0 => \^state_curr_reg[1]_0\,
      I1 => \state_curr[1]_i_2_n_0\,
      I2 => \AXIS_in[S_AXIS_TDATA][14]\,
      I3 => \state_curr[1]_i_3_n_0\,
      I4 => \state_curr[2]_i_7_n_0\,
      I5 => state_curr(1),
      O => \state_curr[1]_i_1_n_0\
    );
\state_curr[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => main_state_curr(1),
      I1 => main_state_curr(2),
      I2 => main_state_curr(0),
      O => \state_curr[1]_i_2_n_0\
    );
\state_curr[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04444444"
    )
        port map (
      I0 => state_curr(2),
      I1 => state_curr(1),
      I2 => \AXIS_in[S_AXIS_TVALID]\,
      I3 => state_curr(0),
      I4 => \state_curr[2]_i_8_n_0\,
      O => \state_curr[1]_i_3_n_0\
    );
\state_curr[2]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \AXIS_in[ARESETN]\,
      O => \^cnt_weights_reg[0]_0\
    );
\state_curr[2]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAFFEFFFFFFFFF"
    )
        port map (
      I0 => \sum_1_reg[0]0_i_51_n_0\,
      I1 => \cnt_examples[0]_i_2_n_0\,
      I2 => \sum_1_reg[0]0_i_52_n_0\,
      I3 => \cnt_examples[7]_i_3_n_0\,
      I4 => \sum_1_reg[0]0_i_53_n_0\,
      I5 => \state_curr[2]_i_15_n_0\,
      O => \state_curr[2]_i_10_n_0\
    );
\state_curr[2]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => \AXIS_in[S_AXIS_TDATA][14]\,
      I1 => \state_curr[1]_i_2_n_0\,
      I2 => \sum_1_reg[0]0_i_51_n_0\,
      I3 => \state_curr[2]_i_20_n_0\,
      I4 => \AXIS_in[ARESETN]\,
      O => \state_curr[2]_i_13_n_0\
    );
\state_curr[2]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \AXIS_in[ARESETN]\,
      I1 => main_state_curr(0),
      O => \state_curr[2]_i_15_n_0\
    );
\state_curr[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A88FFFF8A880000"
    )
        port map (
      I0 => \state_curr[2]_i_3_n_0\,
      I1 => \state_curr[2]_i_4_n_0\,
      I2 => \state_curr[2]_i_5_n_0\,
      I3 => \main_state_curr_reg[0]_2\,
      I4 => \state_curr[2]_i_7_n_0\,
      I5 => state_curr(2),
      O => \state_curr[2]_i_2_n_0\
    );
\state_curr[2]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020202020202020"
    )
        port map (
      I0 => \state_curr[2]_i_24_n_0\,
      I1 => state_curr(1),
      I2 => state_curr(2),
      I3 => state_next1,
      I4 => \AXIS_in[M_AXIS_TREADY]\,
      I5 => state_curr(0),
      O => \state_curr[2]_i_20_n_0\
    );
\state_curr[2]_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBBBFBBFFFFBFBB"
    )
        port map (
      I0 => \cnt_examples[7]_i_3_n_0\,
      I1 => state_curr(2),
      I2 => state_curr(1),
      I3 => state_curr(0),
      I4 => \state_curr[2]_i_33_n_0\,
      I5 => \cnt_examples[0]_i_3_n_0\,
      O => \state_curr[2]_i_24_n_0\
    );
\state_curr[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAAAFFAF"
    )
        port map (
      I0 => state_curr(2),
      I1 => \state_curr[2]_i_8_n_0\,
      I2 => state_curr(0),
      I3 => \AXIS_in[S_AXIS_TVALID]\,
      I4 => state_curr(1),
      O => \state_curr[2]_i_3_n_0\
    );
\state_curr[2]_i_33\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => cnt_examples(7),
      I1 => cnt_examples_0(0),
      I2 => cnt_examples(4),
      I3 => cnt_examples(2),
      O => \state_curr[2]_i_33_n_0\
    );
\state_curr[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF80000000"
    )
        port map (
      I0 => main_state_curr(0),
      I1 => \AXIS_in[ARESETN]\,
      I2 => main_state_curr(1),
      I3 => main_state_curr(2),
      I4 => \^cnt_ex_block_outdated_reg[0]\,
      I5 => \state_curr[2]_i_9_n_0\,
      O => \state_curr[2]_i_4_n_0\
    );
\state_curr[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F777F7F7"
    )
        port map (
      I0 => \^state_curr_reg[0]_0\,
      I1 => \state_curr[2]_i_10_n_0\,
      I2 => main_state_curr(0),
      I3 => update_requested_reg_0,
      I4 => \cnt_ex_block_outdated_reg[0]_1\,
      I5 => \state_curr[2]_i_13_n_0\,
      O => \state_curr[2]_i_5_n_0\
    );
\state_curr[2]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"888FFFFF"
    )
        port map (
      I0 => state_next1,
      I1 => \AXIS_in[M_AXIS_TREADY]\,
      I2 => state_curr(0),
      I3 => state_curr(1),
      I4 => state_curr(2),
      O => \state_curr[2]_i_7_n_0\
    );
\state_curr[2]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000008"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \^q\(3),
      I4 => cnt_weights(4),
      O => \state_curr[2]_i_8_n_0\
    );
\state_curr[2]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000ABFFFFFF"
    )
        port map (
      I0 => \cnt_examples[0]_i_2_n_0\,
      I1 => cnt_features(0),
      I2 => cnt_features(1),
      I3 => cnt_transfers,
      I4 => \AXIS_in[S_AXIS_TVALID]\,
      I5 => features_f_RAM_reg_0_63_0_2_i_13_n_0,
      O => \state_curr[2]_i_9_n_0\
    );
\state_curr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \state_curr[0]_i_1_n_0\,
      Q => state_curr(0),
      R => \^cnt_weights_reg[0]_0\
    );
\state_curr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \state_curr[1]_i_1_n_0\,
      Q => state_curr(1),
      R => \^cnt_weights_reg[0]_0\
    );
\state_curr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \state_curr[2]_i_2_n_0\,
      Q => state_curr(2),
      R => \^cnt_weights_reg[0]_0\
    );
state_next1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => state_next1_carry_n_0,
      CO(2) => state_next1_carry_n_1,
      CO(1) => state_next1_carry_n_2,
      CO(0) => state_next1_carry_n_3,
      CYINIT => '1',
      DI(3) => state_next1_carry_i_1_n_0,
      DI(2) => state_next1_carry_i_2_n_0,
      DI(1) => state_next1_carry_i_3_n_0,
      DI(0) => state_next1_carry_i_4_n_0,
      O(3 downto 0) => NLW_state_next1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => state_next1_carry_i_5_n_0,
      S(2) => state_next1_carry_i_6_n_0,
      S(1) => state_next1_carry_i_7_n_0,
      S(0) => state_next1_carry_i_8_n_0
    );
\state_next1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => state_next1_carry_n_0,
      CO(3 downto 1) => \NLW_state_next1_carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => state_next1,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => state_next2(8),
      O(3 downto 0) => \NLW_state_next1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \state_next1_carry__0_i_2_n_0\
    );
\state_next1_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \nb_examples_reg[7]\(6),
      I1 => \^cnt_examples_reg[1]_0\,
      I2 => \nb_examples_reg[7]\(7),
      O => state_next2(8)
    );
\state_next1_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => \nb_examples_reg[7]\(7),
      I1 => \^cnt_examples_reg[1]_0\,
      I2 => \nb_examples_reg[7]\(6),
      O => \state_next1_carry__0_i_2_n_0\
    );
state_next1_carry_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8AE308A2"
    )
        port map (
      I0 => cnt_examples(7),
      I1 => \^cnt_examples_reg[1]_0\,
      I2 => \nb_examples_reg[7]\(6),
      I3 => \nb_examples_reg[7]\(7),
      I4 => cnt_examples(6),
      O => state_next1_carry_i_1_n_0
    );
state_next1_carry_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8AE308A2"
    )
        port map (
      I0 => cnt_examples(5),
      I1 => state_next1_carry_i_9_n_0,
      I2 => \nb_examples_reg[7]\(4),
      I3 => \nb_examples_reg[7]\(5),
      I4 => cnt_examples(4),
      O => state_next1_carry_i_2_n_0
    );
state_next1_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"02AAABFC0002AAA8"
    )
        port map (
      I0 => cnt_examples(3),
      I1 => \nb_examples_reg[7]\(1),
      I2 => \nb_examples_reg[7]\(0),
      I3 => \nb_examples_reg[7]\(2),
      I4 => \nb_examples_reg[7]\(3),
      I5 => cnt_examples(2),
      O => state_next1_carry_i_3_n_0
    );
state_next1_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B828"
    )
        port map (
      I0 => cnt_examples(1),
      I1 => \nb_examples_reg[7]\(1),
      I2 => \nb_examples_reg[7]\(0),
      I3 => cnt_examples_0(0),
      O => state_next1_carry_i_4_n_0
    );
state_next1_carry_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"06909009"
    )
        port map (
      I0 => \nb_examples_reg[7]\(7),
      I1 => cnt_examples(7),
      I2 => \nb_examples_reg[7]\(6),
      I3 => \^cnt_examples_reg[1]_0\,
      I4 => cnt_examples(6),
      O => state_next1_carry_i_5_n_0
    );
state_next1_carry_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"06909009"
    )
        port map (
      I0 => \nb_examples_reg[7]\(5),
      I1 => cnt_examples(5),
      I2 => \nb_examples_reg[7]\(4),
      I3 => state_next1_carry_i_9_n_0,
      I4 => cnt_examples(4),
      O => state_next1_carry_i_6_n_0
    );
state_next1_carry_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9090900609090990"
    )
        port map (
      I0 => \nb_examples_reg[7]\(3),
      I1 => cnt_examples(3),
      I2 => \nb_examples_reg[7]\(2),
      I3 => \nb_examples_reg[7]\(1),
      I4 => \nb_examples_reg[7]\(0),
      I5 => cnt_examples(2),
      O => state_next1_carry_i_7_n_0
    );
state_next1_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0960"
    )
        port map (
      I0 => \nb_examples_reg[7]\(1),
      I1 => cnt_examples(1),
      I2 => cnt_examples_0(0),
      I3 => \nb_examples_reg[7]\(0),
      O => state_next1_carry_i_8_n_0
    );
state_next1_carry_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \nb_examples_reg[7]\(2),
      I1 => \nb_examples_reg[7]\(0),
      I2 => \nb_examples_reg[7]\(1),
      I3 => \nb_examples_reg[7]\(3),
      O => state_next1_carry_i_9_n_0
    );
\sum_1[2][31]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => \AXIS_in[ARESETN]\,
      I1 => main_state_curr(1),
      I2 => main_state_curr(2),
      I3 => main_state_curr(0),
      I4 => \^cnt_ex_block_outdated_reg[0]\,
      O => \sum_1_reg[0][0]\
    );
\sum_1_reg[0]0_i_49\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAFFEFFFFFFFFF"
    )
        port map (
      I0 => \sum_1_reg[0]0_i_51_n_0\,
      I1 => \cnt_examples[0]_i_2_n_0\,
      I2 => \sum_1_reg[0]0_i_52_n_0\,
      I3 => \cnt_examples[7]_i_3_n_0\,
      I4 => \sum_1_reg[0]0_i_53_n_0\,
      I5 => \AXIS_in[ARESETN]\,
      O => \^state_curr_reg[1]_0\
    );
\sum_1_reg[0]0_i_51\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA00AA"
    )
        port map (
      I0 => \sum_1_reg[0]0_i_56_n_0\,
      I1 => state_next1,
      I2 => \AXIS_in[M_AXIS_TREADY]\,
      I3 => state_curr(2),
      I4 => state_curr(1),
      O => \sum_1_reg[0]0_i_51_n_0\
    );
\sum_1_reg[0]0_i_52\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => state_curr(2),
      I1 => state_curr(1),
      I2 => state_curr(0),
      O => \sum_1_reg[0]0_i_52_n_0\
    );
\sum_1_reg[0]0_i_53\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF80FF"
    )
        port map (
      I0 => state_curr(0),
      I1 => \AXIS_in[M_AXIS_TREADY]\,
      I2 => state_next1,
      I3 => state_curr(2),
      I4 => state_curr(1),
      O => \sum_1_reg[0]0_i_53_n_0\
    );
\sum_1_reg[0]0_i_56\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF7F3F3F"
    )
        port map (
      I0 => \state_curr[2]_i_8_n_0\,
      I1 => \AXIS_in[S_AXIS_TVALID]\,
      I2 => state_curr(0),
      I3 => state_curr(2),
      I4 => state_curr(1),
      O => \sum_1_reg[0]0_i_56_n_0\
    );
update_requested_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCBC"
    )
        port map (
      I0 => \^state_curr_reg[1]_0\,
      I1 => LED_8_OBUF,
      I2 => LED_5_OBUF,
      I3 => \cnt_features_reg[2]\,
      O => update_requested_reg
    );
weights1_f_RAM_reg_r1_0_31_0_5_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => weights1_f_RAM_reg_r1_0_31_0_5_i_17_n_0,
      I1 => \^sum_1_reg[0]0_0\,
      I2 => lfsr(1),
      I3 => \state_curr_reg[1]_2\,
      I4 => \lfsr_reg[7]\(1),
      O => \sum_1_reg[0]0\(1)
    );
weights1_f_RAM_reg_r1_0_31_0_5_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF00800000"
    )
        port map (
      I0 => cnt_weights(4),
      I1 => \AXIS_in[ARESETN]\,
      I2 => \AXIS_in[S_AXIS_TVALID]\,
      I3 => state_curr(0),
      I4 => weights1_f_RAM_reg_r1_0_31_0_5_i_25_n_0,
      I5 => \cnt_weights_reg[4]_0\(0),
      O => \sum_1_reg[0]0_1\(0)
    );
weights1_f_RAM_reg_r1_0_31_0_5_i_17: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \AXIS_in[S_AXIS_TDATA][13]\,
      I1 => \^q\(0),
      I2 => D(1),
      O => weights1_f_RAM_reg_r1_0_31_0_5_i_17_n_0
    );
weights1_f_RAM_reg_r1_0_31_0_5_i_18: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000800"
    )
        port map (
      I0 => \AXIS_in[ARESETN]\,
      I1 => \AXIS_in[S_AXIS_TVALID]\,
      I2 => state_curr(0),
      I3 => state_curr(1),
      I4 => state_curr(2),
      O => \^sum_1_reg[0]0_0\
    );
weights1_f_RAM_reg_r1_0_31_0_5_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => weights1_f_RAM_reg_r1_0_31_0_5_i_20_n_0,
      I1 => \^sum_1_reg[0]0_0\,
      I2 => lfsr(0),
      I3 => \state_curr_reg[1]_2\,
      I4 => \lfsr_reg[7]\(0),
      O => \sum_1_reg[0]0\(0)
    );
weights1_f_RAM_reg_r1_0_31_0_5_i_20: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \AXIS_in[S_AXIS_TDATA][12]\,
      I1 => \^q\(0),
      I2 => D(0),
      O => weights1_f_RAM_reg_r1_0_31_0_5_i_20_n_0
    );
weights1_f_RAM_reg_r1_0_31_0_5_i_21: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \AXIS_in[S_AXIS_TDATA][15]\,
      I1 => \^q\(0),
      I2 => D(3),
      O => weights1_f_RAM_reg_r1_0_31_0_5_i_21_n_0
    );
weights1_f_RAM_reg_r1_0_31_0_5_i_22: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \AXIS_in[S_AXIS_TDATA][14]\,
      I1 => \^q\(0),
      I2 => D(2),
      O => weights1_f_RAM_reg_r1_0_31_0_5_i_22_n_0
    );
weights1_f_RAM_reg_r1_0_31_0_5_i_23: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \AXIS_in[S_AXIS_TDATA][17]\,
      I1 => \^q\(0),
      I2 => D(5),
      O => weights1_f_RAM_reg_r1_0_31_0_5_i_23_n_0
    );
weights1_f_RAM_reg_r1_0_31_0_5_i_24: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \AXIS_in[S_AXIS_TDATA][16]\,
      I1 => \^q\(0),
      I2 => D(4),
      O => weights1_f_RAM_reg_r1_0_31_0_5_i_24_n_0
    );
weights1_f_RAM_reg_r1_0_31_0_5_i_25: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => state_curr(1),
      I1 => state_curr(2),
      O => weights1_f_RAM_reg_r1_0_31_0_5_i_25_n_0
    );
weights1_f_RAM_reg_r1_0_31_0_5_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => weights1_f_RAM_reg_r1_0_31_0_5_i_21_n_0,
      I1 => \^sum_1_reg[0]0_0\,
      I2 => lfsr(3),
      I3 => \state_curr_reg[1]_2\,
      I4 => \lfsr_reg[7]\(3),
      O => \sum_1_reg[0]0\(3)
    );
weights1_f_RAM_reg_r1_0_31_0_5_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => weights1_f_RAM_reg_r1_0_31_0_5_i_22_n_0,
      I1 => \^sum_1_reg[0]0_0\,
      I2 => lfsr(2),
      I3 => \state_curr_reg[1]_2\,
      I4 => \lfsr_reg[7]\(2),
      O => \sum_1_reg[0]0\(2)
    );
weights1_f_RAM_reg_r1_0_31_0_5_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => weights1_f_RAM_reg_r1_0_31_0_5_i_23_n_0,
      I1 => \^sum_1_reg[0]0_0\,
      I2 => lfsr(5),
      I3 => \state_curr_reg[1]_2\,
      I4 => \lfsr_reg[7]\(5),
      O => \sum_1_reg[0]0\(5)
    );
weights1_f_RAM_reg_r1_0_31_0_5_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => weights1_f_RAM_reg_r1_0_31_0_5_i_24_n_0,
      I1 => \^sum_1_reg[0]0_0\,
      I2 => lfsr(4),
      I3 => \state_curr_reg[1]_2\,
      I4 => \lfsr_reg[7]\(4),
      O => \sum_1_reg[0]0\(4)
    );
weights1_f_RAM_reg_r1_0_31_6_11_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => weights1_f_RAM_reg_r1_0_31_6_11_i_7_n_0,
      I1 => \^sum_1_reg[0]0_0\,
      I2 => lfsr(7),
      I3 => \state_curr_reg[1]_2\,
      I4 => \lfsr_reg[7]\(7),
      O => \sum_1_reg[0]0\(7)
    );
weights1_f_RAM_reg_r1_0_31_6_11_i_10: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \AXIS_in[S_AXIS_TDATA][20]\,
      I1 => \^q\(0),
      I2 => \AXIS_in[S_AXIS_TDATA][8]\,
      O => weights1_f_RAM_reg_r1_0_31_6_11_i_10_n_0
    );
weights1_f_RAM_reg_r1_0_31_6_11_i_11: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \AXIS_in[S_AXIS_TDATA][23]\,
      I1 => \^q\(0),
      I2 => \AXIS_in[S_AXIS_TDATA][11]\,
      O => weights1_f_RAM_reg_r1_0_31_6_11_i_11_n_0
    );
weights1_f_RAM_reg_r1_0_31_6_11_i_12: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \AXIS_in[S_AXIS_TDATA][22]\,
      I1 => \^q\(0),
      I2 => \AXIS_in[S_AXIS_TDATA][10]\,
      O => weights1_f_RAM_reg_r1_0_31_6_11_i_12_n_0
    );
weights1_f_RAM_reg_r1_0_31_6_11_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => weights1_f_RAM_reg_r1_0_31_6_11_i_8_n_0,
      I1 => \^sum_1_reg[0]0_0\,
      I2 => lfsr(6),
      I3 => \state_curr_reg[1]_2\,
      I4 => \lfsr_reg[7]\(6),
      O => \sum_1_reg[0]0\(6)
    );
weights1_f_RAM_reg_r1_0_31_6_11_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => weights1_f_RAM_reg_r1_0_31_6_11_i_9_n_0,
      I1 => \^sum_1_reg[0]0_0\,
      I2 => lfsr(9),
      I3 => \state_curr_reg[1]_2\,
      I4 => \lfsr_reg[7]\(9),
      O => \sum_1_reg[0]0\(9)
    );
weights1_f_RAM_reg_r1_0_31_6_11_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => weights1_f_RAM_reg_r1_0_31_6_11_i_10_n_0,
      I1 => \^sum_1_reg[0]0_0\,
      I2 => lfsr(8),
      I3 => \state_curr_reg[1]_2\,
      I4 => \lfsr_reg[7]\(8),
      O => \sum_1_reg[0]0\(8)
    );
weights1_f_RAM_reg_r1_0_31_6_11_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => weights1_f_RAM_reg_r1_0_31_6_11_i_11_n_0,
      I1 => \^sum_1_reg[0]0_0\,
      I2 => lfsr(11),
      I3 => \state_curr_reg[1]_2\,
      I4 => \lfsr_reg[7]\(11),
      O => \sum_1_reg[0]0\(11)
    );
weights1_f_RAM_reg_r1_0_31_6_11_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => weights1_f_RAM_reg_r1_0_31_6_11_i_12_n_0,
      I1 => \^sum_1_reg[0]0_0\,
      I2 => lfsr(10),
      I3 => \state_curr_reg[1]_2\,
      I4 => \lfsr_reg[7]\(10),
      O => \sum_1_reg[0]0\(10)
    );
weights1_f_RAM_reg_r1_0_31_6_11_i_7: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \AXIS_in[S_AXIS_TDATA][19]\,
      I1 => \^q\(0),
      I2 => D(7),
      O => weights1_f_RAM_reg_r1_0_31_6_11_i_7_n_0
    );
weights1_f_RAM_reg_r1_0_31_6_11_i_8: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \AXIS_in[S_AXIS_TDATA][18]\,
      I1 => \^q\(0),
      I2 => D(6),
      O => weights1_f_RAM_reg_r1_0_31_6_11_i_8_n_0
    );
weights1_f_RAM_reg_r1_0_31_6_11_i_9: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \AXIS_in[S_AXIS_TDATA][21]\,
      I1 => \^q\(0),
      I2 => \AXIS_in[S_AXIS_TDATA][9]\,
      O => weights1_f_RAM_reg_r1_0_31_6_11_i_9_n_0
    );
weights2_f_RAM_reg_r1_0_3_0_5_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBBBBBB8888888"
    )
        port map (
      I0 => weights1_f_RAM_reg_r1_0_31_0_5_i_17_n_0,
      I1 => weights2_f_RAM_reg_r1_0_3_0_5_i_11_n_0,
      I2 => lfsr(1),
      I3 => \AXIS_in[ARESETN]\,
      I4 => \state_curr_reg[1]_1\,
      I5 => p_0_out(1),
      O => p_2_in(1)
    );
weights2_f_RAM_reg_r1_0_3_0_5_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000FFFF80000000"
    )
        port map (
      I0 => \^q\(0),
      I1 => state_curr(1),
      I2 => state_curr(0),
      I3 => \AXIS_in[ARESETN]\,
      I4 => weights2_f_RAM_reg_r1_0_3_0_5_i_11_n_0,
      I5 => ADDRA(0),
      O => ADDRD(0)
    );
weights2_f_RAM_reg_r1_0_3_0_5_i_11: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800000"
    )
        port map (
      I0 => state_curr(0),
      I1 => \AXIS_in[S_AXIS_TVALID]\,
      I2 => state_curr(1),
      I3 => state_curr(2),
      I4 => \AXIS_in[ARESETN]\,
      O => weights2_f_RAM_reg_r1_0_3_0_5_i_11_n_0
    );
weights2_f_RAM_reg_r1_0_3_0_5_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBBBBBB8888888"
    )
        port map (
      I0 => weights1_f_RAM_reg_r1_0_31_0_5_i_20_n_0,
      I1 => weights2_f_RAM_reg_r1_0_3_0_5_i_11_n_0,
      I2 => lfsr(0),
      I3 => \AXIS_in[ARESETN]\,
      I4 => \state_curr_reg[1]_1\,
      I5 => p_0_out(0),
      O => p_2_in(0)
    );
weights2_f_RAM_reg_r1_0_3_0_5_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBBBBBB8888888"
    )
        port map (
      I0 => weights1_f_RAM_reg_r1_0_31_0_5_i_21_n_0,
      I1 => weights2_f_RAM_reg_r1_0_3_0_5_i_11_n_0,
      I2 => lfsr(3),
      I3 => \AXIS_in[ARESETN]\,
      I4 => \state_curr_reg[1]_1\,
      I5 => p_0_out(3),
      O => p_2_in(3)
    );
weights2_f_RAM_reg_r1_0_3_0_5_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBBBBBB8888888"
    )
        port map (
      I0 => weights1_f_RAM_reg_r1_0_31_0_5_i_22_n_0,
      I1 => weights2_f_RAM_reg_r1_0_3_0_5_i_11_n_0,
      I2 => lfsr(2),
      I3 => \AXIS_in[ARESETN]\,
      I4 => \state_curr_reg[1]_1\,
      I5 => p_0_out(2),
      O => p_2_in(2)
    );
weights2_f_RAM_reg_r1_0_3_0_5_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBBBBBB8888888"
    )
        port map (
      I0 => weights1_f_RAM_reg_r1_0_31_0_5_i_23_n_0,
      I1 => weights2_f_RAM_reg_r1_0_3_0_5_i_11_n_0,
      I2 => lfsr(5),
      I3 => \AXIS_in[ARESETN]\,
      I4 => \state_curr_reg[1]_1\,
      I5 => p_0_out(5),
      O => p_2_in(5)
    );
weights2_f_RAM_reg_r1_0_3_0_5_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBBBBBB8888888"
    )
        port map (
      I0 => weights1_f_RAM_reg_r1_0_31_0_5_i_24_n_0,
      I1 => weights2_f_RAM_reg_r1_0_3_0_5_i_11_n_0,
      I2 => lfsr(4),
      I3 => \AXIS_in[ARESETN]\,
      I4 => \state_curr_reg[1]_1\,
      I5 => p_0_out(4),
      O => p_2_in(4)
    );
weights2_f_RAM_reg_r1_0_3_0_5_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F80000080800000"
    )
        port map (
      I0 => \^q\(1),
      I1 => state_curr(0),
      I2 => weights2_f_RAM_reg_r1_0_3_0_5_i_11_n_0,
      I3 => \state_curr_reg[1]_1\,
      I4 => \AXIS_in[ARESETN]\,
      I5 => \cnt_weights_reg[1]_0\(0),
      O => ADDRD(1)
    );
weights2_f_RAM_reg_r1_0_3_6_11_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBBBBBB8888888"
    )
        port map (
      I0 => weights1_f_RAM_reg_r1_0_31_6_11_i_7_n_0,
      I1 => weights2_f_RAM_reg_r1_0_3_0_5_i_11_n_0,
      I2 => lfsr(7),
      I3 => \AXIS_in[ARESETN]\,
      I4 => \state_curr_reg[1]_1\,
      I5 => p_0_out(7),
      O => p_2_in(7)
    );
weights2_f_RAM_reg_r1_0_3_6_11_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBBBBBB8888888"
    )
        port map (
      I0 => weights1_f_RAM_reg_r1_0_31_6_11_i_8_n_0,
      I1 => weights2_f_RAM_reg_r1_0_3_0_5_i_11_n_0,
      I2 => lfsr(6),
      I3 => \AXIS_in[ARESETN]\,
      I4 => \state_curr_reg[1]_1\,
      I5 => p_0_out(6),
      O => p_2_in(6)
    );
weights2_f_RAM_reg_r1_0_3_6_11_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBBBBBB8888888"
    )
        port map (
      I0 => weights1_f_RAM_reg_r1_0_31_6_11_i_9_n_0,
      I1 => weights2_f_RAM_reg_r1_0_3_0_5_i_11_n_0,
      I2 => lfsr(9),
      I3 => \AXIS_in[ARESETN]\,
      I4 => \state_curr_reg[1]_1\,
      I5 => p_0_out(9),
      O => p_2_in(9)
    );
weights2_f_RAM_reg_r1_0_3_6_11_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBBBBBB8888888"
    )
        port map (
      I0 => weights1_f_RAM_reg_r1_0_31_6_11_i_10_n_0,
      I1 => weights2_f_RAM_reg_r1_0_3_0_5_i_11_n_0,
      I2 => lfsr(8),
      I3 => \AXIS_in[ARESETN]\,
      I4 => \state_curr_reg[1]_1\,
      I5 => p_0_out(8),
      O => p_2_in(8)
    );
weights2_f_RAM_reg_r1_0_3_6_11_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBBBBBB8888888"
    )
        port map (
      I0 => weights1_f_RAM_reg_r1_0_31_6_11_i_11_n_0,
      I1 => weights2_f_RAM_reg_r1_0_3_0_5_i_11_n_0,
      I2 => lfsr(11),
      I3 => \AXIS_in[ARESETN]\,
      I4 => \state_curr_reg[1]_1\,
      I5 => p_0_out(11),
      O => p_2_in(11)
    );
weights2_f_RAM_reg_r1_0_3_6_11_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBBBBBB8888888"
    )
        port map (
      I0 => weights1_f_RAM_reg_r1_0_31_6_11_i_12_n_0,
      I1 => weights2_f_RAM_reg_r1_0_3_0_5_i_11_n_0,
      I2 => lfsr(10),
      I3 => \AXIS_in[ARESETN]\,
      I4 => \state_curr_reg[1]_1\,
      I5 => p_0_out(10),
      O => p_2_in(10)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lfsr_counter is
  port (
    lfsr : out STD_LOGIC_VECTOR ( 11 downto 0 );
    clk_IBUF_BUFG : in STD_LOGIC
  );
end lfsr_counter;

architecture STRUCTURE of lfsr_counter is
  signal \^lfsr\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \p_1_in__0\ : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  lfsr(11 downto 0) <= \^lfsr\(11 downto 0);
\lfsr[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => \^lfsr\(11),
      I1 => \^lfsr\(0),
      I2 => \^lfsr\(5),
      I3 => \^lfsr\(3),
      O => \p_1_in__0\(0)
    );
\lfsr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \p_1_in__0\(0),
      Q => \^lfsr\(0),
      R => '0'
    );
\lfsr_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \^lfsr\(9),
      Q => \^lfsr\(10),
      R => '0'
    );
\lfsr_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \^lfsr\(10),
      Q => \^lfsr\(11),
      R => '0'
    );
\lfsr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \^lfsr\(0),
      Q => \^lfsr\(1),
      R => '0'
    );
\lfsr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \^lfsr\(1),
      Q => \^lfsr\(2),
      R => '0'
    );
\lfsr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \^lfsr\(2),
      Q => \^lfsr\(3),
      R => '0'
    );
\lfsr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \^lfsr\(3),
      Q => \^lfsr\(4),
      R => '0'
    );
\lfsr_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \^lfsr\(4),
      Q => \^lfsr\(5),
      R => '0'
    );
\lfsr_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \^lfsr\(5),
      Q => \^lfsr\(6),
      R => '0'
    );
\lfsr_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \^lfsr\(6),
      Q => \^lfsr\(7),
      R => '0'
    );
\lfsr_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \^lfsr\(7),
      Q => \^lfsr\(8),
      R => '0'
    );
\lfsr_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \^lfsr\(8),
      Q => \^lfsr\(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity sigmoid is
  port (
    D : out STD_LOGIC_VECTOR ( 11 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk_IBUF_BUFG : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end sigmoid;

architecture STRUCTURE of sigmoid is
  signal B_0 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \CODE_11__15_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry__0_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry__0_n_1\ : STD_LOGIC;
  signal \CODE_11__15_carry__0_n_2\ : STD_LOGIC;
  signal \CODE_11__15_carry__0_n_3\ : STD_LOGIC;
  signal \CODE_11__15_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry__1_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry__1_n_1\ : STD_LOGIC;
  signal \CODE_11__15_carry__1_n_2\ : STD_LOGIC;
  signal \CODE_11__15_carry__1_n_3\ : STD_LOGIC;
  signal \CODE_11__15_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry__2_i_8_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry__2_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry__2_n_1\ : STD_LOGIC;
  signal \CODE_11__15_carry__2_n_2\ : STD_LOGIC;
  signal \CODE_11__15_carry__2_n_3\ : STD_LOGIC;
  signal \CODE_11__15_carry_i_1_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry_i_2_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry_i_3_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry_i_4_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry_i_5_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry_i_6_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry_i_7_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry_i_8_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry_n_1\ : STD_LOGIC;
  signal \CODE_11__15_carry_n_2\ : STD_LOGIC;
  signal \CODE_11__15_carry_n_3\ : STD_LOGIC;
  signal \CODE_11_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \CODE_11_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \CODE_11_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \CODE_11_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \CODE_11_carry__0_n_0\ : STD_LOGIC;
  signal \CODE_11_carry__0_n_1\ : STD_LOGIC;
  signal \CODE_11_carry__0_n_2\ : STD_LOGIC;
  signal \CODE_11_carry__0_n_3\ : STD_LOGIC;
  signal \CODE_11_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \CODE_11_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \CODE_11_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \CODE_11_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \CODE_11_carry__1_n_0\ : STD_LOGIC;
  signal \CODE_11_carry__1_n_1\ : STD_LOGIC;
  signal \CODE_11_carry__1_n_2\ : STD_LOGIC;
  signal \CODE_11_carry__1_n_3\ : STD_LOGIC;
  signal \CODE_11_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \CODE_11_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \CODE_11_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \CODE_11_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \CODE_11_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \CODE_11_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \CODE_11_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \CODE_11_carry__2_i_8_n_0\ : STD_LOGIC;
  signal \CODE_11_carry__2_n_0\ : STD_LOGIC;
  signal \CODE_11_carry__2_n_1\ : STD_LOGIC;
  signal \CODE_11_carry__2_n_2\ : STD_LOGIC;
  signal \CODE_11_carry__2_n_3\ : STD_LOGIC;
  signal CODE_11_carry_i_1_n_0 : STD_LOGIC;
  signal CODE_11_carry_i_2_n_0 : STD_LOGIC;
  signal CODE_11_carry_i_3_n_0 : STD_LOGIC;
  signal CODE_11_carry_i_4_n_0 : STD_LOGIC;
  signal CODE_11_carry_n_0 : STD_LOGIC;
  signal CODE_11_carry_n_1 : STD_LOGIC;
  signal CODE_11_carry_n_2 : STD_LOGIC;
  signal CODE_11_carry_n_3 : STD_LOGIC;
  signal \CODE_1[0]_i_1_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_11__1_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_12__1_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_13__1_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_14__1_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_15__1_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_16__1_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_17_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_18__1_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_19__1_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_1_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_20__1_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_21__1_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_22__1_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_23__1_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_25__1_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_26__1_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_27__1_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_28__1_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_29_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_2_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_30_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_31__0_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_32_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_33__1_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_34__1_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_36__1_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_37__1_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_38__1_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_39__1_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_40__0_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_41_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_42_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_43_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_44__1_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_45__1_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_46__1_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_47__1_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_48_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_49_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_4__1_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_50_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_51_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_5__1_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_6__1_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_7__1_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_8__1_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_9_n_0\ : STD_LOGIC;
  signal \CODE_1[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \CODE_1_reg[1]_i_10_n_0\ : STD_LOGIC;
  signal \CODE_1_reg[1]_i_10_n_1\ : STD_LOGIC;
  signal \CODE_1_reg[1]_i_10_n_2\ : STD_LOGIC;
  signal \CODE_1_reg[1]_i_10_n_3\ : STD_LOGIC;
  signal \CODE_1_reg[1]_i_24_n_0\ : STD_LOGIC;
  signal \CODE_1_reg[1]_i_24_n_1\ : STD_LOGIC;
  signal \CODE_1_reg[1]_i_24_n_2\ : STD_LOGIC;
  signal \CODE_1_reg[1]_i_24_n_3\ : STD_LOGIC;
  signal \CODE_1_reg[1]_i_35_n_0\ : STD_LOGIC;
  signal \CODE_1_reg[1]_i_35_n_1\ : STD_LOGIC;
  signal \CODE_1_reg[1]_i_35_n_2\ : STD_LOGIC;
  signal \CODE_1_reg[1]_i_35_n_3\ : STD_LOGIC;
  signal \CODE_1_reg[1]_i_3_n_0\ : STD_LOGIC;
  signal \CODE_1_reg[1]_i_3_n_1\ : STD_LOGIC;
  signal \CODE_1_reg[1]_i_3_n_2\ : STD_LOGIC;
  signal \CODE_1_reg[1]_i_3_n_3\ : STD_LOGIC;
  signal \CODE_1_reg_n_0_[0]\ : STD_LOGIC;
  signal \CODE_1_reg_n_0_[1]\ : STD_LOGIC;
  signal \CODE_1_reg_n_0_[2]\ : STD_LOGIC;
  signal CODE_2 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \latch_hidden_layer[0][11]_i_2_n_0\ : STD_LOGIC;
  signal \latch_hidden_layer[0][3]_i_2_n_0\ : STD_LOGIC;
  signal \latch_hidden_layer[0][4]_i_2_n_0\ : STD_LOGIC;
  signal \latch_hidden_layer[0][5]_i_2_n_0\ : STD_LOGIC;
  signal \latch_hidden_layer[0][7]_i_2_n_0\ : STD_LOGIC;
  signal \latch_hidden_layer[0][8]_i_2_n_0\ : STD_LOGIC;
  signal \latch_hidden_layer[0][9]_i_2_n_0\ : STD_LOGIC;
  signal \tmp2_reg_i_17__1_n_2\ : STD_LOGIC;
  signal \tmp2_reg_i_17__1_n_3\ : STD_LOGIC;
  signal \tmp2_reg_i_17__1_n_5\ : STD_LOGIC;
  signal \tmp2_reg_i_17__1_n_6\ : STD_LOGIC;
  signal \tmp2_reg_i_17__1_n_7\ : STD_LOGIC;
  signal \tmp2_reg_i_18__1_n_0\ : STD_LOGIC;
  signal \tmp2_reg_i_18__1_n_1\ : STD_LOGIC;
  signal \tmp2_reg_i_18__1_n_2\ : STD_LOGIC;
  signal \tmp2_reg_i_18__1_n_3\ : STD_LOGIC;
  signal \tmp2_reg_i_18__1_n_4\ : STD_LOGIC;
  signal \tmp2_reg_i_18__1_n_5\ : STD_LOGIC;
  signal \tmp2_reg_i_18__1_n_6\ : STD_LOGIC;
  signal \tmp2_reg_i_18__1_n_7\ : STD_LOGIC;
  signal \tmp2_reg_i_19__1_n_0\ : STD_LOGIC;
  signal \tmp2_reg_i_19__1_n_1\ : STD_LOGIC;
  signal \tmp2_reg_i_19__1_n_2\ : STD_LOGIC;
  signal \tmp2_reg_i_19__1_n_3\ : STD_LOGIC;
  signal \tmp2_reg_i_19__1_n_4\ : STD_LOGIC;
  signal \tmp2_reg_i_19__1_n_5\ : STD_LOGIC;
  signal \tmp2_reg_i_19__1_n_6\ : STD_LOGIC;
  signal \tmp2_reg_i_19__1_n_7\ : STD_LOGIC;
  signal \tmp2_reg_i_20__1_n_0\ : STD_LOGIC;
  signal \tmp2_reg_i_20__1_n_1\ : STD_LOGIC;
  signal \tmp2_reg_i_20__1_n_2\ : STD_LOGIC;
  signal \tmp2_reg_i_20__1_n_3\ : STD_LOGIC;
  signal \tmp2_reg_i_20__1_n_4\ : STD_LOGIC;
  signal \tmp2_reg_i_20__1_n_5\ : STD_LOGIC;
  signal \tmp2_reg_i_20__1_n_6\ : STD_LOGIC;
  signal \tmp2_reg_i_20__1_n_7\ : STD_LOGIC;
  signal \tmp2_reg_i_21__1_n_0\ : STD_LOGIC;
  signal \tmp2_reg_i_21__1_n_1\ : STD_LOGIC;
  signal \tmp2_reg_i_21__1_n_2\ : STD_LOGIC;
  signal \tmp2_reg_i_21__1_n_3\ : STD_LOGIC;
  signal \tmp2_reg_i_21__1_n_4\ : STD_LOGIC;
  signal \tmp2_reg_i_22__1_n_0\ : STD_LOGIC;
  signal \tmp2_reg_i_23__1_n_0\ : STD_LOGIC;
  signal \tmp2_reg_i_24__1_n_0\ : STD_LOGIC;
  signal \tmp2_reg_i_25__1_n_0\ : STD_LOGIC;
  signal \tmp2_reg_i_26__1_n_0\ : STD_LOGIC;
  signal \tmp2_reg_i_27__1_n_0\ : STD_LOGIC;
  signal \tmp2_reg_i_28__1_n_0\ : STD_LOGIC;
  signal \tmp2_reg_i_29__1_n_0\ : STD_LOGIC;
  signal \tmp2_reg_i_30__1_n_0\ : STD_LOGIC;
  signal \tmp2_reg_i_31__1_n_0\ : STD_LOGIC;
  signal \tmp2_reg_i_32__1_n_0\ : STD_LOGIC;
  signal \tmp2_reg_i_33__1_n_0\ : STD_LOGIC;
  signal \tmp2_reg_i_34__1_n_0\ : STD_LOGIC;
  signal \tmp2_reg_i_35__1_n_0\ : STD_LOGIC;
  signal \tmp2_reg_i_36__1_n_0\ : STD_LOGIC;
  signal \tmp2_reg_i_37__1_n_0\ : STD_LOGIC;
  signal \tmp2_reg_i_37__1_n_1\ : STD_LOGIC;
  signal \tmp2_reg_i_37__1_n_2\ : STD_LOGIC;
  signal \tmp2_reg_i_37__1_n_3\ : STD_LOGIC;
  signal \tmp2_reg_i_38__1_n_0\ : STD_LOGIC;
  signal \tmp2_reg_i_39__1_n_0\ : STD_LOGIC;
  signal \tmp2_reg_i_40__1_n_0\ : STD_LOGIC;
  signal \tmp2_reg_i_41__1_n_0\ : STD_LOGIC;
  signal \tmp2_reg_i_42__1_n_0\ : STD_LOGIC;
  signal \tmp2_reg_i_43__1_n_0\ : STD_LOGIC;
  signal \tmp2_reg_i_44__1_n_0\ : STD_LOGIC;
  signal \tmp2_reg_i_45__1_n_0\ : STD_LOGIC;
  signal \tmp2_reg_i_46__1_n_0\ : STD_LOGIC;
  signal tmp2_reg_n_100 : STD_LOGIC;
  signal tmp2_reg_n_101 : STD_LOGIC;
  signal tmp2_reg_n_102 : STD_LOGIC;
  signal tmp2_reg_n_103 : STD_LOGIC;
  signal tmp2_reg_n_104 : STD_LOGIC;
  signal tmp2_reg_n_105 : STD_LOGIC;
  signal tmp2_reg_n_74 : STD_LOGIC;
  signal tmp2_reg_n_75 : STD_LOGIC;
  signal tmp2_reg_n_76 : STD_LOGIC;
  signal tmp2_reg_n_77 : STD_LOGIC;
  signal tmp2_reg_n_78 : STD_LOGIC;
  signal tmp2_reg_n_79 : STD_LOGIC;
  signal tmp2_reg_n_80 : STD_LOGIC;
  signal tmp2_reg_n_81 : STD_LOGIC;
  signal tmp2_reg_n_82 : STD_LOGIC;
  signal tmp2_reg_n_83 : STD_LOGIC;
  signal tmp2_reg_n_84 : STD_LOGIC;
  signal tmp2_reg_n_85 : STD_LOGIC;
  signal tmp2_reg_n_86 : STD_LOGIC;
  signal tmp2_reg_n_87 : STD_LOGIC;
  signal tmp2_reg_n_88 : STD_LOGIC;
  signal tmp2_reg_n_89 : STD_LOGIC;
  signal tmp2_reg_n_90 : STD_LOGIC;
  signal tmp2_reg_n_91 : STD_LOGIC;
  signal tmp2_reg_n_92 : STD_LOGIC;
  signal tmp2_reg_n_93 : STD_LOGIC;
  signal tmp2_reg_n_94 : STD_LOGIC;
  signal tmp2_reg_n_95 : STD_LOGIC;
  signal tmp2_reg_n_96 : STD_LOGIC;
  signal tmp2_reg_n_97 : STD_LOGIC;
  signal tmp2_reg_n_98 : STD_LOGIC;
  signal tmp2_reg_n_99 : STD_LOGIC;
  signal \NLW_CODE_11__15_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CODE_11__15_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CODE_11__15_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CODE_11__15_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_CODE_11_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CODE_11_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CODE_11_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CODE_11_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CODE_1_reg[1]_i_10_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CODE_1_reg[1]_i_24_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CODE_1_reg[1]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CODE_1_reg[1]_i_35_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_tmp2_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp2_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp2_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp2_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp2_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp2_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp2_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_tmp2_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_tmp2_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_tmp2_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 32 );
  signal NLW_tmp2_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal \NLW_tmp2_reg_i_17__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_tmp2_reg_i_17__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_tmp2_reg_i_21__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_tmp2_reg_i_37__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \CODE_1[0]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \CODE_1[1]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \latch_hidden_layer[0][0]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \latch_hidden_layer[0][10]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \latch_hidden_layer[0][11]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \latch_hidden_layer[0][11]_i_2\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \latch_hidden_layer[0][1]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \latch_hidden_layer[0][4]_i_2\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \latch_hidden_layer[0][5]_i_2\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \latch_hidden_layer[0][9]_i_2\ : label is "soft_lutpair30";
begin
\CODE_11__15_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \CODE_11__15_carry_n_0\,
      CO(2) => \CODE_11__15_carry_n_1\,
      CO(1) => \CODE_11__15_carry_n_2\,
      CO(0) => \CODE_11__15_carry_n_3\,
      CYINIT => '1',
      DI(3) => \CODE_11__15_carry_i_1_n_0\,
      DI(2) => \CODE_11__15_carry_i_2_n_0\,
      DI(1) => \CODE_11__15_carry_i_3_n_0\,
      DI(0) => \CODE_11__15_carry_i_4_n_0\,
      O(3 downto 0) => \NLW_CODE_11__15_carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \CODE_11__15_carry_i_5_n_0\,
      S(2) => \CODE_11__15_carry_i_6_n_0\,
      S(1) => \CODE_11__15_carry_i_7_n_0\,
      S(0) => \CODE_11__15_carry_i_8_n_0\
    );
\CODE_11__15_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \CODE_11__15_carry_n_0\,
      CO(3) => \CODE_11__15_carry__0_n_0\,
      CO(2) => \CODE_11__15_carry__0_n_1\,
      CO(1) => \CODE_11__15_carry__0_n_2\,
      CO(0) => \CODE_11__15_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \CODE_11__15_carry__0_i_1_n_0\,
      DI(2) => \CODE_11__15_carry__0_i_2_n_0\,
      DI(1) => \CODE_11__15_carry__0_i_3_n_0\,
      DI(0) => \CODE_11__15_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_CODE_11__15_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \CODE_11__15_carry__0_i_5_n_0\,
      S(2) => \CODE_11__15_carry__0_i_6_n_0\,
      S(1) => \CODE_11__15_carry__0_i_7_n_0\,
      S(0) => \CODE_11__15_carry__0_i_8_n_0\
    );
\CODE_11__15_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(14),
      I1 => Q(15),
      O => \CODE_11__15_carry__0_i_1_n_0\
    );
\CODE_11__15_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(12),
      I1 => Q(13),
      O => \CODE_11__15_carry__0_i_2_n_0\
    );
\CODE_11__15_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(10),
      I1 => Q(11),
      O => \CODE_11__15_carry__0_i_3_n_0\
    );
\CODE_11__15_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(8),
      I1 => Q(9),
      O => \CODE_11__15_carry__0_i_4_n_0\
    );
\CODE_11__15_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(15),
      I1 => Q(14),
      O => \CODE_11__15_carry__0_i_5_n_0\
    );
\CODE_11__15_carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(13),
      I1 => Q(12),
      O => \CODE_11__15_carry__0_i_6_n_0\
    );
\CODE_11__15_carry__0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(11),
      I1 => Q(10),
      O => \CODE_11__15_carry__0_i_7_n_0\
    );
\CODE_11__15_carry__0_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(9),
      I1 => Q(8),
      O => \CODE_11__15_carry__0_i_8_n_0\
    );
\CODE_11__15_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \CODE_11__15_carry__0_n_0\,
      CO(3) => \CODE_11__15_carry__1_n_0\,
      CO(2) => \CODE_11__15_carry__1_n_1\,
      CO(1) => \CODE_11__15_carry__1_n_2\,
      CO(0) => \CODE_11__15_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \CODE_11__15_carry__1_i_1_n_0\,
      DI(2) => \CODE_11__15_carry__1_i_2_n_0\,
      DI(1) => \CODE_11__15_carry__1_i_3_n_0\,
      DI(0) => \CODE_11__15_carry__1_i_4_n_0\,
      O(3 downto 0) => \NLW_CODE_11__15_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \CODE_11__15_carry__1_i_5_n_0\,
      S(2) => \CODE_11__15_carry__1_i_6_n_0\,
      S(1) => \CODE_11__15_carry__1_i_7_n_0\,
      S(0) => \CODE_11__15_carry__1_i_8_n_0\
    );
\CODE_11__15_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(22),
      I1 => Q(23),
      O => \CODE_11__15_carry__1_i_1_n_0\
    );
\CODE_11__15_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(20),
      I1 => Q(21),
      O => \CODE_11__15_carry__1_i_2_n_0\
    );
\CODE_11__15_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(18),
      I1 => Q(19),
      O => \CODE_11__15_carry__1_i_3_n_0\
    );
\CODE_11__15_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(16),
      I1 => Q(17),
      O => \CODE_11__15_carry__1_i_4_n_0\
    );
\CODE_11__15_carry__1_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(23),
      I1 => Q(22),
      O => \CODE_11__15_carry__1_i_5_n_0\
    );
\CODE_11__15_carry__1_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(21),
      I1 => Q(20),
      O => \CODE_11__15_carry__1_i_6_n_0\
    );
\CODE_11__15_carry__1_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(19),
      I1 => Q(18),
      O => \CODE_11__15_carry__1_i_7_n_0\
    );
\CODE_11__15_carry__1_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(17),
      I1 => Q(16),
      O => \CODE_11__15_carry__1_i_8_n_0\
    );
\CODE_11__15_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \CODE_11__15_carry__1_n_0\,
      CO(3) => \CODE_11__15_carry__2_n_0\,
      CO(2) => \CODE_11__15_carry__2_n_1\,
      CO(1) => \CODE_11__15_carry__2_n_2\,
      CO(0) => \CODE_11__15_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \CODE_11__15_carry__2_i_1_n_0\,
      DI(2) => \CODE_11__15_carry__2_i_2_n_0\,
      DI(1) => \CODE_11__15_carry__2_i_3_n_0\,
      DI(0) => \CODE_11__15_carry__2_i_4_n_0\,
      O(3 downto 0) => \NLW_CODE_11__15_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \CODE_11__15_carry__2_i_5_n_0\,
      S(2) => \CODE_11__15_carry__2_i_6_n_0\,
      S(1) => \CODE_11__15_carry__2_i_7_n_0\,
      S(0) => \CODE_11__15_carry__2_i_8_n_0\
    );
\CODE_11__15_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(30),
      I1 => Q(31),
      O => \CODE_11__15_carry__2_i_1_n_0\
    );
\CODE_11__15_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(28),
      I1 => Q(29),
      O => \CODE_11__15_carry__2_i_2_n_0\
    );
\CODE_11__15_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(26),
      I1 => Q(27),
      O => \CODE_11__15_carry__2_i_3_n_0\
    );
\CODE_11__15_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(24),
      I1 => Q(25),
      O => \CODE_11__15_carry__2_i_4_n_0\
    );
\CODE_11__15_carry__2_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(31),
      I1 => Q(30),
      O => \CODE_11__15_carry__2_i_5_n_0\
    );
\CODE_11__15_carry__2_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(29),
      I1 => Q(28),
      O => \CODE_11__15_carry__2_i_6_n_0\
    );
\CODE_11__15_carry__2_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(27),
      I1 => Q(26),
      O => \CODE_11__15_carry__2_i_7_n_0\
    );
\CODE_11__15_carry__2_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(25),
      I1 => Q(24),
      O => \CODE_11__15_carry__2_i_8_n_0\
    );
\CODE_11__15_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(6),
      I1 => Q(7),
      O => \CODE_11__15_carry_i_1_n_0\
    );
\CODE_11__15_carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(4),
      I1 => Q(5),
      O => \CODE_11__15_carry_i_2_n_0\
    );
\CODE_11__15_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(2),
      I1 => Q(3),
      O => \CODE_11__15_carry_i_3_n_0\
    );
\CODE_11__15_carry_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      O => \CODE_11__15_carry_i_4_n_0\
    );
\CODE_11__15_carry_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(7),
      I1 => Q(6),
      O => \CODE_11__15_carry_i_5_n_0\
    );
\CODE_11__15_carry_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(5),
      I1 => Q(4),
      O => \CODE_11__15_carry_i_6_n_0\
    );
\CODE_11__15_carry_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(3),
      I1 => Q(2),
      O => \CODE_11__15_carry_i_7_n_0\
    );
\CODE_11__15_carry_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      O => \CODE_11__15_carry_i_8_n_0\
    );
CODE_11_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => CODE_11_carry_n_0,
      CO(2) => CODE_11_carry_n_1,
      CO(1) => CODE_11_carry_n_2,
      CO(0) => CODE_11_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CODE_11_carry_O_UNCONNECTED(3 downto 0),
      S(3) => CODE_11_carry_i_1_n_0,
      S(2) => CODE_11_carry_i_2_n_0,
      S(1) => CODE_11_carry_i_3_n_0,
      S(0) => CODE_11_carry_i_4_n_0
    );
\CODE_11_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => CODE_11_carry_n_0,
      CO(3) => \CODE_11_carry__0_n_0\,
      CO(2) => \CODE_11_carry__0_n_1\,
      CO(1) => \CODE_11_carry__0_n_2\,
      CO(0) => \CODE_11_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_CODE_11_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \CODE_11_carry__0_i_1_n_0\,
      S(2) => \CODE_11_carry__0_i_2_n_0\,
      S(1) => \CODE_11_carry__0_i_3_n_0\,
      S(0) => \CODE_11_carry__0_i_4_n_0\
    );
\CODE_11_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(15),
      I1 => Q(14),
      O => \CODE_11_carry__0_i_1_n_0\
    );
\CODE_11_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(13),
      I1 => Q(12),
      O => \CODE_11_carry__0_i_2_n_0\
    );
\CODE_11_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(11),
      I1 => Q(10),
      O => \CODE_11_carry__0_i_3_n_0\
    );
\CODE_11_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(9),
      I1 => Q(8),
      O => \CODE_11_carry__0_i_4_n_0\
    );
\CODE_11_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \CODE_11_carry__0_n_0\,
      CO(3) => \CODE_11_carry__1_n_0\,
      CO(2) => \CODE_11_carry__1_n_1\,
      CO(1) => \CODE_11_carry__1_n_2\,
      CO(0) => \CODE_11_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_CODE_11_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \CODE_11_carry__1_i_1_n_0\,
      S(2) => \CODE_11_carry__1_i_2_n_0\,
      S(1) => \CODE_11_carry__1_i_3_n_0\,
      S(0) => \CODE_11_carry__1_i_4_n_0\
    );
\CODE_11_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(23),
      I1 => Q(22),
      O => \CODE_11_carry__1_i_1_n_0\
    );
\CODE_11_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(21),
      I1 => Q(20),
      O => \CODE_11_carry__1_i_2_n_0\
    );
\CODE_11_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(19),
      I1 => Q(18),
      O => \CODE_11_carry__1_i_3_n_0\
    );
\CODE_11_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(17),
      I1 => Q(16),
      O => \CODE_11_carry__1_i_4_n_0\
    );
\CODE_11_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \CODE_11_carry__1_n_0\,
      CO(3) => \CODE_11_carry__2_n_0\,
      CO(2) => \CODE_11_carry__2_n_1\,
      CO(1) => \CODE_11_carry__2_n_2\,
      CO(0) => \CODE_11_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \CODE_11_carry__2_i_1_n_0\,
      DI(2) => \CODE_11_carry__2_i_2_n_0\,
      DI(1) => \CODE_11_carry__2_i_3_n_0\,
      DI(0) => \CODE_11_carry__2_i_4_n_0\,
      O(3 downto 0) => \NLW_CODE_11_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \CODE_11_carry__2_i_5_n_0\,
      S(2) => \CODE_11_carry__2_i_6_n_0\,
      S(1) => \CODE_11_carry__2_i_7_n_0\,
      S(0) => \CODE_11_carry__2_i_8_n_0\
    );
\CODE_11_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(31),
      I1 => Q(30),
      O => \CODE_11_carry__2_i_1_n_0\
    );
\CODE_11_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => Q(28),
      I1 => Q(29),
      O => \CODE_11_carry__2_i_2_n_0\
    );
\CODE_11_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => Q(26),
      I1 => Q(27),
      O => \CODE_11_carry__2_i_3_n_0\
    );
\CODE_11_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => Q(24),
      I1 => Q(25),
      O => \CODE_11_carry__2_i_4_n_0\
    );
\CODE_11_carry__2_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(31),
      I1 => Q(30),
      O => \CODE_11_carry__2_i_5_n_0\
    );
\CODE_11_carry__2_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(29),
      I1 => Q(28),
      O => \CODE_11_carry__2_i_6_n_0\
    );
\CODE_11_carry__2_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(27),
      I1 => Q(26),
      O => \CODE_11_carry__2_i_7_n_0\
    );
\CODE_11_carry__2_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(25),
      I1 => Q(24),
      O => \CODE_11_carry__2_i_8_n_0\
    );
CODE_11_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(7),
      I1 => Q(6),
      O => CODE_11_carry_i_1_n_0
    );
CODE_11_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(5),
      I1 => Q(4),
      O => CODE_11_carry_i_2_n_0
    );
CODE_11_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(3),
      I1 => Q(2),
      O => CODE_11_carry_i_3_n_0
    );
CODE_11_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      O => CODE_11_carry_i_4_n_0
    );
\CODE_1[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1F10"
    )
        port map (
      I0 => \CODE_1_reg[1]_i_3_n_0\,
      I1 => \CODE_1[1]_i_2_n_0\,
      I2 => \CODE_11__15_carry__2_n_0\,
      I3 => \CODE_11_carry__2_n_0\,
      O => \CODE_1[0]_i_1_n_0\
    );
\CODE_1[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \CODE_11__15_carry__2_n_0\,
      I1 => \CODE_1[1]_i_2_n_0\,
      I2 => \CODE_1_reg[1]_i_3_n_0\,
      O => \CODE_1[1]_i_1_n_0\
    );
\CODE_1[1]_i_11__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(30),
      I1 => Q(31),
      O => \CODE_1[1]_i_11__1_n_0\
    );
\CODE_1[1]_i_12__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(28),
      I1 => Q(29),
      O => \CODE_1[1]_i_12__1_n_0\
    );
\CODE_1[1]_i_13__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(26),
      I1 => Q(27),
      O => \CODE_1[1]_i_13__1_n_0\
    );
\CODE_1[1]_i_14__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(31),
      I1 => Q(30),
      O => \CODE_1[1]_i_14__1_n_0\
    );
\CODE_1[1]_i_15__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(29),
      I1 => Q(28),
      O => \CODE_1[1]_i_15__1_n_0\
    );
\CODE_1[1]_i_16__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(27),
      I1 => Q(26),
      O => \CODE_1[1]_i_16__1_n_0\
    );
\CODE_1[1]_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(24),
      I1 => Q(25),
      O => \CODE_1[1]_i_17_n_0\
    );
\CODE_1[1]_i_18__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000200"
    )
        port map (
      I0 => \CODE_1[1]_i_33__1_n_0\,
      I1 => Q(29),
      I2 => Q(28),
      I3 => \CODE_1[1]_i_34__1_n_0\,
      I4 => Q(27),
      I5 => Q(26),
      O => \CODE_1[1]_i_18__1_n_0\
    );
\CODE_1[1]_i_19__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(13),
      I1 => Q(12),
      O => \CODE_1[1]_i_19__1_n_0\
    );
\CODE_1[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => \CODE_1[1]_i_4__1_n_0\,
      I1 => \CODE_1[1]_i_5__1_n_0\,
      I2 => \CODE_1[1]_i_6__1_n_0\,
      I3 => \CODE_1[1]_i_7__1_n_0\,
      I4 => \CODE_1[1]_i_8__1_n_0\,
      I5 => \CODE_1[1]_i_9_n_0\,
      O => \CODE_1[1]_i_2_n_0\
    );
\CODE_1[1]_i_20__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(21),
      I1 => Q(20),
      O => \CODE_1[1]_i_20__1_n_0\
    );
\CODE_1[1]_i_21__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      O => \CODE_1[1]_i_21__1_n_0\
    );
\CODE_1[1]_i_22__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(9),
      I1 => Q(8),
      O => \CODE_1[1]_i_22__1_n_0\
    );
\CODE_1[1]_i_23__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(19),
      I1 => Q(18),
      O => \CODE_1[1]_i_23__1_n_0\
    );
\CODE_1[1]_i_25__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(22),
      I1 => Q(23),
      O => \CODE_1[1]_i_25__1_n_0\
    );
\CODE_1[1]_i_26__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(20),
      I1 => Q(21),
      O => \CODE_1[1]_i_26__1_n_0\
    );
\CODE_1[1]_i_27__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(18),
      I1 => Q(19),
      O => \CODE_1[1]_i_27__1_n_0\
    );
\CODE_1[1]_i_28__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(16),
      I1 => Q(17),
      O => \CODE_1[1]_i_28__1_n_0\
    );
\CODE_1[1]_i_29\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(23),
      I1 => Q(22),
      O => \CODE_1[1]_i_29_n_0\
    );
\CODE_1[1]_i_30\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(21),
      I1 => Q(20),
      O => \CODE_1[1]_i_30_n_0\
    );
\CODE_1[1]_i_31__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(19),
      I1 => Q(18),
      O => \CODE_1[1]_i_31__0_n_0\
    );
\CODE_1[1]_i_32\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(17),
      I1 => Q(16),
      O => \CODE_1[1]_i_32_n_0\
    );
\CODE_1[1]_i_33__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(17),
      I1 => Q(16),
      O => \CODE_1[1]_i_33__1_n_0\
    );
\CODE_1[1]_i_34__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(7),
      I1 => Q(6),
      O => \CODE_1[1]_i_34__1_n_0\
    );
\CODE_1[1]_i_36__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(14),
      I1 => Q(15),
      O => \CODE_1[1]_i_36__1_n_0\
    );
\CODE_1[1]_i_37__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(12),
      I1 => Q(13),
      O => \CODE_1[1]_i_37__1_n_0\
    );
\CODE_1[1]_i_38__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(10),
      I1 => Q(11),
      O => \CODE_1[1]_i_38__1_n_0\
    );
\CODE_1[1]_i_39__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(8),
      I1 => Q(9),
      O => \CODE_1[1]_i_39__1_n_0\
    );
\CODE_1[1]_i_40__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(15),
      I1 => Q(14),
      O => \CODE_1[1]_i_40__0_n_0\
    );
\CODE_1[1]_i_41\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(13),
      I1 => Q(12),
      O => \CODE_1[1]_i_41_n_0\
    );
\CODE_1[1]_i_42\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(11),
      I1 => Q(10),
      O => \CODE_1[1]_i_42_n_0\
    );
\CODE_1[1]_i_43\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(9),
      I1 => Q(8),
      O => \CODE_1[1]_i_43_n_0\
    );
\CODE_1[1]_i_44__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(6),
      I1 => Q(7),
      O => \CODE_1[1]_i_44__1_n_0\
    );
\CODE_1[1]_i_45__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(4),
      I1 => Q(5),
      O => \CODE_1[1]_i_45__1_n_0\
    );
\CODE_1[1]_i_46__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(2),
      I1 => Q(3),
      O => \CODE_1[1]_i_46__1_n_0\
    );
\CODE_1[1]_i_47__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      O => \CODE_1[1]_i_47__1_n_0\
    );
\CODE_1[1]_i_48\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(7),
      I1 => Q(6),
      O => \CODE_1[1]_i_48_n_0\
    );
\CODE_1[1]_i_49\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(5),
      I1 => Q(4),
      O => \CODE_1[1]_i_49_n_0\
    );
\CODE_1[1]_i_4__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0200000000000000"
    )
        port map (
      I0 => \CODE_1[1]_i_18__1_n_0\,
      I1 => Q(30),
      I2 => Q(31),
      I3 => \CODE_1[1]_i_19__1_n_0\,
      I4 => \CODE_1[1]_i_20__1_n_0\,
      I5 => \CODE_1[1]_i_21__1_n_0\,
      O => \CODE_1[1]_i_4__1_n_0\
    );
\CODE_1[1]_i_50\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(3),
      I1 => Q(2),
      O => \CODE_1[1]_i_50_n_0\
    );
\CODE_1[1]_i_51\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      O => \CODE_1[1]_i_51_n_0\
    );
\CODE_1[1]_i_5__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(3),
      I1 => Q(2),
      O => \CODE_1[1]_i_5__1_n_0\
    );
\CODE_1[1]_i_6__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(15),
      I1 => Q(14),
      O => \CODE_1[1]_i_6__1_n_0\
    );
\CODE_1[1]_i_7__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(11),
      I1 => Q(10),
      O => \CODE_1[1]_i_7__1_n_0\
    );
\CODE_1[1]_i_8__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(23),
      I1 => Q(22),
      O => \CODE_1[1]_i_8__1_n_0\
    );
\CODE_1[1]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFFFFFFFFFF"
    )
        port map (
      I0 => Q(5),
      I1 => Q(4),
      I2 => Q(25),
      I3 => Q(24),
      I4 => \CODE_1[1]_i_22__1_n_0\,
      I5 => \CODE_1[1]_i_23__1_n_0\,
      O => \CODE_1[1]_i_9_n_0\
    );
\CODE_1[2]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \CODE_11__15_carry__2_n_0\,
      I1 => \CODE_11_carry__2_n_0\,
      O => \CODE_1[2]_i_1__0_n_0\
    );
\CODE_1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      D => \CODE_1[0]_i_1_n_0\,
      Q => \CODE_1_reg_n_0_[0]\,
      R => '0'
    );
\CODE_1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      D => \CODE_1[1]_i_1_n_0\,
      Q => \CODE_1_reg_n_0_[1]\,
      R => '0'
    );
\CODE_1_reg[1]_i_10\: unisim.vcomponents.CARRY4
     port map (
      CI => \CODE_1_reg[1]_i_24_n_0\,
      CO(3) => \CODE_1_reg[1]_i_10_n_0\,
      CO(2) => \CODE_1_reg[1]_i_10_n_1\,
      CO(1) => \CODE_1_reg[1]_i_10_n_2\,
      CO(0) => \CODE_1_reg[1]_i_10_n_3\,
      CYINIT => '0',
      DI(3) => \CODE_1[1]_i_25__1_n_0\,
      DI(2) => \CODE_1[1]_i_26__1_n_0\,
      DI(1) => \CODE_1[1]_i_27__1_n_0\,
      DI(0) => \CODE_1[1]_i_28__1_n_0\,
      O(3 downto 0) => \NLW_CODE_1_reg[1]_i_10_O_UNCONNECTED\(3 downto 0),
      S(3) => \CODE_1[1]_i_29_n_0\,
      S(2) => \CODE_1[1]_i_30_n_0\,
      S(1) => \CODE_1[1]_i_31__0_n_0\,
      S(0) => \CODE_1[1]_i_32_n_0\
    );
\CODE_1_reg[1]_i_24\: unisim.vcomponents.CARRY4
     port map (
      CI => \CODE_1_reg[1]_i_35_n_0\,
      CO(3) => \CODE_1_reg[1]_i_24_n_0\,
      CO(2) => \CODE_1_reg[1]_i_24_n_1\,
      CO(1) => \CODE_1_reg[1]_i_24_n_2\,
      CO(0) => \CODE_1_reg[1]_i_24_n_3\,
      CYINIT => '0',
      DI(3) => \CODE_1[1]_i_36__1_n_0\,
      DI(2) => \CODE_1[1]_i_37__1_n_0\,
      DI(1) => \CODE_1[1]_i_38__1_n_0\,
      DI(0) => \CODE_1[1]_i_39__1_n_0\,
      O(3 downto 0) => \NLW_CODE_1_reg[1]_i_24_O_UNCONNECTED\(3 downto 0),
      S(3) => \CODE_1[1]_i_40__0_n_0\,
      S(2) => \CODE_1[1]_i_41_n_0\,
      S(1) => \CODE_1[1]_i_42_n_0\,
      S(0) => \CODE_1[1]_i_43_n_0\
    );
\CODE_1_reg[1]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \CODE_1_reg[1]_i_10_n_0\,
      CO(3) => \CODE_1_reg[1]_i_3_n_0\,
      CO(2) => \CODE_1_reg[1]_i_3_n_1\,
      CO(1) => \CODE_1_reg[1]_i_3_n_2\,
      CO(0) => \CODE_1_reg[1]_i_3_n_3\,
      CYINIT => '0',
      DI(3) => \CODE_1[1]_i_11__1_n_0\,
      DI(2) => \CODE_1[1]_i_12__1_n_0\,
      DI(1) => \CODE_1[1]_i_13__1_n_0\,
      DI(0) => Q(25),
      O(3 downto 0) => \NLW_CODE_1_reg[1]_i_3_O_UNCONNECTED\(3 downto 0),
      S(3) => \CODE_1[1]_i_14__1_n_0\,
      S(2) => \CODE_1[1]_i_15__1_n_0\,
      S(1) => \CODE_1[1]_i_16__1_n_0\,
      S(0) => \CODE_1[1]_i_17_n_0\
    );
\CODE_1_reg[1]_i_35\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \CODE_1_reg[1]_i_35_n_0\,
      CO(2) => \CODE_1_reg[1]_i_35_n_1\,
      CO(1) => \CODE_1_reg[1]_i_35_n_2\,
      CO(0) => \CODE_1_reg[1]_i_35_n_3\,
      CYINIT => '1',
      DI(3) => \CODE_1[1]_i_44__1_n_0\,
      DI(2) => \CODE_1[1]_i_45__1_n_0\,
      DI(1) => \CODE_1[1]_i_46__1_n_0\,
      DI(0) => \CODE_1[1]_i_47__1_n_0\,
      O(3 downto 0) => \NLW_CODE_1_reg[1]_i_35_O_UNCONNECTED\(3 downto 0),
      S(3) => \CODE_1[1]_i_48_n_0\,
      S(2) => \CODE_1[1]_i_49_n_0\,
      S(1) => \CODE_1[1]_i_50_n_0\,
      S(0) => \CODE_1[1]_i_51_n_0\
    );
\CODE_1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      D => \CODE_1[2]_i_1__0_n_0\,
      Q => \CODE_1_reg_n_0_[2]\,
      R => '0'
    );
\CODE_2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      D => \CODE_1_reg_n_0_[0]\,
      Q => CODE_2(0),
      R => '0'
    );
\CODE_2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      D => \CODE_1_reg_n_0_[1]\,
      Q => CODE_2(1),
      R => '0'
    );
\CODE_2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      D => \CODE_1_reg_n_0_[2]\,
      Q => CODE_2(2),
      R => '0'
    );
\latch_hidden_layer[0][0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"223F"
    )
        port map (
      I0 => CODE_2(0),
      I1 => tmp2_reg_n_84,
      I2 => CODE_2(2),
      I3 => CODE_2(1),
      O => D(0)
    );
\latch_hidden_layer[0][10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5053ECA3"
    )
        port map (
      I0 => \latch_hidden_layer[0][11]_i_2_n_0\,
      I1 => CODE_2(1),
      I2 => CODE_2(2),
      I3 => CODE_2(0),
      I4 => tmp2_reg_n_74,
      O => D(10)
    );
\latch_hidden_layer[0][11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FF70"
    )
        port map (
      I0 => \latch_hidden_layer[0][11]_i_2_n_0\,
      I1 => tmp2_reg_n_74,
      I2 => CODE_2(2),
      I3 => CODE_2(0),
      I4 => CODE_2(1),
      O => D(11)
    );
\latch_hidden_layer[0][11]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => tmp2_reg_n_75,
      I1 => tmp2_reg_n_77,
      I2 => \latch_hidden_layer[0][7]_i_2_n_0\,
      I3 => tmp2_reg_n_78,
      I4 => tmp2_reg_n_76,
      O => \latch_hidden_layer[0][11]_i_2_n_0\
    );
\latch_hidden_layer[0][1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5053ECA3"
    )
        port map (
      I0 => tmp2_reg_n_84,
      I1 => CODE_2(1),
      I2 => CODE_2(2),
      I3 => CODE_2(0),
      I4 => tmp2_reg_n_83,
      O => D(1)
    );
\latch_hidden_layer[0][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7700770FF8F0880F"
    )
        port map (
      I0 => tmp2_reg_n_84,
      I1 => tmp2_reg_n_83,
      I2 => CODE_2(1),
      I3 => CODE_2(2),
      I4 => CODE_2(0),
      I5 => tmp2_reg_n_82,
      O => D(2)
    );
\latch_hidden_layer[0][3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5053ECA3"
    )
        port map (
      I0 => \latch_hidden_layer[0][3]_i_2_n_0\,
      I1 => CODE_2(1),
      I2 => CODE_2(2),
      I3 => CODE_2(0),
      I4 => tmp2_reg_n_81,
      O => D(3)
    );
\latch_hidden_layer[0][3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => tmp2_reg_n_82,
      I1 => tmp2_reg_n_84,
      I2 => tmp2_reg_n_83,
      O => \latch_hidden_layer[0][3]_i_2_n_0\
    );
\latch_hidden_layer[0][4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5053ECA3"
    )
        port map (
      I0 => \latch_hidden_layer[0][4]_i_2_n_0\,
      I1 => CODE_2(1),
      I2 => CODE_2(2),
      I3 => CODE_2(0),
      I4 => tmp2_reg_n_80,
      O => D(4)
    );
\latch_hidden_layer[0][4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => tmp2_reg_n_81,
      I1 => tmp2_reg_n_83,
      I2 => tmp2_reg_n_84,
      I3 => tmp2_reg_n_82,
      O => \latch_hidden_layer[0][4]_i_2_n_0\
    );
\latch_hidden_layer[0][5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5053ECA3"
    )
        port map (
      I0 => \latch_hidden_layer[0][5]_i_2_n_0\,
      I1 => CODE_2(1),
      I2 => CODE_2(2),
      I3 => CODE_2(0),
      I4 => tmp2_reg_n_79,
      O => D(5)
    );
\latch_hidden_layer[0][5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => tmp2_reg_n_80,
      I1 => tmp2_reg_n_82,
      I2 => tmp2_reg_n_84,
      I3 => tmp2_reg_n_83,
      I4 => tmp2_reg_n_81,
      O => \latch_hidden_layer[0][5]_i_2_n_0\
    );
\latch_hidden_layer[0][6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5053ECA3"
    )
        port map (
      I0 => \latch_hidden_layer[0][7]_i_2_n_0\,
      I1 => CODE_2(1),
      I2 => CODE_2(2),
      I3 => CODE_2(0),
      I4 => tmp2_reg_n_78,
      O => D(6)
    );
\latch_hidden_layer[0][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7700770FF8F0880F"
    )
        port map (
      I0 => \latch_hidden_layer[0][7]_i_2_n_0\,
      I1 => tmp2_reg_n_78,
      I2 => CODE_2(1),
      I3 => CODE_2(2),
      I4 => CODE_2(0),
      I5 => tmp2_reg_n_77,
      O => D(7)
    );
\latch_hidden_layer[0][7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => tmp2_reg_n_79,
      I1 => tmp2_reg_n_81,
      I2 => tmp2_reg_n_83,
      I3 => tmp2_reg_n_84,
      I4 => tmp2_reg_n_82,
      I5 => tmp2_reg_n_80,
      O => \latch_hidden_layer[0][7]_i_2_n_0\
    );
\latch_hidden_layer[0][8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5053ECA3"
    )
        port map (
      I0 => \latch_hidden_layer[0][8]_i_2_n_0\,
      I1 => CODE_2(1),
      I2 => CODE_2(2),
      I3 => CODE_2(0),
      I4 => tmp2_reg_n_76,
      O => D(8)
    );
\latch_hidden_layer[0][8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => tmp2_reg_n_77,
      I1 => \latch_hidden_layer[0][7]_i_2_n_0\,
      I2 => tmp2_reg_n_78,
      O => \latch_hidden_layer[0][8]_i_2_n_0\
    );
\latch_hidden_layer[0][9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5053ECA3"
    )
        port map (
      I0 => \latch_hidden_layer[0][9]_i_2_n_0\,
      I1 => CODE_2(1),
      I2 => CODE_2(2),
      I3 => CODE_2(0),
      I4 => tmp2_reg_n_75,
      O => D(9)
    );
\latch_hidden_layer[0][9]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => tmp2_reg_n_76,
      I1 => tmp2_reg_n_78,
      I2 => \latch_hidden_layer[0][7]_i_2_n_0\,
      I3 => tmp2_reg_n_77,
      O => \latch_hidden_layer[0][9]_i_2_n_0\
    );
tmp2_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 16) => B"00000000000000",
      A(15 downto 0) => B_0(15 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_tmp2_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 16) => B"00",
      B(15 downto 0) => B_0(15 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_tmp2_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_tmp2_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_tmp2_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => E(0),
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => E(0),
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => E(0),
      CEP => '0',
      CLK => clk_IBUF_BUFG,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_tmp2_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_tmp2_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 32) => NLW_tmp2_reg_P_UNCONNECTED(47 downto 32),
      P(31) => tmp2_reg_n_74,
      P(30) => tmp2_reg_n_75,
      P(29) => tmp2_reg_n_76,
      P(28) => tmp2_reg_n_77,
      P(27) => tmp2_reg_n_78,
      P(26) => tmp2_reg_n_79,
      P(25) => tmp2_reg_n_80,
      P(24) => tmp2_reg_n_81,
      P(23) => tmp2_reg_n_82,
      P(22) => tmp2_reg_n_83,
      P(21) => tmp2_reg_n_84,
      P(20) => tmp2_reg_n_85,
      P(19) => tmp2_reg_n_86,
      P(18) => tmp2_reg_n_87,
      P(17) => tmp2_reg_n_88,
      P(16) => tmp2_reg_n_89,
      P(15) => tmp2_reg_n_90,
      P(14) => tmp2_reg_n_91,
      P(13) => tmp2_reg_n_92,
      P(12) => tmp2_reg_n_93,
      P(11) => tmp2_reg_n_94,
      P(10) => tmp2_reg_n_95,
      P(9) => tmp2_reg_n_96,
      P(8) => tmp2_reg_n_97,
      P(7) => tmp2_reg_n_98,
      P(6) => tmp2_reg_n_99,
      P(5) => tmp2_reg_n_100,
      P(4) => tmp2_reg_n_101,
      P(3) => tmp2_reg_n_102,
      P(2) => tmp2_reg_n_103,
      P(1) => tmp2_reg_n_104,
      P(0) => tmp2_reg_n_105,
      PATTERNBDETECT => NLW_tmp2_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_tmp2_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_tmp2_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_tmp2_reg_UNDERFLOW_UNCONNECTED
    );
\tmp2_reg_i_10__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tmp2_reg_i_19__1_n_6\,
      I1 => \CODE_11__15_carry__2_n_0\,
      I2 => Q(14),
      O => B_0(6)
    );
\tmp2_reg_i_11__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tmp2_reg_i_19__1_n_7\,
      I1 => \CODE_11__15_carry__2_n_0\,
      I2 => Q(13),
      O => B_0(5)
    );
\tmp2_reg_i_12__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tmp2_reg_i_20__1_n_4\,
      I1 => \CODE_11__15_carry__2_n_0\,
      I2 => Q(12),
      O => B_0(4)
    );
\tmp2_reg_i_13__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tmp2_reg_i_20__1_n_5\,
      I1 => \CODE_11__15_carry__2_n_0\,
      I2 => Q(11),
      O => B_0(3)
    );
\tmp2_reg_i_14__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tmp2_reg_i_20__1_n_6\,
      I1 => \CODE_11__15_carry__2_n_0\,
      I2 => Q(10),
      O => B_0(2)
    );
\tmp2_reg_i_15__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tmp2_reg_i_20__1_n_7\,
      I1 => \CODE_11__15_carry__2_n_0\,
      I2 => Q(9),
      O => B_0(1)
    );
\tmp2_reg_i_16__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tmp2_reg_i_21__1_n_4\,
      I1 => \CODE_11__15_carry__2_n_0\,
      I2 => Q(8),
      O => B_0(0)
    );
\tmp2_reg_i_17__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \tmp2_reg_i_18__1_n_0\,
      CO(3 downto 2) => \NLW_tmp2_reg_i_17__1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \tmp2_reg_i_17__1_n_2\,
      CO(0) => \tmp2_reg_i_17__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_tmp2_reg_i_17__1_O_UNCONNECTED\(3),
      O(2) => \tmp2_reg_i_17__1_n_5\,
      O(1) => \tmp2_reg_i_17__1_n_6\,
      O(0) => \tmp2_reg_i_17__1_n_7\,
      S(3) => '0',
      S(2) => \tmp2_reg_i_22__1_n_0\,
      S(1) => \tmp2_reg_i_23__1_n_0\,
      S(0) => \tmp2_reg_i_24__1_n_0\
    );
\tmp2_reg_i_18__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \tmp2_reg_i_19__1_n_0\,
      CO(3) => \tmp2_reg_i_18__1_n_0\,
      CO(2) => \tmp2_reg_i_18__1_n_1\,
      CO(1) => \tmp2_reg_i_18__1_n_2\,
      CO(0) => \tmp2_reg_i_18__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \tmp2_reg_i_18__1_n_4\,
      O(2) => \tmp2_reg_i_18__1_n_5\,
      O(1) => \tmp2_reg_i_18__1_n_6\,
      O(0) => \tmp2_reg_i_18__1_n_7\,
      S(3) => \tmp2_reg_i_25__1_n_0\,
      S(2) => \tmp2_reg_i_26__1_n_0\,
      S(1) => \tmp2_reg_i_27__1_n_0\,
      S(0) => \tmp2_reg_i_28__1_n_0\
    );
\tmp2_reg_i_19__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \tmp2_reg_i_20__1_n_0\,
      CO(3) => \tmp2_reg_i_19__1_n_0\,
      CO(2) => \tmp2_reg_i_19__1_n_1\,
      CO(1) => \tmp2_reg_i_19__1_n_2\,
      CO(0) => \tmp2_reg_i_19__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \tmp2_reg_i_19__1_n_4\,
      O(2) => \tmp2_reg_i_19__1_n_5\,
      O(1) => \tmp2_reg_i_19__1_n_6\,
      O(0) => \tmp2_reg_i_19__1_n_7\,
      S(3) => \tmp2_reg_i_29__1_n_0\,
      S(2) => \tmp2_reg_i_30__1_n_0\,
      S(1) => \tmp2_reg_i_31__1_n_0\,
      S(0) => \tmp2_reg_i_32__1_n_0\
    );
\tmp2_reg_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tmp2_reg_i_17__1_n_5\,
      I1 => \CODE_11__15_carry__2_n_0\,
      I2 => Q(23),
      O => B_0(15)
    );
\tmp2_reg_i_20__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \tmp2_reg_i_21__1_n_0\,
      CO(3) => \tmp2_reg_i_20__1_n_0\,
      CO(2) => \tmp2_reg_i_20__1_n_1\,
      CO(1) => \tmp2_reg_i_20__1_n_2\,
      CO(0) => \tmp2_reg_i_20__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \tmp2_reg_i_20__1_n_4\,
      O(2) => \tmp2_reg_i_20__1_n_5\,
      O(1) => \tmp2_reg_i_20__1_n_6\,
      O(0) => \tmp2_reg_i_20__1_n_7\,
      S(3) => \tmp2_reg_i_33__1_n_0\,
      S(2) => \tmp2_reg_i_34__1_n_0\,
      S(1) => \tmp2_reg_i_35__1_n_0\,
      S(0) => \tmp2_reg_i_36__1_n_0\
    );
\tmp2_reg_i_21__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \tmp2_reg_i_37__1_n_0\,
      CO(3) => \tmp2_reg_i_21__1_n_0\,
      CO(2) => \tmp2_reg_i_21__1_n_1\,
      CO(1) => \tmp2_reg_i_21__1_n_2\,
      CO(0) => \tmp2_reg_i_21__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \tmp2_reg_i_21__1_n_4\,
      O(2 downto 0) => \NLW_tmp2_reg_i_21__1_O_UNCONNECTED\(2 downto 0),
      S(3) => \tmp2_reg_i_38__1_n_0\,
      S(2) => \tmp2_reg_i_39__1_n_0\,
      S(1) => \tmp2_reg_i_40__1_n_0\,
      S(0) => \tmp2_reg_i_41__1_n_0\
    );
\tmp2_reg_i_22__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(23),
      O => \tmp2_reg_i_22__1_n_0\
    );
\tmp2_reg_i_23__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(22),
      O => \tmp2_reg_i_23__1_n_0\
    );
\tmp2_reg_i_24__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(21),
      O => \tmp2_reg_i_24__1_n_0\
    );
\tmp2_reg_i_25__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(20),
      O => \tmp2_reg_i_25__1_n_0\
    );
\tmp2_reg_i_26__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(19),
      O => \tmp2_reg_i_26__1_n_0\
    );
\tmp2_reg_i_27__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(18),
      O => \tmp2_reg_i_27__1_n_0\
    );
\tmp2_reg_i_28__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(17),
      O => \tmp2_reg_i_28__1_n_0\
    );
\tmp2_reg_i_29__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(16),
      O => \tmp2_reg_i_29__1_n_0\
    );
\tmp2_reg_i_2__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tmp2_reg_i_17__1_n_6\,
      I1 => \CODE_11__15_carry__2_n_0\,
      I2 => Q(22),
      O => B_0(14)
    );
\tmp2_reg_i_30__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(15),
      O => \tmp2_reg_i_30__1_n_0\
    );
\tmp2_reg_i_31__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(14),
      O => \tmp2_reg_i_31__1_n_0\
    );
\tmp2_reg_i_32__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(13),
      O => \tmp2_reg_i_32__1_n_0\
    );
\tmp2_reg_i_33__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(12),
      O => \tmp2_reg_i_33__1_n_0\
    );
\tmp2_reg_i_34__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(11),
      O => \tmp2_reg_i_34__1_n_0\
    );
\tmp2_reg_i_35__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(10),
      O => \tmp2_reg_i_35__1_n_0\
    );
\tmp2_reg_i_36__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(9),
      O => \tmp2_reg_i_36__1_n_0\
    );
\tmp2_reg_i_37__1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \tmp2_reg_i_37__1_n_0\,
      CO(2) => \tmp2_reg_i_37__1_n_1\,
      CO(1) => \tmp2_reg_i_37__1_n_2\,
      CO(0) => \tmp2_reg_i_37__1_n_3\,
      CYINIT => \tmp2_reg_i_42__1_n_0\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_tmp2_reg_i_37__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \tmp2_reg_i_43__1_n_0\,
      S(2) => \tmp2_reg_i_44__1_n_0\,
      S(1) => \tmp2_reg_i_45__1_n_0\,
      S(0) => \tmp2_reg_i_46__1_n_0\
    );
\tmp2_reg_i_38__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(8),
      O => \tmp2_reg_i_38__1_n_0\
    );
\tmp2_reg_i_39__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(7),
      O => \tmp2_reg_i_39__1_n_0\
    );
\tmp2_reg_i_3__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tmp2_reg_i_17__1_n_7\,
      I1 => \CODE_11__15_carry__2_n_0\,
      I2 => Q(21),
      O => B_0(13)
    );
\tmp2_reg_i_40__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(6),
      O => \tmp2_reg_i_40__1_n_0\
    );
\tmp2_reg_i_41__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(5),
      O => \tmp2_reg_i_41__1_n_0\
    );
\tmp2_reg_i_42__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(0),
      O => \tmp2_reg_i_42__1_n_0\
    );
\tmp2_reg_i_43__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(4),
      O => \tmp2_reg_i_43__1_n_0\
    );
\tmp2_reg_i_44__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(3),
      O => \tmp2_reg_i_44__1_n_0\
    );
\tmp2_reg_i_45__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(2),
      O => \tmp2_reg_i_45__1_n_0\
    );
\tmp2_reg_i_46__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(1),
      O => \tmp2_reg_i_46__1_n_0\
    );
\tmp2_reg_i_4__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tmp2_reg_i_18__1_n_4\,
      I1 => \CODE_11__15_carry__2_n_0\,
      I2 => Q(20),
      O => B_0(12)
    );
\tmp2_reg_i_5__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tmp2_reg_i_18__1_n_5\,
      I1 => \CODE_11__15_carry__2_n_0\,
      I2 => Q(19),
      O => B_0(11)
    );
\tmp2_reg_i_6__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tmp2_reg_i_18__1_n_6\,
      I1 => \CODE_11__15_carry__2_n_0\,
      I2 => Q(18),
      O => B_0(10)
    );
\tmp2_reg_i_7__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tmp2_reg_i_18__1_n_7\,
      I1 => \CODE_11__15_carry__2_n_0\,
      I2 => Q(17),
      O => B_0(9)
    );
\tmp2_reg_i_8__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tmp2_reg_i_19__1_n_4\,
      I1 => \CODE_11__15_carry__2_n_0\,
      I2 => Q(16),
      O => B_0(8)
    );
\tmp2_reg_i_9__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tmp2_reg_i_19__1_n_5\,
      I1 => \CODE_11__15_carry__2_n_0\,
      I2 => Q(15),
      O => B_0(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity sigmoid_0 is
  port (
    D : out STD_LOGIC_VECTOR ( 11 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk_IBUF_BUFG : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of sigmoid_0 : entity is "sigmoid";
end sigmoid_0;

architecture STRUCTURE of sigmoid_0 is
  signal \CODE_11__15_carry__0_i_1__0_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry__0_i_2__0_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry__0_i_3__0_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry__0_i_4__0_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry__0_i_5__0_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry__0_i_6__0_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry__0_i_7__0_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry__0_i_8__0_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry__0_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry__0_n_1\ : STD_LOGIC;
  signal \CODE_11__15_carry__0_n_2\ : STD_LOGIC;
  signal \CODE_11__15_carry__0_n_3\ : STD_LOGIC;
  signal \CODE_11__15_carry__1_i_1__0_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry__1_i_2__0_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry__1_i_3__0_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry__1_i_4__0_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry__1_i_5__0_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry__1_i_6__0_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry__1_i_7__0_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry__1_i_8__0_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry__1_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry__1_n_1\ : STD_LOGIC;
  signal \CODE_11__15_carry__1_n_2\ : STD_LOGIC;
  signal \CODE_11__15_carry__1_n_3\ : STD_LOGIC;
  signal \CODE_11__15_carry__2_i_1__0_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry__2_i_2__0_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry__2_i_3__0_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry__2_i_4__0_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry__2_i_5__0_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry__2_i_6__0_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry__2_i_7__0_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry__2_i_8__0_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry__2_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry__2_n_1\ : STD_LOGIC;
  signal \CODE_11__15_carry__2_n_2\ : STD_LOGIC;
  signal \CODE_11__15_carry__2_n_3\ : STD_LOGIC;
  signal \CODE_11__15_carry_i_1__0_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry_i_2__0_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry_i_3__0_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry_i_4__0_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry_i_5__0_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry_i_6__0_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry_i_7__0_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry_i_8__0_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry_n_1\ : STD_LOGIC;
  signal \CODE_11__15_carry_n_2\ : STD_LOGIC;
  signal \CODE_11__15_carry_n_3\ : STD_LOGIC;
  signal \CODE_11_carry__0_i_1__0_n_0\ : STD_LOGIC;
  signal \CODE_11_carry__0_i_2__0_n_0\ : STD_LOGIC;
  signal \CODE_11_carry__0_i_3__0_n_0\ : STD_LOGIC;
  signal \CODE_11_carry__0_i_4__0_n_0\ : STD_LOGIC;
  signal \CODE_11_carry__0_n_0\ : STD_LOGIC;
  signal \CODE_11_carry__0_n_1\ : STD_LOGIC;
  signal \CODE_11_carry__0_n_2\ : STD_LOGIC;
  signal \CODE_11_carry__0_n_3\ : STD_LOGIC;
  signal \CODE_11_carry__1_i_1__0_n_0\ : STD_LOGIC;
  signal \CODE_11_carry__1_i_2__0_n_0\ : STD_LOGIC;
  signal \CODE_11_carry__1_i_3__0_n_0\ : STD_LOGIC;
  signal \CODE_11_carry__1_i_4__0_n_0\ : STD_LOGIC;
  signal \CODE_11_carry__1_n_0\ : STD_LOGIC;
  signal \CODE_11_carry__1_n_1\ : STD_LOGIC;
  signal \CODE_11_carry__1_n_2\ : STD_LOGIC;
  signal \CODE_11_carry__1_n_3\ : STD_LOGIC;
  signal \CODE_11_carry__2_i_1__0_n_0\ : STD_LOGIC;
  signal \CODE_11_carry__2_i_2__0_n_0\ : STD_LOGIC;
  signal \CODE_11_carry__2_i_3__0_n_0\ : STD_LOGIC;
  signal \CODE_11_carry__2_i_4__0_n_0\ : STD_LOGIC;
  signal \CODE_11_carry__2_i_5__0_n_0\ : STD_LOGIC;
  signal \CODE_11_carry__2_i_6__0_n_0\ : STD_LOGIC;
  signal \CODE_11_carry__2_i_7__0_n_0\ : STD_LOGIC;
  signal \CODE_11_carry__2_i_8__0_n_0\ : STD_LOGIC;
  signal \CODE_11_carry__2_n_0\ : STD_LOGIC;
  signal \CODE_11_carry__2_n_1\ : STD_LOGIC;
  signal \CODE_11_carry__2_n_2\ : STD_LOGIC;
  signal \CODE_11_carry__2_n_3\ : STD_LOGIC;
  signal \CODE_11_carry_i_1__0_n_0\ : STD_LOGIC;
  signal \CODE_11_carry_i_2__0_n_0\ : STD_LOGIC;
  signal \CODE_11_carry_i_3__0_n_0\ : STD_LOGIC;
  signal \CODE_11_carry_i_4__0_n_0\ : STD_LOGIC;
  signal CODE_11_carry_n_0 : STD_LOGIC;
  signal CODE_11_carry_n_1 : STD_LOGIC;
  signal CODE_11_carry_n_2 : STD_LOGIC;
  signal CODE_11_carry_n_3 : STD_LOGIC;
  signal \CODE_1[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_11__0_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_12__0_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_13__0_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_14__0_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_15__0_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_16__0_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_17__0_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_18__0_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_19__0_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_20__0_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_21__0_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_22__0_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_23__0_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_25__0_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_26__0_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_27__0_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_28__0_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_29__0_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_2__0_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_30__0_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_31__1_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_32__0_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_33__0_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_34__0_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_36__0_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_37__0_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_38__0_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_39__0_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_40_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_41__0_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_42__0_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_43__0_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_44__0_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_45__0_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_46__0_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_47__0_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_48__0_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_49__1_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_4__0_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_50__0_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_51__0_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_5_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_6__0_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_7__0_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_8__0_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_9__2_n_0\ : STD_LOGIC;
  signal \CODE_1[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \CODE_1_reg[1]_i_10__0_n_0\ : STD_LOGIC;
  signal \CODE_1_reg[1]_i_10__0_n_1\ : STD_LOGIC;
  signal \CODE_1_reg[1]_i_10__0_n_2\ : STD_LOGIC;
  signal \CODE_1_reg[1]_i_10__0_n_3\ : STD_LOGIC;
  signal \CODE_1_reg[1]_i_24__0_n_0\ : STD_LOGIC;
  signal \CODE_1_reg[1]_i_24__0_n_1\ : STD_LOGIC;
  signal \CODE_1_reg[1]_i_24__0_n_2\ : STD_LOGIC;
  signal \CODE_1_reg[1]_i_24__0_n_3\ : STD_LOGIC;
  signal \CODE_1_reg[1]_i_35__0_n_0\ : STD_LOGIC;
  signal \CODE_1_reg[1]_i_35__0_n_1\ : STD_LOGIC;
  signal \CODE_1_reg[1]_i_35__0_n_2\ : STD_LOGIC;
  signal \CODE_1_reg[1]_i_35__0_n_3\ : STD_LOGIC;
  signal \CODE_1_reg[1]_i_3__0_n_0\ : STD_LOGIC;
  signal \CODE_1_reg[1]_i_3__0_n_1\ : STD_LOGIC;
  signal \CODE_1_reg[1]_i_3__0_n_2\ : STD_LOGIC;
  signal \CODE_1_reg[1]_i_3__0_n_3\ : STD_LOGIC;
  signal \CODE_1_reg_n_0_[0]\ : STD_LOGIC;
  signal \CODE_1_reg_n_0_[1]\ : STD_LOGIC;
  signal \CODE_1_reg_n_0_[2]\ : STD_LOGIC;
  signal \CODE_2_reg_n_0_[0]\ : STD_LOGIC;
  signal \CODE_2_reg_n_0_[1]\ : STD_LOGIC;
  signal \CODE_2_reg_n_0_[2]\ : STD_LOGIC;
  signal \latch_hidden_layer[1][11]_i_2_n_0\ : STD_LOGIC;
  signal \latch_hidden_layer[1][3]_i_2_n_0\ : STD_LOGIC;
  signal \latch_hidden_layer[1][4]_i_2_n_0\ : STD_LOGIC;
  signal \latch_hidden_layer[1][5]_i_2_n_0\ : STD_LOGIC;
  signal \latch_hidden_layer[1][7]_i_2_n_0\ : STD_LOGIC;
  signal \latch_hidden_layer[1][8]_i_2_n_0\ : STD_LOGIC;
  signal \latch_hidden_layer[1][9]_i_2_n_0\ : STD_LOGIC;
  signal \tmp2_reg_i_10__0_n_0\ : STD_LOGIC;
  signal \tmp2_reg_i_11__0_n_0\ : STD_LOGIC;
  signal \tmp2_reg_i_12__0_n_0\ : STD_LOGIC;
  signal \tmp2_reg_i_13__0_n_0\ : STD_LOGIC;
  signal \tmp2_reg_i_14__0_n_0\ : STD_LOGIC;
  signal \tmp2_reg_i_15__0_n_0\ : STD_LOGIC;
  signal \tmp2_reg_i_16__0_n_0\ : STD_LOGIC;
  signal \tmp2_reg_i_17__0_n_2\ : STD_LOGIC;
  signal \tmp2_reg_i_17__0_n_3\ : STD_LOGIC;
  signal \tmp2_reg_i_17__0_n_5\ : STD_LOGIC;
  signal \tmp2_reg_i_17__0_n_6\ : STD_LOGIC;
  signal \tmp2_reg_i_17__0_n_7\ : STD_LOGIC;
  signal \tmp2_reg_i_18__0_n_0\ : STD_LOGIC;
  signal \tmp2_reg_i_18__0_n_1\ : STD_LOGIC;
  signal \tmp2_reg_i_18__0_n_2\ : STD_LOGIC;
  signal \tmp2_reg_i_18__0_n_3\ : STD_LOGIC;
  signal \tmp2_reg_i_18__0_n_4\ : STD_LOGIC;
  signal \tmp2_reg_i_18__0_n_5\ : STD_LOGIC;
  signal \tmp2_reg_i_18__0_n_6\ : STD_LOGIC;
  signal \tmp2_reg_i_18__0_n_7\ : STD_LOGIC;
  signal \tmp2_reg_i_19__0_n_0\ : STD_LOGIC;
  signal \tmp2_reg_i_19__0_n_1\ : STD_LOGIC;
  signal \tmp2_reg_i_19__0_n_2\ : STD_LOGIC;
  signal \tmp2_reg_i_19__0_n_3\ : STD_LOGIC;
  signal \tmp2_reg_i_19__0_n_4\ : STD_LOGIC;
  signal \tmp2_reg_i_19__0_n_5\ : STD_LOGIC;
  signal \tmp2_reg_i_19__0_n_6\ : STD_LOGIC;
  signal \tmp2_reg_i_19__0_n_7\ : STD_LOGIC;
  signal \tmp2_reg_i_1__0_n_0\ : STD_LOGIC;
  signal \tmp2_reg_i_20__0_n_0\ : STD_LOGIC;
  signal \tmp2_reg_i_20__0_n_1\ : STD_LOGIC;
  signal \tmp2_reg_i_20__0_n_2\ : STD_LOGIC;
  signal \tmp2_reg_i_20__0_n_3\ : STD_LOGIC;
  signal \tmp2_reg_i_20__0_n_4\ : STD_LOGIC;
  signal \tmp2_reg_i_20__0_n_5\ : STD_LOGIC;
  signal \tmp2_reg_i_20__0_n_6\ : STD_LOGIC;
  signal \tmp2_reg_i_20__0_n_7\ : STD_LOGIC;
  signal \tmp2_reg_i_21__0_n_0\ : STD_LOGIC;
  signal \tmp2_reg_i_21__0_n_1\ : STD_LOGIC;
  signal \tmp2_reg_i_21__0_n_2\ : STD_LOGIC;
  signal \tmp2_reg_i_21__0_n_3\ : STD_LOGIC;
  signal \tmp2_reg_i_21__0_n_4\ : STD_LOGIC;
  signal \tmp2_reg_i_22__0_n_0\ : STD_LOGIC;
  signal \tmp2_reg_i_23__0_n_0\ : STD_LOGIC;
  signal \tmp2_reg_i_24__0_n_0\ : STD_LOGIC;
  signal \tmp2_reg_i_25__0_n_0\ : STD_LOGIC;
  signal \tmp2_reg_i_26__0_n_0\ : STD_LOGIC;
  signal \tmp2_reg_i_27__0_n_0\ : STD_LOGIC;
  signal \tmp2_reg_i_28__0_n_0\ : STD_LOGIC;
  signal \tmp2_reg_i_29__0_n_0\ : STD_LOGIC;
  signal \tmp2_reg_i_2__0_n_0\ : STD_LOGIC;
  signal \tmp2_reg_i_30__0_n_0\ : STD_LOGIC;
  signal \tmp2_reg_i_31__0_n_0\ : STD_LOGIC;
  signal \tmp2_reg_i_32__0_n_0\ : STD_LOGIC;
  signal \tmp2_reg_i_33__0_n_0\ : STD_LOGIC;
  signal \tmp2_reg_i_34__0_n_0\ : STD_LOGIC;
  signal \tmp2_reg_i_35__0_n_0\ : STD_LOGIC;
  signal \tmp2_reg_i_36__0_n_0\ : STD_LOGIC;
  signal \tmp2_reg_i_37__0_n_0\ : STD_LOGIC;
  signal \tmp2_reg_i_37__0_n_1\ : STD_LOGIC;
  signal \tmp2_reg_i_37__0_n_2\ : STD_LOGIC;
  signal \tmp2_reg_i_37__0_n_3\ : STD_LOGIC;
  signal \tmp2_reg_i_38__0_n_0\ : STD_LOGIC;
  signal \tmp2_reg_i_39__0_n_0\ : STD_LOGIC;
  signal \tmp2_reg_i_3__0_n_0\ : STD_LOGIC;
  signal \tmp2_reg_i_40__0_n_0\ : STD_LOGIC;
  signal \tmp2_reg_i_41__0_n_0\ : STD_LOGIC;
  signal \tmp2_reg_i_42__0_n_0\ : STD_LOGIC;
  signal \tmp2_reg_i_43__0_n_0\ : STD_LOGIC;
  signal \tmp2_reg_i_44__0_n_0\ : STD_LOGIC;
  signal \tmp2_reg_i_45__0_n_0\ : STD_LOGIC;
  signal \tmp2_reg_i_46__0_n_0\ : STD_LOGIC;
  signal \tmp2_reg_i_4__0_n_0\ : STD_LOGIC;
  signal \tmp2_reg_i_5__0_n_0\ : STD_LOGIC;
  signal \tmp2_reg_i_6__0_n_0\ : STD_LOGIC;
  signal \tmp2_reg_i_7__0_n_0\ : STD_LOGIC;
  signal \tmp2_reg_i_8__0_n_0\ : STD_LOGIC;
  signal \tmp2_reg_i_9__0_n_0\ : STD_LOGIC;
  signal tmp2_reg_n_100 : STD_LOGIC;
  signal tmp2_reg_n_101 : STD_LOGIC;
  signal tmp2_reg_n_102 : STD_LOGIC;
  signal tmp2_reg_n_103 : STD_LOGIC;
  signal tmp2_reg_n_104 : STD_LOGIC;
  signal tmp2_reg_n_105 : STD_LOGIC;
  signal tmp2_reg_n_74 : STD_LOGIC;
  signal tmp2_reg_n_75 : STD_LOGIC;
  signal tmp2_reg_n_76 : STD_LOGIC;
  signal tmp2_reg_n_77 : STD_LOGIC;
  signal tmp2_reg_n_78 : STD_LOGIC;
  signal tmp2_reg_n_79 : STD_LOGIC;
  signal tmp2_reg_n_80 : STD_LOGIC;
  signal tmp2_reg_n_81 : STD_LOGIC;
  signal tmp2_reg_n_82 : STD_LOGIC;
  signal tmp2_reg_n_83 : STD_LOGIC;
  signal tmp2_reg_n_84 : STD_LOGIC;
  signal tmp2_reg_n_85 : STD_LOGIC;
  signal tmp2_reg_n_86 : STD_LOGIC;
  signal tmp2_reg_n_87 : STD_LOGIC;
  signal tmp2_reg_n_88 : STD_LOGIC;
  signal tmp2_reg_n_89 : STD_LOGIC;
  signal tmp2_reg_n_90 : STD_LOGIC;
  signal tmp2_reg_n_91 : STD_LOGIC;
  signal tmp2_reg_n_92 : STD_LOGIC;
  signal tmp2_reg_n_93 : STD_LOGIC;
  signal tmp2_reg_n_94 : STD_LOGIC;
  signal tmp2_reg_n_95 : STD_LOGIC;
  signal tmp2_reg_n_96 : STD_LOGIC;
  signal tmp2_reg_n_97 : STD_LOGIC;
  signal tmp2_reg_n_98 : STD_LOGIC;
  signal tmp2_reg_n_99 : STD_LOGIC;
  signal \NLW_CODE_11__15_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CODE_11__15_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CODE_11__15_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CODE_11__15_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_CODE_11_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CODE_11_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CODE_11_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CODE_11_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CODE_1_reg[1]_i_10__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CODE_1_reg[1]_i_24__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CODE_1_reg[1]_i_35__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CODE_1_reg[1]_i_3__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_tmp2_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp2_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp2_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp2_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp2_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp2_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp2_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_tmp2_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_tmp2_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_tmp2_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 32 );
  signal NLW_tmp2_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal \NLW_tmp2_reg_i_17__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_tmp2_reg_i_17__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_tmp2_reg_i_21__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_tmp2_reg_i_37__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \CODE_1[0]_i_1__0\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \CODE_1[1]_i_1__0\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \latch_hidden_layer[1][0]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \latch_hidden_layer[1][10]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \latch_hidden_layer[1][11]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \latch_hidden_layer[1][11]_i_2\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \latch_hidden_layer[1][1]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \latch_hidden_layer[1][4]_i_2\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \latch_hidden_layer[1][5]_i_2\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \latch_hidden_layer[1][9]_i_2\ : label is "soft_lutpair35";
begin
\CODE_11__15_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \CODE_11__15_carry_n_0\,
      CO(2) => \CODE_11__15_carry_n_1\,
      CO(1) => \CODE_11__15_carry_n_2\,
      CO(0) => \CODE_11__15_carry_n_3\,
      CYINIT => '1',
      DI(3) => \CODE_11__15_carry_i_1__0_n_0\,
      DI(2) => \CODE_11__15_carry_i_2__0_n_0\,
      DI(1) => \CODE_11__15_carry_i_3__0_n_0\,
      DI(0) => \CODE_11__15_carry_i_4__0_n_0\,
      O(3 downto 0) => \NLW_CODE_11__15_carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \CODE_11__15_carry_i_5__0_n_0\,
      S(2) => \CODE_11__15_carry_i_6__0_n_0\,
      S(1) => \CODE_11__15_carry_i_7__0_n_0\,
      S(0) => \CODE_11__15_carry_i_8__0_n_0\
    );
\CODE_11__15_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \CODE_11__15_carry_n_0\,
      CO(3) => \CODE_11__15_carry__0_n_0\,
      CO(2) => \CODE_11__15_carry__0_n_1\,
      CO(1) => \CODE_11__15_carry__0_n_2\,
      CO(0) => \CODE_11__15_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \CODE_11__15_carry__0_i_1__0_n_0\,
      DI(2) => \CODE_11__15_carry__0_i_2__0_n_0\,
      DI(1) => \CODE_11__15_carry__0_i_3__0_n_0\,
      DI(0) => \CODE_11__15_carry__0_i_4__0_n_0\,
      O(3 downto 0) => \NLW_CODE_11__15_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \CODE_11__15_carry__0_i_5__0_n_0\,
      S(2) => \CODE_11__15_carry__0_i_6__0_n_0\,
      S(1) => \CODE_11__15_carry__0_i_7__0_n_0\,
      S(0) => \CODE_11__15_carry__0_i_8__0_n_0\
    );
\CODE_11__15_carry__0_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(14),
      I1 => Q(15),
      O => \CODE_11__15_carry__0_i_1__0_n_0\
    );
\CODE_11__15_carry__0_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(12),
      I1 => Q(13),
      O => \CODE_11__15_carry__0_i_2__0_n_0\
    );
\CODE_11__15_carry__0_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(10),
      I1 => Q(11),
      O => \CODE_11__15_carry__0_i_3__0_n_0\
    );
\CODE_11__15_carry__0_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(8),
      I1 => Q(9),
      O => \CODE_11__15_carry__0_i_4__0_n_0\
    );
\CODE_11__15_carry__0_i_5__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(15),
      I1 => Q(14),
      O => \CODE_11__15_carry__0_i_5__0_n_0\
    );
\CODE_11__15_carry__0_i_6__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(13),
      I1 => Q(12),
      O => \CODE_11__15_carry__0_i_6__0_n_0\
    );
\CODE_11__15_carry__0_i_7__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(11),
      I1 => Q(10),
      O => \CODE_11__15_carry__0_i_7__0_n_0\
    );
\CODE_11__15_carry__0_i_8__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(9),
      I1 => Q(8),
      O => \CODE_11__15_carry__0_i_8__0_n_0\
    );
\CODE_11__15_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \CODE_11__15_carry__0_n_0\,
      CO(3) => \CODE_11__15_carry__1_n_0\,
      CO(2) => \CODE_11__15_carry__1_n_1\,
      CO(1) => \CODE_11__15_carry__1_n_2\,
      CO(0) => \CODE_11__15_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \CODE_11__15_carry__1_i_1__0_n_0\,
      DI(2) => \CODE_11__15_carry__1_i_2__0_n_0\,
      DI(1) => \CODE_11__15_carry__1_i_3__0_n_0\,
      DI(0) => \CODE_11__15_carry__1_i_4__0_n_0\,
      O(3 downto 0) => \NLW_CODE_11__15_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \CODE_11__15_carry__1_i_5__0_n_0\,
      S(2) => \CODE_11__15_carry__1_i_6__0_n_0\,
      S(1) => \CODE_11__15_carry__1_i_7__0_n_0\,
      S(0) => \CODE_11__15_carry__1_i_8__0_n_0\
    );
\CODE_11__15_carry__1_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(22),
      I1 => Q(23),
      O => \CODE_11__15_carry__1_i_1__0_n_0\
    );
\CODE_11__15_carry__1_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(20),
      I1 => Q(21),
      O => \CODE_11__15_carry__1_i_2__0_n_0\
    );
\CODE_11__15_carry__1_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(18),
      I1 => Q(19),
      O => \CODE_11__15_carry__1_i_3__0_n_0\
    );
\CODE_11__15_carry__1_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(16),
      I1 => Q(17),
      O => \CODE_11__15_carry__1_i_4__0_n_0\
    );
\CODE_11__15_carry__1_i_5__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(23),
      I1 => Q(22),
      O => \CODE_11__15_carry__1_i_5__0_n_0\
    );
\CODE_11__15_carry__1_i_6__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(21),
      I1 => Q(20),
      O => \CODE_11__15_carry__1_i_6__0_n_0\
    );
\CODE_11__15_carry__1_i_7__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(19),
      I1 => Q(18),
      O => \CODE_11__15_carry__1_i_7__0_n_0\
    );
\CODE_11__15_carry__1_i_8__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(17),
      I1 => Q(16),
      O => \CODE_11__15_carry__1_i_8__0_n_0\
    );
\CODE_11__15_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \CODE_11__15_carry__1_n_0\,
      CO(3) => \CODE_11__15_carry__2_n_0\,
      CO(2) => \CODE_11__15_carry__2_n_1\,
      CO(1) => \CODE_11__15_carry__2_n_2\,
      CO(0) => \CODE_11__15_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \CODE_11__15_carry__2_i_1__0_n_0\,
      DI(2) => \CODE_11__15_carry__2_i_2__0_n_0\,
      DI(1) => \CODE_11__15_carry__2_i_3__0_n_0\,
      DI(0) => \CODE_11__15_carry__2_i_4__0_n_0\,
      O(3 downto 0) => \NLW_CODE_11__15_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \CODE_11__15_carry__2_i_5__0_n_0\,
      S(2) => \CODE_11__15_carry__2_i_6__0_n_0\,
      S(1) => \CODE_11__15_carry__2_i_7__0_n_0\,
      S(0) => \CODE_11__15_carry__2_i_8__0_n_0\
    );
\CODE_11__15_carry__2_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(30),
      I1 => Q(31),
      O => \CODE_11__15_carry__2_i_1__0_n_0\
    );
\CODE_11__15_carry__2_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(28),
      I1 => Q(29),
      O => \CODE_11__15_carry__2_i_2__0_n_0\
    );
\CODE_11__15_carry__2_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(26),
      I1 => Q(27),
      O => \CODE_11__15_carry__2_i_3__0_n_0\
    );
\CODE_11__15_carry__2_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(24),
      I1 => Q(25),
      O => \CODE_11__15_carry__2_i_4__0_n_0\
    );
\CODE_11__15_carry__2_i_5__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(31),
      I1 => Q(30),
      O => \CODE_11__15_carry__2_i_5__0_n_0\
    );
\CODE_11__15_carry__2_i_6__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(29),
      I1 => Q(28),
      O => \CODE_11__15_carry__2_i_6__0_n_0\
    );
\CODE_11__15_carry__2_i_7__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(27),
      I1 => Q(26),
      O => \CODE_11__15_carry__2_i_7__0_n_0\
    );
\CODE_11__15_carry__2_i_8__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(25),
      I1 => Q(24),
      O => \CODE_11__15_carry__2_i_8__0_n_0\
    );
\CODE_11__15_carry_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(6),
      I1 => Q(7),
      O => \CODE_11__15_carry_i_1__0_n_0\
    );
\CODE_11__15_carry_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(4),
      I1 => Q(5),
      O => \CODE_11__15_carry_i_2__0_n_0\
    );
\CODE_11__15_carry_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(2),
      I1 => Q(3),
      O => \CODE_11__15_carry_i_3__0_n_0\
    );
\CODE_11__15_carry_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      O => \CODE_11__15_carry_i_4__0_n_0\
    );
\CODE_11__15_carry_i_5__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(7),
      I1 => Q(6),
      O => \CODE_11__15_carry_i_5__0_n_0\
    );
\CODE_11__15_carry_i_6__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(5),
      I1 => Q(4),
      O => \CODE_11__15_carry_i_6__0_n_0\
    );
\CODE_11__15_carry_i_7__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(3),
      I1 => Q(2),
      O => \CODE_11__15_carry_i_7__0_n_0\
    );
\CODE_11__15_carry_i_8__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      O => \CODE_11__15_carry_i_8__0_n_0\
    );
CODE_11_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => CODE_11_carry_n_0,
      CO(2) => CODE_11_carry_n_1,
      CO(1) => CODE_11_carry_n_2,
      CO(0) => CODE_11_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CODE_11_carry_O_UNCONNECTED(3 downto 0),
      S(3) => \CODE_11_carry_i_1__0_n_0\,
      S(2) => \CODE_11_carry_i_2__0_n_0\,
      S(1) => \CODE_11_carry_i_3__0_n_0\,
      S(0) => \CODE_11_carry_i_4__0_n_0\
    );
\CODE_11_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => CODE_11_carry_n_0,
      CO(3) => \CODE_11_carry__0_n_0\,
      CO(2) => \CODE_11_carry__0_n_1\,
      CO(1) => \CODE_11_carry__0_n_2\,
      CO(0) => \CODE_11_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_CODE_11_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \CODE_11_carry__0_i_1__0_n_0\,
      S(2) => \CODE_11_carry__0_i_2__0_n_0\,
      S(1) => \CODE_11_carry__0_i_3__0_n_0\,
      S(0) => \CODE_11_carry__0_i_4__0_n_0\
    );
\CODE_11_carry__0_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(15),
      I1 => Q(14),
      O => \CODE_11_carry__0_i_1__0_n_0\
    );
\CODE_11_carry__0_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(13),
      I1 => Q(12),
      O => \CODE_11_carry__0_i_2__0_n_0\
    );
\CODE_11_carry__0_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(11),
      I1 => Q(10),
      O => \CODE_11_carry__0_i_3__0_n_0\
    );
\CODE_11_carry__0_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(9),
      I1 => Q(8),
      O => \CODE_11_carry__0_i_4__0_n_0\
    );
\CODE_11_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \CODE_11_carry__0_n_0\,
      CO(3) => \CODE_11_carry__1_n_0\,
      CO(2) => \CODE_11_carry__1_n_1\,
      CO(1) => \CODE_11_carry__1_n_2\,
      CO(0) => \CODE_11_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_CODE_11_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \CODE_11_carry__1_i_1__0_n_0\,
      S(2) => \CODE_11_carry__1_i_2__0_n_0\,
      S(1) => \CODE_11_carry__1_i_3__0_n_0\,
      S(0) => \CODE_11_carry__1_i_4__0_n_0\
    );
\CODE_11_carry__1_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(23),
      I1 => Q(22),
      O => \CODE_11_carry__1_i_1__0_n_0\
    );
\CODE_11_carry__1_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(21),
      I1 => Q(20),
      O => \CODE_11_carry__1_i_2__0_n_0\
    );
\CODE_11_carry__1_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(19),
      I1 => Q(18),
      O => \CODE_11_carry__1_i_3__0_n_0\
    );
\CODE_11_carry__1_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(17),
      I1 => Q(16),
      O => \CODE_11_carry__1_i_4__0_n_0\
    );
\CODE_11_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \CODE_11_carry__1_n_0\,
      CO(3) => \CODE_11_carry__2_n_0\,
      CO(2) => \CODE_11_carry__2_n_1\,
      CO(1) => \CODE_11_carry__2_n_2\,
      CO(0) => \CODE_11_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \CODE_11_carry__2_i_1__0_n_0\,
      DI(2) => \CODE_11_carry__2_i_2__0_n_0\,
      DI(1) => \CODE_11_carry__2_i_3__0_n_0\,
      DI(0) => \CODE_11_carry__2_i_4__0_n_0\,
      O(3 downto 0) => \NLW_CODE_11_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \CODE_11_carry__2_i_5__0_n_0\,
      S(2) => \CODE_11_carry__2_i_6__0_n_0\,
      S(1) => \CODE_11_carry__2_i_7__0_n_0\,
      S(0) => \CODE_11_carry__2_i_8__0_n_0\
    );
\CODE_11_carry__2_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(31),
      I1 => Q(30),
      O => \CODE_11_carry__2_i_1__0_n_0\
    );
\CODE_11_carry__2_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => Q(28),
      I1 => Q(29),
      O => \CODE_11_carry__2_i_2__0_n_0\
    );
\CODE_11_carry__2_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => Q(26),
      I1 => Q(27),
      O => \CODE_11_carry__2_i_3__0_n_0\
    );
\CODE_11_carry__2_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => Q(24),
      I1 => Q(25),
      O => \CODE_11_carry__2_i_4__0_n_0\
    );
\CODE_11_carry__2_i_5__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(31),
      I1 => Q(30),
      O => \CODE_11_carry__2_i_5__0_n_0\
    );
\CODE_11_carry__2_i_6__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(29),
      I1 => Q(28),
      O => \CODE_11_carry__2_i_6__0_n_0\
    );
\CODE_11_carry__2_i_7__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(27),
      I1 => Q(26),
      O => \CODE_11_carry__2_i_7__0_n_0\
    );
\CODE_11_carry__2_i_8__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(25),
      I1 => Q(24),
      O => \CODE_11_carry__2_i_8__0_n_0\
    );
\CODE_11_carry_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(7),
      I1 => Q(6),
      O => \CODE_11_carry_i_1__0_n_0\
    );
\CODE_11_carry_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(5),
      I1 => Q(4),
      O => \CODE_11_carry_i_2__0_n_0\
    );
\CODE_11_carry_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(3),
      I1 => Q(2),
      O => \CODE_11_carry_i_3__0_n_0\
    );
\CODE_11_carry_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      O => \CODE_11_carry_i_4__0_n_0\
    );
\CODE_1[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1F10"
    )
        port map (
      I0 => \CODE_1_reg[1]_i_3__0_n_0\,
      I1 => \CODE_1[1]_i_2__0_n_0\,
      I2 => \CODE_11__15_carry__2_n_0\,
      I3 => \CODE_11_carry__2_n_0\,
      O => \CODE_1[0]_i_1__0_n_0\
    );
\CODE_1[1]_i_11__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(30),
      I1 => Q(31),
      O => \CODE_1[1]_i_11__0_n_0\
    );
\CODE_1[1]_i_12__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(28),
      I1 => Q(29),
      O => \CODE_1[1]_i_12__0_n_0\
    );
\CODE_1[1]_i_13__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(26),
      I1 => Q(27),
      O => \CODE_1[1]_i_13__0_n_0\
    );
\CODE_1[1]_i_14__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(31),
      I1 => Q(30),
      O => \CODE_1[1]_i_14__0_n_0\
    );
\CODE_1[1]_i_15__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(29),
      I1 => Q(28),
      O => \CODE_1[1]_i_15__0_n_0\
    );
\CODE_1[1]_i_16__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(27),
      I1 => Q(26),
      O => \CODE_1[1]_i_16__0_n_0\
    );
\CODE_1[1]_i_17__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(24),
      I1 => Q(25),
      O => \CODE_1[1]_i_17__0_n_0\
    );
\CODE_1[1]_i_18__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000200"
    )
        port map (
      I0 => \CODE_1[1]_i_33__0_n_0\,
      I1 => Q(29),
      I2 => Q(28),
      I3 => \CODE_1[1]_i_34__0_n_0\,
      I4 => Q(27),
      I5 => Q(26),
      O => \CODE_1[1]_i_18__0_n_0\
    );
\CODE_1[1]_i_19__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(13),
      I1 => Q(12),
      O => \CODE_1[1]_i_19__0_n_0\
    );
\CODE_1[1]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \CODE_11__15_carry__2_n_0\,
      I1 => \CODE_1[1]_i_2__0_n_0\,
      I2 => \CODE_1_reg[1]_i_3__0_n_0\,
      O => \CODE_1[1]_i_1__0_n_0\
    );
\CODE_1[1]_i_20__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(21),
      I1 => Q(20),
      O => \CODE_1[1]_i_20__0_n_0\
    );
\CODE_1[1]_i_21__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      O => \CODE_1[1]_i_21__0_n_0\
    );
\CODE_1[1]_i_22__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(3),
      I1 => Q(2),
      O => \CODE_1[1]_i_22__0_n_0\
    );
\CODE_1[1]_i_23__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(5),
      I1 => Q(4),
      O => \CODE_1[1]_i_23__0_n_0\
    );
\CODE_1[1]_i_25__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(22),
      I1 => Q(23),
      O => \CODE_1[1]_i_25__0_n_0\
    );
\CODE_1[1]_i_26__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(20),
      I1 => Q(21),
      O => \CODE_1[1]_i_26__0_n_0\
    );
\CODE_1[1]_i_27__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(18),
      I1 => Q(19),
      O => \CODE_1[1]_i_27__0_n_0\
    );
\CODE_1[1]_i_28__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(16),
      I1 => Q(17),
      O => \CODE_1[1]_i_28__0_n_0\
    );
\CODE_1[1]_i_29__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(23),
      I1 => Q(22),
      O => \CODE_1[1]_i_29__0_n_0\
    );
\CODE_1[1]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => \CODE_1[1]_i_4__0_n_0\,
      I1 => \CODE_1[1]_i_5_n_0\,
      I2 => \CODE_1[1]_i_6__0_n_0\,
      I3 => \CODE_1[1]_i_7__0_n_0\,
      I4 => \CODE_1[1]_i_8__0_n_0\,
      I5 => \CODE_1[1]_i_9__2_n_0\,
      O => \CODE_1[1]_i_2__0_n_0\
    );
\CODE_1[1]_i_30__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(21),
      I1 => Q(20),
      O => \CODE_1[1]_i_30__0_n_0\
    );
\CODE_1[1]_i_31__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(19),
      I1 => Q(18),
      O => \CODE_1[1]_i_31__1_n_0\
    );
\CODE_1[1]_i_32__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(17),
      I1 => Q(16),
      O => \CODE_1[1]_i_32__0_n_0\
    );
\CODE_1[1]_i_33__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(17),
      I1 => Q(16),
      O => \CODE_1[1]_i_33__0_n_0\
    );
\CODE_1[1]_i_34__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(7),
      I1 => Q(6),
      O => \CODE_1[1]_i_34__0_n_0\
    );
\CODE_1[1]_i_36__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(14),
      I1 => Q(15),
      O => \CODE_1[1]_i_36__0_n_0\
    );
\CODE_1[1]_i_37__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(12),
      I1 => Q(13),
      O => \CODE_1[1]_i_37__0_n_0\
    );
\CODE_1[1]_i_38__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(10),
      I1 => Q(11),
      O => \CODE_1[1]_i_38__0_n_0\
    );
\CODE_1[1]_i_39__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(8),
      I1 => Q(9),
      O => \CODE_1[1]_i_39__0_n_0\
    );
\CODE_1[1]_i_40\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(15),
      I1 => Q(14),
      O => \CODE_1[1]_i_40_n_0\
    );
\CODE_1[1]_i_41__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(13),
      I1 => Q(12),
      O => \CODE_1[1]_i_41__0_n_0\
    );
\CODE_1[1]_i_42__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(11),
      I1 => Q(10),
      O => \CODE_1[1]_i_42__0_n_0\
    );
\CODE_1[1]_i_43__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(9),
      I1 => Q(8),
      O => \CODE_1[1]_i_43__0_n_0\
    );
\CODE_1[1]_i_44__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(6),
      I1 => Q(7),
      O => \CODE_1[1]_i_44__0_n_0\
    );
\CODE_1[1]_i_45__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(4),
      I1 => Q(5),
      O => \CODE_1[1]_i_45__0_n_0\
    );
\CODE_1[1]_i_46__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(2),
      I1 => Q(3),
      O => \CODE_1[1]_i_46__0_n_0\
    );
\CODE_1[1]_i_47__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      O => \CODE_1[1]_i_47__0_n_0\
    );
\CODE_1[1]_i_48__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(7),
      I1 => Q(6),
      O => \CODE_1[1]_i_48__0_n_0\
    );
\CODE_1[1]_i_49__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(5),
      I1 => Q(4),
      O => \CODE_1[1]_i_49__1_n_0\
    );
\CODE_1[1]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0200000000000000"
    )
        port map (
      I0 => \CODE_1[1]_i_18__0_n_0\,
      I1 => Q(30),
      I2 => Q(31),
      I3 => \CODE_1[1]_i_19__0_n_0\,
      I4 => \CODE_1[1]_i_20__0_n_0\,
      I5 => \CODE_1[1]_i_21__0_n_0\,
      O => \CODE_1[1]_i_4__0_n_0\
    );
\CODE_1[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFDFF"
    )
        port map (
      I0 => \CODE_1[1]_i_22__0_n_0\,
      I1 => Q(15),
      I2 => Q(14),
      I3 => \CODE_1[1]_i_23__0_n_0\,
      I4 => Q(25),
      I5 => Q(24),
      O => \CODE_1[1]_i_5_n_0\
    );
\CODE_1[1]_i_50__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(3),
      I1 => Q(2),
      O => \CODE_1[1]_i_50__0_n_0\
    );
\CODE_1[1]_i_51__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      O => \CODE_1[1]_i_51__0_n_0\
    );
\CODE_1[1]_i_6__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(9),
      I1 => Q(8),
      O => \CODE_1[1]_i_6__0_n_0\
    );
\CODE_1[1]_i_7__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(19),
      I1 => Q(18),
      O => \CODE_1[1]_i_7__0_n_0\
    );
\CODE_1[1]_i_8__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(11),
      I1 => Q(10),
      O => \CODE_1[1]_i_8__0_n_0\
    );
\CODE_1[1]_i_9__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(23),
      I1 => Q(22),
      O => \CODE_1[1]_i_9__2_n_0\
    );
\CODE_1[2]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \CODE_11__15_carry__2_n_0\,
      I1 => \CODE_11_carry__2_n_0\,
      O => \CODE_1[2]_i_1__1_n_0\
    );
\CODE_1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      D => \CODE_1[0]_i_1__0_n_0\,
      Q => \CODE_1_reg_n_0_[0]\,
      R => '0'
    );
\CODE_1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      D => \CODE_1[1]_i_1__0_n_0\,
      Q => \CODE_1_reg_n_0_[1]\,
      R => '0'
    );
\CODE_1_reg[1]_i_10__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \CODE_1_reg[1]_i_24__0_n_0\,
      CO(3) => \CODE_1_reg[1]_i_10__0_n_0\,
      CO(2) => \CODE_1_reg[1]_i_10__0_n_1\,
      CO(1) => \CODE_1_reg[1]_i_10__0_n_2\,
      CO(0) => \CODE_1_reg[1]_i_10__0_n_3\,
      CYINIT => '0',
      DI(3) => \CODE_1[1]_i_25__0_n_0\,
      DI(2) => \CODE_1[1]_i_26__0_n_0\,
      DI(1) => \CODE_1[1]_i_27__0_n_0\,
      DI(0) => \CODE_1[1]_i_28__0_n_0\,
      O(3 downto 0) => \NLW_CODE_1_reg[1]_i_10__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \CODE_1[1]_i_29__0_n_0\,
      S(2) => \CODE_1[1]_i_30__0_n_0\,
      S(1) => \CODE_1[1]_i_31__1_n_0\,
      S(0) => \CODE_1[1]_i_32__0_n_0\
    );
\CODE_1_reg[1]_i_24__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \CODE_1_reg[1]_i_35__0_n_0\,
      CO(3) => \CODE_1_reg[1]_i_24__0_n_0\,
      CO(2) => \CODE_1_reg[1]_i_24__0_n_1\,
      CO(1) => \CODE_1_reg[1]_i_24__0_n_2\,
      CO(0) => \CODE_1_reg[1]_i_24__0_n_3\,
      CYINIT => '0',
      DI(3) => \CODE_1[1]_i_36__0_n_0\,
      DI(2) => \CODE_1[1]_i_37__0_n_0\,
      DI(1) => \CODE_1[1]_i_38__0_n_0\,
      DI(0) => \CODE_1[1]_i_39__0_n_0\,
      O(3 downto 0) => \NLW_CODE_1_reg[1]_i_24__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \CODE_1[1]_i_40_n_0\,
      S(2) => \CODE_1[1]_i_41__0_n_0\,
      S(1) => \CODE_1[1]_i_42__0_n_0\,
      S(0) => \CODE_1[1]_i_43__0_n_0\
    );
\CODE_1_reg[1]_i_35__0\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \CODE_1_reg[1]_i_35__0_n_0\,
      CO(2) => \CODE_1_reg[1]_i_35__0_n_1\,
      CO(1) => \CODE_1_reg[1]_i_35__0_n_2\,
      CO(0) => \CODE_1_reg[1]_i_35__0_n_3\,
      CYINIT => '1',
      DI(3) => \CODE_1[1]_i_44__0_n_0\,
      DI(2) => \CODE_1[1]_i_45__0_n_0\,
      DI(1) => \CODE_1[1]_i_46__0_n_0\,
      DI(0) => \CODE_1[1]_i_47__0_n_0\,
      O(3 downto 0) => \NLW_CODE_1_reg[1]_i_35__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \CODE_1[1]_i_48__0_n_0\,
      S(2) => \CODE_1[1]_i_49__1_n_0\,
      S(1) => \CODE_1[1]_i_50__0_n_0\,
      S(0) => \CODE_1[1]_i_51__0_n_0\
    );
\CODE_1_reg[1]_i_3__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \CODE_1_reg[1]_i_10__0_n_0\,
      CO(3) => \CODE_1_reg[1]_i_3__0_n_0\,
      CO(2) => \CODE_1_reg[1]_i_3__0_n_1\,
      CO(1) => \CODE_1_reg[1]_i_3__0_n_2\,
      CO(0) => \CODE_1_reg[1]_i_3__0_n_3\,
      CYINIT => '0',
      DI(3) => \CODE_1[1]_i_11__0_n_0\,
      DI(2) => \CODE_1[1]_i_12__0_n_0\,
      DI(1) => \CODE_1[1]_i_13__0_n_0\,
      DI(0) => Q(25),
      O(3 downto 0) => \NLW_CODE_1_reg[1]_i_3__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \CODE_1[1]_i_14__0_n_0\,
      S(2) => \CODE_1[1]_i_15__0_n_0\,
      S(1) => \CODE_1[1]_i_16__0_n_0\,
      S(0) => \CODE_1[1]_i_17__0_n_0\
    );
\CODE_1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      D => \CODE_1[2]_i_1__1_n_0\,
      Q => \CODE_1_reg_n_0_[2]\,
      R => '0'
    );
\CODE_2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      D => \CODE_1_reg_n_0_[0]\,
      Q => \CODE_2_reg_n_0_[0]\,
      R => '0'
    );
\CODE_2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      D => \CODE_1_reg_n_0_[1]\,
      Q => \CODE_2_reg_n_0_[1]\,
      R => '0'
    );
\CODE_2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      D => \CODE_1_reg_n_0_[2]\,
      Q => \CODE_2_reg_n_0_[2]\,
      R => '0'
    );
\latch_hidden_layer[1][0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"223F"
    )
        port map (
      I0 => \CODE_2_reg_n_0_[0]\,
      I1 => tmp2_reg_n_84,
      I2 => \CODE_2_reg_n_0_[2]\,
      I3 => \CODE_2_reg_n_0_[1]\,
      O => D(0)
    );
\latch_hidden_layer[1][10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5053ECA3"
    )
        port map (
      I0 => \latch_hidden_layer[1][11]_i_2_n_0\,
      I1 => \CODE_2_reg_n_0_[1]\,
      I2 => \CODE_2_reg_n_0_[2]\,
      I3 => \CODE_2_reg_n_0_[0]\,
      I4 => tmp2_reg_n_74,
      O => D(10)
    );
\latch_hidden_layer[1][11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FF70"
    )
        port map (
      I0 => \latch_hidden_layer[1][11]_i_2_n_0\,
      I1 => tmp2_reg_n_74,
      I2 => \CODE_2_reg_n_0_[2]\,
      I3 => \CODE_2_reg_n_0_[0]\,
      I4 => \CODE_2_reg_n_0_[1]\,
      O => D(11)
    );
\latch_hidden_layer[1][11]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => tmp2_reg_n_75,
      I1 => tmp2_reg_n_77,
      I2 => \latch_hidden_layer[1][7]_i_2_n_0\,
      I3 => tmp2_reg_n_78,
      I4 => tmp2_reg_n_76,
      O => \latch_hidden_layer[1][11]_i_2_n_0\
    );
\latch_hidden_layer[1][1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5053ECA3"
    )
        port map (
      I0 => tmp2_reg_n_84,
      I1 => \CODE_2_reg_n_0_[1]\,
      I2 => \CODE_2_reg_n_0_[2]\,
      I3 => \CODE_2_reg_n_0_[0]\,
      I4 => tmp2_reg_n_83,
      O => D(1)
    );
\latch_hidden_layer[1][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7700770FF8F0880F"
    )
        port map (
      I0 => tmp2_reg_n_84,
      I1 => tmp2_reg_n_83,
      I2 => \CODE_2_reg_n_0_[1]\,
      I3 => \CODE_2_reg_n_0_[2]\,
      I4 => \CODE_2_reg_n_0_[0]\,
      I5 => tmp2_reg_n_82,
      O => D(2)
    );
\latch_hidden_layer[1][3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5053ECA3"
    )
        port map (
      I0 => \latch_hidden_layer[1][3]_i_2_n_0\,
      I1 => \CODE_2_reg_n_0_[1]\,
      I2 => \CODE_2_reg_n_0_[2]\,
      I3 => \CODE_2_reg_n_0_[0]\,
      I4 => tmp2_reg_n_81,
      O => D(3)
    );
\latch_hidden_layer[1][3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => tmp2_reg_n_82,
      I1 => tmp2_reg_n_84,
      I2 => tmp2_reg_n_83,
      O => \latch_hidden_layer[1][3]_i_2_n_0\
    );
\latch_hidden_layer[1][4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5053ECA3"
    )
        port map (
      I0 => \latch_hidden_layer[1][4]_i_2_n_0\,
      I1 => \CODE_2_reg_n_0_[1]\,
      I2 => \CODE_2_reg_n_0_[2]\,
      I3 => \CODE_2_reg_n_0_[0]\,
      I4 => tmp2_reg_n_80,
      O => D(4)
    );
\latch_hidden_layer[1][4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => tmp2_reg_n_81,
      I1 => tmp2_reg_n_83,
      I2 => tmp2_reg_n_84,
      I3 => tmp2_reg_n_82,
      O => \latch_hidden_layer[1][4]_i_2_n_0\
    );
\latch_hidden_layer[1][5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5053ECA3"
    )
        port map (
      I0 => \latch_hidden_layer[1][5]_i_2_n_0\,
      I1 => \CODE_2_reg_n_0_[1]\,
      I2 => \CODE_2_reg_n_0_[2]\,
      I3 => \CODE_2_reg_n_0_[0]\,
      I4 => tmp2_reg_n_79,
      O => D(5)
    );
\latch_hidden_layer[1][5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => tmp2_reg_n_80,
      I1 => tmp2_reg_n_82,
      I2 => tmp2_reg_n_84,
      I3 => tmp2_reg_n_83,
      I4 => tmp2_reg_n_81,
      O => \latch_hidden_layer[1][5]_i_2_n_0\
    );
\latch_hidden_layer[1][6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5053ECA3"
    )
        port map (
      I0 => \latch_hidden_layer[1][7]_i_2_n_0\,
      I1 => \CODE_2_reg_n_0_[1]\,
      I2 => \CODE_2_reg_n_0_[2]\,
      I3 => \CODE_2_reg_n_0_[0]\,
      I4 => tmp2_reg_n_78,
      O => D(6)
    );
\latch_hidden_layer[1][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7700770FF8F0880F"
    )
        port map (
      I0 => \latch_hidden_layer[1][7]_i_2_n_0\,
      I1 => tmp2_reg_n_78,
      I2 => \CODE_2_reg_n_0_[1]\,
      I3 => \CODE_2_reg_n_0_[2]\,
      I4 => \CODE_2_reg_n_0_[0]\,
      I5 => tmp2_reg_n_77,
      O => D(7)
    );
\latch_hidden_layer[1][7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => tmp2_reg_n_79,
      I1 => tmp2_reg_n_81,
      I2 => tmp2_reg_n_83,
      I3 => tmp2_reg_n_84,
      I4 => tmp2_reg_n_82,
      I5 => tmp2_reg_n_80,
      O => \latch_hidden_layer[1][7]_i_2_n_0\
    );
\latch_hidden_layer[1][8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5053ECA3"
    )
        port map (
      I0 => \latch_hidden_layer[1][8]_i_2_n_0\,
      I1 => \CODE_2_reg_n_0_[1]\,
      I2 => \CODE_2_reg_n_0_[2]\,
      I3 => \CODE_2_reg_n_0_[0]\,
      I4 => tmp2_reg_n_76,
      O => D(8)
    );
\latch_hidden_layer[1][8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => tmp2_reg_n_77,
      I1 => \latch_hidden_layer[1][7]_i_2_n_0\,
      I2 => tmp2_reg_n_78,
      O => \latch_hidden_layer[1][8]_i_2_n_0\
    );
\latch_hidden_layer[1][9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5053ECA3"
    )
        port map (
      I0 => \latch_hidden_layer[1][9]_i_2_n_0\,
      I1 => \CODE_2_reg_n_0_[1]\,
      I2 => \CODE_2_reg_n_0_[2]\,
      I3 => \CODE_2_reg_n_0_[0]\,
      I4 => tmp2_reg_n_75,
      O => D(9)
    );
\latch_hidden_layer[1][9]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => tmp2_reg_n_76,
      I1 => tmp2_reg_n_78,
      I2 => \latch_hidden_layer[1][7]_i_2_n_0\,
      I3 => tmp2_reg_n_77,
      O => \latch_hidden_layer[1][9]_i_2_n_0\
    );
tmp2_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 16) => B"00000000000000",
      A(15) => \tmp2_reg_i_1__0_n_0\,
      A(14) => \tmp2_reg_i_2__0_n_0\,
      A(13) => \tmp2_reg_i_3__0_n_0\,
      A(12) => \tmp2_reg_i_4__0_n_0\,
      A(11) => \tmp2_reg_i_5__0_n_0\,
      A(10) => \tmp2_reg_i_6__0_n_0\,
      A(9) => \tmp2_reg_i_7__0_n_0\,
      A(8) => \tmp2_reg_i_8__0_n_0\,
      A(7) => \tmp2_reg_i_9__0_n_0\,
      A(6) => \tmp2_reg_i_10__0_n_0\,
      A(5) => \tmp2_reg_i_11__0_n_0\,
      A(4) => \tmp2_reg_i_12__0_n_0\,
      A(3) => \tmp2_reg_i_13__0_n_0\,
      A(2) => \tmp2_reg_i_14__0_n_0\,
      A(1) => \tmp2_reg_i_15__0_n_0\,
      A(0) => \tmp2_reg_i_16__0_n_0\,
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_tmp2_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 16) => B"00",
      B(15) => \tmp2_reg_i_1__0_n_0\,
      B(14) => \tmp2_reg_i_2__0_n_0\,
      B(13) => \tmp2_reg_i_3__0_n_0\,
      B(12) => \tmp2_reg_i_4__0_n_0\,
      B(11) => \tmp2_reg_i_5__0_n_0\,
      B(10) => \tmp2_reg_i_6__0_n_0\,
      B(9) => \tmp2_reg_i_7__0_n_0\,
      B(8) => \tmp2_reg_i_8__0_n_0\,
      B(7) => \tmp2_reg_i_9__0_n_0\,
      B(6) => \tmp2_reg_i_10__0_n_0\,
      B(5) => \tmp2_reg_i_11__0_n_0\,
      B(4) => \tmp2_reg_i_12__0_n_0\,
      B(3) => \tmp2_reg_i_13__0_n_0\,
      B(2) => \tmp2_reg_i_14__0_n_0\,
      B(1) => \tmp2_reg_i_15__0_n_0\,
      B(0) => \tmp2_reg_i_16__0_n_0\,
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_tmp2_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_tmp2_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_tmp2_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => E(0),
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => E(0),
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => E(0),
      CEP => '0',
      CLK => clk_IBUF_BUFG,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_tmp2_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_tmp2_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 32) => NLW_tmp2_reg_P_UNCONNECTED(47 downto 32),
      P(31) => tmp2_reg_n_74,
      P(30) => tmp2_reg_n_75,
      P(29) => tmp2_reg_n_76,
      P(28) => tmp2_reg_n_77,
      P(27) => tmp2_reg_n_78,
      P(26) => tmp2_reg_n_79,
      P(25) => tmp2_reg_n_80,
      P(24) => tmp2_reg_n_81,
      P(23) => tmp2_reg_n_82,
      P(22) => tmp2_reg_n_83,
      P(21) => tmp2_reg_n_84,
      P(20) => tmp2_reg_n_85,
      P(19) => tmp2_reg_n_86,
      P(18) => tmp2_reg_n_87,
      P(17) => tmp2_reg_n_88,
      P(16) => tmp2_reg_n_89,
      P(15) => tmp2_reg_n_90,
      P(14) => tmp2_reg_n_91,
      P(13) => tmp2_reg_n_92,
      P(12) => tmp2_reg_n_93,
      P(11) => tmp2_reg_n_94,
      P(10) => tmp2_reg_n_95,
      P(9) => tmp2_reg_n_96,
      P(8) => tmp2_reg_n_97,
      P(7) => tmp2_reg_n_98,
      P(6) => tmp2_reg_n_99,
      P(5) => tmp2_reg_n_100,
      P(4) => tmp2_reg_n_101,
      P(3) => tmp2_reg_n_102,
      P(2) => tmp2_reg_n_103,
      P(1) => tmp2_reg_n_104,
      P(0) => tmp2_reg_n_105,
      PATTERNBDETECT => NLW_tmp2_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_tmp2_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_tmp2_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_tmp2_reg_UNDERFLOW_UNCONNECTED
    );
\tmp2_reg_i_10__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tmp2_reg_i_19__0_n_6\,
      I1 => \CODE_11__15_carry__2_n_0\,
      I2 => Q(14),
      O => \tmp2_reg_i_10__0_n_0\
    );
\tmp2_reg_i_11__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tmp2_reg_i_19__0_n_7\,
      I1 => \CODE_11__15_carry__2_n_0\,
      I2 => Q(13),
      O => \tmp2_reg_i_11__0_n_0\
    );
\tmp2_reg_i_12__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tmp2_reg_i_20__0_n_4\,
      I1 => \CODE_11__15_carry__2_n_0\,
      I2 => Q(12),
      O => \tmp2_reg_i_12__0_n_0\
    );
\tmp2_reg_i_13__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tmp2_reg_i_20__0_n_5\,
      I1 => \CODE_11__15_carry__2_n_0\,
      I2 => Q(11),
      O => \tmp2_reg_i_13__0_n_0\
    );
\tmp2_reg_i_14__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tmp2_reg_i_20__0_n_6\,
      I1 => \CODE_11__15_carry__2_n_0\,
      I2 => Q(10),
      O => \tmp2_reg_i_14__0_n_0\
    );
\tmp2_reg_i_15__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tmp2_reg_i_20__0_n_7\,
      I1 => \CODE_11__15_carry__2_n_0\,
      I2 => Q(9),
      O => \tmp2_reg_i_15__0_n_0\
    );
\tmp2_reg_i_16__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tmp2_reg_i_21__0_n_4\,
      I1 => \CODE_11__15_carry__2_n_0\,
      I2 => Q(8),
      O => \tmp2_reg_i_16__0_n_0\
    );
\tmp2_reg_i_17__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \tmp2_reg_i_18__0_n_0\,
      CO(3 downto 2) => \NLW_tmp2_reg_i_17__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \tmp2_reg_i_17__0_n_2\,
      CO(0) => \tmp2_reg_i_17__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_tmp2_reg_i_17__0_O_UNCONNECTED\(3),
      O(2) => \tmp2_reg_i_17__0_n_5\,
      O(1) => \tmp2_reg_i_17__0_n_6\,
      O(0) => \tmp2_reg_i_17__0_n_7\,
      S(3) => '0',
      S(2) => \tmp2_reg_i_22__0_n_0\,
      S(1) => \tmp2_reg_i_23__0_n_0\,
      S(0) => \tmp2_reg_i_24__0_n_0\
    );
\tmp2_reg_i_18__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \tmp2_reg_i_19__0_n_0\,
      CO(3) => \tmp2_reg_i_18__0_n_0\,
      CO(2) => \tmp2_reg_i_18__0_n_1\,
      CO(1) => \tmp2_reg_i_18__0_n_2\,
      CO(0) => \tmp2_reg_i_18__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \tmp2_reg_i_18__0_n_4\,
      O(2) => \tmp2_reg_i_18__0_n_5\,
      O(1) => \tmp2_reg_i_18__0_n_6\,
      O(0) => \tmp2_reg_i_18__0_n_7\,
      S(3) => \tmp2_reg_i_25__0_n_0\,
      S(2) => \tmp2_reg_i_26__0_n_0\,
      S(1) => \tmp2_reg_i_27__0_n_0\,
      S(0) => \tmp2_reg_i_28__0_n_0\
    );
\tmp2_reg_i_19__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \tmp2_reg_i_20__0_n_0\,
      CO(3) => \tmp2_reg_i_19__0_n_0\,
      CO(2) => \tmp2_reg_i_19__0_n_1\,
      CO(1) => \tmp2_reg_i_19__0_n_2\,
      CO(0) => \tmp2_reg_i_19__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \tmp2_reg_i_19__0_n_4\,
      O(2) => \tmp2_reg_i_19__0_n_5\,
      O(1) => \tmp2_reg_i_19__0_n_6\,
      O(0) => \tmp2_reg_i_19__0_n_7\,
      S(3) => \tmp2_reg_i_29__0_n_0\,
      S(2) => \tmp2_reg_i_30__0_n_0\,
      S(1) => \tmp2_reg_i_31__0_n_0\,
      S(0) => \tmp2_reg_i_32__0_n_0\
    );
\tmp2_reg_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tmp2_reg_i_17__0_n_5\,
      I1 => \CODE_11__15_carry__2_n_0\,
      I2 => Q(23),
      O => \tmp2_reg_i_1__0_n_0\
    );
\tmp2_reg_i_20__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \tmp2_reg_i_21__0_n_0\,
      CO(3) => \tmp2_reg_i_20__0_n_0\,
      CO(2) => \tmp2_reg_i_20__0_n_1\,
      CO(1) => \tmp2_reg_i_20__0_n_2\,
      CO(0) => \tmp2_reg_i_20__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \tmp2_reg_i_20__0_n_4\,
      O(2) => \tmp2_reg_i_20__0_n_5\,
      O(1) => \tmp2_reg_i_20__0_n_6\,
      O(0) => \tmp2_reg_i_20__0_n_7\,
      S(3) => \tmp2_reg_i_33__0_n_0\,
      S(2) => \tmp2_reg_i_34__0_n_0\,
      S(1) => \tmp2_reg_i_35__0_n_0\,
      S(0) => \tmp2_reg_i_36__0_n_0\
    );
\tmp2_reg_i_21__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \tmp2_reg_i_37__0_n_0\,
      CO(3) => \tmp2_reg_i_21__0_n_0\,
      CO(2) => \tmp2_reg_i_21__0_n_1\,
      CO(1) => \tmp2_reg_i_21__0_n_2\,
      CO(0) => \tmp2_reg_i_21__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \tmp2_reg_i_21__0_n_4\,
      O(2 downto 0) => \NLW_tmp2_reg_i_21__0_O_UNCONNECTED\(2 downto 0),
      S(3) => \tmp2_reg_i_38__0_n_0\,
      S(2) => \tmp2_reg_i_39__0_n_0\,
      S(1) => \tmp2_reg_i_40__0_n_0\,
      S(0) => \tmp2_reg_i_41__0_n_0\
    );
\tmp2_reg_i_22__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(23),
      O => \tmp2_reg_i_22__0_n_0\
    );
\tmp2_reg_i_23__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(22),
      O => \tmp2_reg_i_23__0_n_0\
    );
\tmp2_reg_i_24__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(21),
      O => \tmp2_reg_i_24__0_n_0\
    );
\tmp2_reg_i_25__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(20),
      O => \tmp2_reg_i_25__0_n_0\
    );
\tmp2_reg_i_26__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(19),
      O => \tmp2_reg_i_26__0_n_0\
    );
\tmp2_reg_i_27__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(18),
      O => \tmp2_reg_i_27__0_n_0\
    );
\tmp2_reg_i_28__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(17),
      O => \tmp2_reg_i_28__0_n_0\
    );
\tmp2_reg_i_29__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(16),
      O => \tmp2_reg_i_29__0_n_0\
    );
\tmp2_reg_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tmp2_reg_i_17__0_n_6\,
      I1 => \CODE_11__15_carry__2_n_0\,
      I2 => Q(22),
      O => \tmp2_reg_i_2__0_n_0\
    );
\tmp2_reg_i_30__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(15),
      O => \tmp2_reg_i_30__0_n_0\
    );
\tmp2_reg_i_31__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(14),
      O => \tmp2_reg_i_31__0_n_0\
    );
\tmp2_reg_i_32__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(13),
      O => \tmp2_reg_i_32__0_n_0\
    );
\tmp2_reg_i_33__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(12),
      O => \tmp2_reg_i_33__0_n_0\
    );
\tmp2_reg_i_34__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(11),
      O => \tmp2_reg_i_34__0_n_0\
    );
\tmp2_reg_i_35__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(10),
      O => \tmp2_reg_i_35__0_n_0\
    );
\tmp2_reg_i_36__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(9),
      O => \tmp2_reg_i_36__0_n_0\
    );
\tmp2_reg_i_37__0\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \tmp2_reg_i_37__0_n_0\,
      CO(2) => \tmp2_reg_i_37__0_n_1\,
      CO(1) => \tmp2_reg_i_37__0_n_2\,
      CO(0) => \tmp2_reg_i_37__0_n_3\,
      CYINIT => \tmp2_reg_i_42__0_n_0\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_tmp2_reg_i_37__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \tmp2_reg_i_43__0_n_0\,
      S(2) => \tmp2_reg_i_44__0_n_0\,
      S(1) => \tmp2_reg_i_45__0_n_0\,
      S(0) => \tmp2_reg_i_46__0_n_0\
    );
\tmp2_reg_i_38__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(8),
      O => \tmp2_reg_i_38__0_n_0\
    );
\tmp2_reg_i_39__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(7),
      O => \tmp2_reg_i_39__0_n_0\
    );
\tmp2_reg_i_3__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tmp2_reg_i_17__0_n_7\,
      I1 => \CODE_11__15_carry__2_n_0\,
      I2 => Q(21),
      O => \tmp2_reg_i_3__0_n_0\
    );
\tmp2_reg_i_40__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(6),
      O => \tmp2_reg_i_40__0_n_0\
    );
\tmp2_reg_i_41__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(5),
      O => \tmp2_reg_i_41__0_n_0\
    );
\tmp2_reg_i_42__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(0),
      O => \tmp2_reg_i_42__0_n_0\
    );
\tmp2_reg_i_43__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(4),
      O => \tmp2_reg_i_43__0_n_0\
    );
\tmp2_reg_i_44__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(3),
      O => \tmp2_reg_i_44__0_n_0\
    );
\tmp2_reg_i_45__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(2),
      O => \tmp2_reg_i_45__0_n_0\
    );
\tmp2_reg_i_46__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(1),
      O => \tmp2_reg_i_46__0_n_0\
    );
\tmp2_reg_i_4__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tmp2_reg_i_18__0_n_4\,
      I1 => \CODE_11__15_carry__2_n_0\,
      I2 => Q(20),
      O => \tmp2_reg_i_4__0_n_0\
    );
\tmp2_reg_i_5__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tmp2_reg_i_18__0_n_5\,
      I1 => \CODE_11__15_carry__2_n_0\,
      I2 => Q(19),
      O => \tmp2_reg_i_5__0_n_0\
    );
\tmp2_reg_i_6__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tmp2_reg_i_18__0_n_6\,
      I1 => \CODE_11__15_carry__2_n_0\,
      I2 => Q(18),
      O => \tmp2_reg_i_6__0_n_0\
    );
\tmp2_reg_i_7__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tmp2_reg_i_18__0_n_7\,
      I1 => \CODE_11__15_carry__2_n_0\,
      I2 => Q(17),
      O => \tmp2_reg_i_7__0_n_0\
    );
\tmp2_reg_i_8__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tmp2_reg_i_19__0_n_4\,
      I1 => \CODE_11__15_carry__2_n_0\,
      I2 => Q(16),
      O => \tmp2_reg_i_8__0_n_0\
    );
\tmp2_reg_i_9__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tmp2_reg_i_19__0_n_5\,
      I1 => \CODE_11__15_carry__2_n_0\,
      I2 => Q(15),
      O => \tmp2_reg_i_9__0_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity sigmoid_1 is
  port (
    D : out STD_LOGIC_VECTOR ( 11 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk_IBUF_BUFG : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of sigmoid_1 : entity is "sigmoid";
end sigmoid_1;

architecture STRUCTURE of sigmoid_1 is
  signal \CODE_11__15_carry__0_i_1__1_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry__0_i_2__1_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry__0_i_3__1_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry__0_i_4__1_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry__0_i_5__1_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry__0_i_6__1_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry__0_i_7__1_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry__0_i_8__1_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry__0_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry__0_n_1\ : STD_LOGIC;
  signal \CODE_11__15_carry__0_n_2\ : STD_LOGIC;
  signal \CODE_11__15_carry__0_n_3\ : STD_LOGIC;
  signal \CODE_11__15_carry__1_i_1__1_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry__1_i_2__1_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry__1_i_3__1_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry__1_i_4__1_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry__1_i_5__1_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry__1_i_6__1_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry__1_i_7__1_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry__1_i_8__1_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry__1_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry__1_n_1\ : STD_LOGIC;
  signal \CODE_11__15_carry__1_n_2\ : STD_LOGIC;
  signal \CODE_11__15_carry__1_n_3\ : STD_LOGIC;
  signal \CODE_11__15_carry__2_i_1__1_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry__2_i_2__1_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry__2_i_3__1_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry__2_i_4__1_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry__2_i_5__1_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry__2_i_6__1_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry__2_i_7__1_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry__2_i_8__1_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry__2_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry__2_n_1\ : STD_LOGIC;
  signal \CODE_11__15_carry__2_n_2\ : STD_LOGIC;
  signal \CODE_11__15_carry__2_n_3\ : STD_LOGIC;
  signal \CODE_11__15_carry_i_1__1_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry_i_2__1_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry_i_3__1_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry_i_4__1_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry_i_5__1_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry_i_6__1_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry_i_7__1_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry_i_8__1_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry_n_1\ : STD_LOGIC;
  signal \CODE_11__15_carry_n_2\ : STD_LOGIC;
  signal \CODE_11__15_carry_n_3\ : STD_LOGIC;
  signal \CODE_11_carry__0_i_1__1_n_0\ : STD_LOGIC;
  signal \CODE_11_carry__0_i_2__1_n_0\ : STD_LOGIC;
  signal \CODE_11_carry__0_i_3__1_n_0\ : STD_LOGIC;
  signal \CODE_11_carry__0_i_4__1_n_0\ : STD_LOGIC;
  signal \CODE_11_carry__0_n_0\ : STD_LOGIC;
  signal \CODE_11_carry__0_n_1\ : STD_LOGIC;
  signal \CODE_11_carry__0_n_2\ : STD_LOGIC;
  signal \CODE_11_carry__0_n_3\ : STD_LOGIC;
  signal \CODE_11_carry__1_i_1__1_n_0\ : STD_LOGIC;
  signal \CODE_11_carry__1_i_2__1_n_0\ : STD_LOGIC;
  signal \CODE_11_carry__1_i_3__1_n_0\ : STD_LOGIC;
  signal \CODE_11_carry__1_i_4__1_n_0\ : STD_LOGIC;
  signal \CODE_11_carry__1_n_0\ : STD_LOGIC;
  signal \CODE_11_carry__1_n_1\ : STD_LOGIC;
  signal \CODE_11_carry__1_n_2\ : STD_LOGIC;
  signal \CODE_11_carry__1_n_3\ : STD_LOGIC;
  signal \CODE_11_carry__2_i_1__1_n_0\ : STD_LOGIC;
  signal \CODE_11_carry__2_i_2__1_n_0\ : STD_LOGIC;
  signal \CODE_11_carry__2_i_3__1_n_0\ : STD_LOGIC;
  signal \CODE_11_carry__2_i_4__1_n_0\ : STD_LOGIC;
  signal \CODE_11_carry__2_i_5__1_n_0\ : STD_LOGIC;
  signal \CODE_11_carry__2_i_6__1_n_0\ : STD_LOGIC;
  signal \CODE_11_carry__2_i_7__1_n_0\ : STD_LOGIC;
  signal \CODE_11_carry__2_i_8__1_n_0\ : STD_LOGIC;
  signal \CODE_11_carry__2_n_0\ : STD_LOGIC;
  signal \CODE_11_carry__2_n_1\ : STD_LOGIC;
  signal \CODE_11_carry__2_n_2\ : STD_LOGIC;
  signal \CODE_11_carry__2_n_3\ : STD_LOGIC;
  signal \CODE_11_carry_i_1__1_n_0\ : STD_LOGIC;
  signal \CODE_11_carry_i_2__1_n_0\ : STD_LOGIC;
  signal \CODE_11_carry_i_3__1_n_0\ : STD_LOGIC;
  signal \CODE_11_carry_i_4__1_n_0\ : STD_LOGIC;
  signal CODE_11_carry_n_0 : STD_LOGIC;
  signal CODE_11_carry_n_1 : STD_LOGIC;
  signal CODE_11_carry_n_2 : STD_LOGIC;
  signal CODE_11_carry_n_3 : STD_LOGIC;
  signal \CODE_1[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_11__2_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_12__2_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_13__2_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_14__2_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_15__2_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_16__2_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_17__1_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_18__2_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_19__2_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_20__2_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_21__2_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_22__2_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_23__2_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_25__2_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_26__2_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_27__2_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_28__2_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_29__1_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_2__1_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_30__1_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_31__2_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_32__1_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_33__2_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_34__2_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_36__2_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_37__2_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_38__2_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_39__2_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_40__1_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_41__1_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_42__1_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_43__1_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_44__2_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_45__2_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_46__2_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_47__2_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_48__1_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_49__0_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_4__2_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_50__1_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_51__1_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_5__2_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_6__2_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_7__2_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_8__2_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_9__0_n_0\ : STD_LOGIC;
  signal \CODE_1[2]_i_2_n_0\ : STD_LOGIC;
  signal \CODE_1_reg[1]_i_10__1_n_0\ : STD_LOGIC;
  signal \CODE_1_reg[1]_i_10__1_n_1\ : STD_LOGIC;
  signal \CODE_1_reg[1]_i_10__1_n_2\ : STD_LOGIC;
  signal \CODE_1_reg[1]_i_10__1_n_3\ : STD_LOGIC;
  signal \CODE_1_reg[1]_i_24__1_n_0\ : STD_LOGIC;
  signal \CODE_1_reg[1]_i_24__1_n_1\ : STD_LOGIC;
  signal \CODE_1_reg[1]_i_24__1_n_2\ : STD_LOGIC;
  signal \CODE_1_reg[1]_i_24__1_n_3\ : STD_LOGIC;
  signal \CODE_1_reg[1]_i_35__1_n_0\ : STD_LOGIC;
  signal \CODE_1_reg[1]_i_35__1_n_1\ : STD_LOGIC;
  signal \CODE_1_reg[1]_i_35__1_n_2\ : STD_LOGIC;
  signal \CODE_1_reg[1]_i_35__1_n_3\ : STD_LOGIC;
  signal \CODE_1_reg[1]_i_3__1_n_0\ : STD_LOGIC;
  signal \CODE_1_reg[1]_i_3__1_n_1\ : STD_LOGIC;
  signal \CODE_1_reg[1]_i_3__1_n_2\ : STD_LOGIC;
  signal \CODE_1_reg[1]_i_3__1_n_3\ : STD_LOGIC;
  signal \CODE_1_reg_n_0_[0]\ : STD_LOGIC;
  signal \CODE_1_reg_n_0_[1]\ : STD_LOGIC;
  signal \CODE_1_reg_n_0_[2]\ : STD_LOGIC;
  signal \CODE_2_reg_n_0_[0]\ : STD_LOGIC;
  signal \CODE_2_reg_n_0_[1]\ : STD_LOGIC;
  signal \CODE_2_reg_n_0_[2]\ : STD_LOGIC;
  signal \latch_hidden_layer[2][11]_i_4_n_0\ : STD_LOGIC;
  signal \latch_hidden_layer[2][3]_i_2_n_0\ : STD_LOGIC;
  signal \latch_hidden_layer[2][4]_i_2_n_0\ : STD_LOGIC;
  signal \latch_hidden_layer[2][5]_i_2_n_0\ : STD_LOGIC;
  signal \latch_hidden_layer[2][7]_i_2_n_0\ : STD_LOGIC;
  signal \latch_hidden_layer[2][8]_i_2_n_0\ : STD_LOGIC;
  signal \latch_hidden_layer[2][9]_i_2_n_0\ : STD_LOGIC;
  signal tmp2_reg_i_10_n_0 : STD_LOGIC;
  signal tmp2_reg_i_11_n_0 : STD_LOGIC;
  signal tmp2_reg_i_12_n_0 : STD_LOGIC;
  signal tmp2_reg_i_13_n_0 : STD_LOGIC;
  signal tmp2_reg_i_14_n_0 : STD_LOGIC;
  signal tmp2_reg_i_15_n_0 : STD_LOGIC;
  signal tmp2_reg_i_16_n_0 : STD_LOGIC;
  signal tmp2_reg_i_17_n_2 : STD_LOGIC;
  signal tmp2_reg_i_17_n_3 : STD_LOGIC;
  signal tmp2_reg_i_17_n_5 : STD_LOGIC;
  signal tmp2_reg_i_17_n_6 : STD_LOGIC;
  signal tmp2_reg_i_17_n_7 : STD_LOGIC;
  signal tmp2_reg_i_18_n_0 : STD_LOGIC;
  signal tmp2_reg_i_18_n_1 : STD_LOGIC;
  signal tmp2_reg_i_18_n_2 : STD_LOGIC;
  signal tmp2_reg_i_18_n_3 : STD_LOGIC;
  signal tmp2_reg_i_18_n_4 : STD_LOGIC;
  signal tmp2_reg_i_18_n_5 : STD_LOGIC;
  signal tmp2_reg_i_18_n_6 : STD_LOGIC;
  signal tmp2_reg_i_18_n_7 : STD_LOGIC;
  signal tmp2_reg_i_19_n_0 : STD_LOGIC;
  signal tmp2_reg_i_19_n_1 : STD_LOGIC;
  signal tmp2_reg_i_19_n_2 : STD_LOGIC;
  signal tmp2_reg_i_19_n_3 : STD_LOGIC;
  signal tmp2_reg_i_19_n_4 : STD_LOGIC;
  signal tmp2_reg_i_19_n_5 : STD_LOGIC;
  signal tmp2_reg_i_19_n_6 : STD_LOGIC;
  signal tmp2_reg_i_19_n_7 : STD_LOGIC;
  signal tmp2_reg_i_1_n_0 : STD_LOGIC;
  signal tmp2_reg_i_20_n_0 : STD_LOGIC;
  signal tmp2_reg_i_20_n_1 : STD_LOGIC;
  signal tmp2_reg_i_20_n_2 : STD_LOGIC;
  signal tmp2_reg_i_20_n_3 : STD_LOGIC;
  signal tmp2_reg_i_20_n_4 : STD_LOGIC;
  signal tmp2_reg_i_20_n_5 : STD_LOGIC;
  signal tmp2_reg_i_20_n_6 : STD_LOGIC;
  signal tmp2_reg_i_20_n_7 : STD_LOGIC;
  signal tmp2_reg_i_21_n_0 : STD_LOGIC;
  signal tmp2_reg_i_21_n_1 : STD_LOGIC;
  signal tmp2_reg_i_21_n_2 : STD_LOGIC;
  signal tmp2_reg_i_21_n_3 : STD_LOGIC;
  signal tmp2_reg_i_21_n_4 : STD_LOGIC;
  signal \tmp2_reg_i_22__2_n_0\ : STD_LOGIC;
  signal \tmp2_reg_i_23__2_n_0\ : STD_LOGIC;
  signal \tmp2_reg_i_24__2_n_0\ : STD_LOGIC;
  signal \tmp2_reg_i_25__2_n_0\ : STD_LOGIC;
  signal \tmp2_reg_i_26__2_n_0\ : STD_LOGIC;
  signal \tmp2_reg_i_27__2_n_0\ : STD_LOGIC;
  signal \tmp2_reg_i_28__2_n_0\ : STD_LOGIC;
  signal \tmp2_reg_i_29__2_n_0\ : STD_LOGIC;
  signal tmp2_reg_i_2_n_0 : STD_LOGIC;
  signal \tmp2_reg_i_30__2_n_0\ : STD_LOGIC;
  signal \tmp2_reg_i_31__2_n_0\ : STD_LOGIC;
  signal \tmp2_reg_i_32__2_n_0\ : STD_LOGIC;
  signal \tmp2_reg_i_33__2_n_0\ : STD_LOGIC;
  signal \tmp2_reg_i_34__2_n_0\ : STD_LOGIC;
  signal \tmp2_reg_i_35__2_n_0\ : STD_LOGIC;
  signal \tmp2_reg_i_36__2_n_0\ : STD_LOGIC;
  signal tmp2_reg_i_37_n_0 : STD_LOGIC;
  signal tmp2_reg_i_37_n_1 : STD_LOGIC;
  signal tmp2_reg_i_37_n_2 : STD_LOGIC;
  signal tmp2_reg_i_37_n_3 : STD_LOGIC;
  signal \tmp2_reg_i_38__2_n_0\ : STD_LOGIC;
  signal \tmp2_reg_i_39__2_n_0\ : STD_LOGIC;
  signal tmp2_reg_i_3_n_0 : STD_LOGIC;
  signal \tmp2_reg_i_40__2_n_0\ : STD_LOGIC;
  signal \tmp2_reg_i_41__2_n_0\ : STD_LOGIC;
  signal \tmp2_reg_i_42__2_n_0\ : STD_LOGIC;
  signal \tmp2_reg_i_43__2_n_0\ : STD_LOGIC;
  signal \tmp2_reg_i_44__2_n_0\ : STD_LOGIC;
  signal \tmp2_reg_i_45__2_n_0\ : STD_LOGIC;
  signal \tmp2_reg_i_46__2_n_0\ : STD_LOGIC;
  signal tmp2_reg_i_4_n_0 : STD_LOGIC;
  signal tmp2_reg_i_5_n_0 : STD_LOGIC;
  signal tmp2_reg_i_6_n_0 : STD_LOGIC;
  signal tmp2_reg_i_7_n_0 : STD_LOGIC;
  signal tmp2_reg_i_8_n_0 : STD_LOGIC;
  signal tmp2_reg_i_9_n_0 : STD_LOGIC;
  signal tmp2_reg_n_100 : STD_LOGIC;
  signal tmp2_reg_n_101 : STD_LOGIC;
  signal tmp2_reg_n_102 : STD_LOGIC;
  signal tmp2_reg_n_103 : STD_LOGIC;
  signal tmp2_reg_n_104 : STD_LOGIC;
  signal tmp2_reg_n_105 : STD_LOGIC;
  signal tmp2_reg_n_74 : STD_LOGIC;
  signal tmp2_reg_n_75 : STD_LOGIC;
  signal tmp2_reg_n_76 : STD_LOGIC;
  signal tmp2_reg_n_77 : STD_LOGIC;
  signal tmp2_reg_n_78 : STD_LOGIC;
  signal tmp2_reg_n_79 : STD_LOGIC;
  signal tmp2_reg_n_80 : STD_LOGIC;
  signal tmp2_reg_n_81 : STD_LOGIC;
  signal tmp2_reg_n_82 : STD_LOGIC;
  signal tmp2_reg_n_83 : STD_LOGIC;
  signal tmp2_reg_n_84 : STD_LOGIC;
  signal tmp2_reg_n_85 : STD_LOGIC;
  signal tmp2_reg_n_86 : STD_LOGIC;
  signal tmp2_reg_n_87 : STD_LOGIC;
  signal tmp2_reg_n_88 : STD_LOGIC;
  signal tmp2_reg_n_89 : STD_LOGIC;
  signal tmp2_reg_n_90 : STD_LOGIC;
  signal tmp2_reg_n_91 : STD_LOGIC;
  signal tmp2_reg_n_92 : STD_LOGIC;
  signal tmp2_reg_n_93 : STD_LOGIC;
  signal tmp2_reg_n_94 : STD_LOGIC;
  signal tmp2_reg_n_95 : STD_LOGIC;
  signal tmp2_reg_n_96 : STD_LOGIC;
  signal tmp2_reg_n_97 : STD_LOGIC;
  signal tmp2_reg_n_98 : STD_LOGIC;
  signal tmp2_reg_n_99 : STD_LOGIC;
  signal \NLW_CODE_11__15_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CODE_11__15_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CODE_11__15_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CODE_11__15_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_CODE_11_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CODE_11_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CODE_11_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CODE_11_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CODE_1_reg[1]_i_10__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CODE_1_reg[1]_i_24__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CODE_1_reg[1]_i_35__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CODE_1_reg[1]_i_3__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_tmp2_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp2_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp2_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp2_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp2_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp2_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp2_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_tmp2_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_tmp2_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_tmp2_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 32 );
  signal NLW_tmp2_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_tmp2_reg_i_17_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_tmp2_reg_i_17_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_tmp2_reg_i_21_O_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_tmp2_reg_i_37_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \CODE_1[0]_i_1__1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \CODE_1[1]_i_1__1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \latch_hidden_layer[2][0]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \latch_hidden_layer[2][10]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \latch_hidden_layer[2][11]_i_2\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \latch_hidden_layer[2][11]_i_4\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \latch_hidden_layer[2][1]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \latch_hidden_layer[2][4]_i_2\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \latch_hidden_layer[2][5]_i_2\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \latch_hidden_layer[2][9]_i_2\ : label is "soft_lutpair40";
begin
\CODE_11__15_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \CODE_11__15_carry_n_0\,
      CO(2) => \CODE_11__15_carry_n_1\,
      CO(1) => \CODE_11__15_carry_n_2\,
      CO(0) => \CODE_11__15_carry_n_3\,
      CYINIT => '1',
      DI(3) => \CODE_11__15_carry_i_1__1_n_0\,
      DI(2) => \CODE_11__15_carry_i_2__1_n_0\,
      DI(1) => \CODE_11__15_carry_i_3__1_n_0\,
      DI(0) => \CODE_11__15_carry_i_4__1_n_0\,
      O(3 downto 0) => \NLW_CODE_11__15_carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \CODE_11__15_carry_i_5__1_n_0\,
      S(2) => \CODE_11__15_carry_i_6__1_n_0\,
      S(1) => \CODE_11__15_carry_i_7__1_n_0\,
      S(0) => \CODE_11__15_carry_i_8__1_n_0\
    );
\CODE_11__15_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \CODE_11__15_carry_n_0\,
      CO(3) => \CODE_11__15_carry__0_n_0\,
      CO(2) => \CODE_11__15_carry__0_n_1\,
      CO(1) => \CODE_11__15_carry__0_n_2\,
      CO(0) => \CODE_11__15_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \CODE_11__15_carry__0_i_1__1_n_0\,
      DI(2) => \CODE_11__15_carry__0_i_2__1_n_0\,
      DI(1) => \CODE_11__15_carry__0_i_3__1_n_0\,
      DI(0) => \CODE_11__15_carry__0_i_4__1_n_0\,
      O(3 downto 0) => \NLW_CODE_11__15_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \CODE_11__15_carry__0_i_5__1_n_0\,
      S(2) => \CODE_11__15_carry__0_i_6__1_n_0\,
      S(1) => \CODE_11__15_carry__0_i_7__1_n_0\,
      S(0) => \CODE_11__15_carry__0_i_8__1_n_0\
    );
\CODE_11__15_carry__0_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(14),
      I1 => Q(15),
      O => \CODE_11__15_carry__0_i_1__1_n_0\
    );
\CODE_11__15_carry__0_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(12),
      I1 => Q(13),
      O => \CODE_11__15_carry__0_i_2__1_n_0\
    );
\CODE_11__15_carry__0_i_3__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(10),
      I1 => Q(11),
      O => \CODE_11__15_carry__0_i_3__1_n_0\
    );
\CODE_11__15_carry__0_i_4__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(8),
      I1 => Q(9),
      O => \CODE_11__15_carry__0_i_4__1_n_0\
    );
\CODE_11__15_carry__0_i_5__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(15),
      I1 => Q(14),
      O => \CODE_11__15_carry__0_i_5__1_n_0\
    );
\CODE_11__15_carry__0_i_6__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(13),
      I1 => Q(12),
      O => \CODE_11__15_carry__0_i_6__1_n_0\
    );
\CODE_11__15_carry__0_i_7__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(11),
      I1 => Q(10),
      O => \CODE_11__15_carry__0_i_7__1_n_0\
    );
\CODE_11__15_carry__0_i_8__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(9),
      I1 => Q(8),
      O => \CODE_11__15_carry__0_i_8__1_n_0\
    );
\CODE_11__15_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \CODE_11__15_carry__0_n_0\,
      CO(3) => \CODE_11__15_carry__1_n_0\,
      CO(2) => \CODE_11__15_carry__1_n_1\,
      CO(1) => \CODE_11__15_carry__1_n_2\,
      CO(0) => \CODE_11__15_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \CODE_11__15_carry__1_i_1__1_n_0\,
      DI(2) => \CODE_11__15_carry__1_i_2__1_n_0\,
      DI(1) => \CODE_11__15_carry__1_i_3__1_n_0\,
      DI(0) => \CODE_11__15_carry__1_i_4__1_n_0\,
      O(3 downto 0) => \NLW_CODE_11__15_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \CODE_11__15_carry__1_i_5__1_n_0\,
      S(2) => \CODE_11__15_carry__1_i_6__1_n_0\,
      S(1) => \CODE_11__15_carry__1_i_7__1_n_0\,
      S(0) => \CODE_11__15_carry__1_i_8__1_n_0\
    );
\CODE_11__15_carry__1_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(22),
      I1 => Q(23),
      O => \CODE_11__15_carry__1_i_1__1_n_0\
    );
\CODE_11__15_carry__1_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(20),
      I1 => Q(21),
      O => \CODE_11__15_carry__1_i_2__1_n_0\
    );
\CODE_11__15_carry__1_i_3__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(18),
      I1 => Q(19),
      O => \CODE_11__15_carry__1_i_3__1_n_0\
    );
\CODE_11__15_carry__1_i_4__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(16),
      I1 => Q(17),
      O => \CODE_11__15_carry__1_i_4__1_n_0\
    );
\CODE_11__15_carry__1_i_5__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(23),
      I1 => Q(22),
      O => \CODE_11__15_carry__1_i_5__1_n_0\
    );
\CODE_11__15_carry__1_i_6__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(21),
      I1 => Q(20),
      O => \CODE_11__15_carry__1_i_6__1_n_0\
    );
\CODE_11__15_carry__1_i_7__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(19),
      I1 => Q(18),
      O => \CODE_11__15_carry__1_i_7__1_n_0\
    );
\CODE_11__15_carry__1_i_8__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(17),
      I1 => Q(16),
      O => \CODE_11__15_carry__1_i_8__1_n_0\
    );
\CODE_11__15_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \CODE_11__15_carry__1_n_0\,
      CO(3) => \CODE_11__15_carry__2_n_0\,
      CO(2) => \CODE_11__15_carry__2_n_1\,
      CO(1) => \CODE_11__15_carry__2_n_2\,
      CO(0) => \CODE_11__15_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \CODE_11__15_carry__2_i_1__1_n_0\,
      DI(2) => \CODE_11__15_carry__2_i_2__1_n_0\,
      DI(1) => \CODE_11__15_carry__2_i_3__1_n_0\,
      DI(0) => \CODE_11__15_carry__2_i_4__1_n_0\,
      O(3 downto 0) => \NLW_CODE_11__15_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \CODE_11__15_carry__2_i_5__1_n_0\,
      S(2) => \CODE_11__15_carry__2_i_6__1_n_0\,
      S(1) => \CODE_11__15_carry__2_i_7__1_n_0\,
      S(0) => \CODE_11__15_carry__2_i_8__1_n_0\
    );
\CODE_11__15_carry__2_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(30),
      I1 => Q(31),
      O => \CODE_11__15_carry__2_i_1__1_n_0\
    );
\CODE_11__15_carry__2_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(28),
      I1 => Q(29),
      O => \CODE_11__15_carry__2_i_2__1_n_0\
    );
\CODE_11__15_carry__2_i_3__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(26),
      I1 => Q(27),
      O => \CODE_11__15_carry__2_i_3__1_n_0\
    );
\CODE_11__15_carry__2_i_4__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(24),
      I1 => Q(25),
      O => \CODE_11__15_carry__2_i_4__1_n_0\
    );
\CODE_11__15_carry__2_i_5__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(31),
      I1 => Q(30),
      O => \CODE_11__15_carry__2_i_5__1_n_0\
    );
\CODE_11__15_carry__2_i_6__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(29),
      I1 => Q(28),
      O => \CODE_11__15_carry__2_i_6__1_n_0\
    );
\CODE_11__15_carry__2_i_7__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(27),
      I1 => Q(26),
      O => \CODE_11__15_carry__2_i_7__1_n_0\
    );
\CODE_11__15_carry__2_i_8__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(25),
      I1 => Q(24),
      O => \CODE_11__15_carry__2_i_8__1_n_0\
    );
\CODE_11__15_carry_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(6),
      I1 => Q(7),
      O => \CODE_11__15_carry_i_1__1_n_0\
    );
\CODE_11__15_carry_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(4),
      I1 => Q(5),
      O => \CODE_11__15_carry_i_2__1_n_0\
    );
\CODE_11__15_carry_i_3__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(2),
      I1 => Q(3),
      O => \CODE_11__15_carry_i_3__1_n_0\
    );
\CODE_11__15_carry_i_4__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      O => \CODE_11__15_carry_i_4__1_n_0\
    );
\CODE_11__15_carry_i_5__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(7),
      I1 => Q(6),
      O => \CODE_11__15_carry_i_5__1_n_0\
    );
\CODE_11__15_carry_i_6__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(5),
      I1 => Q(4),
      O => \CODE_11__15_carry_i_6__1_n_0\
    );
\CODE_11__15_carry_i_7__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(3),
      I1 => Q(2),
      O => \CODE_11__15_carry_i_7__1_n_0\
    );
\CODE_11__15_carry_i_8__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      O => \CODE_11__15_carry_i_8__1_n_0\
    );
CODE_11_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => CODE_11_carry_n_0,
      CO(2) => CODE_11_carry_n_1,
      CO(1) => CODE_11_carry_n_2,
      CO(0) => CODE_11_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CODE_11_carry_O_UNCONNECTED(3 downto 0),
      S(3) => \CODE_11_carry_i_1__1_n_0\,
      S(2) => \CODE_11_carry_i_2__1_n_0\,
      S(1) => \CODE_11_carry_i_3__1_n_0\,
      S(0) => \CODE_11_carry_i_4__1_n_0\
    );
\CODE_11_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => CODE_11_carry_n_0,
      CO(3) => \CODE_11_carry__0_n_0\,
      CO(2) => \CODE_11_carry__0_n_1\,
      CO(1) => \CODE_11_carry__0_n_2\,
      CO(0) => \CODE_11_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_CODE_11_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \CODE_11_carry__0_i_1__1_n_0\,
      S(2) => \CODE_11_carry__0_i_2__1_n_0\,
      S(1) => \CODE_11_carry__0_i_3__1_n_0\,
      S(0) => \CODE_11_carry__0_i_4__1_n_0\
    );
\CODE_11_carry__0_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(15),
      I1 => Q(14),
      O => \CODE_11_carry__0_i_1__1_n_0\
    );
\CODE_11_carry__0_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(13),
      I1 => Q(12),
      O => \CODE_11_carry__0_i_2__1_n_0\
    );
\CODE_11_carry__0_i_3__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(11),
      I1 => Q(10),
      O => \CODE_11_carry__0_i_3__1_n_0\
    );
\CODE_11_carry__0_i_4__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(9),
      I1 => Q(8),
      O => \CODE_11_carry__0_i_4__1_n_0\
    );
\CODE_11_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \CODE_11_carry__0_n_0\,
      CO(3) => \CODE_11_carry__1_n_0\,
      CO(2) => \CODE_11_carry__1_n_1\,
      CO(1) => \CODE_11_carry__1_n_2\,
      CO(0) => \CODE_11_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_CODE_11_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \CODE_11_carry__1_i_1__1_n_0\,
      S(2) => \CODE_11_carry__1_i_2__1_n_0\,
      S(1) => \CODE_11_carry__1_i_3__1_n_0\,
      S(0) => \CODE_11_carry__1_i_4__1_n_0\
    );
\CODE_11_carry__1_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(23),
      I1 => Q(22),
      O => \CODE_11_carry__1_i_1__1_n_0\
    );
\CODE_11_carry__1_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(21),
      I1 => Q(20),
      O => \CODE_11_carry__1_i_2__1_n_0\
    );
\CODE_11_carry__1_i_3__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(19),
      I1 => Q(18),
      O => \CODE_11_carry__1_i_3__1_n_0\
    );
\CODE_11_carry__1_i_4__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(17),
      I1 => Q(16),
      O => \CODE_11_carry__1_i_4__1_n_0\
    );
\CODE_11_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \CODE_11_carry__1_n_0\,
      CO(3) => \CODE_11_carry__2_n_0\,
      CO(2) => \CODE_11_carry__2_n_1\,
      CO(1) => \CODE_11_carry__2_n_2\,
      CO(0) => \CODE_11_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \CODE_11_carry__2_i_1__1_n_0\,
      DI(2) => \CODE_11_carry__2_i_2__1_n_0\,
      DI(1) => \CODE_11_carry__2_i_3__1_n_0\,
      DI(0) => \CODE_11_carry__2_i_4__1_n_0\,
      O(3 downto 0) => \NLW_CODE_11_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \CODE_11_carry__2_i_5__1_n_0\,
      S(2) => \CODE_11_carry__2_i_6__1_n_0\,
      S(1) => \CODE_11_carry__2_i_7__1_n_0\,
      S(0) => \CODE_11_carry__2_i_8__1_n_0\
    );
\CODE_11_carry__2_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(31),
      I1 => Q(30),
      O => \CODE_11_carry__2_i_1__1_n_0\
    );
\CODE_11_carry__2_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => Q(28),
      I1 => Q(29),
      O => \CODE_11_carry__2_i_2__1_n_0\
    );
\CODE_11_carry__2_i_3__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => Q(26),
      I1 => Q(27),
      O => \CODE_11_carry__2_i_3__1_n_0\
    );
\CODE_11_carry__2_i_4__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => Q(24),
      I1 => Q(25),
      O => \CODE_11_carry__2_i_4__1_n_0\
    );
\CODE_11_carry__2_i_5__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(31),
      I1 => Q(30),
      O => \CODE_11_carry__2_i_5__1_n_0\
    );
\CODE_11_carry__2_i_6__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(29),
      I1 => Q(28),
      O => \CODE_11_carry__2_i_6__1_n_0\
    );
\CODE_11_carry__2_i_7__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(27),
      I1 => Q(26),
      O => \CODE_11_carry__2_i_7__1_n_0\
    );
\CODE_11_carry__2_i_8__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(25),
      I1 => Q(24),
      O => \CODE_11_carry__2_i_8__1_n_0\
    );
\CODE_11_carry_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(7),
      I1 => Q(6),
      O => \CODE_11_carry_i_1__1_n_0\
    );
\CODE_11_carry_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(5),
      I1 => Q(4),
      O => \CODE_11_carry_i_2__1_n_0\
    );
\CODE_11_carry_i_3__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(3),
      I1 => Q(2),
      O => \CODE_11_carry_i_3__1_n_0\
    );
\CODE_11_carry_i_4__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      O => \CODE_11_carry_i_4__1_n_0\
    );
\CODE_1[0]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1F10"
    )
        port map (
      I0 => \CODE_1_reg[1]_i_3__1_n_0\,
      I1 => \CODE_1[1]_i_2__1_n_0\,
      I2 => \CODE_11__15_carry__2_n_0\,
      I3 => \CODE_11_carry__2_n_0\,
      O => \CODE_1[0]_i_1__1_n_0\
    );
\CODE_1[1]_i_11__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(30),
      I1 => Q(31),
      O => \CODE_1[1]_i_11__2_n_0\
    );
\CODE_1[1]_i_12__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(28),
      I1 => Q(29),
      O => \CODE_1[1]_i_12__2_n_0\
    );
\CODE_1[1]_i_13__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(26),
      I1 => Q(27),
      O => \CODE_1[1]_i_13__2_n_0\
    );
\CODE_1[1]_i_14__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(31),
      I1 => Q(30),
      O => \CODE_1[1]_i_14__2_n_0\
    );
\CODE_1[1]_i_15__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(29),
      I1 => Q(28),
      O => \CODE_1[1]_i_15__2_n_0\
    );
\CODE_1[1]_i_16__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(27),
      I1 => Q(26),
      O => \CODE_1[1]_i_16__2_n_0\
    );
\CODE_1[1]_i_17__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(24),
      I1 => Q(25),
      O => \CODE_1[1]_i_17__1_n_0\
    );
\CODE_1[1]_i_18__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000200"
    )
        port map (
      I0 => \CODE_1[1]_i_33__2_n_0\,
      I1 => Q(29),
      I2 => Q(28),
      I3 => \CODE_1[1]_i_34__2_n_0\,
      I4 => Q(27),
      I5 => Q(26),
      O => \CODE_1[1]_i_18__2_n_0\
    );
\CODE_1[1]_i_19__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(13),
      I1 => Q(12),
      O => \CODE_1[1]_i_19__2_n_0\
    );
\CODE_1[1]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \CODE_11__15_carry__2_n_0\,
      I1 => \CODE_1[1]_i_2__1_n_0\,
      I2 => \CODE_1_reg[1]_i_3__1_n_0\,
      O => \CODE_1[1]_i_1__1_n_0\
    );
\CODE_1[1]_i_20__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(21),
      I1 => Q(20),
      O => \CODE_1[1]_i_20__2_n_0\
    );
\CODE_1[1]_i_21__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      O => \CODE_1[1]_i_21__2_n_0\
    );
\CODE_1[1]_i_22__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(9),
      I1 => Q(8),
      O => \CODE_1[1]_i_22__2_n_0\
    );
\CODE_1[1]_i_23__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(19),
      I1 => Q(18),
      O => \CODE_1[1]_i_23__2_n_0\
    );
\CODE_1[1]_i_25__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(22),
      I1 => Q(23),
      O => \CODE_1[1]_i_25__2_n_0\
    );
\CODE_1[1]_i_26__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(20),
      I1 => Q(21),
      O => \CODE_1[1]_i_26__2_n_0\
    );
\CODE_1[1]_i_27__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(18),
      I1 => Q(19),
      O => \CODE_1[1]_i_27__2_n_0\
    );
\CODE_1[1]_i_28__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(16),
      I1 => Q(17),
      O => \CODE_1[1]_i_28__2_n_0\
    );
\CODE_1[1]_i_29__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(23),
      I1 => Q(22),
      O => \CODE_1[1]_i_29__1_n_0\
    );
\CODE_1[1]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => \CODE_1[1]_i_4__2_n_0\,
      I1 => \CODE_1[1]_i_5__2_n_0\,
      I2 => \CODE_1[1]_i_6__2_n_0\,
      I3 => \CODE_1[1]_i_7__2_n_0\,
      I4 => \CODE_1[1]_i_8__2_n_0\,
      I5 => \CODE_1[1]_i_9__0_n_0\,
      O => \CODE_1[1]_i_2__1_n_0\
    );
\CODE_1[1]_i_30__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(21),
      I1 => Q(20),
      O => \CODE_1[1]_i_30__1_n_0\
    );
\CODE_1[1]_i_31__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(19),
      I1 => Q(18),
      O => \CODE_1[1]_i_31__2_n_0\
    );
\CODE_1[1]_i_32__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(17),
      I1 => Q(16),
      O => \CODE_1[1]_i_32__1_n_0\
    );
\CODE_1[1]_i_33__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(17),
      I1 => Q(16),
      O => \CODE_1[1]_i_33__2_n_0\
    );
\CODE_1[1]_i_34__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(7),
      I1 => Q(6),
      O => \CODE_1[1]_i_34__2_n_0\
    );
\CODE_1[1]_i_36__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(14),
      I1 => Q(15),
      O => \CODE_1[1]_i_36__2_n_0\
    );
\CODE_1[1]_i_37__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(12),
      I1 => Q(13),
      O => \CODE_1[1]_i_37__2_n_0\
    );
\CODE_1[1]_i_38__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(10),
      I1 => Q(11),
      O => \CODE_1[1]_i_38__2_n_0\
    );
\CODE_1[1]_i_39__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(8),
      I1 => Q(9),
      O => \CODE_1[1]_i_39__2_n_0\
    );
\CODE_1[1]_i_40__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(15),
      I1 => Q(14),
      O => \CODE_1[1]_i_40__1_n_0\
    );
\CODE_1[1]_i_41__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(13),
      I1 => Q(12),
      O => \CODE_1[1]_i_41__1_n_0\
    );
\CODE_1[1]_i_42__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(11),
      I1 => Q(10),
      O => \CODE_1[1]_i_42__1_n_0\
    );
\CODE_1[1]_i_43__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(9),
      I1 => Q(8),
      O => \CODE_1[1]_i_43__1_n_0\
    );
\CODE_1[1]_i_44__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(6),
      I1 => Q(7),
      O => \CODE_1[1]_i_44__2_n_0\
    );
\CODE_1[1]_i_45__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(4),
      I1 => Q(5),
      O => \CODE_1[1]_i_45__2_n_0\
    );
\CODE_1[1]_i_46__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(2),
      I1 => Q(3),
      O => \CODE_1[1]_i_46__2_n_0\
    );
\CODE_1[1]_i_47__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      O => \CODE_1[1]_i_47__2_n_0\
    );
\CODE_1[1]_i_48__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(7),
      I1 => Q(6),
      O => \CODE_1[1]_i_48__1_n_0\
    );
\CODE_1[1]_i_49__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(5),
      I1 => Q(4),
      O => \CODE_1[1]_i_49__0_n_0\
    );
\CODE_1[1]_i_4__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0200000000000000"
    )
        port map (
      I0 => \CODE_1[1]_i_18__2_n_0\,
      I1 => Q(30),
      I2 => Q(31),
      I3 => \CODE_1[1]_i_19__2_n_0\,
      I4 => \CODE_1[1]_i_20__2_n_0\,
      I5 => \CODE_1[1]_i_21__2_n_0\,
      O => \CODE_1[1]_i_4__2_n_0\
    );
\CODE_1[1]_i_50__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(3),
      I1 => Q(2),
      O => \CODE_1[1]_i_50__1_n_0\
    );
\CODE_1[1]_i_51__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      O => \CODE_1[1]_i_51__1_n_0\
    );
\CODE_1[1]_i_5__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(3),
      I1 => Q(2),
      O => \CODE_1[1]_i_5__2_n_0\
    );
\CODE_1[1]_i_6__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(15),
      I1 => Q(14),
      O => \CODE_1[1]_i_6__2_n_0\
    );
\CODE_1[1]_i_7__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(11),
      I1 => Q(10),
      O => \CODE_1[1]_i_7__2_n_0\
    );
\CODE_1[1]_i_8__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(23),
      I1 => Q(22),
      O => \CODE_1[1]_i_8__2_n_0\
    );
\CODE_1[1]_i_9__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFFFFFFFFFF"
    )
        port map (
      I0 => Q(5),
      I1 => Q(4),
      I2 => Q(25),
      I3 => Q(24),
      I4 => \CODE_1[1]_i_22__2_n_0\,
      I5 => \CODE_1[1]_i_23__2_n_0\,
      O => \CODE_1[1]_i_9__0_n_0\
    );
\CODE_1[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \CODE_11__15_carry__2_n_0\,
      I1 => \CODE_11_carry__2_n_0\,
      O => \CODE_1[2]_i_2_n_0\
    );
\CODE_1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      D => \CODE_1[0]_i_1__1_n_0\,
      Q => \CODE_1_reg_n_0_[0]\,
      R => '0'
    );
\CODE_1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      D => \CODE_1[1]_i_1__1_n_0\,
      Q => \CODE_1_reg_n_0_[1]\,
      R => '0'
    );
\CODE_1_reg[1]_i_10__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \CODE_1_reg[1]_i_24__1_n_0\,
      CO(3) => \CODE_1_reg[1]_i_10__1_n_0\,
      CO(2) => \CODE_1_reg[1]_i_10__1_n_1\,
      CO(1) => \CODE_1_reg[1]_i_10__1_n_2\,
      CO(0) => \CODE_1_reg[1]_i_10__1_n_3\,
      CYINIT => '0',
      DI(3) => \CODE_1[1]_i_25__2_n_0\,
      DI(2) => \CODE_1[1]_i_26__2_n_0\,
      DI(1) => \CODE_1[1]_i_27__2_n_0\,
      DI(0) => \CODE_1[1]_i_28__2_n_0\,
      O(3 downto 0) => \NLW_CODE_1_reg[1]_i_10__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \CODE_1[1]_i_29__1_n_0\,
      S(2) => \CODE_1[1]_i_30__1_n_0\,
      S(1) => \CODE_1[1]_i_31__2_n_0\,
      S(0) => \CODE_1[1]_i_32__1_n_0\
    );
\CODE_1_reg[1]_i_24__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \CODE_1_reg[1]_i_35__1_n_0\,
      CO(3) => \CODE_1_reg[1]_i_24__1_n_0\,
      CO(2) => \CODE_1_reg[1]_i_24__1_n_1\,
      CO(1) => \CODE_1_reg[1]_i_24__1_n_2\,
      CO(0) => \CODE_1_reg[1]_i_24__1_n_3\,
      CYINIT => '0',
      DI(3) => \CODE_1[1]_i_36__2_n_0\,
      DI(2) => \CODE_1[1]_i_37__2_n_0\,
      DI(1) => \CODE_1[1]_i_38__2_n_0\,
      DI(0) => \CODE_1[1]_i_39__2_n_0\,
      O(3 downto 0) => \NLW_CODE_1_reg[1]_i_24__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \CODE_1[1]_i_40__1_n_0\,
      S(2) => \CODE_1[1]_i_41__1_n_0\,
      S(1) => \CODE_1[1]_i_42__1_n_0\,
      S(0) => \CODE_1[1]_i_43__1_n_0\
    );
\CODE_1_reg[1]_i_35__1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \CODE_1_reg[1]_i_35__1_n_0\,
      CO(2) => \CODE_1_reg[1]_i_35__1_n_1\,
      CO(1) => \CODE_1_reg[1]_i_35__1_n_2\,
      CO(0) => \CODE_1_reg[1]_i_35__1_n_3\,
      CYINIT => '1',
      DI(3) => \CODE_1[1]_i_44__2_n_0\,
      DI(2) => \CODE_1[1]_i_45__2_n_0\,
      DI(1) => \CODE_1[1]_i_46__2_n_0\,
      DI(0) => \CODE_1[1]_i_47__2_n_0\,
      O(3 downto 0) => \NLW_CODE_1_reg[1]_i_35__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \CODE_1[1]_i_48__1_n_0\,
      S(2) => \CODE_1[1]_i_49__0_n_0\,
      S(1) => \CODE_1[1]_i_50__1_n_0\,
      S(0) => \CODE_1[1]_i_51__1_n_0\
    );
\CODE_1_reg[1]_i_3__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \CODE_1_reg[1]_i_10__1_n_0\,
      CO(3) => \CODE_1_reg[1]_i_3__1_n_0\,
      CO(2) => \CODE_1_reg[1]_i_3__1_n_1\,
      CO(1) => \CODE_1_reg[1]_i_3__1_n_2\,
      CO(0) => \CODE_1_reg[1]_i_3__1_n_3\,
      CYINIT => '0',
      DI(3) => \CODE_1[1]_i_11__2_n_0\,
      DI(2) => \CODE_1[1]_i_12__2_n_0\,
      DI(1) => \CODE_1[1]_i_13__2_n_0\,
      DI(0) => Q(25),
      O(3 downto 0) => \NLW_CODE_1_reg[1]_i_3__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \CODE_1[1]_i_14__2_n_0\,
      S(2) => \CODE_1[1]_i_15__2_n_0\,
      S(1) => \CODE_1[1]_i_16__2_n_0\,
      S(0) => \CODE_1[1]_i_17__1_n_0\
    );
\CODE_1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      D => \CODE_1[2]_i_2_n_0\,
      Q => \CODE_1_reg_n_0_[2]\,
      R => '0'
    );
\CODE_2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      D => \CODE_1_reg_n_0_[0]\,
      Q => \CODE_2_reg_n_0_[0]\,
      R => '0'
    );
\CODE_2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      D => \CODE_1_reg_n_0_[1]\,
      Q => \CODE_2_reg_n_0_[1]\,
      R => '0'
    );
\CODE_2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      D => \CODE_1_reg_n_0_[2]\,
      Q => \CODE_2_reg_n_0_[2]\,
      R => '0'
    );
\latch_hidden_layer[2][0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"223F"
    )
        port map (
      I0 => \CODE_2_reg_n_0_[0]\,
      I1 => tmp2_reg_n_84,
      I2 => \CODE_2_reg_n_0_[2]\,
      I3 => \CODE_2_reg_n_0_[1]\,
      O => D(0)
    );
\latch_hidden_layer[2][10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5053ECA3"
    )
        port map (
      I0 => \latch_hidden_layer[2][11]_i_4_n_0\,
      I1 => \CODE_2_reg_n_0_[1]\,
      I2 => \CODE_2_reg_n_0_[2]\,
      I3 => \CODE_2_reg_n_0_[0]\,
      I4 => tmp2_reg_n_74,
      O => D(10)
    );
\latch_hidden_layer[2][11]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FF70"
    )
        port map (
      I0 => \latch_hidden_layer[2][11]_i_4_n_0\,
      I1 => tmp2_reg_n_74,
      I2 => \CODE_2_reg_n_0_[2]\,
      I3 => \CODE_2_reg_n_0_[0]\,
      I4 => \CODE_2_reg_n_0_[1]\,
      O => D(11)
    );
\latch_hidden_layer[2][11]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => tmp2_reg_n_75,
      I1 => tmp2_reg_n_77,
      I2 => \latch_hidden_layer[2][7]_i_2_n_0\,
      I3 => tmp2_reg_n_78,
      I4 => tmp2_reg_n_76,
      O => \latch_hidden_layer[2][11]_i_4_n_0\
    );
\latch_hidden_layer[2][1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5053ECA3"
    )
        port map (
      I0 => tmp2_reg_n_84,
      I1 => \CODE_2_reg_n_0_[1]\,
      I2 => \CODE_2_reg_n_0_[2]\,
      I3 => \CODE_2_reg_n_0_[0]\,
      I4 => tmp2_reg_n_83,
      O => D(1)
    );
\latch_hidden_layer[2][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7700770FF8F0880F"
    )
        port map (
      I0 => tmp2_reg_n_84,
      I1 => tmp2_reg_n_83,
      I2 => \CODE_2_reg_n_0_[1]\,
      I3 => \CODE_2_reg_n_0_[2]\,
      I4 => \CODE_2_reg_n_0_[0]\,
      I5 => tmp2_reg_n_82,
      O => D(2)
    );
\latch_hidden_layer[2][3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5053ECA3"
    )
        port map (
      I0 => \latch_hidden_layer[2][3]_i_2_n_0\,
      I1 => \CODE_2_reg_n_0_[1]\,
      I2 => \CODE_2_reg_n_0_[2]\,
      I3 => \CODE_2_reg_n_0_[0]\,
      I4 => tmp2_reg_n_81,
      O => D(3)
    );
\latch_hidden_layer[2][3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => tmp2_reg_n_82,
      I1 => tmp2_reg_n_84,
      I2 => tmp2_reg_n_83,
      O => \latch_hidden_layer[2][3]_i_2_n_0\
    );
\latch_hidden_layer[2][4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5053ECA3"
    )
        port map (
      I0 => \latch_hidden_layer[2][4]_i_2_n_0\,
      I1 => \CODE_2_reg_n_0_[1]\,
      I2 => \CODE_2_reg_n_0_[2]\,
      I3 => \CODE_2_reg_n_0_[0]\,
      I4 => tmp2_reg_n_80,
      O => D(4)
    );
\latch_hidden_layer[2][4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => tmp2_reg_n_81,
      I1 => tmp2_reg_n_83,
      I2 => tmp2_reg_n_84,
      I3 => tmp2_reg_n_82,
      O => \latch_hidden_layer[2][4]_i_2_n_0\
    );
\latch_hidden_layer[2][5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5053ECA3"
    )
        port map (
      I0 => \latch_hidden_layer[2][5]_i_2_n_0\,
      I1 => \CODE_2_reg_n_0_[1]\,
      I2 => \CODE_2_reg_n_0_[2]\,
      I3 => \CODE_2_reg_n_0_[0]\,
      I4 => tmp2_reg_n_79,
      O => D(5)
    );
\latch_hidden_layer[2][5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => tmp2_reg_n_80,
      I1 => tmp2_reg_n_82,
      I2 => tmp2_reg_n_84,
      I3 => tmp2_reg_n_83,
      I4 => tmp2_reg_n_81,
      O => \latch_hidden_layer[2][5]_i_2_n_0\
    );
\latch_hidden_layer[2][6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5053ECA3"
    )
        port map (
      I0 => \latch_hidden_layer[2][7]_i_2_n_0\,
      I1 => \CODE_2_reg_n_0_[1]\,
      I2 => \CODE_2_reg_n_0_[2]\,
      I3 => \CODE_2_reg_n_0_[0]\,
      I4 => tmp2_reg_n_78,
      O => D(6)
    );
\latch_hidden_layer[2][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7700770FF8F0880F"
    )
        port map (
      I0 => \latch_hidden_layer[2][7]_i_2_n_0\,
      I1 => tmp2_reg_n_78,
      I2 => \CODE_2_reg_n_0_[1]\,
      I3 => \CODE_2_reg_n_0_[2]\,
      I4 => \CODE_2_reg_n_0_[0]\,
      I5 => tmp2_reg_n_77,
      O => D(7)
    );
\latch_hidden_layer[2][7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => tmp2_reg_n_79,
      I1 => tmp2_reg_n_81,
      I2 => tmp2_reg_n_83,
      I3 => tmp2_reg_n_84,
      I4 => tmp2_reg_n_82,
      I5 => tmp2_reg_n_80,
      O => \latch_hidden_layer[2][7]_i_2_n_0\
    );
\latch_hidden_layer[2][8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5053ECA3"
    )
        port map (
      I0 => \latch_hidden_layer[2][8]_i_2_n_0\,
      I1 => \CODE_2_reg_n_0_[1]\,
      I2 => \CODE_2_reg_n_0_[2]\,
      I3 => \CODE_2_reg_n_0_[0]\,
      I4 => tmp2_reg_n_76,
      O => D(8)
    );
\latch_hidden_layer[2][8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => tmp2_reg_n_77,
      I1 => \latch_hidden_layer[2][7]_i_2_n_0\,
      I2 => tmp2_reg_n_78,
      O => \latch_hidden_layer[2][8]_i_2_n_0\
    );
\latch_hidden_layer[2][9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5053ECA3"
    )
        port map (
      I0 => \latch_hidden_layer[2][9]_i_2_n_0\,
      I1 => \CODE_2_reg_n_0_[1]\,
      I2 => \CODE_2_reg_n_0_[2]\,
      I3 => \CODE_2_reg_n_0_[0]\,
      I4 => tmp2_reg_n_75,
      O => D(9)
    );
\latch_hidden_layer[2][9]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => tmp2_reg_n_76,
      I1 => tmp2_reg_n_78,
      I2 => \latch_hidden_layer[2][7]_i_2_n_0\,
      I3 => tmp2_reg_n_77,
      O => \latch_hidden_layer[2][9]_i_2_n_0\
    );
tmp2_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 16) => B"00000000000000",
      A(15) => tmp2_reg_i_1_n_0,
      A(14) => tmp2_reg_i_2_n_0,
      A(13) => tmp2_reg_i_3_n_0,
      A(12) => tmp2_reg_i_4_n_0,
      A(11) => tmp2_reg_i_5_n_0,
      A(10) => tmp2_reg_i_6_n_0,
      A(9) => tmp2_reg_i_7_n_0,
      A(8) => tmp2_reg_i_8_n_0,
      A(7) => tmp2_reg_i_9_n_0,
      A(6) => tmp2_reg_i_10_n_0,
      A(5) => tmp2_reg_i_11_n_0,
      A(4) => tmp2_reg_i_12_n_0,
      A(3) => tmp2_reg_i_13_n_0,
      A(2) => tmp2_reg_i_14_n_0,
      A(1) => tmp2_reg_i_15_n_0,
      A(0) => tmp2_reg_i_16_n_0,
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_tmp2_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 16) => B"00",
      B(15) => tmp2_reg_i_1_n_0,
      B(14) => tmp2_reg_i_2_n_0,
      B(13) => tmp2_reg_i_3_n_0,
      B(12) => tmp2_reg_i_4_n_0,
      B(11) => tmp2_reg_i_5_n_0,
      B(10) => tmp2_reg_i_6_n_0,
      B(9) => tmp2_reg_i_7_n_0,
      B(8) => tmp2_reg_i_8_n_0,
      B(7) => tmp2_reg_i_9_n_0,
      B(6) => tmp2_reg_i_10_n_0,
      B(5) => tmp2_reg_i_11_n_0,
      B(4) => tmp2_reg_i_12_n_0,
      B(3) => tmp2_reg_i_13_n_0,
      B(2) => tmp2_reg_i_14_n_0,
      B(1) => tmp2_reg_i_15_n_0,
      B(0) => tmp2_reg_i_16_n_0,
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_tmp2_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_tmp2_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_tmp2_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => E(0),
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => E(0),
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => E(0),
      CEP => '0',
      CLK => clk_IBUF_BUFG,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_tmp2_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_tmp2_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 32) => NLW_tmp2_reg_P_UNCONNECTED(47 downto 32),
      P(31) => tmp2_reg_n_74,
      P(30) => tmp2_reg_n_75,
      P(29) => tmp2_reg_n_76,
      P(28) => tmp2_reg_n_77,
      P(27) => tmp2_reg_n_78,
      P(26) => tmp2_reg_n_79,
      P(25) => tmp2_reg_n_80,
      P(24) => tmp2_reg_n_81,
      P(23) => tmp2_reg_n_82,
      P(22) => tmp2_reg_n_83,
      P(21) => tmp2_reg_n_84,
      P(20) => tmp2_reg_n_85,
      P(19) => tmp2_reg_n_86,
      P(18) => tmp2_reg_n_87,
      P(17) => tmp2_reg_n_88,
      P(16) => tmp2_reg_n_89,
      P(15) => tmp2_reg_n_90,
      P(14) => tmp2_reg_n_91,
      P(13) => tmp2_reg_n_92,
      P(12) => tmp2_reg_n_93,
      P(11) => tmp2_reg_n_94,
      P(10) => tmp2_reg_n_95,
      P(9) => tmp2_reg_n_96,
      P(8) => tmp2_reg_n_97,
      P(7) => tmp2_reg_n_98,
      P(6) => tmp2_reg_n_99,
      P(5) => tmp2_reg_n_100,
      P(4) => tmp2_reg_n_101,
      P(3) => tmp2_reg_n_102,
      P(2) => tmp2_reg_n_103,
      P(1) => tmp2_reg_n_104,
      P(0) => tmp2_reg_n_105,
      PATTERNBDETECT => NLW_tmp2_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_tmp2_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_tmp2_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_tmp2_reg_UNDERFLOW_UNCONNECTED
    );
tmp2_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tmp2_reg_i_17_n_5,
      I1 => \CODE_11__15_carry__2_n_0\,
      I2 => Q(23),
      O => tmp2_reg_i_1_n_0
    );
tmp2_reg_i_10: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tmp2_reg_i_19_n_6,
      I1 => \CODE_11__15_carry__2_n_0\,
      I2 => Q(14),
      O => tmp2_reg_i_10_n_0
    );
tmp2_reg_i_11: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tmp2_reg_i_19_n_7,
      I1 => \CODE_11__15_carry__2_n_0\,
      I2 => Q(13),
      O => tmp2_reg_i_11_n_0
    );
tmp2_reg_i_12: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tmp2_reg_i_20_n_4,
      I1 => \CODE_11__15_carry__2_n_0\,
      I2 => Q(12),
      O => tmp2_reg_i_12_n_0
    );
tmp2_reg_i_13: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tmp2_reg_i_20_n_5,
      I1 => \CODE_11__15_carry__2_n_0\,
      I2 => Q(11),
      O => tmp2_reg_i_13_n_0
    );
tmp2_reg_i_14: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tmp2_reg_i_20_n_6,
      I1 => \CODE_11__15_carry__2_n_0\,
      I2 => Q(10),
      O => tmp2_reg_i_14_n_0
    );
tmp2_reg_i_15: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tmp2_reg_i_20_n_7,
      I1 => \CODE_11__15_carry__2_n_0\,
      I2 => Q(9),
      O => tmp2_reg_i_15_n_0
    );
tmp2_reg_i_16: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tmp2_reg_i_21_n_4,
      I1 => \CODE_11__15_carry__2_n_0\,
      I2 => Q(8),
      O => tmp2_reg_i_16_n_0
    );
tmp2_reg_i_17: unisim.vcomponents.CARRY4
     port map (
      CI => tmp2_reg_i_18_n_0,
      CO(3 downto 2) => NLW_tmp2_reg_i_17_CO_UNCONNECTED(3 downto 2),
      CO(1) => tmp2_reg_i_17_n_2,
      CO(0) => tmp2_reg_i_17_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => NLW_tmp2_reg_i_17_O_UNCONNECTED(3),
      O(2) => tmp2_reg_i_17_n_5,
      O(1) => tmp2_reg_i_17_n_6,
      O(0) => tmp2_reg_i_17_n_7,
      S(3) => '0',
      S(2) => \tmp2_reg_i_22__2_n_0\,
      S(1) => \tmp2_reg_i_23__2_n_0\,
      S(0) => \tmp2_reg_i_24__2_n_0\
    );
tmp2_reg_i_18: unisim.vcomponents.CARRY4
     port map (
      CI => tmp2_reg_i_19_n_0,
      CO(3) => tmp2_reg_i_18_n_0,
      CO(2) => tmp2_reg_i_18_n_1,
      CO(1) => tmp2_reg_i_18_n_2,
      CO(0) => tmp2_reg_i_18_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => tmp2_reg_i_18_n_4,
      O(2) => tmp2_reg_i_18_n_5,
      O(1) => tmp2_reg_i_18_n_6,
      O(0) => tmp2_reg_i_18_n_7,
      S(3) => \tmp2_reg_i_25__2_n_0\,
      S(2) => \tmp2_reg_i_26__2_n_0\,
      S(1) => \tmp2_reg_i_27__2_n_0\,
      S(0) => \tmp2_reg_i_28__2_n_0\
    );
tmp2_reg_i_19: unisim.vcomponents.CARRY4
     port map (
      CI => tmp2_reg_i_20_n_0,
      CO(3) => tmp2_reg_i_19_n_0,
      CO(2) => tmp2_reg_i_19_n_1,
      CO(1) => tmp2_reg_i_19_n_2,
      CO(0) => tmp2_reg_i_19_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => tmp2_reg_i_19_n_4,
      O(2) => tmp2_reg_i_19_n_5,
      O(1) => tmp2_reg_i_19_n_6,
      O(0) => tmp2_reg_i_19_n_7,
      S(3) => \tmp2_reg_i_29__2_n_0\,
      S(2) => \tmp2_reg_i_30__2_n_0\,
      S(1) => \tmp2_reg_i_31__2_n_0\,
      S(0) => \tmp2_reg_i_32__2_n_0\
    );
tmp2_reg_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tmp2_reg_i_17_n_6,
      I1 => \CODE_11__15_carry__2_n_0\,
      I2 => Q(22),
      O => tmp2_reg_i_2_n_0
    );
tmp2_reg_i_20: unisim.vcomponents.CARRY4
     port map (
      CI => tmp2_reg_i_21_n_0,
      CO(3) => tmp2_reg_i_20_n_0,
      CO(2) => tmp2_reg_i_20_n_1,
      CO(1) => tmp2_reg_i_20_n_2,
      CO(0) => tmp2_reg_i_20_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => tmp2_reg_i_20_n_4,
      O(2) => tmp2_reg_i_20_n_5,
      O(1) => tmp2_reg_i_20_n_6,
      O(0) => tmp2_reg_i_20_n_7,
      S(3) => \tmp2_reg_i_33__2_n_0\,
      S(2) => \tmp2_reg_i_34__2_n_0\,
      S(1) => \tmp2_reg_i_35__2_n_0\,
      S(0) => \tmp2_reg_i_36__2_n_0\
    );
tmp2_reg_i_21: unisim.vcomponents.CARRY4
     port map (
      CI => tmp2_reg_i_37_n_0,
      CO(3) => tmp2_reg_i_21_n_0,
      CO(2) => tmp2_reg_i_21_n_1,
      CO(1) => tmp2_reg_i_21_n_2,
      CO(0) => tmp2_reg_i_21_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => tmp2_reg_i_21_n_4,
      O(2 downto 0) => NLW_tmp2_reg_i_21_O_UNCONNECTED(2 downto 0),
      S(3) => \tmp2_reg_i_38__2_n_0\,
      S(2) => \tmp2_reg_i_39__2_n_0\,
      S(1) => \tmp2_reg_i_40__2_n_0\,
      S(0) => \tmp2_reg_i_41__2_n_0\
    );
\tmp2_reg_i_22__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(23),
      O => \tmp2_reg_i_22__2_n_0\
    );
\tmp2_reg_i_23__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(22),
      O => \tmp2_reg_i_23__2_n_0\
    );
\tmp2_reg_i_24__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(21),
      O => \tmp2_reg_i_24__2_n_0\
    );
\tmp2_reg_i_25__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(20),
      O => \tmp2_reg_i_25__2_n_0\
    );
\tmp2_reg_i_26__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(19),
      O => \tmp2_reg_i_26__2_n_0\
    );
\tmp2_reg_i_27__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(18),
      O => \tmp2_reg_i_27__2_n_0\
    );
\tmp2_reg_i_28__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(17),
      O => \tmp2_reg_i_28__2_n_0\
    );
\tmp2_reg_i_29__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(16),
      O => \tmp2_reg_i_29__2_n_0\
    );
tmp2_reg_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tmp2_reg_i_17_n_7,
      I1 => \CODE_11__15_carry__2_n_0\,
      I2 => Q(21),
      O => tmp2_reg_i_3_n_0
    );
\tmp2_reg_i_30__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(15),
      O => \tmp2_reg_i_30__2_n_0\
    );
\tmp2_reg_i_31__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(14),
      O => \tmp2_reg_i_31__2_n_0\
    );
\tmp2_reg_i_32__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(13),
      O => \tmp2_reg_i_32__2_n_0\
    );
\tmp2_reg_i_33__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(12),
      O => \tmp2_reg_i_33__2_n_0\
    );
\tmp2_reg_i_34__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(11),
      O => \tmp2_reg_i_34__2_n_0\
    );
\tmp2_reg_i_35__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(10),
      O => \tmp2_reg_i_35__2_n_0\
    );
\tmp2_reg_i_36__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(9),
      O => \tmp2_reg_i_36__2_n_0\
    );
tmp2_reg_i_37: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => tmp2_reg_i_37_n_0,
      CO(2) => tmp2_reg_i_37_n_1,
      CO(1) => tmp2_reg_i_37_n_2,
      CO(0) => tmp2_reg_i_37_n_3,
      CYINIT => \tmp2_reg_i_42__2_n_0\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_tmp2_reg_i_37_O_UNCONNECTED(3 downto 0),
      S(3) => \tmp2_reg_i_43__2_n_0\,
      S(2) => \tmp2_reg_i_44__2_n_0\,
      S(1) => \tmp2_reg_i_45__2_n_0\,
      S(0) => \tmp2_reg_i_46__2_n_0\
    );
\tmp2_reg_i_38__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(8),
      O => \tmp2_reg_i_38__2_n_0\
    );
\tmp2_reg_i_39__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(7),
      O => \tmp2_reg_i_39__2_n_0\
    );
tmp2_reg_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tmp2_reg_i_18_n_4,
      I1 => \CODE_11__15_carry__2_n_0\,
      I2 => Q(20),
      O => tmp2_reg_i_4_n_0
    );
\tmp2_reg_i_40__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(6),
      O => \tmp2_reg_i_40__2_n_0\
    );
\tmp2_reg_i_41__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(5),
      O => \tmp2_reg_i_41__2_n_0\
    );
\tmp2_reg_i_42__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(0),
      O => \tmp2_reg_i_42__2_n_0\
    );
\tmp2_reg_i_43__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(4),
      O => \tmp2_reg_i_43__2_n_0\
    );
\tmp2_reg_i_44__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(3),
      O => \tmp2_reg_i_44__2_n_0\
    );
\tmp2_reg_i_45__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(2),
      O => \tmp2_reg_i_45__2_n_0\
    );
\tmp2_reg_i_46__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(1),
      O => \tmp2_reg_i_46__2_n_0\
    );
tmp2_reg_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tmp2_reg_i_18_n_5,
      I1 => \CODE_11__15_carry__2_n_0\,
      I2 => Q(19),
      O => tmp2_reg_i_5_n_0
    );
tmp2_reg_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tmp2_reg_i_18_n_6,
      I1 => \CODE_11__15_carry__2_n_0\,
      I2 => Q(18),
      O => tmp2_reg_i_6_n_0
    );
tmp2_reg_i_7: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tmp2_reg_i_18_n_7,
      I1 => \CODE_11__15_carry__2_n_0\,
      I2 => Q(17),
      O => tmp2_reg_i_7_n_0
    );
tmp2_reg_i_8: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tmp2_reg_i_19_n_4,
      I1 => \CODE_11__15_carry__2_n_0\,
      I2 => Q(16),
      O => tmp2_reg_i_8_n_0
    );
tmp2_reg_i_9: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tmp2_reg_i_19_n_5,
      I1 => \CODE_11__15_carry__2_n_0\,
      I2 => Q(15),
      O => tmp2_reg_i_9_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity sigmoid_2 is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    tmp2_reg_0 : out STD_LOGIC;
    tmp2_reg_1 : out STD_LOGIC;
    tmp2_reg_2 : out STD_LOGIC;
    tmp2_reg_3 : out STD_LOGIC;
    tmp2_reg_4 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 11 downto 0 );
    clk_IBUF_BUFG : in STD_LOGIC;
    \state_curr_reg[2]\ : in STD_LOGIC;
    main_state_curr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    examples_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    cnt_ex_block_outdated : in STD_LOGIC;
    \cnt_features_reg[2]\ : in STD_LOGIC;
    \cnt_features_reg[1]\ : in STD_LOGIC;
    \cnt_features_reg[0]\ : in STD_LOGIC;
    \state1_curr_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    cnt_weight1 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \nb_examples_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    examples_out : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \AXIS_in[ARESETN]\ : in STD_LOGIC;
    \sum_3_reg[0]_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of sigmoid_2 : entity is "sigmoid";
end sigmoid_2;

architecture STRUCTURE of sigmoid_2 is
  signal \CODE_11__15_carry__0_i_1__2_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry__0_i_2__2_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry__0_i_3__2_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry__0_i_4__2_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry__0_i_5__2_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry__0_i_6__2_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry__0_i_7__2_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry__0_i_8__2_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry__0_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry__0_n_1\ : STD_LOGIC;
  signal \CODE_11__15_carry__0_n_2\ : STD_LOGIC;
  signal \CODE_11__15_carry__0_n_3\ : STD_LOGIC;
  signal \CODE_11__15_carry__1_i_1__2_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry__1_i_2__2_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry__1_i_3__2_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry__1_i_4__2_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry__1_i_5__2_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry__1_i_6__2_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry__1_i_7__2_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry__1_i_8__2_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry__1_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry__1_n_1\ : STD_LOGIC;
  signal \CODE_11__15_carry__1_n_2\ : STD_LOGIC;
  signal \CODE_11__15_carry__1_n_3\ : STD_LOGIC;
  signal \CODE_11__15_carry__2_i_1__2_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry__2_i_2__2_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry__2_i_3__2_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry__2_i_4__2_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry__2_i_5__2_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry__2_i_6__2_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry__2_i_7__2_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry__2_i_8__2_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry__2_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry__2_n_1\ : STD_LOGIC;
  signal \CODE_11__15_carry__2_n_2\ : STD_LOGIC;
  signal \CODE_11__15_carry__2_n_3\ : STD_LOGIC;
  signal \CODE_11__15_carry_i_1__2_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry_i_2__2_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry_i_3__2_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry_i_4__2_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry_i_5__2_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry_i_6__2_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry_i_7__2_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry_i_8__2_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry_n_0\ : STD_LOGIC;
  signal \CODE_11__15_carry_n_1\ : STD_LOGIC;
  signal \CODE_11__15_carry_n_2\ : STD_LOGIC;
  signal \CODE_11__15_carry_n_3\ : STD_LOGIC;
  signal \CODE_11_carry__0_i_1__2_n_0\ : STD_LOGIC;
  signal \CODE_11_carry__0_i_2__2_n_0\ : STD_LOGIC;
  signal \CODE_11_carry__0_i_3__2_n_0\ : STD_LOGIC;
  signal \CODE_11_carry__0_i_4__2_n_0\ : STD_LOGIC;
  signal \CODE_11_carry__0_n_0\ : STD_LOGIC;
  signal \CODE_11_carry__0_n_1\ : STD_LOGIC;
  signal \CODE_11_carry__0_n_2\ : STD_LOGIC;
  signal \CODE_11_carry__0_n_3\ : STD_LOGIC;
  signal \CODE_11_carry__1_i_1__2_n_0\ : STD_LOGIC;
  signal \CODE_11_carry__1_i_2__2_n_0\ : STD_LOGIC;
  signal \CODE_11_carry__1_i_3__2_n_0\ : STD_LOGIC;
  signal \CODE_11_carry__1_i_4__2_n_0\ : STD_LOGIC;
  signal \CODE_11_carry__1_n_0\ : STD_LOGIC;
  signal \CODE_11_carry__1_n_1\ : STD_LOGIC;
  signal \CODE_11_carry__1_n_2\ : STD_LOGIC;
  signal \CODE_11_carry__1_n_3\ : STD_LOGIC;
  signal \CODE_11_carry__2_i_1__2_n_0\ : STD_LOGIC;
  signal \CODE_11_carry__2_i_2__2_n_0\ : STD_LOGIC;
  signal \CODE_11_carry__2_i_3__2_n_0\ : STD_LOGIC;
  signal \CODE_11_carry__2_i_4__2_n_0\ : STD_LOGIC;
  signal \CODE_11_carry__2_i_5__2_n_0\ : STD_LOGIC;
  signal \CODE_11_carry__2_i_6__2_n_0\ : STD_LOGIC;
  signal \CODE_11_carry__2_i_7__2_n_0\ : STD_LOGIC;
  signal \CODE_11_carry__2_i_8__2_n_0\ : STD_LOGIC;
  signal \CODE_11_carry__2_n_0\ : STD_LOGIC;
  signal \CODE_11_carry__2_n_1\ : STD_LOGIC;
  signal \CODE_11_carry__2_n_2\ : STD_LOGIC;
  signal \CODE_11_carry__2_n_3\ : STD_LOGIC;
  signal \CODE_11_carry_i_1__2_n_0\ : STD_LOGIC;
  signal \CODE_11_carry_i_2__2_n_0\ : STD_LOGIC;
  signal \CODE_11_carry_i_3__2_n_0\ : STD_LOGIC;
  signal \CODE_11_carry_i_4__2_n_0\ : STD_LOGIC;
  signal CODE_11_carry_n_0 : STD_LOGIC;
  signal CODE_11_carry_n_1 : STD_LOGIC;
  signal CODE_11_carry_n_2 : STD_LOGIC;
  signal CODE_11_carry_n_3 : STD_LOGIC;
  signal \CODE_1[0]_i_1__2_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_11_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_12_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_13_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_14_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_15_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_16_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_17__2_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_18_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_19_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_1__2_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_20_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_21_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_22_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_23_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_25_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_26_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_27_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_28_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_29__2_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_2__2_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_30__2_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_31_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_32__2_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_33_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_34_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_36_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_37_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_38_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_39_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_40__2_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_41__2_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_42__2_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_43__2_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_44_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_45_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_46_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_47_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_48__2_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_49__2_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_4_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_50__2_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_51__2_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_5__0_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_6_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_7_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_8_n_0\ : STD_LOGIC;
  signal \CODE_1[1]_i_9__1_n_0\ : STD_LOGIC;
  signal \CODE_1[2]_i_1__2_n_0\ : STD_LOGIC;
  signal \CODE_1_reg[1]_i_10__2_n_0\ : STD_LOGIC;
  signal \CODE_1_reg[1]_i_10__2_n_1\ : STD_LOGIC;
  signal \CODE_1_reg[1]_i_10__2_n_2\ : STD_LOGIC;
  signal \CODE_1_reg[1]_i_10__2_n_3\ : STD_LOGIC;
  signal \CODE_1_reg[1]_i_24__2_n_0\ : STD_LOGIC;
  signal \CODE_1_reg[1]_i_24__2_n_1\ : STD_LOGIC;
  signal \CODE_1_reg[1]_i_24__2_n_2\ : STD_LOGIC;
  signal \CODE_1_reg[1]_i_24__2_n_3\ : STD_LOGIC;
  signal \CODE_1_reg[1]_i_35__2_n_0\ : STD_LOGIC;
  signal \CODE_1_reg[1]_i_35__2_n_1\ : STD_LOGIC;
  signal \CODE_1_reg[1]_i_35__2_n_2\ : STD_LOGIC;
  signal \CODE_1_reg[1]_i_35__2_n_3\ : STD_LOGIC;
  signal \CODE_1_reg[1]_i_3__2_n_0\ : STD_LOGIC;
  signal \CODE_1_reg[1]_i_3__2_n_1\ : STD_LOGIC;
  signal \CODE_1_reg[1]_i_3__2_n_2\ : STD_LOGIC;
  signal \CODE_1_reg[1]_i_3__2_n_3\ : STD_LOGIC;
  signal \CODE_1_reg_n_0_[0]\ : STD_LOGIC;
  signal \CODE_1_reg_n_0_[1]\ : STD_LOGIC;
  signal \CODE_1_reg_n_0_[2]\ : STD_LOGIC;
  signal \CODE_2_reg_n_0_[0]\ : STD_LOGIC;
  signal \CODE_2_reg_n_0_[1]\ : STD_LOGIC;
  signal \CODE_2_reg_n_0_[2]\ : STD_LOGIC;
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \latch_output_layer[0][11]_i_4_n_0\ : STD_LOGIC;
  signal \latch_output_layer[0][3]_i_2_n_0\ : STD_LOGIC;
  signal \latch_output_layer[0][4]_i_2_n_0\ : STD_LOGIC;
  signal \latch_output_layer[0][5]_i_2_n_0\ : STD_LOGIC;
  signal \latch_output_layer[0][7]_i_2_n_0\ : STD_LOGIC;
  signal \latch_output_layer[0][8]_i_2_n_0\ : STD_LOGIC;
  signal \latch_output_layer[0][9]_i_2_n_0\ : STD_LOGIC;
  signal \sum_1_reg[0]0_i_54_n_0\ : STD_LOGIC;
  signal \sum_1_reg[0]0_i_55_n_0\ : STD_LOGIC;
  signal \^tmp2_reg_0\ : STD_LOGIC;
  signal \^tmp2_reg_1\ : STD_LOGIC;
  signal \^tmp2_reg_2\ : STD_LOGIC;
  signal \^tmp2_reg_3\ : STD_LOGIC;
  signal \^tmp2_reg_4\ : STD_LOGIC;
  signal \tmp2_reg_i_17__2_n_2\ : STD_LOGIC;
  signal \tmp2_reg_i_17__2_n_3\ : STD_LOGIC;
  signal \tmp2_reg_i_18__2_n_0\ : STD_LOGIC;
  signal \tmp2_reg_i_18__2_n_1\ : STD_LOGIC;
  signal \tmp2_reg_i_18__2_n_2\ : STD_LOGIC;
  signal \tmp2_reg_i_18__2_n_3\ : STD_LOGIC;
  signal \tmp2_reg_i_19__2_n_0\ : STD_LOGIC;
  signal \tmp2_reg_i_19__2_n_1\ : STD_LOGIC;
  signal \tmp2_reg_i_19__2_n_2\ : STD_LOGIC;
  signal \tmp2_reg_i_19__2_n_3\ : STD_LOGIC;
  signal \tmp2_reg_i_20__2_n_0\ : STD_LOGIC;
  signal \tmp2_reg_i_20__2_n_1\ : STD_LOGIC;
  signal \tmp2_reg_i_20__2_n_2\ : STD_LOGIC;
  signal \tmp2_reg_i_20__2_n_3\ : STD_LOGIC;
  signal \tmp2_reg_i_21__2_n_0\ : STD_LOGIC;
  signal \tmp2_reg_i_21__2_n_1\ : STD_LOGIC;
  signal \tmp2_reg_i_21__2_n_2\ : STD_LOGIC;
  signal \tmp2_reg_i_21__2_n_3\ : STD_LOGIC;
  signal tmp2_reg_i_22_n_0 : STD_LOGIC;
  signal tmp2_reg_i_23_n_0 : STD_LOGIC;
  signal tmp2_reg_i_24_n_0 : STD_LOGIC;
  signal tmp2_reg_i_25_n_0 : STD_LOGIC;
  signal tmp2_reg_i_26_n_0 : STD_LOGIC;
  signal tmp2_reg_i_27_n_0 : STD_LOGIC;
  signal tmp2_reg_i_28_n_0 : STD_LOGIC;
  signal tmp2_reg_i_29_n_0 : STD_LOGIC;
  signal tmp2_reg_i_30_n_0 : STD_LOGIC;
  signal tmp2_reg_i_31_n_0 : STD_LOGIC;
  signal tmp2_reg_i_32_n_0 : STD_LOGIC;
  signal tmp2_reg_i_33_n_0 : STD_LOGIC;
  signal tmp2_reg_i_34_n_0 : STD_LOGIC;
  signal tmp2_reg_i_35_n_0 : STD_LOGIC;
  signal tmp2_reg_i_36_n_0 : STD_LOGIC;
  signal \tmp2_reg_i_37__2_n_0\ : STD_LOGIC;
  signal \tmp2_reg_i_37__2_n_1\ : STD_LOGIC;
  signal \tmp2_reg_i_37__2_n_2\ : STD_LOGIC;
  signal \tmp2_reg_i_37__2_n_3\ : STD_LOGIC;
  signal tmp2_reg_i_38_n_0 : STD_LOGIC;
  signal tmp2_reg_i_39_n_0 : STD_LOGIC;
  signal tmp2_reg_i_40_n_0 : STD_LOGIC;
  signal tmp2_reg_i_41_n_0 : STD_LOGIC;
  signal tmp2_reg_i_42_n_0 : STD_LOGIC;
  signal tmp2_reg_i_43_n_0 : STD_LOGIC;
  signal tmp2_reg_i_44_n_0 : STD_LOGIC;
  signal tmp2_reg_i_45_n_0 : STD_LOGIC;
  signal tmp2_reg_i_46_n_0 : STD_LOGIC;
  signal tmp2_reg_n_100 : STD_LOGIC;
  signal tmp2_reg_n_101 : STD_LOGIC;
  signal tmp2_reg_n_102 : STD_LOGIC;
  signal tmp2_reg_n_103 : STD_LOGIC;
  signal tmp2_reg_n_104 : STD_LOGIC;
  signal tmp2_reg_n_105 : STD_LOGIC;
  signal tmp2_reg_n_74 : STD_LOGIC;
  signal tmp2_reg_n_75 : STD_LOGIC;
  signal tmp2_reg_n_76 : STD_LOGIC;
  signal tmp2_reg_n_77 : STD_LOGIC;
  signal tmp2_reg_n_78 : STD_LOGIC;
  signal tmp2_reg_n_79 : STD_LOGIC;
  signal tmp2_reg_n_80 : STD_LOGIC;
  signal tmp2_reg_n_81 : STD_LOGIC;
  signal tmp2_reg_n_82 : STD_LOGIC;
  signal tmp2_reg_n_83 : STD_LOGIC;
  signal tmp2_reg_n_84 : STD_LOGIC;
  signal tmp2_reg_n_85 : STD_LOGIC;
  signal tmp2_reg_n_86 : STD_LOGIC;
  signal tmp2_reg_n_87 : STD_LOGIC;
  signal tmp2_reg_n_88 : STD_LOGIC;
  signal tmp2_reg_n_89 : STD_LOGIC;
  signal tmp2_reg_n_90 : STD_LOGIC;
  signal tmp2_reg_n_91 : STD_LOGIC;
  signal tmp2_reg_n_92 : STD_LOGIC;
  signal tmp2_reg_n_93 : STD_LOGIC;
  signal tmp2_reg_n_94 : STD_LOGIC;
  signal tmp2_reg_n_95 : STD_LOGIC;
  signal tmp2_reg_n_96 : STD_LOGIC;
  signal tmp2_reg_n_97 : STD_LOGIC;
  signal tmp2_reg_n_98 : STD_LOGIC;
  signal tmp2_reg_n_99 : STD_LOGIC;
  signal var1 : STD_LOGIC_VECTOR ( 23 downto 8 );
  signal var10 : STD_LOGIC_VECTOR ( 23 downto 8 );
  signal \NLW_CODE_11__15_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CODE_11__15_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CODE_11__15_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CODE_11__15_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_CODE_11_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CODE_11_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CODE_11_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CODE_11_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CODE_1_reg[1]_i_10__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CODE_1_reg[1]_i_24__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CODE_1_reg[1]_i_35__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CODE_1_reg[1]_i_3__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_tmp2_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp2_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp2_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp2_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp2_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp2_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp2_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_tmp2_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_tmp2_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_tmp2_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 32 );
  signal NLW_tmp2_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal \NLW_tmp2_reg_i_17__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_tmp2_reg_i_17__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_tmp2_reg_i_21__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_tmp2_reg_i_37__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \CODE_1[0]_i_1__2\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \CODE_1[1]_i_1__2\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \latch_output_layer[0][0]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \latch_output_layer[0][10]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \latch_output_layer[0][11]_i_2\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \latch_output_layer[0][11]_i_4\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \latch_output_layer[0][1]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \latch_output_layer[0][4]_i_2\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \latch_output_layer[0][5]_i_2\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \latch_output_layer[0][9]_i_2\ : label is "soft_lutpair44";
begin
  E(0) <= \^e\(0);
  tmp2_reg_0 <= \^tmp2_reg_0\;
  tmp2_reg_1 <= \^tmp2_reg_1\;
  tmp2_reg_2 <= \^tmp2_reg_2\;
  tmp2_reg_3 <= \^tmp2_reg_3\;
  tmp2_reg_4 <= \^tmp2_reg_4\;
\CODE_11__15_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \CODE_11__15_carry_n_0\,
      CO(2) => \CODE_11__15_carry_n_1\,
      CO(1) => \CODE_11__15_carry_n_2\,
      CO(0) => \CODE_11__15_carry_n_3\,
      CYINIT => '1',
      DI(3) => \CODE_11__15_carry_i_1__2_n_0\,
      DI(2) => \CODE_11__15_carry_i_2__2_n_0\,
      DI(1) => \CODE_11__15_carry_i_3__2_n_0\,
      DI(0) => \CODE_11__15_carry_i_4__2_n_0\,
      O(3 downto 0) => \NLW_CODE_11__15_carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \CODE_11__15_carry_i_5__2_n_0\,
      S(2) => \CODE_11__15_carry_i_6__2_n_0\,
      S(1) => \CODE_11__15_carry_i_7__2_n_0\,
      S(0) => \CODE_11__15_carry_i_8__2_n_0\
    );
\CODE_11__15_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \CODE_11__15_carry_n_0\,
      CO(3) => \CODE_11__15_carry__0_n_0\,
      CO(2) => \CODE_11__15_carry__0_n_1\,
      CO(1) => \CODE_11__15_carry__0_n_2\,
      CO(0) => \CODE_11__15_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \CODE_11__15_carry__0_i_1__2_n_0\,
      DI(2) => \CODE_11__15_carry__0_i_2__2_n_0\,
      DI(1) => \CODE_11__15_carry__0_i_3__2_n_0\,
      DI(0) => \CODE_11__15_carry__0_i_4__2_n_0\,
      O(3 downto 0) => \NLW_CODE_11__15_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \CODE_11__15_carry__0_i_5__2_n_0\,
      S(2) => \CODE_11__15_carry__0_i_6__2_n_0\,
      S(1) => \CODE_11__15_carry__0_i_7__2_n_0\,
      S(0) => \CODE_11__15_carry__0_i_8__2_n_0\
    );
\CODE_11__15_carry__0_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \sum_3_reg[0]_0\(14),
      I1 => \sum_3_reg[0]_0\(15),
      O => \CODE_11__15_carry__0_i_1__2_n_0\
    );
\CODE_11__15_carry__0_i_2__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \sum_3_reg[0]_0\(12),
      I1 => \sum_3_reg[0]_0\(13),
      O => \CODE_11__15_carry__0_i_2__2_n_0\
    );
\CODE_11__15_carry__0_i_3__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \sum_3_reg[0]_0\(10),
      I1 => \sum_3_reg[0]_0\(11),
      O => \CODE_11__15_carry__0_i_3__2_n_0\
    );
\CODE_11__15_carry__0_i_4__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \sum_3_reg[0]_0\(8),
      I1 => \sum_3_reg[0]_0\(9),
      O => \CODE_11__15_carry__0_i_4__2_n_0\
    );
\CODE_11__15_carry__0_i_5__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sum_3_reg[0]_0\(15),
      I1 => \sum_3_reg[0]_0\(14),
      O => \CODE_11__15_carry__0_i_5__2_n_0\
    );
\CODE_11__15_carry__0_i_6__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sum_3_reg[0]_0\(13),
      I1 => \sum_3_reg[0]_0\(12),
      O => \CODE_11__15_carry__0_i_6__2_n_0\
    );
\CODE_11__15_carry__0_i_7__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sum_3_reg[0]_0\(11),
      I1 => \sum_3_reg[0]_0\(10),
      O => \CODE_11__15_carry__0_i_7__2_n_0\
    );
\CODE_11__15_carry__0_i_8__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sum_3_reg[0]_0\(9),
      I1 => \sum_3_reg[0]_0\(8),
      O => \CODE_11__15_carry__0_i_8__2_n_0\
    );
\CODE_11__15_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \CODE_11__15_carry__0_n_0\,
      CO(3) => \CODE_11__15_carry__1_n_0\,
      CO(2) => \CODE_11__15_carry__1_n_1\,
      CO(1) => \CODE_11__15_carry__1_n_2\,
      CO(0) => \CODE_11__15_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \CODE_11__15_carry__1_i_1__2_n_0\,
      DI(2) => \CODE_11__15_carry__1_i_2__2_n_0\,
      DI(1) => \CODE_11__15_carry__1_i_3__2_n_0\,
      DI(0) => \CODE_11__15_carry__1_i_4__2_n_0\,
      O(3 downto 0) => \NLW_CODE_11__15_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \CODE_11__15_carry__1_i_5__2_n_0\,
      S(2) => \CODE_11__15_carry__1_i_6__2_n_0\,
      S(1) => \CODE_11__15_carry__1_i_7__2_n_0\,
      S(0) => \CODE_11__15_carry__1_i_8__2_n_0\
    );
\CODE_11__15_carry__1_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \sum_3_reg[0]_0\(22),
      I1 => \sum_3_reg[0]_0\(23),
      O => \CODE_11__15_carry__1_i_1__2_n_0\
    );
\CODE_11__15_carry__1_i_2__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \sum_3_reg[0]_0\(20),
      I1 => \sum_3_reg[0]_0\(21),
      O => \CODE_11__15_carry__1_i_2__2_n_0\
    );
\CODE_11__15_carry__1_i_3__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \sum_3_reg[0]_0\(18),
      I1 => \sum_3_reg[0]_0\(19),
      O => \CODE_11__15_carry__1_i_3__2_n_0\
    );
\CODE_11__15_carry__1_i_4__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \sum_3_reg[0]_0\(16),
      I1 => \sum_3_reg[0]_0\(17),
      O => \CODE_11__15_carry__1_i_4__2_n_0\
    );
\CODE_11__15_carry__1_i_5__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sum_3_reg[0]_0\(23),
      I1 => \sum_3_reg[0]_0\(22),
      O => \CODE_11__15_carry__1_i_5__2_n_0\
    );
\CODE_11__15_carry__1_i_6__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sum_3_reg[0]_0\(21),
      I1 => \sum_3_reg[0]_0\(20),
      O => \CODE_11__15_carry__1_i_6__2_n_0\
    );
\CODE_11__15_carry__1_i_7__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sum_3_reg[0]_0\(19),
      I1 => \sum_3_reg[0]_0\(18),
      O => \CODE_11__15_carry__1_i_7__2_n_0\
    );
\CODE_11__15_carry__1_i_8__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sum_3_reg[0]_0\(17),
      I1 => \sum_3_reg[0]_0\(16),
      O => \CODE_11__15_carry__1_i_8__2_n_0\
    );
\CODE_11__15_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \CODE_11__15_carry__1_n_0\,
      CO(3) => \CODE_11__15_carry__2_n_0\,
      CO(2) => \CODE_11__15_carry__2_n_1\,
      CO(1) => \CODE_11__15_carry__2_n_2\,
      CO(0) => \CODE_11__15_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \CODE_11__15_carry__2_i_1__2_n_0\,
      DI(2) => \CODE_11__15_carry__2_i_2__2_n_0\,
      DI(1) => \CODE_11__15_carry__2_i_3__2_n_0\,
      DI(0) => \CODE_11__15_carry__2_i_4__2_n_0\,
      O(3 downto 0) => \NLW_CODE_11__15_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \CODE_11__15_carry__2_i_5__2_n_0\,
      S(2) => \CODE_11__15_carry__2_i_6__2_n_0\,
      S(1) => \CODE_11__15_carry__2_i_7__2_n_0\,
      S(0) => \CODE_11__15_carry__2_i_8__2_n_0\
    );
\CODE_11__15_carry__2_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \sum_3_reg[0]_0\(30),
      I1 => \sum_3_reg[0]_0\(31),
      O => \CODE_11__15_carry__2_i_1__2_n_0\
    );
\CODE_11__15_carry__2_i_2__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \sum_3_reg[0]_0\(28),
      I1 => \sum_3_reg[0]_0\(29),
      O => \CODE_11__15_carry__2_i_2__2_n_0\
    );
\CODE_11__15_carry__2_i_3__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \sum_3_reg[0]_0\(26),
      I1 => \sum_3_reg[0]_0\(27),
      O => \CODE_11__15_carry__2_i_3__2_n_0\
    );
\CODE_11__15_carry__2_i_4__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \sum_3_reg[0]_0\(24),
      I1 => \sum_3_reg[0]_0\(25),
      O => \CODE_11__15_carry__2_i_4__2_n_0\
    );
\CODE_11__15_carry__2_i_5__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sum_3_reg[0]_0\(31),
      I1 => \sum_3_reg[0]_0\(30),
      O => \CODE_11__15_carry__2_i_5__2_n_0\
    );
\CODE_11__15_carry__2_i_6__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sum_3_reg[0]_0\(29),
      I1 => \sum_3_reg[0]_0\(28),
      O => \CODE_11__15_carry__2_i_6__2_n_0\
    );
\CODE_11__15_carry__2_i_7__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sum_3_reg[0]_0\(27),
      I1 => \sum_3_reg[0]_0\(26),
      O => \CODE_11__15_carry__2_i_7__2_n_0\
    );
\CODE_11__15_carry__2_i_8__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sum_3_reg[0]_0\(25),
      I1 => \sum_3_reg[0]_0\(24),
      O => \CODE_11__15_carry__2_i_8__2_n_0\
    );
\CODE_11__15_carry_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \sum_3_reg[0]_0\(6),
      I1 => \sum_3_reg[0]_0\(7),
      O => \CODE_11__15_carry_i_1__2_n_0\
    );
\CODE_11__15_carry_i_2__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \sum_3_reg[0]_0\(4),
      I1 => \sum_3_reg[0]_0\(5),
      O => \CODE_11__15_carry_i_2__2_n_0\
    );
\CODE_11__15_carry_i_3__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \sum_3_reg[0]_0\(2),
      I1 => \sum_3_reg[0]_0\(3),
      O => \CODE_11__15_carry_i_3__2_n_0\
    );
\CODE_11__15_carry_i_4__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \sum_3_reg[0]_0\(0),
      I1 => \sum_3_reg[0]_0\(1),
      O => \CODE_11__15_carry_i_4__2_n_0\
    );
\CODE_11__15_carry_i_5__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sum_3_reg[0]_0\(7),
      I1 => \sum_3_reg[0]_0\(6),
      O => \CODE_11__15_carry_i_5__2_n_0\
    );
\CODE_11__15_carry_i_6__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sum_3_reg[0]_0\(5),
      I1 => \sum_3_reg[0]_0\(4),
      O => \CODE_11__15_carry_i_6__2_n_0\
    );
\CODE_11__15_carry_i_7__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sum_3_reg[0]_0\(3),
      I1 => \sum_3_reg[0]_0\(2),
      O => \CODE_11__15_carry_i_7__2_n_0\
    );
\CODE_11__15_carry_i_8__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sum_3_reg[0]_0\(1),
      I1 => \sum_3_reg[0]_0\(0),
      O => \CODE_11__15_carry_i_8__2_n_0\
    );
CODE_11_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => CODE_11_carry_n_0,
      CO(2) => CODE_11_carry_n_1,
      CO(1) => CODE_11_carry_n_2,
      CO(0) => CODE_11_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CODE_11_carry_O_UNCONNECTED(3 downto 0),
      S(3) => \CODE_11_carry_i_1__2_n_0\,
      S(2) => \CODE_11_carry_i_2__2_n_0\,
      S(1) => \CODE_11_carry_i_3__2_n_0\,
      S(0) => \CODE_11_carry_i_4__2_n_0\
    );
\CODE_11_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => CODE_11_carry_n_0,
      CO(3) => \CODE_11_carry__0_n_0\,
      CO(2) => \CODE_11_carry__0_n_1\,
      CO(1) => \CODE_11_carry__0_n_2\,
      CO(0) => \CODE_11_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_CODE_11_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \CODE_11_carry__0_i_1__2_n_0\,
      S(2) => \CODE_11_carry__0_i_2__2_n_0\,
      S(1) => \CODE_11_carry__0_i_3__2_n_0\,
      S(0) => \CODE_11_carry__0_i_4__2_n_0\
    );
\CODE_11_carry__0_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sum_3_reg[0]_0\(15),
      I1 => \sum_3_reg[0]_0\(14),
      O => \CODE_11_carry__0_i_1__2_n_0\
    );
\CODE_11_carry__0_i_2__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sum_3_reg[0]_0\(13),
      I1 => \sum_3_reg[0]_0\(12),
      O => \CODE_11_carry__0_i_2__2_n_0\
    );
\CODE_11_carry__0_i_3__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sum_3_reg[0]_0\(11),
      I1 => \sum_3_reg[0]_0\(10),
      O => \CODE_11_carry__0_i_3__2_n_0\
    );
\CODE_11_carry__0_i_4__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sum_3_reg[0]_0\(9),
      I1 => \sum_3_reg[0]_0\(8),
      O => \CODE_11_carry__0_i_4__2_n_0\
    );
\CODE_11_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \CODE_11_carry__0_n_0\,
      CO(3) => \CODE_11_carry__1_n_0\,
      CO(2) => \CODE_11_carry__1_n_1\,
      CO(1) => \CODE_11_carry__1_n_2\,
      CO(0) => \CODE_11_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_CODE_11_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \CODE_11_carry__1_i_1__2_n_0\,
      S(2) => \CODE_11_carry__1_i_2__2_n_0\,
      S(1) => \CODE_11_carry__1_i_3__2_n_0\,
      S(0) => \CODE_11_carry__1_i_4__2_n_0\
    );
\CODE_11_carry__1_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sum_3_reg[0]_0\(23),
      I1 => \sum_3_reg[0]_0\(22),
      O => \CODE_11_carry__1_i_1__2_n_0\
    );
\CODE_11_carry__1_i_2__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sum_3_reg[0]_0\(21),
      I1 => \sum_3_reg[0]_0\(20),
      O => \CODE_11_carry__1_i_2__2_n_0\
    );
\CODE_11_carry__1_i_3__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sum_3_reg[0]_0\(19),
      I1 => \sum_3_reg[0]_0\(18),
      O => \CODE_11_carry__1_i_3__2_n_0\
    );
\CODE_11_carry__1_i_4__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sum_3_reg[0]_0\(17),
      I1 => \sum_3_reg[0]_0\(16),
      O => \CODE_11_carry__1_i_4__2_n_0\
    );
\CODE_11_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \CODE_11_carry__1_n_0\,
      CO(3) => \CODE_11_carry__2_n_0\,
      CO(2) => \CODE_11_carry__2_n_1\,
      CO(1) => \CODE_11_carry__2_n_2\,
      CO(0) => \CODE_11_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \CODE_11_carry__2_i_1__2_n_0\,
      DI(2) => \CODE_11_carry__2_i_2__2_n_0\,
      DI(1) => \CODE_11_carry__2_i_3__2_n_0\,
      DI(0) => \CODE_11_carry__2_i_4__2_n_0\,
      O(3 downto 0) => \NLW_CODE_11_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \CODE_11_carry__2_i_5__2_n_0\,
      S(2) => \CODE_11_carry__2_i_6__2_n_0\,
      S(1) => \CODE_11_carry__2_i_7__2_n_0\,
      S(0) => \CODE_11_carry__2_i_8__2_n_0\
    );
\CODE_11_carry__2_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \sum_3_reg[0]_0\(31),
      I1 => \sum_3_reg[0]_0\(30),
      O => \CODE_11_carry__2_i_1__2_n_0\
    );
\CODE_11_carry__2_i_2__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \sum_3_reg[0]_0\(28),
      I1 => \sum_3_reg[0]_0\(29),
      O => \CODE_11_carry__2_i_2__2_n_0\
    );
\CODE_11_carry__2_i_3__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \sum_3_reg[0]_0\(26),
      I1 => \sum_3_reg[0]_0\(27),
      O => \CODE_11_carry__2_i_3__2_n_0\
    );
\CODE_11_carry__2_i_4__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \sum_3_reg[0]_0\(24),
      I1 => \sum_3_reg[0]_0\(25),
      O => \CODE_11_carry__2_i_4__2_n_0\
    );
\CODE_11_carry__2_i_5__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \sum_3_reg[0]_0\(31),
      I1 => \sum_3_reg[0]_0\(30),
      O => \CODE_11_carry__2_i_5__2_n_0\
    );
\CODE_11_carry__2_i_6__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \sum_3_reg[0]_0\(29),
      I1 => \sum_3_reg[0]_0\(28),
      O => \CODE_11_carry__2_i_6__2_n_0\
    );
\CODE_11_carry__2_i_7__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \sum_3_reg[0]_0\(27),
      I1 => \sum_3_reg[0]_0\(26),
      O => \CODE_11_carry__2_i_7__2_n_0\
    );
\CODE_11_carry__2_i_8__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \sum_3_reg[0]_0\(25),
      I1 => \sum_3_reg[0]_0\(24),
      O => \CODE_11_carry__2_i_8__2_n_0\
    );
\CODE_11_carry_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sum_3_reg[0]_0\(7),
      I1 => \sum_3_reg[0]_0\(6),
      O => \CODE_11_carry_i_1__2_n_0\
    );
\CODE_11_carry_i_2__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sum_3_reg[0]_0\(5),
      I1 => \sum_3_reg[0]_0\(4),
      O => \CODE_11_carry_i_2__2_n_0\
    );
\CODE_11_carry_i_3__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sum_3_reg[0]_0\(3),
      I1 => \sum_3_reg[0]_0\(2),
      O => \CODE_11_carry_i_3__2_n_0\
    );
\CODE_11_carry_i_4__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sum_3_reg[0]_0\(1),
      I1 => \sum_3_reg[0]_0\(0),
      O => \CODE_11_carry_i_4__2_n_0\
    );
\CODE_1[0]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1F10"
    )
        port map (
      I0 => \CODE_1_reg[1]_i_3__2_n_0\,
      I1 => \CODE_1[1]_i_2__2_n_0\,
      I2 => \CODE_11__15_carry__2_n_0\,
      I3 => \CODE_11_carry__2_n_0\,
      O => \CODE_1[0]_i_1__2_n_0\
    );
\CODE_1[1]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \sum_3_reg[0]_0\(30),
      I1 => \sum_3_reg[0]_0\(31),
      O => \CODE_1[1]_i_11_n_0\
    );
\CODE_1[1]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \sum_3_reg[0]_0\(28),
      I1 => \sum_3_reg[0]_0\(29),
      O => \CODE_1[1]_i_12_n_0\
    );
\CODE_1[1]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \sum_3_reg[0]_0\(26),
      I1 => \sum_3_reg[0]_0\(27),
      O => \CODE_1[1]_i_13_n_0\
    );
\CODE_1[1]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sum_3_reg[0]_0\(31),
      I1 => \sum_3_reg[0]_0\(30),
      O => \CODE_1[1]_i_14_n_0\
    );
\CODE_1[1]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sum_3_reg[0]_0\(29),
      I1 => \sum_3_reg[0]_0\(28),
      O => \CODE_1[1]_i_15_n_0\
    );
\CODE_1[1]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sum_3_reg[0]_0\(27),
      I1 => \sum_3_reg[0]_0\(26),
      O => \CODE_1[1]_i_16_n_0\
    );
\CODE_1[1]_i_17__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \sum_3_reg[0]_0\(24),
      I1 => \sum_3_reg[0]_0\(25),
      O => \CODE_1[1]_i_17__2_n_0\
    );
\CODE_1[1]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000200"
    )
        port map (
      I0 => \CODE_1[1]_i_33_n_0\,
      I1 => \sum_3_reg[0]_0\(29),
      I2 => \sum_3_reg[0]_0\(28),
      I3 => \CODE_1[1]_i_34_n_0\,
      I4 => \sum_3_reg[0]_0\(25),
      I5 => \sum_3_reg[0]_0\(24),
      O => \CODE_1[1]_i_18_n_0\
    );
\CODE_1[1]_i_19\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sum_3_reg[0]_0\(13),
      I1 => \sum_3_reg[0]_0\(12),
      O => \CODE_1[1]_i_19_n_0\
    );
\CODE_1[1]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \CODE_11__15_carry__2_n_0\,
      I1 => \CODE_1[1]_i_2__2_n_0\,
      I2 => \CODE_1_reg[1]_i_3__2_n_0\,
      O => \CODE_1[1]_i_1__2_n_0\
    );
\CODE_1[1]_i_20\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sum_3_reg[0]_0\(21),
      I1 => \sum_3_reg[0]_0\(20),
      O => \CODE_1[1]_i_20_n_0\
    );
\CODE_1[1]_i_21\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sum_3_reg[0]_0\(1),
      I1 => \sum_3_reg[0]_0\(0),
      O => \CODE_1[1]_i_21_n_0\
    );
\CODE_1[1]_i_22\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sum_3_reg[0]_0\(9),
      I1 => \sum_3_reg[0]_0\(8),
      O => \CODE_1[1]_i_22_n_0\
    );
\CODE_1[1]_i_23\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sum_3_reg[0]_0\(7),
      I1 => \sum_3_reg[0]_0\(6),
      O => \CODE_1[1]_i_23_n_0\
    );
\CODE_1[1]_i_25\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \sum_3_reg[0]_0\(22),
      I1 => \sum_3_reg[0]_0\(23),
      O => \CODE_1[1]_i_25_n_0\
    );
\CODE_1[1]_i_26\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \sum_3_reg[0]_0\(20),
      I1 => \sum_3_reg[0]_0\(21),
      O => \CODE_1[1]_i_26_n_0\
    );
\CODE_1[1]_i_27\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \sum_3_reg[0]_0\(18),
      I1 => \sum_3_reg[0]_0\(19),
      O => \CODE_1[1]_i_27_n_0\
    );
\CODE_1[1]_i_28\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \sum_3_reg[0]_0\(16),
      I1 => \sum_3_reg[0]_0\(17),
      O => \CODE_1[1]_i_28_n_0\
    );
\CODE_1[1]_i_29__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sum_3_reg[0]_0\(23),
      I1 => \sum_3_reg[0]_0\(22),
      O => \CODE_1[1]_i_29__2_n_0\
    );
\CODE_1[1]_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => \CODE_1[1]_i_4_n_0\,
      I1 => \CODE_1[1]_i_5__0_n_0\,
      I2 => \CODE_1[1]_i_6_n_0\,
      I3 => \CODE_1[1]_i_7_n_0\,
      I4 => \CODE_1[1]_i_8_n_0\,
      I5 => \CODE_1[1]_i_9__1_n_0\,
      O => \CODE_1[1]_i_2__2_n_0\
    );
\CODE_1[1]_i_30__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sum_3_reg[0]_0\(21),
      I1 => \sum_3_reg[0]_0\(20),
      O => \CODE_1[1]_i_30__2_n_0\
    );
\CODE_1[1]_i_31\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sum_3_reg[0]_0\(19),
      I1 => \sum_3_reg[0]_0\(18),
      O => \CODE_1[1]_i_31_n_0\
    );
\CODE_1[1]_i_32__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sum_3_reg[0]_0\(17),
      I1 => \sum_3_reg[0]_0\(16),
      O => \CODE_1[1]_i_32__2_n_0\
    );
\CODE_1[1]_i_33\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sum_3_reg[0]_0\(17),
      I1 => \sum_3_reg[0]_0\(16),
      O => \CODE_1[1]_i_33_n_0\
    );
\CODE_1[1]_i_34\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sum_3_reg[0]_0\(5),
      I1 => \sum_3_reg[0]_0\(4),
      O => \CODE_1[1]_i_34_n_0\
    );
\CODE_1[1]_i_36\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \sum_3_reg[0]_0\(14),
      I1 => \sum_3_reg[0]_0\(15),
      O => \CODE_1[1]_i_36_n_0\
    );
\CODE_1[1]_i_37\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \sum_3_reg[0]_0\(12),
      I1 => \sum_3_reg[0]_0\(13),
      O => \CODE_1[1]_i_37_n_0\
    );
\CODE_1[1]_i_38\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \sum_3_reg[0]_0\(10),
      I1 => \sum_3_reg[0]_0\(11),
      O => \CODE_1[1]_i_38_n_0\
    );
\CODE_1[1]_i_39\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \sum_3_reg[0]_0\(8),
      I1 => \sum_3_reg[0]_0\(9),
      O => \CODE_1[1]_i_39_n_0\
    );
\CODE_1[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0200000000000000"
    )
        port map (
      I0 => \CODE_1[1]_i_18_n_0\,
      I1 => \sum_3_reg[0]_0\(30),
      I2 => \sum_3_reg[0]_0\(31),
      I3 => \CODE_1[1]_i_19_n_0\,
      I4 => \CODE_1[1]_i_20_n_0\,
      I5 => \CODE_1[1]_i_21_n_0\,
      O => \CODE_1[1]_i_4_n_0\
    );
\CODE_1[1]_i_40__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sum_3_reg[0]_0\(15),
      I1 => \sum_3_reg[0]_0\(14),
      O => \CODE_1[1]_i_40__2_n_0\
    );
\CODE_1[1]_i_41__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sum_3_reg[0]_0\(13),
      I1 => \sum_3_reg[0]_0\(12),
      O => \CODE_1[1]_i_41__2_n_0\
    );
\CODE_1[1]_i_42__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sum_3_reg[0]_0\(11),
      I1 => \sum_3_reg[0]_0\(10),
      O => \CODE_1[1]_i_42__2_n_0\
    );
\CODE_1[1]_i_43__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sum_3_reg[0]_0\(9),
      I1 => \sum_3_reg[0]_0\(8),
      O => \CODE_1[1]_i_43__2_n_0\
    );
\CODE_1[1]_i_44\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \sum_3_reg[0]_0\(6),
      I1 => \sum_3_reg[0]_0\(7),
      O => \CODE_1[1]_i_44_n_0\
    );
\CODE_1[1]_i_45\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \sum_3_reg[0]_0\(4),
      I1 => \sum_3_reg[0]_0\(5),
      O => \CODE_1[1]_i_45_n_0\
    );
\CODE_1[1]_i_46\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \sum_3_reg[0]_0\(2),
      I1 => \sum_3_reg[0]_0\(3),
      O => \CODE_1[1]_i_46_n_0\
    );
\CODE_1[1]_i_47\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \sum_3_reg[0]_0\(0),
      I1 => \sum_3_reg[0]_0\(1),
      O => \CODE_1[1]_i_47_n_0\
    );
\CODE_1[1]_i_48__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sum_3_reg[0]_0\(7),
      I1 => \sum_3_reg[0]_0\(6),
      O => \CODE_1[1]_i_48__2_n_0\
    );
\CODE_1[1]_i_49__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sum_3_reg[0]_0\(5),
      I1 => \sum_3_reg[0]_0\(4),
      O => \CODE_1[1]_i_49__2_n_0\
    );
\CODE_1[1]_i_50__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sum_3_reg[0]_0\(3),
      I1 => \sum_3_reg[0]_0\(2),
      O => \CODE_1[1]_i_50__2_n_0\
    );
\CODE_1[1]_i_51__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sum_3_reg[0]_0\(1),
      I1 => \sum_3_reg[0]_0\(0),
      O => \CODE_1[1]_i_51__2_n_0\
    );
\CODE_1[1]_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFDFF"
    )
        port map (
      I0 => \CODE_1[1]_i_22_n_0\,
      I1 => \sum_3_reg[0]_0\(19),
      I2 => \sum_3_reg[0]_0\(18),
      I3 => \CODE_1[1]_i_23_n_0\,
      I4 => \sum_3_reg[0]_0\(27),
      I5 => \sum_3_reg[0]_0\(26),
      O => \CODE_1[1]_i_5__0_n_0\
    );
\CODE_1[1]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sum_3_reg[0]_0\(3),
      I1 => \sum_3_reg[0]_0\(2),
      O => \CODE_1[1]_i_6_n_0\
    );
\CODE_1[1]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sum_3_reg[0]_0\(15),
      I1 => \sum_3_reg[0]_0\(14),
      O => \CODE_1[1]_i_7_n_0\
    );
\CODE_1[1]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sum_3_reg[0]_0\(11),
      I1 => \sum_3_reg[0]_0\(10),
      O => \CODE_1[1]_i_8_n_0\
    );
\CODE_1[1]_i_9__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sum_3_reg[0]_0\(23),
      I1 => \sum_3_reg[0]_0\(22),
      O => \CODE_1[1]_i_9__1_n_0\
    );
\CODE_1[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000DDDD1DD1"
    )
        port map (
      I0 => \state_curr_reg[2]\,
      I1 => main_state_curr(0),
      I2 => examples_in(0),
      I3 => cnt_ex_block_outdated,
      I4 => \^tmp2_reg_0\,
      I5 => \^tmp2_reg_1\,
      O => \^e\(0)
    );
\CODE_1[2]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \CODE_11__15_carry__2_n_0\,
      I1 => \CODE_11_carry__2_n_0\,
      O => \CODE_1[2]_i_1__2_n_0\
    );
\CODE_1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \^e\(0),
      D => \CODE_1[0]_i_1__2_n_0\,
      Q => \CODE_1_reg_n_0_[0]\,
      R => '0'
    );
\CODE_1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \^e\(0),
      D => \CODE_1[1]_i_1__2_n_0\,
      Q => \CODE_1_reg_n_0_[1]\,
      R => '0'
    );
\CODE_1_reg[1]_i_10__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \CODE_1_reg[1]_i_24__2_n_0\,
      CO(3) => \CODE_1_reg[1]_i_10__2_n_0\,
      CO(2) => \CODE_1_reg[1]_i_10__2_n_1\,
      CO(1) => \CODE_1_reg[1]_i_10__2_n_2\,
      CO(0) => \CODE_1_reg[1]_i_10__2_n_3\,
      CYINIT => '0',
      DI(3) => \CODE_1[1]_i_25_n_0\,
      DI(2) => \CODE_1[1]_i_26_n_0\,
      DI(1) => \CODE_1[1]_i_27_n_0\,
      DI(0) => \CODE_1[1]_i_28_n_0\,
      O(3 downto 0) => \NLW_CODE_1_reg[1]_i_10__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \CODE_1[1]_i_29__2_n_0\,
      S(2) => \CODE_1[1]_i_30__2_n_0\,
      S(1) => \CODE_1[1]_i_31_n_0\,
      S(0) => \CODE_1[1]_i_32__2_n_0\
    );
\CODE_1_reg[1]_i_24__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \CODE_1_reg[1]_i_35__2_n_0\,
      CO(3) => \CODE_1_reg[1]_i_24__2_n_0\,
      CO(2) => \CODE_1_reg[1]_i_24__2_n_1\,
      CO(1) => \CODE_1_reg[1]_i_24__2_n_2\,
      CO(0) => \CODE_1_reg[1]_i_24__2_n_3\,
      CYINIT => '0',
      DI(3) => \CODE_1[1]_i_36_n_0\,
      DI(2) => \CODE_1[1]_i_37_n_0\,
      DI(1) => \CODE_1[1]_i_38_n_0\,
      DI(0) => \CODE_1[1]_i_39_n_0\,
      O(3 downto 0) => \NLW_CODE_1_reg[1]_i_24__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \CODE_1[1]_i_40__2_n_0\,
      S(2) => \CODE_1[1]_i_41__2_n_0\,
      S(1) => \CODE_1[1]_i_42__2_n_0\,
      S(0) => \CODE_1[1]_i_43__2_n_0\
    );
\CODE_1_reg[1]_i_35__2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \CODE_1_reg[1]_i_35__2_n_0\,
      CO(2) => \CODE_1_reg[1]_i_35__2_n_1\,
      CO(1) => \CODE_1_reg[1]_i_35__2_n_2\,
      CO(0) => \CODE_1_reg[1]_i_35__2_n_3\,
      CYINIT => '1',
      DI(3) => \CODE_1[1]_i_44_n_0\,
      DI(2) => \CODE_1[1]_i_45_n_0\,
      DI(1) => \CODE_1[1]_i_46_n_0\,
      DI(0) => \CODE_1[1]_i_47_n_0\,
      O(3 downto 0) => \NLW_CODE_1_reg[1]_i_35__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \CODE_1[1]_i_48__2_n_0\,
      S(2) => \CODE_1[1]_i_49__2_n_0\,
      S(1) => \CODE_1[1]_i_50__2_n_0\,
      S(0) => \CODE_1[1]_i_51__2_n_0\
    );
\CODE_1_reg[1]_i_3__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \CODE_1_reg[1]_i_10__2_n_0\,
      CO(3) => \CODE_1_reg[1]_i_3__2_n_0\,
      CO(2) => \CODE_1_reg[1]_i_3__2_n_1\,
      CO(1) => \CODE_1_reg[1]_i_3__2_n_2\,
      CO(0) => \CODE_1_reg[1]_i_3__2_n_3\,
      CYINIT => '0',
      DI(3) => \CODE_1[1]_i_11_n_0\,
      DI(2) => \CODE_1[1]_i_12_n_0\,
      DI(1) => \CODE_1[1]_i_13_n_0\,
      DI(0) => \sum_3_reg[0]_0\(25),
      O(3 downto 0) => \NLW_CODE_1_reg[1]_i_3__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \CODE_1[1]_i_14_n_0\,
      S(2) => \CODE_1[1]_i_15_n_0\,
      S(1) => \CODE_1[1]_i_16_n_0\,
      S(0) => \CODE_1[1]_i_17__2_n_0\
    );
\CODE_1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \^e\(0),
      D => \CODE_1[2]_i_1__2_n_0\,
      Q => \CODE_1_reg_n_0_[2]\,
      R => '0'
    );
\CODE_2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \^e\(0),
      D => \CODE_1_reg_n_0_[0]\,
      Q => \CODE_2_reg_n_0_[0]\,
      R => '0'
    );
\CODE_2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \^e\(0),
      D => \CODE_1_reg_n_0_[1]\,
      Q => \CODE_2_reg_n_0_[1]\,
      R => '0'
    );
\CODE_2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \^e\(0),
      D => \CODE_1_reg_n_0_[2]\,
      Q => \CODE_2_reg_n_0_[2]\,
      R => '0'
    );
features_f_RAM_reg_0_63_0_2_i_16: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt_weight1(1),
      I1 => cnt_weight1(0),
      O => \^tmp2_reg_4\
    );
features_f_RAM_reg_0_63_0_2_i_20: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \state1_curr_reg[1]\(0),
      I1 => \state1_curr_reg[1]\(1),
      O => \^tmp2_reg_3\
    );
\latch_output_layer[0][0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"223F"
    )
        port map (
      I0 => \CODE_2_reg_n_0_[0]\,
      I1 => tmp2_reg_n_84,
      I2 => \CODE_2_reg_n_0_[2]\,
      I3 => \CODE_2_reg_n_0_[1]\,
      O => D(0)
    );
\latch_output_layer[0][10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5053ECA3"
    )
        port map (
      I0 => \latch_output_layer[0][11]_i_4_n_0\,
      I1 => \CODE_2_reg_n_0_[1]\,
      I2 => \CODE_2_reg_n_0_[2]\,
      I3 => \CODE_2_reg_n_0_[0]\,
      I4 => tmp2_reg_n_74,
      O => D(10)
    );
\latch_output_layer[0][11]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FF70"
    )
        port map (
      I0 => \latch_output_layer[0][11]_i_4_n_0\,
      I1 => tmp2_reg_n_74,
      I2 => \CODE_2_reg_n_0_[2]\,
      I3 => \CODE_2_reg_n_0_[0]\,
      I4 => \CODE_2_reg_n_0_[1]\,
      O => D(11)
    );
\latch_output_layer[0][11]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => tmp2_reg_n_75,
      I1 => tmp2_reg_n_77,
      I2 => \latch_output_layer[0][7]_i_2_n_0\,
      I3 => tmp2_reg_n_78,
      I4 => tmp2_reg_n_76,
      O => \latch_output_layer[0][11]_i_4_n_0\
    );
\latch_output_layer[0][1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5053ECA3"
    )
        port map (
      I0 => tmp2_reg_n_84,
      I1 => \CODE_2_reg_n_0_[1]\,
      I2 => \CODE_2_reg_n_0_[2]\,
      I3 => \CODE_2_reg_n_0_[0]\,
      I4 => tmp2_reg_n_83,
      O => D(1)
    );
\latch_output_layer[0][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7700770FF8F0880F"
    )
        port map (
      I0 => tmp2_reg_n_84,
      I1 => tmp2_reg_n_83,
      I2 => \CODE_2_reg_n_0_[1]\,
      I3 => \CODE_2_reg_n_0_[2]\,
      I4 => \CODE_2_reg_n_0_[0]\,
      I5 => tmp2_reg_n_82,
      O => D(2)
    );
\latch_output_layer[0][3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5053ECA3"
    )
        port map (
      I0 => \latch_output_layer[0][3]_i_2_n_0\,
      I1 => \CODE_2_reg_n_0_[1]\,
      I2 => \CODE_2_reg_n_0_[2]\,
      I3 => \CODE_2_reg_n_0_[0]\,
      I4 => tmp2_reg_n_81,
      O => D(3)
    );
\latch_output_layer[0][3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => tmp2_reg_n_82,
      I1 => tmp2_reg_n_84,
      I2 => tmp2_reg_n_83,
      O => \latch_output_layer[0][3]_i_2_n_0\
    );
\latch_output_layer[0][4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5053ECA3"
    )
        port map (
      I0 => \latch_output_layer[0][4]_i_2_n_0\,
      I1 => \CODE_2_reg_n_0_[1]\,
      I2 => \CODE_2_reg_n_0_[2]\,
      I3 => \CODE_2_reg_n_0_[0]\,
      I4 => tmp2_reg_n_80,
      O => D(4)
    );
\latch_output_layer[0][4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => tmp2_reg_n_81,
      I1 => tmp2_reg_n_83,
      I2 => tmp2_reg_n_84,
      I3 => tmp2_reg_n_82,
      O => \latch_output_layer[0][4]_i_2_n_0\
    );
\latch_output_layer[0][5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5053ECA3"
    )
        port map (
      I0 => \latch_output_layer[0][5]_i_2_n_0\,
      I1 => \CODE_2_reg_n_0_[1]\,
      I2 => \CODE_2_reg_n_0_[2]\,
      I3 => \CODE_2_reg_n_0_[0]\,
      I4 => tmp2_reg_n_79,
      O => D(5)
    );
\latch_output_layer[0][5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => tmp2_reg_n_80,
      I1 => tmp2_reg_n_82,
      I2 => tmp2_reg_n_84,
      I3 => tmp2_reg_n_83,
      I4 => tmp2_reg_n_81,
      O => \latch_output_layer[0][5]_i_2_n_0\
    );
\latch_output_layer[0][6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5053ECA3"
    )
        port map (
      I0 => \latch_output_layer[0][7]_i_2_n_0\,
      I1 => \CODE_2_reg_n_0_[1]\,
      I2 => \CODE_2_reg_n_0_[2]\,
      I3 => \CODE_2_reg_n_0_[0]\,
      I4 => tmp2_reg_n_78,
      O => D(6)
    );
\latch_output_layer[0][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7700770FF8F0880F"
    )
        port map (
      I0 => \latch_output_layer[0][7]_i_2_n_0\,
      I1 => tmp2_reg_n_78,
      I2 => \CODE_2_reg_n_0_[1]\,
      I3 => \CODE_2_reg_n_0_[2]\,
      I4 => \CODE_2_reg_n_0_[0]\,
      I5 => tmp2_reg_n_77,
      O => D(7)
    );
\latch_output_layer[0][7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => tmp2_reg_n_79,
      I1 => tmp2_reg_n_81,
      I2 => tmp2_reg_n_83,
      I3 => tmp2_reg_n_84,
      I4 => tmp2_reg_n_82,
      I5 => tmp2_reg_n_80,
      O => \latch_output_layer[0][7]_i_2_n_0\
    );
\latch_output_layer[0][8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5053ECA3"
    )
        port map (
      I0 => \latch_output_layer[0][8]_i_2_n_0\,
      I1 => \CODE_2_reg_n_0_[1]\,
      I2 => \CODE_2_reg_n_0_[2]\,
      I3 => \CODE_2_reg_n_0_[0]\,
      I4 => tmp2_reg_n_76,
      O => D(8)
    );
\latch_output_layer[0][8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => tmp2_reg_n_77,
      I1 => \latch_output_layer[0][7]_i_2_n_0\,
      I2 => tmp2_reg_n_78,
      O => \latch_output_layer[0][8]_i_2_n_0\
    );
\latch_output_layer[0][9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5053ECA3"
    )
        port map (
      I0 => \latch_output_layer[0][9]_i_2_n_0\,
      I1 => \CODE_2_reg_n_0_[1]\,
      I2 => \CODE_2_reg_n_0_[2]\,
      I3 => \CODE_2_reg_n_0_[0]\,
      I4 => tmp2_reg_n_75,
      O => D(9)
    );
\latch_output_layer[0][9]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => tmp2_reg_n_76,
      I1 => tmp2_reg_n_78,
      I2 => \latch_output_layer[0][7]_i_2_n_0\,
      I3 => tmp2_reg_n_77,
      O => \latch_output_layer[0][9]_i_2_n_0\
    );
\sum_1_reg[0]0_i_46\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \AXIS_in[ARESETN]\,
      I1 => main_state_curr(1),
      I2 => main_state_curr(2),
      O => \^tmp2_reg_1\
    );
\sum_1_reg[0]0_i_47\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEFEEEEEEEEEEF"
    )
        port map (
      I0 => \^tmp2_reg_2\,
      I1 => \^tmp2_reg_3\,
      I2 => \^tmp2_reg_4\,
      I3 => \cnt_features_reg[2]\,
      I4 => \cnt_features_reg[1]\,
      I5 => \cnt_features_reg[0]\,
      O => \^tmp2_reg_0\
    );
\sum_1_reg[0]0_i_50\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000009009"
    )
        port map (
      I0 => \nb_examples_reg[7]\(7),
      I1 => examples_out(7),
      I2 => \nb_examples_reg[7]\(6),
      I3 => examples_out(6),
      I4 => \sum_1_reg[0]0_i_54_n_0\,
      I5 => \sum_1_reg[0]0_i_55_n_0\,
      O => \^tmp2_reg_2\
    );
\sum_1_reg[0]0_i_54\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => examples_out(0),
      I1 => \nb_examples_reg[7]\(0),
      I2 => \nb_examples_reg[7]\(1),
      I3 => examples_out(1),
      I4 => \nb_examples_reg[7]\(2),
      I5 => examples_out(2),
      O => \sum_1_reg[0]0_i_54_n_0\
    );
\sum_1_reg[0]0_i_55\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => examples_out(3),
      I1 => \nb_examples_reg[7]\(3),
      I2 => \nb_examples_reg[7]\(4),
      I3 => examples_out(4),
      I4 => \nb_examples_reg[7]\(5),
      I5 => examples_out(5),
      O => \sum_1_reg[0]0_i_55_n_0\
    );
tmp2_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 16) => B"00000000000000",
      A(15 downto 0) => var1(23 downto 8),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_tmp2_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 16) => B"00",
      B(15 downto 0) => var1(23 downto 8),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_tmp2_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_tmp2_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_tmp2_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => \^e\(0),
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => \^e\(0),
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => \^e\(0),
      CEP => '0',
      CLK => clk_IBUF_BUFG,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_tmp2_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_tmp2_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 32) => NLW_tmp2_reg_P_UNCONNECTED(47 downto 32),
      P(31) => tmp2_reg_n_74,
      P(30) => tmp2_reg_n_75,
      P(29) => tmp2_reg_n_76,
      P(28) => tmp2_reg_n_77,
      P(27) => tmp2_reg_n_78,
      P(26) => tmp2_reg_n_79,
      P(25) => tmp2_reg_n_80,
      P(24) => tmp2_reg_n_81,
      P(23) => tmp2_reg_n_82,
      P(22) => tmp2_reg_n_83,
      P(21) => tmp2_reg_n_84,
      P(20) => tmp2_reg_n_85,
      P(19) => tmp2_reg_n_86,
      P(18) => tmp2_reg_n_87,
      P(17) => tmp2_reg_n_88,
      P(16) => tmp2_reg_n_89,
      P(15) => tmp2_reg_n_90,
      P(14) => tmp2_reg_n_91,
      P(13) => tmp2_reg_n_92,
      P(12) => tmp2_reg_n_93,
      P(11) => tmp2_reg_n_94,
      P(10) => tmp2_reg_n_95,
      P(9) => tmp2_reg_n_96,
      P(8) => tmp2_reg_n_97,
      P(7) => tmp2_reg_n_98,
      P(6) => tmp2_reg_n_99,
      P(5) => tmp2_reg_n_100,
      P(4) => tmp2_reg_n_101,
      P(3) => tmp2_reg_n_102,
      P(2) => tmp2_reg_n_103,
      P(1) => tmp2_reg_n_104,
      P(0) => tmp2_reg_n_105,
      PATTERNBDETECT => NLW_tmp2_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_tmp2_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_tmp2_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_tmp2_reg_UNDERFLOW_UNCONNECTED
    );
\tmp2_reg_i_10__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => var10(14),
      I1 => \CODE_11__15_carry__2_n_0\,
      I2 => \sum_3_reg[0]_0\(14),
      O => var1(14)
    );
\tmp2_reg_i_11__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => var10(13),
      I1 => \CODE_11__15_carry__2_n_0\,
      I2 => \sum_3_reg[0]_0\(13),
      O => var1(13)
    );
\tmp2_reg_i_12__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => var10(12),
      I1 => \CODE_11__15_carry__2_n_0\,
      I2 => \sum_3_reg[0]_0\(12),
      O => var1(12)
    );
\tmp2_reg_i_13__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => var10(11),
      I1 => \CODE_11__15_carry__2_n_0\,
      I2 => \sum_3_reg[0]_0\(11),
      O => var1(11)
    );
\tmp2_reg_i_14__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => var10(10),
      I1 => \CODE_11__15_carry__2_n_0\,
      I2 => \sum_3_reg[0]_0\(10),
      O => var1(10)
    );
\tmp2_reg_i_15__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => var10(9),
      I1 => \CODE_11__15_carry__2_n_0\,
      I2 => \sum_3_reg[0]_0\(9),
      O => var1(9)
    );
\tmp2_reg_i_16__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => var10(8),
      I1 => \CODE_11__15_carry__2_n_0\,
      I2 => \sum_3_reg[0]_0\(8),
      O => var1(8)
    );
\tmp2_reg_i_17__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \tmp2_reg_i_18__2_n_0\,
      CO(3 downto 2) => \NLW_tmp2_reg_i_17__2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \tmp2_reg_i_17__2_n_2\,
      CO(0) => \tmp2_reg_i_17__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_tmp2_reg_i_17__2_O_UNCONNECTED\(3),
      O(2 downto 0) => var10(23 downto 21),
      S(3) => '0',
      S(2) => tmp2_reg_i_22_n_0,
      S(1) => tmp2_reg_i_23_n_0,
      S(0) => tmp2_reg_i_24_n_0
    );
\tmp2_reg_i_18__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \tmp2_reg_i_19__2_n_0\,
      CO(3) => \tmp2_reg_i_18__2_n_0\,
      CO(2) => \tmp2_reg_i_18__2_n_1\,
      CO(1) => \tmp2_reg_i_18__2_n_2\,
      CO(0) => \tmp2_reg_i_18__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => var10(20 downto 17),
      S(3) => tmp2_reg_i_25_n_0,
      S(2) => tmp2_reg_i_26_n_0,
      S(1) => tmp2_reg_i_27_n_0,
      S(0) => tmp2_reg_i_28_n_0
    );
\tmp2_reg_i_19__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \tmp2_reg_i_20__2_n_0\,
      CO(3) => \tmp2_reg_i_19__2_n_0\,
      CO(2) => \tmp2_reg_i_19__2_n_1\,
      CO(1) => \tmp2_reg_i_19__2_n_2\,
      CO(0) => \tmp2_reg_i_19__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => var10(16 downto 13),
      S(3) => tmp2_reg_i_29_n_0,
      S(2) => tmp2_reg_i_30_n_0,
      S(1) => tmp2_reg_i_31_n_0,
      S(0) => tmp2_reg_i_32_n_0
    );
\tmp2_reg_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => var10(23),
      I1 => \CODE_11__15_carry__2_n_0\,
      I2 => \sum_3_reg[0]_0\(23),
      O => var1(23)
    );
\tmp2_reg_i_20__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \tmp2_reg_i_21__2_n_0\,
      CO(3) => \tmp2_reg_i_20__2_n_0\,
      CO(2) => \tmp2_reg_i_20__2_n_1\,
      CO(1) => \tmp2_reg_i_20__2_n_2\,
      CO(0) => \tmp2_reg_i_20__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => var10(12 downto 9),
      S(3) => tmp2_reg_i_33_n_0,
      S(2) => tmp2_reg_i_34_n_0,
      S(1) => tmp2_reg_i_35_n_0,
      S(0) => tmp2_reg_i_36_n_0
    );
\tmp2_reg_i_21__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \tmp2_reg_i_37__2_n_0\,
      CO(3) => \tmp2_reg_i_21__2_n_0\,
      CO(2) => \tmp2_reg_i_21__2_n_1\,
      CO(1) => \tmp2_reg_i_21__2_n_2\,
      CO(0) => \tmp2_reg_i_21__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => var10(8),
      O(2 downto 0) => \NLW_tmp2_reg_i_21__2_O_UNCONNECTED\(2 downto 0),
      S(3) => tmp2_reg_i_38_n_0,
      S(2) => tmp2_reg_i_39_n_0,
      S(1) => tmp2_reg_i_40_n_0,
      S(0) => tmp2_reg_i_41_n_0
    );
tmp2_reg_i_22: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sum_3_reg[0]_0\(23),
      O => tmp2_reg_i_22_n_0
    );
tmp2_reg_i_23: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sum_3_reg[0]_0\(22),
      O => tmp2_reg_i_23_n_0
    );
tmp2_reg_i_24: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sum_3_reg[0]_0\(21),
      O => tmp2_reg_i_24_n_0
    );
tmp2_reg_i_25: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sum_3_reg[0]_0\(20),
      O => tmp2_reg_i_25_n_0
    );
tmp2_reg_i_26: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sum_3_reg[0]_0\(19),
      O => tmp2_reg_i_26_n_0
    );
tmp2_reg_i_27: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sum_3_reg[0]_0\(18),
      O => tmp2_reg_i_27_n_0
    );
tmp2_reg_i_28: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sum_3_reg[0]_0\(17),
      O => tmp2_reg_i_28_n_0
    );
tmp2_reg_i_29: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sum_3_reg[0]_0\(16),
      O => tmp2_reg_i_29_n_0
    );
\tmp2_reg_i_2__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => var10(22),
      I1 => \CODE_11__15_carry__2_n_0\,
      I2 => \sum_3_reg[0]_0\(22),
      O => var1(22)
    );
tmp2_reg_i_30: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sum_3_reg[0]_0\(15),
      O => tmp2_reg_i_30_n_0
    );
tmp2_reg_i_31: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sum_3_reg[0]_0\(14),
      O => tmp2_reg_i_31_n_0
    );
tmp2_reg_i_32: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sum_3_reg[0]_0\(13),
      O => tmp2_reg_i_32_n_0
    );
tmp2_reg_i_33: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sum_3_reg[0]_0\(12),
      O => tmp2_reg_i_33_n_0
    );
tmp2_reg_i_34: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sum_3_reg[0]_0\(11),
      O => tmp2_reg_i_34_n_0
    );
tmp2_reg_i_35: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sum_3_reg[0]_0\(10),
      O => tmp2_reg_i_35_n_0
    );
tmp2_reg_i_36: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sum_3_reg[0]_0\(9),
      O => tmp2_reg_i_36_n_0
    );
\tmp2_reg_i_37__2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \tmp2_reg_i_37__2_n_0\,
      CO(2) => \tmp2_reg_i_37__2_n_1\,
      CO(1) => \tmp2_reg_i_37__2_n_2\,
      CO(0) => \tmp2_reg_i_37__2_n_3\,
      CYINIT => tmp2_reg_i_42_n_0,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_tmp2_reg_i_37__2_O_UNCONNECTED\(3 downto 0),
      S(3) => tmp2_reg_i_43_n_0,
      S(2) => tmp2_reg_i_44_n_0,
      S(1) => tmp2_reg_i_45_n_0,
      S(0) => tmp2_reg_i_46_n_0
    );
tmp2_reg_i_38: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sum_3_reg[0]_0\(8),
      O => tmp2_reg_i_38_n_0
    );
tmp2_reg_i_39: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sum_3_reg[0]_0\(7),
      O => tmp2_reg_i_39_n_0
    );
\tmp2_reg_i_3__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => var10(21),
      I1 => \CODE_11__15_carry__2_n_0\,
      I2 => \sum_3_reg[0]_0\(21),
      O => var1(21)
    );
tmp2_reg_i_40: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sum_3_reg[0]_0\(6),
      O => tmp2_reg_i_40_n_0
    );
tmp2_reg_i_41: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sum_3_reg[0]_0\(5),
      O => tmp2_reg_i_41_n_0
    );
tmp2_reg_i_42: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sum_3_reg[0]_0\(0),
      O => tmp2_reg_i_42_n_0
    );
tmp2_reg_i_43: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sum_3_reg[0]_0\(4),
      O => tmp2_reg_i_43_n_0
    );
tmp2_reg_i_44: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sum_3_reg[0]_0\(3),
      O => tmp2_reg_i_44_n_0
    );
tmp2_reg_i_45: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sum_3_reg[0]_0\(2),
      O => tmp2_reg_i_45_n_0
    );
tmp2_reg_i_46: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sum_3_reg[0]_0\(1),
      O => tmp2_reg_i_46_n_0
    );
\tmp2_reg_i_4__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => var10(20),
      I1 => \CODE_11__15_carry__2_n_0\,
      I2 => \sum_3_reg[0]_0\(20),
      O => var1(20)
    );
\tmp2_reg_i_5__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => var10(19),
      I1 => \CODE_11__15_carry__2_n_0\,
      I2 => \sum_3_reg[0]_0\(19),
      O => var1(19)
    );
\tmp2_reg_i_6__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => var10(18),
      I1 => \CODE_11__15_carry__2_n_0\,
      I2 => \sum_3_reg[0]_0\(18),
      O => var1(18)
    );
\tmp2_reg_i_7__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => var10(17),
      I1 => \CODE_11__15_carry__2_n_0\,
      I2 => \sum_3_reg[0]_0\(17),
      O => var1(17)
    );
\tmp2_reg_i_8__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => var10(16),
      I1 => \CODE_11__15_carry__2_n_0\,
      I2 => \sum_3_reg[0]_0\(16),
      O => var1(16)
    );
\tmp2_reg_i_9__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => var10(15),
      I1 => \CODE_11__15_carry__2_n_0\,
      I2 => \sum_3_reg[0]_0\(15),
      O => var1(15)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity feedforward_dataflow is
  port (
    \sum_1_reg[0][0]_0\ : out STD_LOGIC;
    feedforward_en6_out : out STD_LOGIC;
    cnt_examples_out : out STD_LOGIC;
    \cnt_examples_out_reg[7]\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    ADDRA : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \feature_f_reg[9]\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \state1_curr_reg[1]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \state_curr_reg[2]\ : out STD_LOGIC;
    \state_curr_reg[0]\ : out STD_LOGIC;
    cnt_ex_block_outdated_next7_out : out STD_LOGIC;
    tmp2_reg : out STD_LOGIC;
    \cnt_ex_block_updated_reg[0]\ : out STD_LOGIC;
    prod_30_0 : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \cnt_ex_block_updated_reg[0]_0\ : out STD_LOGIC;
    \cnt_examples_out_reg[6]\ : out STD_LOGIC;
    \cnt_features_reg[2]\ : out STD_LOGIC;
    \cnt_features_reg[1]\ : out STD_LOGIC;
    \cnt_features_reg[0]\ : out STD_LOGIC;
    \state2_curr_reg[1]\ : out STD_LOGIC;
    \state2_curr_reg[0]\ : out STD_LOGIC;
    \cnt_hidden_reg[0]\ : out STD_LOGIC;
    \cnt_hidden_reg[1]\ : out STD_LOGIC;
    \state4_curr_reg[1]\ : out STD_LOGIC;
    \state4_curr_reg[0]\ : out STD_LOGIC;
    \cnt_examples_out_reg[7]_0\ : out STD_LOGIC;
    \cnt_examples_out_reg[1]\ : out STD_LOGIC;
    results_RAM_reg : out STD_LOGIC_VECTOR ( 11 downto 0 );
    clk_IBUF_BUFG : in STD_LOGIC;
    B : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \lfsr_reg[7]\ : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \cnt_hidden_reg[0]_0\ : in STD_LOGIC;
    \cnt_hidden_reg[1]_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \main_state_curr_reg[1]\ : in STD_LOGIC;
    main_state_curr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \state_curr_reg[2]_0\ : in STD_LOGIC;
    \state4_curr_reg[1]_0\ : in STD_LOGIC;
    \state4_curr_reg[0]_0\ : in STD_LOGIC;
    \weight2_f_reg[11]\ : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \cnt_features_reg[0]_0\ : in STD_LOGIC;
    \state1_curr_reg[1]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \cnt_features_reg[0]_1\ : in STD_LOGIC;
    examples_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \cnt_features_reg[1]_0\ : in STD_LOGIC;
    \cnt_features_reg[2]_0\ : in STD_LOGIC;
    \cnt_features_reg[2]_1\ : in STD_LOGIC;
    \feature_f_reg[11]\ : in STD_LOGIC_VECTOR ( 11 downto 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    \main_state_curr_reg[1]_0\ : in STD_LOGIC;
    \state_curr_reg[2]_1\ : in STD_LOGIC;
    \AXIS_in[ARESETN]\ : in STD_LOGIC;
    \main_state_curr_reg[2]\ : in STD_LOGIC;
    \cnt_examples_in_reg[1]\ : in STD_LOGIC;
    \nb_examples_reg[7]\ : in STD_LOGIC;
    \nb_examples_reg[3]\ : in STD_LOGIC;
    \nb_examples_reg[7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    LED_8_OBUF : in STD_LOGIC;
    \cnt_ex_block_updated_reg[0]_1\ : in STD_LOGIC;
    \cnt_features_reg[2]_2\ : in STD_LOGIC;
    \cnt_ex_block_outdated_reg[0]\ : in STD_LOGIC;
    cnt_ex_block_outdated : in STD_LOGIC;
    \nb_examples_reg[7]_1\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    examples_out : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \state2_curr_reg[1]_0\ : in STD_LOGIC;
    \state2_curr_reg[0]_0\ : in STD_LOGIC;
    \nb_examples_reg[4]\ : in STD_LOGIC;
    \main_state_curr_reg[1]_1\ : in STD_LOGIC;
    cnt_ex_block_updated : in STD_LOGIC;
    \cnt_features_reg[2]_3\ : in STD_LOGIC;
    \cnt_hidden_reg[1]_1\ : in STD_LOGIC;
    \cnt_examples_out_reg[4]\ : in STD_LOGIC
  );
end feedforward_dataflow;

architecture STRUCTURE of feedforward_dataflow is
  signal A : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal C : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \activ1_out[0]_12\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \activ1_out[1]_11\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \activ1_out[2]_10\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \activ2_out[0]_13\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \activation_2[0].sigmoid_instances2_n_1\ : STD_LOGIC;
  signal \activation_2[0].sigmoid_instances2_n_2\ : STD_LOGIC;
  signal \activation_2[0].sigmoid_instances2_n_4\ : STD_LOGIC;
  signal \activation_2[0].sigmoid_instances2_n_5\ : STD_LOGIC;
  signal \^cnt_ex_block_updated_reg[0]\ : STD_LOGIC;
  signal \^cnt_examples_out_reg[7]\ : STD_LOGIC;
  signal \cnt_features[0]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_features[2]_i_3_n_0\ : STD_LOGIC;
  signal cnt_weight1 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal feature : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal features_f_RAM_reg_0_63_0_2_i_14_n_0 : STD_LOGIC;
  signal features_f_RAM_reg_0_63_0_2_i_15_n_0 : STD_LOGIC;
  signal features_f_RAM_reg_0_63_0_2_i_18_n_0 : STD_LOGIC;
  signal features_f_RAM_reg_0_63_0_2_i_19_n_0 : STD_LOGIC;
  signal \^feedforward_en6_out\ : STD_LOGIC;
  signal \idx_stage_1[0]_i_1_n_0\ : STD_LOGIC;
  signal \idx_stage_1[1]_i_1_n_0\ : STD_LOGIC;
  signal \idx_stage_1[1]_i_2_n_0\ : STD_LOGIC;
  signal \idx_stage_1[1]_i_3_n_0\ : STD_LOGIC;
  signal \idx_stage_1[1]_i_4_n_0\ : STD_LOGIC;
  signal idx_stage_30_out : STD_LOGIC;
  signal \idx_stage_3[0]_i_1_n_0\ : STD_LOGIC;
  signal \idx_stage_3[0]_i_2_n_0\ : STD_LOGIC;
  signal \idx_stage_3_reg_n_0_[0]\ : STD_LOGIC;
  signal \latch_hidden_layer[0]_3\ : STD_LOGIC;
  signal \latch_hidden_layer[2][11]_i_3_n_0\ : STD_LOGIC;
  signal \latch_hidden_layer_reg[0]_9\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \latch_hidden_layer_reg[1]_8\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \latch_hidden_layer_reg[2]_7\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \^prod_30_0\ : STD_LOGIC;
  signal prod_30_i_13_n_0 : STD_LOGIC;
  signal prod_30_n_100 : STD_LOGIC;
  signal prod_30_n_101 : STD_LOGIC;
  signal prod_30_n_102 : STD_LOGIC;
  signal prod_30_n_103 : STD_LOGIC;
  signal prod_30_n_104 : STD_LOGIC;
  signal prod_30_n_105 : STD_LOGIC;
  signal prod_30_n_82 : STD_LOGIC;
  signal prod_30_n_83 : STD_LOGIC;
  signal prod_30_n_84 : STD_LOGIC;
  signal prod_30_n_85 : STD_LOGIC;
  signal prod_30_n_86 : STD_LOGIC;
  signal prod_30_n_87 : STD_LOGIC;
  signal prod_30_n_88 : STD_LOGIC;
  signal prod_30_n_89 : STD_LOGIC;
  signal prod_30_n_90 : STD_LOGIC;
  signal prod_30_n_91 : STD_LOGIC;
  signal prod_30_n_92 : STD_LOGIC;
  signal prod_30_n_93 : STD_LOGIC;
  signal prod_30_n_94 : STD_LOGIC;
  signal prod_30_n_95 : STD_LOGIC;
  signal prod_30_n_96 : STD_LOGIC;
  signal prod_30_n_97 : STD_LOGIC;
  signal prod_30_n_98 : STD_LOGIC;
  signal prod_30_n_99 : STD_LOGIC;
  signal \prod_3[23]_i_1_n_0\ : STD_LOGIC;
  signal \prod_3_reg_n_0_[0]\ : STD_LOGIC;
  signal \prod_3_reg_n_0_[10]\ : STD_LOGIC;
  signal \prod_3_reg_n_0_[11]\ : STD_LOGIC;
  signal \prod_3_reg_n_0_[12]\ : STD_LOGIC;
  signal \prod_3_reg_n_0_[13]\ : STD_LOGIC;
  signal \prod_3_reg_n_0_[14]\ : STD_LOGIC;
  signal \prod_3_reg_n_0_[15]\ : STD_LOGIC;
  signal \prod_3_reg_n_0_[16]\ : STD_LOGIC;
  signal \prod_3_reg_n_0_[17]\ : STD_LOGIC;
  signal \prod_3_reg_n_0_[18]\ : STD_LOGIC;
  signal \prod_3_reg_n_0_[19]\ : STD_LOGIC;
  signal \prod_3_reg_n_0_[1]\ : STD_LOGIC;
  signal \prod_3_reg_n_0_[20]\ : STD_LOGIC;
  signal \prod_3_reg_n_0_[21]\ : STD_LOGIC;
  signal \prod_3_reg_n_0_[22]\ : STD_LOGIC;
  signal \prod_3_reg_n_0_[23]\ : STD_LOGIC;
  signal \prod_3_reg_n_0_[2]\ : STD_LOGIC;
  signal \prod_3_reg_n_0_[3]\ : STD_LOGIC;
  signal \prod_3_reg_n_0_[4]\ : STD_LOGIC;
  signal \prod_3_reg_n_0_[5]\ : STD_LOGIC;
  signal \prod_3_reg_n_0_[6]\ : STD_LOGIC;
  signal \prod_3_reg_n_0_[7]\ : STD_LOGIC;
  signal \prod_3_reg_n_0_[8]\ : STD_LOGIC;
  signal \prod_3_reg_n_0_[9]\ : STD_LOGIC;
  signal \state1_curr[0]_i_2_n_0\ : STD_LOGIC;
  signal \^state1_curr_reg[1]\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal state1_next1_carry_i_5_n_0 : STD_LOGIC;
  signal state1_next1_carry_i_6_n_0 : STD_LOGIC;
  signal state1_next1_carry_i_7_n_0 : STD_LOGIC;
  signal \state_curr[2]_i_14_n_0\ : STD_LOGIC;
  signal \^state_curr_reg[0]\ : STD_LOGIC;
  signal \sum_1[0][31]_i_1_n_0\ : STD_LOGIC;
  signal \sum_1[1][31]_i_1_n_0\ : STD_LOGIC;
  signal \sum_1[2][31]_i_4_n_0\ : STD_LOGIC;
  signal \sum_1[2]_2\ : STD_LOGIC;
  signal \sum_1_reg[0]0_i_1_n_0\ : STD_LOGIC;
  signal \sum_1_reg[0]0_i_48_n_0\ : STD_LOGIC;
  signal \sum_1_reg[0]0_n_100\ : STD_LOGIC;
  signal \sum_1_reg[0]0_n_101\ : STD_LOGIC;
  signal \sum_1_reg[0]0_n_102\ : STD_LOGIC;
  signal \sum_1_reg[0]0_n_103\ : STD_LOGIC;
  signal \sum_1_reg[0]0_n_104\ : STD_LOGIC;
  signal \sum_1_reg[0]0_n_105\ : STD_LOGIC;
  signal \sum_1_reg[0]0_n_74\ : STD_LOGIC;
  signal \sum_1_reg[0]0_n_75\ : STD_LOGIC;
  signal \sum_1_reg[0]0_n_76\ : STD_LOGIC;
  signal \sum_1_reg[0]0_n_77\ : STD_LOGIC;
  signal \sum_1_reg[0]0_n_78\ : STD_LOGIC;
  signal \sum_1_reg[0]0_n_79\ : STD_LOGIC;
  signal \sum_1_reg[0]0_n_80\ : STD_LOGIC;
  signal \sum_1_reg[0]0_n_81\ : STD_LOGIC;
  signal \sum_1_reg[0]0_n_82\ : STD_LOGIC;
  signal \sum_1_reg[0]0_n_83\ : STD_LOGIC;
  signal \sum_1_reg[0]0_n_84\ : STD_LOGIC;
  signal \sum_1_reg[0]0_n_85\ : STD_LOGIC;
  signal \sum_1_reg[0]0_n_86\ : STD_LOGIC;
  signal \sum_1_reg[0]0_n_87\ : STD_LOGIC;
  signal \sum_1_reg[0]0_n_88\ : STD_LOGIC;
  signal \sum_1_reg[0]0_n_89\ : STD_LOGIC;
  signal \sum_1_reg[0]0_n_90\ : STD_LOGIC;
  signal \sum_1_reg[0]0_n_91\ : STD_LOGIC;
  signal \sum_1_reg[0]0_n_92\ : STD_LOGIC;
  signal \sum_1_reg[0]0_n_93\ : STD_LOGIC;
  signal \sum_1_reg[0]0_n_94\ : STD_LOGIC;
  signal \sum_1_reg[0]0_n_95\ : STD_LOGIC;
  signal \sum_1_reg[0]0_n_96\ : STD_LOGIC;
  signal \sum_1_reg[0]0_n_97\ : STD_LOGIC;
  signal \sum_1_reg[0]0_n_98\ : STD_LOGIC;
  signal \sum_1_reg[0]0_n_99\ : STD_LOGIC;
  signal \^sum_1_reg[0][0]_0\ : STD_LOGIC;
  signal \sum_1_reg[0]_6\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \sum_1_reg[1]_5\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \sum_1_reg[2]_4\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \sum_3[0][0]_i_3_n_0\ : STD_LOGIC;
  signal \sum_3[0][0]_i_4_n_0\ : STD_LOGIC;
  signal \sum_3[0][0]_i_5_n_0\ : STD_LOGIC;
  signal \sum_3[0][0]_i_6_n_0\ : STD_LOGIC;
  signal \sum_3[0][12]_i_2_n_0\ : STD_LOGIC;
  signal \sum_3[0][12]_i_3_n_0\ : STD_LOGIC;
  signal \sum_3[0][12]_i_4_n_0\ : STD_LOGIC;
  signal \sum_3[0][12]_i_5_n_0\ : STD_LOGIC;
  signal \sum_3[0][16]_i_2_n_0\ : STD_LOGIC;
  signal \sum_3[0][16]_i_3_n_0\ : STD_LOGIC;
  signal \sum_3[0][16]_i_4_n_0\ : STD_LOGIC;
  signal \sum_3[0][16]_i_5_n_0\ : STD_LOGIC;
  signal \sum_3[0][20]_i_2_n_0\ : STD_LOGIC;
  signal \sum_3[0][20]_i_3_n_0\ : STD_LOGIC;
  signal \sum_3[0][20]_i_4_n_0\ : STD_LOGIC;
  signal \sum_3[0][20]_i_5_n_0\ : STD_LOGIC;
  signal \sum_3[0][24]_i_2_n_0\ : STD_LOGIC;
  signal \sum_3[0][24]_i_3_n_0\ : STD_LOGIC;
  signal \sum_3[0][24]_i_4_n_0\ : STD_LOGIC;
  signal \sum_3[0][24]_i_5_n_0\ : STD_LOGIC;
  signal \sum_3[0][28]_i_2_n_0\ : STD_LOGIC;
  signal \sum_3[0][28]_i_3_n_0\ : STD_LOGIC;
  signal \sum_3[0][28]_i_4_n_0\ : STD_LOGIC;
  signal \sum_3[0][28]_i_5_n_0\ : STD_LOGIC;
  signal \sum_3[0][4]_i_2_n_0\ : STD_LOGIC;
  signal \sum_3[0][4]_i_3_n_0\ : STD_LOGIC;
  signal \sum_3[0][4]_i_4_n_0\ : STD_LOGIC;
  signal \sum_3[0][4]_i_5_n_0\ : STD_LOGIC;
  signal \sum_3[0][8]_i_2_n_0\ : STD_LOGIC;
  signal \sum_3[0][8]_i_3_n_0\ : STD_LOGIC;
  signal \sum_3[0][8]_i_4_n_0\ : STD_LOGIC;
  signal \sum_3[0][8]_i_5_n_0\ : STD_LOGIC;
  signal \sum_3[0]_1\ : STD_LOGIC;
  signal \sum_3_reg[0][0]_i_2_n_0\ : STD_LOGIC;
  signal \sum_3_reg[0][0]_i_2_n_1\ : STD_LOGIC;
  signal \sum_3_reg[0][0]_i_2_n_2\ : STD_LOGIC;
  signal \sum_3_reg[0][0]_i_2_n_3\ : STD_LOGIC;
  signal \sum_3_reg[0][0]_i_2_n_4\ : STD_LOGIC;
  signal \sum_3_reg[0][0]_i_2_n_5\ : STD_LOGIC;
  signal \sum_3_reg[0][0]_i_2_n_6\ : STD_LOGIC;
  signal \sum_3_reg[0][0]_i_2_n_7\ : STD_LOGIC;
  signal \sum_3_reg[0][12]_i_1_n_0\ : STD_LOGIC;
  signal \sum_3_reg[0][12]_i_1_n_1\ : STD_LOGIC;
  signal \sum_3_reg[0][12]_i_1_n_2\ : STD_LOGIC;
  signal \sum_3_reg[0][12]_i_1_n_3\ : STD_LOGIC;
  signal \sum_3_reg[0][12]_i_1_n_4\ : STD_LOGIC;
  signal \sum_3_reg[0][12]_i_1_n_5\ : STD_LOGIC;
  signal \sum_3_reg[0][12]_i_1_n_6\ : STD_LOGIC;
  signal \sum_3_reg[0][12]_i_1_n_7\ : STD_LOGIC;
  signal \sum_3_reg[0][16]_i_1_n_0\ : STD_LOGIC;
  signal \sum_3_reg[0][16]_i_1_n_1\ : STD_LOGIC;
  signal \sum_3_reg[0][16]_i_1_n_2\ : STD_LOGIC;
  signal \sum_3_reg[0][16]_i_1_n_3\ : STD_LOGIC;
  signal \sum_3_reg[0][16]_i_1_n_4\ : STD_LOGIC;
  signal \sum_3_reg[0][16]_i_1_n_5\ : STD_LOGIC;
  signal \sum_3_reg[0][16]_i_1_n_6\ : STD_LOGIC;
  signal \sum_3_reg[0][16]_i_1_n_7\ : STD_LOGIC;
  signal \sum_3_reg[0][20]_i_1_n_0\ : STD_LOGIC;
  signal \sum_3_reg[0][20]_i_1_n_1\ : STD_LOGIC;
  signal \sum_3_reg[0][20]_i_1_n_2\ : STD_LOGIC;
  signal \sum_3_reg[0][20]_i_1_n_3\ : STD_LOGIC;
  signal \sum_3_reg[0][20]_i_1_n_4\ : STD_LOGIC;
  signal \sum_3_reg[0][20]_i_1_n_5\ : STD_LOGIC;
  signal \sum_3_reg[0][20]_i_1_n_6\ : STD_LOGIC;
  signal \sum_3_reg[0][20]_i_1_n_7\ : STD_LOGIC;
  signal \sum_3_reg[0][24]_i_1_n_0\ : STD_LOGIC;
  signal \sum_3_reg[0][24]_i_1_n_1\ : STD_LOGIC;
  signal \sum_3_reg[0][24]_i_1_n_2\ : STD_LOGIC;
  signal \sum_3_reg[0][24]_i_1_n_3\ : STD_LOGIC;
  signal \sum_3_reg[0][24]_i_1_n_4\ : STD_LOGIC;
  signal \sum_3_reg[0][24]_i_1_n_5\ : STD_LOGIC;
  signal \sum_3_reg[0][24]_i_1_n_6\ : STD_LOGIC;
  signal \sum_3_reg[0][24]_i_1_n_7\ : STD_LOGIC;
  signal \sum_3_reg[0][28]_i_1_n_1\ : STD_LOGIC;
  signal \sum_3_reg[0][28]_i_1_n_2\ : STD_LOGIC;
  signal \sum_3_reg[0][28]_i_1_n_3\ : STD_LOGIC;
  signal \sum_3_reg[0][28]_i_1_n_4\ : STD_LOGIC;
  signal \sum_3_reg[0][28]_i_1_n_5\ : STD_LOGIC;
  signal \sum_3_reg[0][28]_i_1_n_6\ : STD_LOGIC;
  signal \sum_3_reg[0][28]_i_1_n_7\ : STD_LOGIC;
  signal \sum_3_reg[0][4]_i_1_n_0\ : STD_LOGIC;
  signal \sum_3_reg[0][4]_i_1_n_1\ : STD_LOGIC;
  signal \sum_3_reg[0][4]_i_1_n_2\ : STD_LOGIC;
  signal \sum_3_reg[0][4]_i_1_n_3\ : STD_LOGIC;
  signal \sum_3_reg[0][4]_i_1_n_4\ : STD_LOGIC;
  signal \sum_3_reg[0][4]_i_1_n_5\ : STD_LOGIC;
  signal \sum_3_reg[0][4]_i_1_n_6\ : STD_LOGIC;
  signal \sum_3_reg[0][4]_i_1_n_7\ : STD_LOGIC;
  signal \sum_3_reg[0][8]_i_1_n_0\ : STD_LOGIC;
  signal \sum_3_reg[0][8]_i_1_n_1\ : STD_LOGIC;
  signal \sum_3_reg[0][8]_i_1_n_2\ : STD_LOGIC;
  signal \sum_3_reg[0][8]_i_1_n_3\ : STD_LOGIC;
  signal \sum_3_reg[0][8]_i_1_n_4\ : STD_LOGIC;
  signal \sum_3_reg[0][8]_i_1_n_5\ : STD_LOGIC;
  signal \sum_3_reg[0][8]_i_1_n_6\ : STD_LOGIC;
  signal \sum_3_reg[0][8]_i_1_n_7\ : STD_LOGIC;
  signal \sum_3_reg[0]_0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^tmp2_reg\ : STD_LOGIC;
  signal NLW_prod_30_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_prod_30_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_prod_30_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_prod_30_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_prod_30_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_prod_30_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_prod_30_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_prod_30_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_prod_30_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_prod_30_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 24 );
  signal NLW_prod_30_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal \NLW_sum_1_reg[0]0_CARRYCASCOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_sum_1_reg[0]0_MULTSIGNOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_sum_1_reg[0]0_OVERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_sum_1_reg[0]0_PATTERNBDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_sum_1_reg[0]0_PATTERNDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_sum_1_reg[0]0_UNDERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_sum_1_reg[0]0_ACOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \NLW_sum_1_reg[0]0_BCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \NLW_sum_1_reg[0]0_CARRYOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_sum_1_reg[0]0_P_UNCONNECTED\ : STD_LOGIC_VECTOR ( 47 downto 32 );
  signal \NLW_sum_1_reg[0]0_PCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal \NLW_sum_3_reg[0][28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt_examples_out[1]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \cnt_examples_out[6]_i_2\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \cnt_features[0]_i_2\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \cnt_features[2]_i_3\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \cnt_hidden[0]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of features_f_RAM_reg_0_63_0_2_i_15 : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \idx_stage_1[1]_i_4\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \idx_stage_3[0]_i_2\ : label is "soft_lutpair50";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of prod_30 : label is "{SYNTH-11 {cell *THIS*}}";
  attribute SOFT_HLUTNM of prod_30_i_13 : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of state1_next1_carry_i_6 : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of state1_next1_carry_i_7 : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \state3_curr[0]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \state4_curr[0]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \state4_curr[1]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \sum_1[2][31]_i_4\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \sum_1_reg[0]0_i_48\ : label is "soft_lutpair54";
begin
  E(0) <= \^e\(0);
  \cnt_ex_block_updated_reg[0]\ <= \^cnt_ex_block_updated_reg[0]\;
  \cnt_examples_out_reg[7]\ <= \^cnt_examples_out_reg[7]\;
  feedforward_en6_out <= \^feedforward_en6_out\;
  prod_30_0 <= \^prod_30_0\;
  \state1_curr_reg[1]\(1 downto 0) <= \^state1_curr_reg[1]\(1 downto 0);
  \state_curr_reg[0]\ <= \^state_curr_reg[0]\;
  \sum_1_reg[0][0]_0\ <= \^sum_1_reg[0][0]_0\;
  tmp2_reg <= \^tmp2_reg\;
\activation_1[0].sigmoid_instances1\: entity work.sigmoid
     port map (
      D(11 downto 0) => \activ1_out[0]_12\(11 downto 0),
      E(0) => \^feedforward_en6_out\,
      Q(31 downto 0) => \sum_1_reg[0]_6\(31 downto 0),
      clk_IBUF_BUFG => clk_IBUF_BUFG
    );
\activation_1[1].sigmoid_instances1\: entity work.sigmoid_0
     port map (
      D(11 downto 0) => \activ1_out[1]_11\(11 downto 0),
      E(0) => \^feedforward_en6_out\,
      Q(31 downto 0) => \sum_1_reg[1]_5\(31 downto 0),
      clk_IBUF_BUFG => clk_IBUF_BUFG
    );
\activation_1[2].sigmoid_instances1\: entity work.sigmoid_1
     port map (
      D(11 downto 0) => \activ1_out[2]_10\(11 downto 0),
      E(0) => \^feedforward_en6_out\,
      Q(31 downto 0) => \sum_1_reg[2]_4\(31 downto 0),
      clk_IBUF_BUFG => clk_IBUF_BUFG
    );
\activation_2[0].sigmoid_instances2\: entity work.sigmoid_2
     port map (
      \AXIS_in[ARESETN]\ => \AXIS_in[ARESETN]\,
      D(11 downto 0) => \activ2_out[0]_13\(11 downto 0),
      E(0) => \^feedforward_en6_out\,
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      cnt_ex_block_outdated => cnt_ex_block_outdated,
      \cnt_features_reg[0]\ => \cnt_features_reg[0]_1\,
      \cnt_features_reg[1]\ => \cnt_features_reg[1]_0\,
      \cnt_features_reg[2]\ => \cnt_features_reg[2]_1\,
      cnt_weight1(1 downto 0) => cnt_weight1(1 downto 0),
      examples_in(0) => examples_in(1),
      examples_out(7 downto 0) => examples_out(7 downto 0),
      main_state_curr(2 downto 0) => main_state_curr(2 downto 0),
      \nb_examples_reg[7]\(7 downto 0) => \nb_examples_reg[7]_1\(7 downto 0),
      \state1_curr_reg[1]\(1 downto 0) => \state1_curr_reg[1]_0\(1 downto 0),
      \state_curr_reg[2]\ => \state_curr_reg[2]_0\,
      \sum_3_reg[0]_0\(31 downto 0) => \sum_3_reg[0]_0\(31 downto 0),
      tmp2_reg_0 => \activation_2[0].sigmoid_instances2_n_1\,
      tmp2_reg_1 => \activation_2[0].sigmoid_instances2_n_2\,
      tmp2_reg_2 => \^tmp2_reg\,
      tmp2_reg_3 => \activation_2[0].sigmoid_instances2_n_4\,
      tmp2_reg_4 => \activation_2[0].sigmoid_instances2_n_5\
    );
\cnt_ex_block_outdated[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000055555755"
    )
        port map (
      I0 => main_state_curr(0),
      I1 => LED_8_OBUF,
      I2 => \activation_2[0].sigmoid_instances2_n_1\,
      I3 => \cnt_ex_block_updated_reg[0]_1\,
      I4 => \sum_1_reg[0]0_i_48_n_0\,
      I5 => \activation_2[0].sigmoid_instances2_n_2\,
      O => cnt_ex_block_outdated_next7_out
    );
\cnt_ex_block_updated[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFCC8C00000080"
    )
        port map (
      I0 => cnt_ex_block_outdated,
      I1 => main_state_curr(0),
      I2 => LED_8_OBUF,
      I3 => \^cnt_ex_block_updated_reg[0]\,
      I4 => \main_state_curr_reg[1]_1\,
      I5 => cnt_ex_block_updated,
      O => \cnt_ex_block_updated_reg[0]_0\
    );
\cnt_ex_block_updated[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \activation_2[0].sigmoid_instances2_n_1\,
      I1 => \cnt_ex_block_outdated_reg[0]\,
      O => \^cnt_ex_block_updated_reg[0]\
    );
\cnt_examples_out[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10DF2020"
    )
        port map (
      I0 => examples_out(0),
      I1 => \^cnt_examples_out_reg[7]\,
      I2 => \^feedforward_en6_out\,
      I3 => \main_state_curr_reg[1]\,
      I4 => examples_out(1),
      O => \cnt_examples_out_reg[1]\
    );
\cnt_examples_out[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000BAAAA"
    )
        port map (
      I0 => \main_state_curr_reg[1]\,
      I1 => \^cnt_examples_out_reg[7]\,
      I2 => \state4_curr_reg[0]_0\,
      I3 => \state4_curr_reg[1]_0\,
      I4 => \^feedforward_en6_out\,
      O => \cnt_examples_out_reg[6]\
    );
\cnt_examples_out[6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \^cnt_examples_out_reg[7]\,
      I1 => \^feedforward_en6_out\,
      I2 => \main_state_curr_reg[1]\,
      O => cnt_examples_out
    );
\cnt_examples_out[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0700F7FF08000800"
    )
        port map (
      I0 => examples_out(6),
      I1 => \cnt_examples_out_reg[4]\,
      I2 => \^cnt_examples_out_reg[7]\,
      I3 => \^feedforward_en6_out\,
      I4 => \main_state_curr_reg[1]\,
      I5 => examples_out(7),
      O => \cnt_examples_out_reg[7]_0\
    );
\cnt_features[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55D55DDD08080000"
    )
        port map (
      I0 => \^feedforward_en6_out\,
      I1 => \state1_curr_reg[1]_0\(1),
      I2 => \state1_curr_reg[1]_0\(0),
      I3 => \sum_1[2][31]_i_4_n_0\,
      I4 => \cnt_features[0]_i_2_n_0\,
      I5 => \cnt_features_reg[0]_1\,
      O => \cnt_features_reg[0]\
    );
\cnt_features[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40444444"
    )
        port map (
      I0 => cnt_weight1(0),
      I1 => cnt_weight1(1),
      I2 => \cnt_features_reg[1]_0\,
      I3 => \cnt_features_reg[2]_1\,
      I4 => \cnt_features_reg[0]_1\,
      O => \cnt_features[0]_i_2_n_0\
    );
\cnt_features[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF04FF00000800"
    )
        port map (
      I0 => \cnt_features_reg[0]_1\,
      I1 => \state1_curr_reg[1]_0\(1),
      I2 => \state1_curr_reg[1]_0\(0),
      I3 => \^feedforward_en6_out\,
      I4 => \cnt_features[2]_i_3_n_0\,
      I5 => \cnt_features_reg[1]_0\,
      O => \cnt_features_reg[1]\
    );
\cnt_features[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \cnt_features_reg[2]_3\,
      I1 => \^feedforward_en6_out\,
      I2 => \cnt_features[2]_i_3_n_0\,
      I3 => \cnt_features_reg[2]_1\,
      O => \cnt_features_reg[2]\
    );
\cnt_features[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F3EF0000"
    )
        port map (
      I0 => \cnt_features_reg[0]_0\,
      I1 => cnt_weight1(0),
      I2 => cnt_weight1(1),
      I3 => \state1_curr_reg[1]_0\(0),
      I4 => \state1_curr_reg[1]_0\(1),
      O => \cnt_features[2]_i_3_n_0\
    );
\cnt_hidden[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"64446464"
    )
        port map (
      I0 => \^feedforward_en6_out\,
      I1 => \cnt_hidden_reg[0]_0\,
      I2 => Q(1),
      I3 => Q(0),
      I4 => \cnt_hidden_reg[1]_0\,
      O => \cnt_hidden_reg[0]\
    );
\cnt_hidden[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7580"
    )
        port map (
      I0 => \^feedforward_en6_out\,
      I1 => \cnt_hidden_reg[0]_0\,
      I2 => Q(1),
      I3 => \cnt_hidden_reg[1]_0\,
      O => \cnt_hidden_reg[1]\
    );
features_f_RAM_reg_0_63_0_2_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFDE00DE000000"
    )
        port map (
      I0 => \activation_2[0].sigmoid_instances2_n_5\,
      I1 => \cnt_features_reg[1]_0\,
      I2 => \cnt_features_reg[0]_1\,
      I3 => \cnt_features_reg[2]_0\,
      I4 => examples_in(0),
      I5 => features_f_RAM_reg_0_63_0_2_i_15_n_0,
      O => features_f_RAM_reg_0_63_0_2_i_14_n_0
    );
features_f_RAM_reg_0_63_0_2_i_15: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B2A0"
    )
        port map (
      I0 => features_f_RAM_reg_0_63_0_2_i_19_n_0,
      I1 => features_f_RAM_reg_0_63_0_2_i_18_n_0,
      I2 => examples_in(1),
      I3 => examples_in(0),
      O => features_f_RAM_reg_0_63_0_2_i_15_n_0
    );
features_f_RAM_reg_0_63_0_2_i_18: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDFDFFFFFFFFDDDF"
    )
        port map (
      I0 => \state1_curr_reg[1]_0\(1),
      I1 => \state1_curr_reg[1]_0\(0),
      I2 => \cnt_features_reg[2]_1\,
      I3 => \cnt_features_reg[1]_0\,
      I4 => \cnt_features_reg[0]_1\,
      I5 => \activation_2[0].sigmoid_instances2_n_5\,
      O => features_f_RAM_reg_0_63_0_2_i_18_n_0
    );
features_f_RAM_reg_0_63_0_2_i_19: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2200220020022000"
    )
        port map (
      I0 => \state1_curr_reg[1]_0\(1),
      I1 => \state1_curr_reg[1]_0\(0),
      I2 => \cnt_features_reg[0]_1\,
      I3 => \cnt_features_reg[1]_0\,
      I4 => \cnt_features_reg[2]_1\,
      I5 => \activation_2[0].sigmoid_instances2_n_5\,
      O => features_f_RAM_reg_0_63_0_2_i_19_n_0
    );
features_f_RAM_reg_0_63_0_2_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => features_f_RAM_reg_0_63_0_2_i_14_n_0,
      I1 => examples_in(1),
      O => \feature_f_reg[9]\(4)
    );
features_f_RAM_reg_0_63_0_2_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => examples_in(1),
      I1 => features_f_RAM_reg_0_63_0_2_i_14_n_0,
      O => \feature_f_reg[9]\(3)
    );
features_f_RAM_reg_0_63_0_2_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A6A955555956AAAA"
    )
        port map (
      I0 => features_f_RAM_reg_0_63_0_2_i_15_n_0,
      I1 => \activation_2[0].sigmoid_instances2_n_5\,
      I2 => \cnt_features_reg[1]_0\,
      I3 => \cnt_features_reg[0]_1\,
      I4 => \cnt_features_reg[2]_0\,
      I5 => examples_in(0),
      O => \feature_f_reg[9]\(2)
    );
features_f_RAM_reg_0_63_0_2_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4BB4"
    )
        port map (
      I0 => features_f_RAM_reg_0_63_0_2_i_18_n_0,
      I1 => examples_in(0),
      I2 => features_f_RAM_reg_0_63_0_2_i_19_n_0,
      I3 => examples_in(1),
      O => \feature_f_reg[9]\(1)
    );
features_f_RAM_reg_0_63_0_2_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA69A9696A"
    )
        port map (
      I0 => examples_in(0),
      I1 => \activation_2[0].sigmoid_instances2_n_5\,
      I2 => \cnt_features_reg[0]_1\,
      I3 => \cnt_features_reg[1]_0\,
      I4 => \cnt_features_reg[2]_1\,
      I5 => \activation_2[0].sigmoid_instances2_n_4\,
      O => \feature_f_reg[9]\(0)
    );
\idx_stage_1[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000E6E600E6"
    )
        port map (
      I0 => cnt_weight1(0),
      I1 => \sum_1_reg[0]0_i_1_n_0\,
      I2 => cnt_weight1(1),
      I3 => \idx_stage_1[1]_i_2_n_0\,
      I4 => CO(0),
      I5 => \idx_stage_1[1]_i_3_n_0\,
      O => \idx_stage_1[0]_i_1_n_0\
    );
\idx_stage_1[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000006A6A006A"
    )
        port map (
      I0 => cnt_weight1(1),
      I1 => \sum_1_reg[0]0_i_1_n_0\,
      I2 => cnt_weight1(0),
      I3 => \idx_stage_1[1]_i_2_n_0\,
      I4 => CO(0),
      I5 => \idx_stage_1[1]_i_3_n_0\,
      O => \idx_stage_1[1]_i_1_n_0\
    );
\idx_stage_1[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4500455500000000"
    )
        port map (
      I0 => \activation_2[0].sigmoid_instances2_n_2\,
      I1 => \activation_2[0].sigmoid_instances2_n_1\,
      I2 => \sum_1_reg[0]0_i_48_n_0\,
      I3 => main_state_curr(0),
      I4 => \state_curr_reg[2]_0\,
      I5 => \idx_stage_1[1]_i_4_n_0\,
      O => \idx_stage_1[1]_i_2_n_0\
    );
\idx_stage_1[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => \state_curr_reg[2]_1\,
      I1 => main_state_curr(0),
      I2 => \main_state_curr_reg[2]\,
      I3 => \AXIS_in[ARESETN]\,
      I4 => \state1_curr_reg[1]_0\(1),
      I5 => \state1_curr_reg[1]_0\(0),
      O => \idx_stage_1[1]_i_3_n_0\
    );
\idx_stage_1[1]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => cnt_weight1(1),
      I1 => cnt_weight1(0),
      I2 => \state1_curr_reg[1]_0\(1),
      I3 => \state1_curr_reg[1]_0\(0),
      O => \idx_stage_1[1]_i_4_n_0\
    );
\idx_stage_1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \idx_stage_1[0]_i_1_n_0\,
      Q => cnt_weight1(0),
      R => '0'
    );
\idx_stage_1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \idx_stage_1[1]_i_1_n_0\,
      Q => cnt_weight1(1),
      R => '0'
    );
\idx_stage_3[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0EAE"
    )
        port map (
      I0 => \idx_stage_3_reg_n_0_[0]\,
      I1 => \^feedforward_en6_out\,
      I2 => \idx_stage_3[0]_i_2_n_0\,
      I3 => \latch_hidden_layer[0]_3\,
      O => \idx_stage_3[0]_i_1_n_0\
    );
\idx_stage_3[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"800F"
    )
        port map (
      I0 => \cnt_hidden_reg[0]_0\,
      I1 => \cnt_hidden_reg[1]_0\,
      I2 => Q(0),
      I3 => Q(1),
      O => \idx_stage_3[0]_i_2_n_0\
    );
\idx_stage_3_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \idx_stage_3[0]_i_1_n_0\,
      Q => \idx_stage_3_reg_n_0_[0]\,
      R => '0'
    );
\latch_hidden_layer[2][11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4500455500000000"
    )
        port map (
      I0 => \activation_2[0].sigmoid_instances2_n_2\,
      I1 => \activation_2[0].sigmoid_instances2_n_1\,
      I2 => \sum_1_reg[0]0_i_48_n_0\,
      I3 => main_state_curr(0),
      I4 => \state_curr_reg[2]_0\,
      I5 => \latch_hidden_layer[2][11]_i_3_n_0\,
      O => \latch_hidden_layer[0]_3\
    );
\latch_hidden_layer[2][11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF7F0000"
    )
        port map (
      I0 => \state1_curr_reg[1]_0\(0),
      I1 => \state1_curr_reg[1]_0\(1),
      I2 => cnt_weight1(0),
      I3 => cnt_weight1(1),
      I4 => \state2_curr_reg[1]_0\,
      I5 => \state2_curr_reg[0]_0\,
      O => \latch_hidden_layer[2][11]_i_3_n_0\
    );
\latch_hidden_layer_reg[0][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \latch_hidden_layer[0]_3\,
      D => \activ1_out[0]_12\(0),
      Q => \latch_hidden_layer_reg[0]_9\(0),
      R => '0'
    );
\latch_hidden_layer_reg[0][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \latch_hidden_layer[0]_3\,
      D => \activ1_out[0]_12\(10),
      Q => \latch_hidden_layer_reg[0]_9\(10),
      R => '0'
    );
\latch_hidden_layer_reg[0][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \latch_hidden_layer[0]_3\,
      D => \activ1_out[0]_12\(11),
      Q => \latch_hidden_layer_reg[0]_9\(11),
      R => '0'
    );
\latch_hidden_layer_reg[0][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \latch_hidden_layer[0]_3\,
      D => \activ1_out[0]_12\(1),
      Q => \latch_hidden_layer_reg[0]_9\(1),
      R => '0'
    );
\latch_hidden_layer_reg[0][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \latch_hidden_layer[0]_3\,
      D => \activ1_out[0]_12\(2),
      Q => \latch_hidden_layer_reg[0]_9\(2),
      R => '0'
    );
\latch_hidden_layer_reg[0][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \latch_hidden_layer[0]_3\,
      D => \activ1_out[0]_12\(3),
      Q => \latch_hidden_layer_reg[0]_9\(3),
      R => '0'
    );
\latch_hidden_layer_reg[0][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \latch_hidden_layer[0]_3\,
      D => \activ1_out[0]_12\(4),
      Q => \latch_hidden_layer_reg[0]_9\(4),
      R => '0'
    );
\latch_hidden_layer_reg[0][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \latch_hidden_layer[0]_3\,
      D => \activ1_out[0]_12\(5),
      Q => \latch_hidden_layer_reg[0]_9\(5),
      R => '0'
    );
\latch_hidden_layer_reg[0][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \latch_hidden_layer[0]_3\,
      D => \activ1_out[0]_12\(6),
      Q => \latch_hidden_layer_reg[0]_9\(6),
      R => '0'
    );
\latch_hidden_layer_reg[0][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \latch_hidden_layer[0]_3\,
      D => \activ1_out[0]_12\(7),
      Q => \latch_hidden_layer_reg[0]_9\(7),
      R => '0'
    );
\latch_hidden_layer_reg[0][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \latch_hidden_layer[0]_3\,
      D => \activ1_out[0]_12\(8),
      Q => \latch_hidden_layer_reg[0]_9\(8),
      R => '0'
    );
\latch_hidden_layer_reg[0][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \latch_hidden_layer[0]_3\,
      D => \activ1_out[0]_12\(9),
      Q => \latch_hidden_layer_reg[0]_9\(9),
      R => '0'
    );
\latch_hidden_layer_reg[1][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \latch_hidden_layer[0]_3\,
      D => \activ1_out[1]_11\(0),
      Q => \latch_hidden_layer_reg[1]_8\(0),
      R => '0'
    );
\latch_hidden_layer_reg[1][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \latch_hidden_layer[0]_3\,
      D => \activ1_out[1]_11\(10),
      Q => \latch_hidden_layer_reg[1]_8\(10),
      R => '0'
    );
\latch_hidden_layer_reg[1][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \latch_hidden_layer[0]_3\,
      D => \activ1_out[1]_11\(11),
      Q => \latch_hidden_layer_reg[1]_8\(11),
      R => '0'
    );
\latch_hidden_layer_reg[1][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \latch_hidden_layer[0]_3\,
      D => \activ1_out[1]_11\(1),
      Q => \latch_hidden_layer_reg[1]_8\(1),
      R => '0'
    );
\latch_hidden_layer_reg[1][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \latch_hidden_layer[0]_3\,
      D => \activ1_out[1]_11\(2),
      Q => \latch_hidden_layer_reg[1]_8\(2),
      R => '0'
    );
\latch_hidden_layer_reg[1][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \latch_hidden_layer[0]_3\,
      D => \activ1_out[1]_11\(3),
      Q => \latch_hidden_layer_reg[1]_8\(3),
      R => '0'
    );
\latch_hidden_layer_reg[1][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \latch_hidden_layer[0]_3\,
      D => \activ1_out[1]_11\(4),
      Q => \latch_hidden_layer_reg[1]_8\(4),
      R => '0'
    );
\latch_hidden_layer_reg[1][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \latch_hidden_layer[0]_3\,
      D => \activ1_out[1]_11\(5),
      Q => \latch_hidden_layer_reg[1]_8\(5),
      R => '0'
    );
\latch_hidden_layer_reg[1][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \latch_hidden_layer[0]_3\,
      D => \activ1_out[1]_11\(6),
      Q => \latch_hidden_layer_reg[1]_8\(6),
      R => '0'
    );
\latch_hidden_layer_reg[1][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \latch_hidden_layer[0]_3\,
      D => \activ1_out[1]_11\(7),
      Q => \latch_hidden_layer_reg[1]_8\(7),
      R => '0'
    );
\latch_hidden_layer_reg[1][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \latch_hidden_layer[0]_3\,
      D => \activ1_out[1]_11\(8),
      Q => \latch_hidden_layer_reg[1]_8\(8),
      R => '0'
    );
\latch_hidden_layer_reg[1][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \latch_hidden_layer[0]_3\,
      D => \activ1_out[1]_11\(9),
      Q => \latch_hidden_layer_reg[1]_8\(9),
      R => '0'
    );
\latch_hidden_layer_reg[2][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \latch_hidden_layer[0]_3\,
      D => \activ1_out[2]_10\(0),
      Q => \latch_hidden_layer_reg[2]_7\(0),
      R => '0'
    );
\latch_hidden_layer_reg[2][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \latch_hidden_layer[0]_3\,
      D => \activ1_out[2]_10\(10),
      Q => \latch_hidden_layer_reg[2]_7\(10),
      R => '0'
    );
\latch_hidden_layer_reg[2][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \latch_hidden_layer[0]_3\,
      D => \activ1_out[2]_10\(11),
      Q => \latch_hidden_layer_reg[2]_7\(11),
      R => '0'
    );
\latch_hidden_layer_reg[2][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \latch_hidden_layer[0]_3\,
      D => \activ1_out[2]_10\(1),
      Q => \latch_hidden_layer_reg[2]_7\(1),
      R => '0'
    );
\latch_hidden_layer_reg[2][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \latch_hidden_layer[0]_3\,
      D => \activ1_out[2]_10\(2),
      Q => \latch_hidden_layer_reg[2]_7\(2),
      R => '0'
    );
\latch_hidden_layer_reg[2][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \latch_hidden_layer[0]_3\,
      D => \activ1_out[2]_10\(3),
      Q => \latch_hidden_layer_reg[2]_7\(3),
      R => '0'
    );
\latch_hidden_layer_reg[2][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \latch_hidden_layer[0]_3\,
      D => \activ1_out[2]_10\(4),
      Q => \latch_hidden_layer_reg[2]_7\(4),
      R => '0'
    );
\latch_hidden_layer_reg[2][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \latch_hidden_layer[0]_3\,
      D => \activ1_out[2]_10\(5),
      Q => \latch_hidden_layer_reg[2]_7\(5),
      R => '0'
    );
\latch_hidden_layer_reg[2][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \latch_hidden_layer[0]_3\,
      D => \activ1_out[2]_10\(6),
      Q => \latch_hidden_layer_reg[2]_7\(6),
      R => '0'
    );
\latch_hidden_layer_reg[2][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \latch_hidden_layer[0]_3\,
      D => \activ1_out[2]_10\(7),
      Q => \latch_hidden_layer_reg[2]_7\(7),
      R => '0'
    );
\latch_hidden_layer_reg[2][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \latch_hidden_layer[0]_3\,
      D => \activ1_out[2]_10\(8),
      Q => \latch_hidden_layer_reg[2]_7\(8),
      R => '0'
    );
\latch_hidden_layer_reg[2][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \latch_hidden_layer[0]_3\,
      D => \activ1_out[2]_10\(9),
      Q => \latch_hidden_layer_reg[2]_7\(9),
      R => '0'
    );
\latch_output_layer[0][11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000045004555"
    )
        port map (
      I0 => \activation_2[0].sigmoid_instances2_n_2\,
      I1 => \activation_2[0].sigmoid_instances2_n_1\,
      I2 => \sum_1_reg[0]0_i_48_n_0\,
      I3 => main_state_curr(0),
      I4 => \state_curr_reg[2]_0\,
      I5 => \^cnt_examples_out_reg[7]\,
      O => \^e\(0)
    );
\latch_output_layer[0][11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDDDDDDDDDDDDDDD"
    )
        port map (
      I0 => \state4_curr_reg[1]_0\,
      I1 => \state4_curr_reg[0]_0\,
      I2 => Q(1),
      I3 => Q(0),
      I4 => \cnt_hidden_reg[0]_0\,
      I5 => \cnt_hidden_reg[1]_0\,
      O => \^cnt_examples_out_reg[7]\
    );
\latch_output_layer_reg[0][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \^e\(0),
      D => \activ2_out[0]_13\(0),
      Q => results_RAM_reg(0),
      R => '0'
    );
\latch_output_layer_reg[0][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \^e\(0),
      D => \activ2_out[0]_13\(10),
      Q => results_RAM_reg(10),
      R => '0'
    );
\latch_output_layer_reg[0][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \^e\(0),
      D => \activ2_out[0]_13\(11),
      Q => results_RAM_reg(11),
      R => '0'
    );
\latch_output_layer_reg[0][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \^e\(0),
      D => \activ2_out[0]_13\(1),
      Q => results_RAM_reg(1),
      R => '0'
    );
\latch_output_layer_reg[0][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \^e\(0),
      D => \activ2_out[0]_13\(2),
      Q => results_RAM_reg(2),
      R => '0'
    );
\latch_output_layer_reg[0][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \^e\(0),
      D => \activ2_out[0]_13\(3),
      Q => results_RAM_reg(3),
      R => '0'
    );
\latch_output_layer_reg[0][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \^e\(0),
      D => \activ2_out[0]_13\(4),
      Q => results_RAM_reg(4),
      R => '0'
    );
\latch_output_layer_reg[0][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \^e\(0),
      D => \activ2_out[0]_13\(5),
      Q => results_RAM_reg(5),
      R => '0'
    );
\latch_output_layer_reg[0][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \^e\(0),
      D => \activ2_out[0]_13\(6),
      Q => results_RAM_reg(6),
      R => '0'
    );
\latch_output_layer_reg[0][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \^e\(0),
      D => \activ2_out[0]_13\(7),
      Q => results_RAM_reg(7),
      R => '0'
    );
\latch_output_layer_reg[0][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \^e\(0),
      D => \activ2_out[0]_13\(8),
      Q => results_RAM_reg(8),
      R => '0'
    );
\latch_output_layer_reg[0][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \^e\(0),
      D => \activ2_out[0]_13\(9),
      Q => results_RAM_reg(9),
      R => '0'
    );
prod_30: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => A(11),
      A(28) => A(11),
      A(27) => A(11),
      A(26) => A(11),
      A(25) => A(11),
      A(24) => A(11),
      A(23) => A(11),
      A(22) => A(11),
      A(21) => A(11),
      A(20) => A(11),
      A(19) => A(11),
      A(18) => A(11),
      A(17) => A(11),
      A(16) => A(11),
      A(15) => A(11),
      A(14) => A(11),
      A(13) => A(11),
      A(12) => A(11),
      A(11 downto 0) => A(11 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_prod_30_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => \lfsr_reg[7]\(11),
      B(16) => \lfsr_reg[7]\(11),
      B(15) => \lfsr_reg[7]\(11),
      B(14) => \lfsr_reg[7]\(11),
      B(13) => \lfsr_reg[7]\(11),
      B(12) => \lfsr_reg[7]\(11),
      B(11 downto 0) => \lfsr_reg[7]\(11 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_prod_30_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_prod_30_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_prod_30_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '1',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => clk_IBUF_BUFG,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_prod_30_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_prod_30_OVERFLOW_UNCONNECTED,
      P(47 downto 24) => NLW_prod_30_P_UNCONNECTED(47 downto 24),
      P(23) => prod_30_n_82,
      P(22) => prod_30_n_83,
      P(21) => prod_30_n_84,
      P(20) => prod_30_n_85,
      P(19) => prod_30_n_86,
      P(18) => prod_30_n_87,
      P(17) => prod_30_n_88,
      P(16) => prod_30_n_89,
      P(15) => prod_30_n_90,
      P(14) => prod_30_n_91,
      P(13) => prod_30_n_92,
      P(12) => prod_30_n_93,
      P(11) => prod_30_n_94,
      P(10) => prod_30_n_95,
      P(9) => prod_30_n_96,
      P(8) => prod_30_n_97,
      P(7) => prod_30_n_98,
      P(6) => prod_30_n_99,
      P(5) => prod_30_n_100,
      P(4) => prod_30_n_101,
      P(3) => prod_30_n_102,
      P(2) => prod_30_n_103,
      P(1) => prod_30_n_104,
      P(0) => prod_30_n_105,
      PATTERNBDETECT => NLW_prod_30_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_prod_30_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_prod_30_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_prod_30_UNDERFLOW_UNCONNECTED
    );
prod_30_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F808F8F8F808080"
    )
        port map (
      I0 => \latch_hidden_layer_reg[1]_8\(11),
      I1 => \^prod_30_0\,
      I2 => prod_30_i_13_n_0,
      I3 => \latch_hidden_layer_reg[2]_7\(11),
      I4 => \cnt_hidden_reg[1]_0\,
      I5 => \latch_hidden_layer_reg[0]_9\(11),
      O => A(11)
    );
prod_30_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F808F8F8F808080"
    )
        port map (
      I0 => \latch_hidden_layer_reg[1]_8\(2),
      I1 => \^prod_30_0\,
      I2 => prod_30_i_13_n_0,
      I3 => \latch_hidden_layer_reg[2]_7\(2),
      I4 => \cnt_hidden_reg[1]_0\,
      I5 => \latch_hidden_layer_reg[0]_9\(2),
      O => A(2)
    );
prod_30_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F808F8F8F808080"
    )
        port map (
      I0 => \latch_hidden_layer_reg[1]_8\(1),
      I1 => \^prod_30_0\,
      I2 => prod_30_i_13_n_0,
      I3 => \latch_hidden_layer_reg[2]_7\(1),
      I4 => \cnt_hidden_reg[1]_0\,
      I5 => \latch_hidden_layer_reg[0]_9\(1),
      O => A(1)
    );
prod_30_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F808F8F8F808080"
    )
        port map (
      I0 => \latch_hidden_layer_reg[1]_8\(0),
      I1 => \^prod_30_0\,
      I2 => prod_30_i_13_n_0,
      I3 => \latch_hidden_layer_reg[2]_7\(0),
      I4 => \cnt_hidden_reg[1]_0\,
      I5 => \latch_hidden_layer_reg[0]_9\(0),
      O => A(0)
    );
prod_30_i_13: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => \cnt_hidden_reg[0]_0\,
      I1 => Q(1),
      I2 => Q(0),
      O => prod_30_i_13_n_0
    );
prod_30_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F808F8F8F808080"
    )
        port map (
      I0 => \latch_hidden_layer_reg[1]_8\(10),
      I1 => \^prod_30_0\,
      I2 => prod_30_i_13_n_0,
      I3 => \latch_hidden_layer_reg[2]_7\(10),
      I4 => \cnt_hidden_reg[1]_0\,
      I5 => \latch_hidden_layer_reg[0]_9\(10),
      O => A(10)
    );
prod_30_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F808F8F8F808080"
    )
        port map (
      I0 => \latch_hidden_layer_reg[1]_8\(9),
      I1 => \^prod_30_0\,
      I2 => prod_30_i_13_n_0,
      I3 => \latch_hidden_layer_reg[2]_7\(9),
      I4 => \cnt_hidden_reg[1]_0\,
      I5 => \latch_hidden_layer_reg[0]_9\(9),
      O => A(9)
    );
prod_30_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F808F8F8F808080"
    )
        port map (
      I0 => \latch_hidden_layer_reg[1]_8\(8),
      I1 => \^prod_30_0\,
      I2 => prod_30_i_13_n_0,
      I3 => \latch_hidden_layer_reg[2]_7\(8),
      I4 => \cnt_hidden_reg[1]_0\,
      I5 => \latch_hidden_layer_reg[0]_9\(8),
      O => A(8)
    );
prod_30_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F808F8F8F808080"
    )
        port map (
      I0 => \latch_hidden_layer_reg[1]_8\(7),
      I1 => \^prod_30_0\,
      I2 => prod_30_i_13_n_0,
      I3 => \latch_hidden_layer_reg[2]_7\(7),
      I4 => \cnt_hidden_reg[1]_0\,
      I5 => \latch_hidden_layer_reg[0]_9\(7),
      O => A(7)
    );
prod_30_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F808F8F8F808080"
    )
        port map (
      I0 => \latch_hidden_layer_reg[1]_8\(6),
      I1 => \^prod_30_0\,
      I2 => prod_30_i_13_n_0,
      I3 => \latch_hidden_layer_reg[2]_7\(6),
      I4 => \cnt_hidden_reg[1]_0\,
      I5 => \latch_hidden_layer_reg[0]_9\(6),
      O => A(6)
    );
prod_30_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F808F8F8F808080"
    )
        port map (
      I0 => \latch_hidden_layer_reg[1]_8\(5),
      I1 => \^prod_30_0\,
      I2 => prod_30_i_13_n_0,
      I3 => \latch_hidden_layer_reg[2]_7\(5),
      I4 => \cnt_hidden_reg[1]_0\,
      I5 => \latch_hidden_layer_reg[0]_9\(5),
      O => A(5)
    );
prod_30_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F808F8F8F808080"
    )
        port map (
      I0 => \latch_hidden_layer_reg[1]_8\(4),
      I1 => \^prod_30_0\,
      I2 => prod_30_i_13_n_0,
      I3 => \latch_hidden_layer_reg[2]_7\(4),
      I4 => \cnt_hidden_reg[1]_0\,
      I5 => \latch_hidden_layer_reg[0]_9\(4),
      O => A(4)
    );
prod_30_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F808F8F8F808080"
    )
        port map (
      I0 => \latch_hidden_layer_reg[1]_8\(3),
      I1 => \^prod_30_0\,
      I2 => prod_30_i_13_n_0,
      I3 => \latch_hidden_layer_reg[2]_7\(3),
      I4 => \cnt_hidden_reg[1]_0\,
      I5 => \latch_hidden_layer_reg[0]_9\(3),
      O => A(3)
    );
\prod_3[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFEFEF00202020"
    )
        port map (
      I0 => prod_30_n_105,
      I1 => Q(0),
      I2 => Q(1),
      I3 => \cnt_hidden_reg[0]_0\,
      I4 => \cnt_hidden_reg[1]_0\,
      I5 => \weight2_f_reg[11]\(0),
      O => p_1_in(0)
    );
\prod_3[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFEFEF00202020"
    )
        port map (
      I0 => prod_30_n_95,
      I1 => Q(0),
      I2 => Q(1),
      I3 => \cnt_hidden_reg[0]_0\,
      I4 => \cnt_hidden_reg[1]_0\,
      I5 => \weight2_f_reg[11]\(10),
      O => p_1_in(10)
    );
\prod_3[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFEFEF00202020"
    )
        port map (
      I0 => prod_30_n_94,
      I1 => Q(0),
      I2 => Q(1),
      I3 => \cnt_hidden_reg[0]_0\,
      I4 => \cnt_hidden_reg[1]_0\,
      I5 => \weight2_f_reg[11]\(11),
      O => p_1_in(11)
    );
\prod_3[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFEFEF00202020"
    )
        port map (
      I0 => prod_30_n_93,
      I1 => Q(0),
      I2 => Q(1),
      I3 => \cnt_hidden_reg[0]_0\,
      I4 => \cnt_hidden_reg[1]_0\,
      I5 => \weight2_f_reg[11]\(11),
      O => p_1_in(12)
    );
\prod_3[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFEFEF00202020"
    )
        port map (
      I0 => prod_30_n_92,
      I1 => Q(0),
      I2 => Q(1),
      I3 => \cnt_hidden_reg[0]_0\,
      I4 => \cnt_hidden_reg[1]_0\,
      I5 => \weight2_f_reg[11]\(11),
      O => p_1_in(13)
    );
\prod_3[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFEFEF00202020"
    )
        port map (
      I0 => prod_30_n_91,
      I1 => Q(0),
      I2 => Q(1),
      I3 => \cnt_hidden_reg[0]_0\,
      I4 => \cnt_hidden_reg[1]_0\,
      I5 => \weight2_f_reg[11]\(11),
      O => p_1_in(14)
    );
\prod_3[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFEFEF00202020"
    )
        port map (
      I0 => prod_30_n_90,
      I1 => Q(0),
      I2 => Q(1),
      I3 => \cnt_hidden_reg[0]_0\,
      I4 => \cnt_hidden_reg[1]_0\,
      I5 => \weight2_f_reg[11]\(11),
      O => p_1_in(15)
    );
\prod_3[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFEFEF00202020"
    )
        port map (
      I0 => prod_30_n_89,
      I1 => Q(0),
      I2 => Q(1),
      I3 => \cnt_hidden_reg[0]_0\,
      I4 => \cnt_hidden_reg[1]_0\,
      I5 => \weight2_f_reg[11]\(11),
      O => p_1_in(16)
    );
\prod_3[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFEFEF00202020"
    )
        port map (
      I0 => prod_30_n_88,
      I1 => Q(0),
      I2 => Q(1),
      I3 => \cnt_hidden_reg[0]_0\,
      I4 => \cnt_hidden_reg[1]_0\,
      I5 => \weight2_f_reg[11]\(11),
      O => p_1_in(17)
    );
\prod_3[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFEFEF00202020"
    )
        port map (
      I0 => prod_30_n_87,
      I1 => Q(0),
      I2 => Q(1),
      I3 => \cnt_hidden_reg[0]_0\,
      I4 => \cnt_hidden_reg[1]_0\,
      I5 => \weight2_f_reg[11]\(11),
      O => p_1_in(18)
    );
\prod_3[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFEFEF00202020"
    )
        port map (
      I0 => prod_30_n_86,
      I1 => Q(0),
      I2 => Q(1),
      I3 => \cnt_hidden_reg[0]_0\,
      I4 => \cnt_hidden_reg[1]_0\,
      I5 => \weight2_f_reg[11]\(11),
      O => p_1_in(19)
    );
\prod_3[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFEFEF00202020"
    )
        port map (
      I0 => prod_30_n_104,
      I1 => Q(0),
      I2 => Q(1),
      I3 => \cnt_hidden_reg[0]_0\,
      I4 => \cnt_hidden_reg[1]_0\,
      I5 => \weight2_f_reg[11]\(1),
      O => p_1_in(1)
    );
\prod_3[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFEFEF00202020"
    )
        port map (
      I0 => prod_30_n_85,
      I1 => Q(0),
      I2 => Q(1),
      I3 => \cnt_hidden_reg[0]_0\,
      I4 => \cnt_hidden_reg[1]_0\,
      I5 => \weight2_f_reg[11]\(11),
      O => p_1_in(20)
    );
\prod_3[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFEFEF00202020"
    )
        port map (
      I0 => prod_30_n_84,
      I1 => Q(0),
      I2 => Q(1),
      I3 => \cnt_hidden_reg[0]_0\,
      I4 => \cnt_hidden_reg[1]_0\,
      I5 => \weight2_f_reg[11]\(11),
      O => p_1_in(21)
    );
\prod_3[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFEFEF00202020"
    )
        port map (
      I0 => prod_30_n_83,
      I1 => Q(0),
      I2 => Q(1),
      I3 => \cnt_hidden_reg[0]_0\,
      I4 => \cnt_hidden_reg[1]_0\,
      I5 => \weight2_f_reg[11]\(11),
      O => p_1_in(22)
    );
\prod_3[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"82020202"
    )
        port map (
      I0 => \latch_hidden_layer[0]_3\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \cnt_hidden_reg[1]_0\,
      I4 => \cnt_hidden_reg[0]_0\,
      O => \prod_3[23]_i_1_n_0\
    );
\prod_3[23]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"28A8A8A8"
    )
        port map (
      I0 => \^feedforward_en6_out\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \cnt_hidden_reg[1]_0\,
      I4 => \cnt_hidden_reg[0]_0\,
      O => idx_stage_30_out
    );
\prod_3[23]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFEFEF00202020"
    )
        port map (
      I0 => prod_30_n_82,
      I1 => Q(0),
      I2 => Q(1),
      I3 => \cnt_hidden_reg[0]_0\,
      I4 => \cnt_hidden_reg[1]_0\,
      I5 => \weight2_f_reg[11]\(11),
      O => p_1_in(23)
    );
\prod_3[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFEFEF00202020"
    )
        port map (
      I0 => prod_30_n_103,
      I1 => Q(0),
      I2 => Q(1),
      I3 => \cnt_hidden_reg[0]_0\,
      I4 => \cnt_hidden_reg[1]_0\,
      I5 => \weight2_f_reg[11]\(2),
      O => p_1_in(2)
    );
\prod_3[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFEFEF00202020"
    )
        port map (
      I0 => prod_30_n_102,
      I1 => Q(0),
      I2 => Q(1),
      I3 => \cnt_hidden_reg[0]_0\,
      I4 => \cnt_hidden_reg[1]_0\,
      I5 => \weight2_f_reg[11]\(3),
      O => p_1_in(3)
    );
\prod_3[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFEFEF00202020"
    )
        port map (
      I0 => prod_30_n_101,
      I1 => Q(0),
      I2 => Q(1),
      I3 => \cnt_hidden_reg[0]_0\,
      I4 => \cnt_hidden_reg[1]_0\,
      I5 => \weight2_f_reg[11]\(4),
      O => p_1_in(4)
    );
\prod_3[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFEFEF00202020"
    )
        port map (
      I0 => prod_30_n_100,
      I1 => Q(0),
      I2 => Q(1),
      I3 => \cnt_hidden_reg[0]_0\,
      I4 => \cnt_hidden_reg[1]_0\,
      I5 => \weight2_f_reg[11]\(5),
      O => p_1_in(5)
    );
\prod_3[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFEFEF00202020"
    )
        port map (
      I0 => prod_30_n_99,
      I1 => Q(0),
      I2 => Q(1),
      I3 => \cnt_hidden_reg[0]_0\,
      I4 => \cnt_hidden_reg[1]_0\,
      I5 => \weight2_f_reg[11]\(6),
      O => p_1_in(6)
    );
\prod_3[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFEFEF00202020"
    )
        port map (
      I0 => prod_30_n_98,
      I1 => Q(0),
      I2 => Q(1),
      I3 => \cnt_hidden_reg[0]_0\,
      I4 => \cnt_hidden_reg[1]_0\,
      I5 => \weight2_f_reg[11]\(7),
      O => p_1_in(7)
    );
\prod_3[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFEFEF00202020"
    )
        port map (
      I0 => prod_30_n_97,
      I1 => Q(0),
      I2 => Q(1),
      I3 => \cnt_hidden_reg[0]_0\,
      I4 => \cnt_hidden_reg[1]_0\,
      I5 => \weight2_f_reg[11]\(8),
      O => p_1_in(8)
    );
\prod_3[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFEFEF00202020"
    )
        port map (
      I0 => prod_30_n_96,
      I1 => Q(0),
      I2 => Q(1),
      I3 => \cnt_hidden_reg[0]_0\,
      I4 => \cnt_hidden_reg[1]_0\,
      I5 => \weight2_f_reg[11]\(9),
      O => p_1_in(9)
    );
\prod_3_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => idx_stage_30_out,
      D => p_1_in(0),
      Q => \prod_3_reg_n_0_[0]\,
      R => \prod_3[23]_i_1_n_0\
    );
\prod_3_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => idx_stage_30_out,
      D => p_1_in(10),
      Q => \prod_3_reg_n_0_[10]\,
      R => \prod_3[23]_i_1_n_0\
    );
\prod_3_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => idx_stage_30_out,
      D => p_1_in(11),
      Q => \prod_3_reg_n_0_[11]\,
      R => \prod_3[23]_i_1_n_0\
    );
\prod_3_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => idx_stage_30_out,
      D => p_1_in(12),
      Q => \prod_3_reg_n_0_[12]\,
      R => \prod_3[23]_i_1_n_0\
    );
\prod_3_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => idx_stage_30_out,
      D => p_1_in(13),
      Q => \prod_3_reg_n_0_[13]\,
      R => \prod_3[23]_i_1_n_0\
    );
\prod_3_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => idx_stage_30_out,
      D => p_1_in(14),
      Q => \prod_3_reg_n_0_[14]\,
      R => \prod_3[23]_i_1_n_0\
    );
\prod_3_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => idx_stage_30_out,
      D => p_1_in(15),
      Q => \prod_3_reg_n_0_[15]\,
      R => \prod_3[23]_i_1_n_0\
    );
\prod_3_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => idx_stage_30_out,
      D => p_1_in(16),
      Q => \prod_3_reg_n_0_[16]\,
      R => \prod_3[23]_i_1_n_0\
    );
\prod_3_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => idx_stage_30_out,
      D => p_1_in(17),
      Q => \prod_3_reg_n_0_[17]\,
      R => \prod_3[23]_i_1_n_0\
    );
\prod_3_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => idx_stage_30_out,
      D => p_1_in(18),
      Q => \prod_3_reg_n_0_[18]\,
      R => \prod_3[23]_i_1_n_0\
    );
\prod_3_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => idx_stage_30_out,
      D => p_1_in(19),
      Q => \prod_3_reg_n_0_[19]\,
      R => \prod_3[23]_i_1_n_0\
    );
\prod_3_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => idx_stage_30_out,
      D => p_1_in(1),
      Q => \prod_3_reg_n_0_[1]\,
      R => \prod_3[23]_i_1_n_0\
    );
\prod_3_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => idx_stage_30_out,
      D => p_1_in(20),
      Q => \prod_3_reg_n_0_[20]\,
      R => \prod_3[23]_i_1_n_0\
    );
\prod_3_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => idx_stage_30_out,
      D => p_1_in(21),
      Q => \prod_3_reg_n_0_[21]\,
      R => \prod_3[23]_i_1_n_0\
    );
\prod_3_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => idx_stage_30_out,
      D => p_1_in(22),
      Q => \prod_3_reg_n_0_[22]\,
      R => \prod_3[23]_i_1_n_0\
    );
\prod_3_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => idx_stage_30_out,
      D => p_1_in(23),
      Q => \prod_3_reg_n_0_[23]\,
      R => \prod_3[23]_i_1_n_0\
    );
\prod_3_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => idx_stage_30_out,
      D => p_1_in(2),
      Q => \prod_3_reg_n_0_[2]\,
      R => \prod_3[23]_i_1_n_0\
    );
\prod_3_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => idx_stage_30_out,
      D => p_1_in(3),
      Q => \prod_3_reg_n_0_[3]\,
      R => \prod_3[23]_i_1_n_0\
    );
\prod_3_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => idx_stage_30_out,
      D => p_1_in(4),
      Q => \prod_3_reg_n_0_[4]\,
      R => \prod_3[23]_i_1_n_0\
    );
\prod_3_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => idx_stage_30_out,
      D => p_1_in(5),
      Q => \prod_3_reg_n_0_[5]\,
      R => \prod_3[23]_i_1_n_0\
    );
\prod_3_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => idx_stage_30_out,
      D => p_1_in(6),
      Q => \prod_3_reg_n_0_[6]\,
      R => \prod_3[23]_i_1_n_0\
    );
\prod_3_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => idx_stage_30_out,
      D => p_1_in(7),
      Q => \prod_3_reg_n_0_[7]\,
      R => \prod_3[23]_i_1_n_0\
    );
\prod_3_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => idx_stage_30_out,
      D => p_1_in(8),
      Q => \prod_3_reg_n_0_[8]\,
      R => \prod_3[23]_i_1_n_0\
    );
\prod_3_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => idx_stage_30_out,
      D => p_1_in(9),
      Q => \prod_3_reg_n_0_[9]\,
      R => \prod_3[23]_i_1_n_0\
    );
\state1_curr[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF02C2C2C2"
    )
        port map (
      I0 => \main_state_curr_reg[1]\,
      I1 => \state1_curr_reg[1]_0\(1),
      I2 => \state1_curr_reg[1]_0\(0),
      I3 => \sum_1[2][31]_i_4_n_0\,
      I4 => CO(0),
      I5 => \state1_curr[0]_i_2_n_0\,
      O => \^state1_curr_reg[1]\(0)
    );
\state1_curr[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000400000000000"
    )
        port map (
      I0 => \state1_curr_reg[1]_0\(0),
      I1 => \state1_curr_reg[1]_0\(1),
      I2 => \cnt_features_reg[2]_1\,
      I3 => \cnt_features_reg[0]_1\,
      I4 => \cnt_features_reg[1]_0\,
      I5 => \activation_2[0].sigmoid_instances2_n_5\,
      O => \state1_curr[0]_i_2_n_0\
    );
\state1_curr[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EE6E"
    )
        port map (
      I0 => \state1_curr_reg[1]_0\(0),
      I1 => \state1_curr_reg[1]_0\(1),
      I2 => cnt_weight1(0),
      I3 => cnt_weight1(1),
      O => \^state1_curr_reg[1]\(1)
    );
state1_next1_carry_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"48241201"
    )
        port map (
      I0 => examples_in(6),
      I1 => examples_in(7),
      I2 => \nb_examples_reg[4]\,
      I3 => \nb_examples_reg[7]_1\(6),
      I4 => \nb_examples_reg[7]_1\(7),
      O => S(2)
    );
state1_next1_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => state1_next1_carry_i_5_n_0,
      I1 => examples_in(5),
      I2 => examples_in(4),
      I3 => state1_next1_carry_i_6_n_0,
      I4 => examples_in(3),
      I5 => state1_next1_carry_i_7_n_0,
      O => S(1)
    );
state1_next1_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000096090090000"
    )
        port map (
      I0 => \nb_examples_reg[7]_1\(2),
      I1 => examples_in(2),
      I2 => examples_in(1),
      I3 => \nb_examples_reg[7]_1\(1),
      I4 => \nb_examples_reg[7]_1\(0),
      I5 => examples_in(0),
      O => S(0)
    );
state1_next1_carry_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA9"
    )
        port map (
      I0 => \nb_examples_reg[7]_1\(5),
      I1 => \nb_examples_reg[7]_1\(4),
      I2 => \nb_examples_reg[7]_1\(2),
      I3 => \nb_examples_reg[7]_1\(0),
      I4 => \nb_examples_reg[7]_1\(1),
      I5 => \nb_examples_reg[7]_1\(3),
      O => state1_next1_carry_i_5_n_0
    );
state1_next1_carry_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA9"
    )
        port map (
      I0 => \nb_examples_reg[7]_1\(4),
      I1 => \nb_examples_reg[7]_1\(3),
      I2 => \nb_examples_reg[7]_1\(1),
      I3 => \nb_examples_reg[7]_1\(0),
      I4 => \nb_examples_reg[7]_1\(2),
      O => state1_next1_carry_i_6_n_0
    );
state1_next1_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA9"
    )
        port map (
      I0 => \nb_examples_reg[7]_1\(3),
      I1 => \nb_examples_reg[7]_1\(2),
      I2 => \nb_examples_reg[7]_1\(0),
      I3 => \nb_examples_reg[7]_1\(1),
      O => state1_next1_carry_i_7_n_0
    );
\state2_curr[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C000AAAA"
    )
        port map (
      I0 => \state2_curr_reg[0]_0\,
      I1 => \sum_1[2][31]_i_4_n_0\,
      I2 => \state1_curr_reg[1]_0\(1),
      I3 => \state1_curr_reg[1]_0\(0),
      I4 => \^feedforward_en6_out\,
      O => \state2_curr_reg[0]\
    );
\state2_curr[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4464646464646464"
    )
        port map (
      I0 => \^feedforward_en6_out\,
      I1 => \state2_curr_reg[1]_0\,
      I2 => \state2_curr_reg[0]_0\,
      I3 => \state1_curr_reg[1]_0\(0),
      I4 => \state1_curr_reg[1]_0\(1),
      I5 => \sum_1[2][31]_i_4_n_0\,
      O => \state2_curr_reg[1]\
    );
\state3_curr[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C3E340E0"
    )
        port map (
      I0 => \cnt_hidden_reg[1]_0\,
      I1 => Q(0),
      I2 => Q(1),
      I3 => \cnt_hidden_reg[0]_0\,
      I4 => \latch_hidden_layer[2][11]_i_3_n_0\,
      O => D(0)
    );
\state4_curr[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => \state4_curr_reg[0]_0\,
      I1 => \cnt_hidden_reg[1]_1\,
      I2 => \^feedforward_en6_out\,
      O => \state4_curr_reg[0]\
    );
\state4_curr[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5250"
    )
        port map (
      I0 => \^feedforward_en6_out\,
      I1 => \cnt_hidden_reg[1]_1\,
      I2 => \state4_curr_reg[1]_0\,
      I3 => \state4_curr_reg[0]_0\,
      O => \state4_curr_reg[1]\
    );
\state_curr[2]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEAE"
    )
        port map (
      I0 => LED_8_OBUF,
      I1 => \cnt_features_reg[2]_2\,
      I2 => \activation_2[0].sigmoid_instances2_n_5\,
      I3 => \cnt_features_reg[0]_0\,
      I4 => \activation_2[0].sigmoid_instances2_n_4\,
      I5 => \^tmp2_reg\,
      O => \^state_curr_reg[0]\
    );
\state_curr[2]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFA800"
    )
        port map (
      I0 => \cnt_examples_in_reg[1]\,
      I1 => \nb_examples_reg[7]\,
      I2 => \nb_examples_reg[3]\,
      I3 => \nb_examples_reg[7]_0\(0),
      I4 => \sum_1_reg[0]0_i_48_n_0\,
      I5 => \^state_curr_reg[0]\,
      O => \state_curr[2]_i_14_n_0\
    );
\state_curr[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F5B1000011110000"
    )
        port map (
      I0 => main_state_curr(0),
      I1 => \main_state_curr_reg[1]_0\,
      I2 => \state_curr[2]_i_14_n_0\,
      I3 => \state_curr_reg[2]_1\,
      I4 => \AXIS_in[ARESETN]\,
      I5 => \main_state_curr_reg[2]\,
      O => \state_curr_reg[2]\
    );
\sum_1[0][31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00600000"
    )
        port map (
      I0 => \state1_curr_reg[1]_0\(0),
      I1 => \state1_curr_reg[1]_0\(1),
      I2 => \^feedforward_en6_out\,
      I3 => cnt_weight1(1),
      I4 => cnt_weight1(0),
      O => \sum_1[0][31]_i_1_n_0\
    );
\sum_1[1][31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00E00000"
    )
        port map (
      I0 => \state1_curr_reg[1]_0\(0),
      I1 => \state1_curr_reg[1]_0\(1),
      I2 => \^feedforward_en6_out\,
      I3 => cnt_weight1(0),
      I4 => cnt_weight1(1),
      O => \sum_1[1][31]_i_1_n_0\
    );
\sum_1[2][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"300000AA000000AA"
    )
        port map (
      I0 => \main_state_curr_reg[1]\,
      I1 => CO(0),
      I2 => \^feedforward_en6_out\,
      I3 => \state1_curr_reg[1]_0\(0),
      I4 => \state1_curr_reg[1]_0\(1),
      I5 => \sum_1[2][31]_i_4_n_0\,
      O => \^sum_1_reg[0][0]_0\
    );
\sum_1[2][31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E0000000"
    )
        port map (
      I0 => \state1_curr_reg[1]_0\(0),
      I1 => \state1_curr_reg[1]_0\(1),
      I2 => \^feedforward_en6_out\,
      I3 => cnt_weight1(1),
      I4 => cnt_weight1(0),
      O => \sum_1[2]_2\
    );
\sum_1[2][31]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt_weight1(0),
      I1 => cnt_weight1(1),
      O => \sum_1[2][31]_i_4_n_0\
    );
\sum_1_reg[0]0\: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => feature(11),
      A(28) => feature(11),
      A(27) => feature(11),
      A(26) => feature(11),
      A(25) => feature(11),
      A(24) => feature(11),
      A(23) => feature(11),
      A(22) => feature(11),
      A(21) => feature(11),
      A(20) => feature(11),
      A(19) => feature(11),
      A(18) => feature(11),
      A(17) => feature(11),
      A(16) => feature(11),
      A(15) => feature(11),
      A(14) => feature(11),
      A(13) => feature(11),
      A(12) => feature(11),
      A(11 downto 0) => feature(11 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => \NLW_sum_1_reg[0]0_ACOUT_UNCONNECTED\(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => B(11),
      B(16) => B(11),
      B(15) => B(11),
      B(14) => B(11),
      B(13) => B(11),
      B(12) => B(11),
      B(11 downto 0) => B(11 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => \NLW_sum_1_reg[0]0_BCOUT_UNCONNECTED\(17 downto 0),
      C(47) => C(31),
      C(46) => C(31),
      C(45) => C(31),
      C(44) => C(31),
      C(43) => C(31),
      C(42) => C(31),
      C(41) => C(31),
      C(40) => C(31),
      C(39) => C(31),
      C(38) => C(31),
      C(37) => C(31),
      C(36) => C(31),
      C(35) => C(31),
      C(34) => C(31),
      C(33) => C(31),
      C(32) => C(31),
      C(31 downto 0) => C(31 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => \NLW_sum_1_reg[0]0_CARRYCASCOUT_UNCONNECTED\,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => \NLW_sum_1_reg[0]0_CARRYOUT_UNCONNECTED\(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '1',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => \sum_1_reg[0]0_i_1_n_0\,
      CEP => '0',
      CLK => clk_IBUF_BUFG,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => \NLW_sum_1_reg[0]0_MULTSIGNOUT_UNCONNECTED\,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => \NLW_sum_1_reg[0]0_OVERFLOW_UNCONNECTED\,
      P(47 downto 32) => \NLW_sum_1_reg[0]0_P_UNCONNECTED\(47 downto 32),
      P(31) => \sum_1_reg[0]0_n_74\,
      P(30) => \sum_1_reg[0]0_n_75\,
      P(29) => \sum_1_reg[0]0_n_76\,
      P(28) => \sum_1_reg[0]0_n_77\,
      P(27) => \sum_1_reg[0]0_n_78\,
      P(26) => \sum_1_reg[0]0_n_79\,
      P(25) => \sum_1_reg[0]0_n_80\,
      P(24) => \sum_1_reg[0]0_n_81\,
      P(23) => \sum_1_reg[0]0_n_82\,
      P(22) => \sum_1_reg[0]0_n_83\,
      P(21) => \sum_1_reg[0]0_n_84\,
      P(20) => \sum_1_reg[0]0_n_85\,
      P(19) => \sum_1_reg[0]0_n_86\,
      P(18) => \sum_1_reg[0]0_n_87\,
      P(17) => \sum_1_reg[0]0_n_88\,
      P(16) => \sum_1_reg[0]0_n_89\,
      P(15) => \sum_1_reg[0]0_n_90\,
      P(14) => \sum_1_reg[0]0_n_91\,
      P(13) => \sum_1_reg[0]0_n_92\,
      P(12) => \sum_1_reg[0]0_n_93\,
      P(11) => \sum_1_reg[0]0_n_94\,
      P(10) => \sum_1_reg[0]0_n_95\,
      P(9) => \sum_1_reg[0]0_n_96\,
      P(8) => \sum_1_reg[0]0_n_97\,
      P(7) => \sum_1_reg[0]0_n_98\,
      P(6) => \sum_1_reg[0]0_n_99\,
      P(5) => \sum_1_reg[0]0_n_100\,
      P(4) => \sum_1_reg[0]0_n_101\,
      P(3) => \sum_1_reg[0]0_n_102\,
      P(2) => \sum_1_reg[0]0_n_103\,
      P(1) => \sum_1_reg[0]0_n_104\,
      P(0) => \sum_1_reg[0]0_n_105\,
      PATTERNBDETECT => \NLW_sum_1_reg[0]0_PATTERNBDETECT_UNCONNECTED\,
      PATTERNDETECT => \NLW_sum_1_reg[0]0_PATTERNDETECT_UNCONNECTED\,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => \NLW_sum_1_reg[0]0_PCOUT_UNCONNECTED\(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => \^sum_1_reg[0][0]_0\,
      RSTP => '0',
      UNDERFLOW => \NLW_sum_1_reg[0]0_UNDERFLOW_UNCONNECTED\
    );
\sum_1_reg[0]0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4500455500000000"
    )
        port map (
      I0 => \activation_2[0].sigmoid_instances2_n_2\,
      I1 => \activation_2[0].sigmoid_instances2_n_1\,
      I2 => \sum_1_reg[0]0_i_48_n_0\,
      I3 => main_state_curr(0),
      I4 => \state_curr_reg[2]_0\,
      I5 => \^state1_curr_reg[1]\(1),
      O => \sum_1_reg[0]0_i_1_n_0\
    );
\sum_1_reg[0]0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0000AAA8AAAA"
    )
        port map (
      I0 => \feature_f_reg[11]\(3),
      I1 => \cnt_features_reg[0]_1\,
      I2 => \cnt_features_reg[1]_0\,
      I3 => \cnt_features_reg[2]_1\,
      I4 => \state1_curr_reg[1]_0\(1),
      I5 => \state1_curr_reg[1]_0\(0),
      O => feature(3)
    );
\sum_1_reg[0]0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0000AAA8AAAA"
    )
        port map (
      I0 => \feature_f_reg[11]\(2),
      I1 => \cnt_features_reg[0]_1\,
      I2 => \cnt_features_reg[1]_0\,
      I3 => \cnt_features_reg[2]_1\,
      I4 => \state1_curr_reg[1]_0\(1),
      I5 => \state1_curr_reg[1]_0\(0),
      O => feature(2)
    );
\sum_1_reg[0]0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0000AAA8AAAA"
    )
        port map (
      I0 => \feature_f_reg[11]\(1),
      I1 => \cnt_features_reg[0]_1\,
      I2 => \cnt_features_reg[1]_0\,
      I3 => \cnt_features_reg[2]_1\,
      I4 => \state1_curr_reg[1]_0\(1),
      I5 => \state1_curr_reg[1]_0\(0),
      O => feature(1)
    );
\sum_1_reg[0]0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAFFFFAAABAAAA"
    )
        port map (
      I0 => \feature_f_reg[11]\(0),
      I1 => \cnt_features_reg[0]_1\,
      I2 => \cnt_features_reg[1]_0\,
      I3 => \cnt_features_reg[2]_1\,
      I4 => \state1_curr_reg[1]_0\(1),
      I5 => \state1_curr_reg[1]_0\(0),
      O => feature(0)
    );
\sum_1_reg[0]0_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACF0AC00"
    )
        port map (
      I0 => \sum_1_reg[2]_4\(31),
      I1 => \sum_1_reg[1]_5\(31),
      I2 => cnt_weight1(0),
      I3 => cnt_weight1(1),
      I4 => \sum_1_reg[0]_6\(31),
      O => C(31)
    );
\sum_1_reg[0]0_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACF0AC00"
    )
        port map (
      I0 => \sum_1_reg[2]_4\(30),
      I1 => \sum_1_reg[1]_5\(30),
      I2 => cnt_weight1(0),
      I3 => cnt_weight1(1),
      I4 => \sum_1_reg[0]_6\(30),
      O => C(30)
    );
\sum_1_reg[0]0_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFA0C0A0"
    )
        port map (
      I0 => \sum_1_reg[1]_5\(29),
      I1 => \sum_1_reg[2]_4\(29),
      I2 => cnt_weight1(1),
      I3 => cnt_weight1(0),
      I4 => \sum_1_reg[0]_6\(29),
      O => C(29)
    );
\sum_1_reg[0]0_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFA0C0A0"
    )
        port map (
      I0 => \sum_1_reg[1]_5\(28),
      I1 => \sum_1_reg[2]_4\(28),
      I2 => cnt_weight1(1),
      I3 => cnt_weight1(0),
      I4 => \sum_1_reg[0]_6\(28),
      O => C(28)
    );
\sum_1_reg[0]0_i_18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACF0AC00"
    )
        port map (
      I0 => \sum_1_reg[2]_4\(27),
      I1 => \sum_1_reg[0]_6\(27),
      I2 => cnt_weight1(1),
      I3 => cnt_weight1(0),
      I4 => \sum_1_reg[1]_5\(27),
      O => C(27)
    );
\sum_1_reg[0]0_i_19\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFA0C0A0"
    )
        port map (
      I0 => \sum_1_reg[1]_5\(26),
      I1 => \sum_1_reg[2]_4\(26),
      I2 => cnt_weight1(1),
      I3 => cnt_weight1(0),
      I4 => \sum_1_reg[0]_6\(26),
      O => C(26)
    );
\sum_1_reg[0]0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0000AAA8AAAA"
    )
        port map (
      I0 => \feature_f_reg[11]\(11),
      I1 => \cnt_features_reg[0]_1\,
      I2 => \cnt_features_reg[1]_0\,
      I3 => \cnt_features_reg[2]_1\,
      I4 => \state1_curr_reg[1]_0\(1),
      I5 => \state1_curr_reg[1]_0\(0),
      O => feature(11)
    );
\sum_1_reg[0]0_i_20\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAF0CA00"
    )
        port map (
      I0 => \sum_1_reg[0]_6\(25),
      I1 => \sum_1_reg[2]_4\(25),
      I2 => cnt_weight1(1),
      I3 => cnt_weight1(0),
      I4 => \sum_1_reg[1]_5\(25),
      O => C(25)
    );
\sum_1_reg[0]0_i_21\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACF0AC00"
    )
        port map (
      I0 => \sum_1_reg[2]_4\(24),
      I1 => \sum_1_reg[0]_6\(24),
      I2 => cnt_weight1(1),
      I3 => cnt_weight1(0),
      I4 => \sum_1_reg[1]_5\(24),
      O => C(24)
    );
\sum_1_reg[0]0_i_22\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFA0C0A0"
    )
        port map (
      I0 => \sum_1_reg[1]_5\(23),
      I1 => \sum_1_reg[2]_4\(23),
      I2 => cnt_weight1(1),
      I3 => cnt_weight1(0),
      I4 => \sum_1_reg[0]_6\(23),
      O => C(23)
    );
\sum_1_reg[0]0_i_23\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BC8CB080"
    )
        port map (
      I0 => \sum_1_reg[2]_4\(22),
      I1 => cnt_weight1(0),
      I2 => cnt_weight1(1),
      I3 => \sum_1_reg[1]_5\(22),
      I4 => \sum_1_reg[0]_6\(22),
      O => C(22)
    );
\sum_1_reg[0]0_i_24\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8C83808"
    )
        port map (
      I0 => \sum_1_reg[1]_5\(21),
      I1 => cnt_weight1(1),
      I2 => cnt_weight1(0),
      I3 => \sum_1_reg[0]_6\(21),
      I4 => \sum_1_reg[2]_4\(21),
      O => C(21)
    );
\sum_1_reg[0]0_i_25\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAF0CA00"
    )
        port map (
      I0 => \sum_1_reg[0]_6\(20),
      I1 => \sum_1_reg[2]_4\(20),
      I2 => cnt_weight1(1),
      I3 => cnt_weight1(0),
      I4 => \sum_1_reg[1]_5\(20),
      O => C(20)
    );
\sum_1_reg[0]0_i_26\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BC8CB080"
    )
        port map (
      I0 => \sum_1_reg[2]_4\(19),
      I1 => cnt_weight1(1),
      I2 => cnt_weight1(0),
      I3 => \sum_1_reg[0]_6\(19),
      I4 => \sum_1_reg[1]_5\(19),
      O => C(19)
    );
\sum_1_reg[0]0_i_27\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BC8CB080"
    )
        port map (
      I0 => \sum_1_reg[2]_4\(18),
      I1 => cnt_weight1(1),
      I2 => cnt_weight1(0),
      I3 => \sum_1_reg[0]_6\(18),
      I4 => \sum_1_reg[1]_5\(18),
      O => C(18)
    );
\sum_1_reg[0]0_i_28\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAF0CA00"
    )
        port map (
      I0 => \sum_1_reg[0]_6\(17),
      I1 => \sum_1_reg[2]_4\(17),
      I2 => cnt_weight1(1),
      I3 => cnt_weight1(0),
      I4 => \sum_1_reg[1]_5\(17),
      O => C(17)
    );
\sum_1_reg[0]0_i_29\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFA0C0A0"
    )
        port map (
      I0 => \sum_1_reg[1]_5\(16),
      I1 => \sum_1_reg[2]_4\(16),
      I2 => cnt_weight1(1),
      I3 => cnt_weight1(0),
      I4 => \sum_1_reg[0]_6\(16),
      O => C(16)
    );
\sum_1_reg[0]0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0000AAA8AAAA"
    )
        port map (
      I0 => \feature_f_reg[11]\(10),
      I1 => \cnt_features_reg[0]_1\,
      I2 => \cnt_features_reg[1]_0\,
      I3 => \cnt_features_reg[2]_1\,
      I4 => \state1_curr_reg[1]_0\(1),
      I5 => \state1_curr_reg[1]_0\(0),
      O => feature(10)
    );
\sum_1_reg[0]0_i_30\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BC8CB080"
    )
        port map (
      I0 => \sum_1_reg[2]_4\(15),
      I1 => cnt_weight1(0),
      I2 => cnt_weight1(1),
      I3 => \sum_1_reg[1]_5\(15),
      I4 => \sum_1_reg[0]_6\(15),
      O => C(15)
    );
\sum_1_reg[0]0_i_31\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFA0C0A0"
    )
        port map (
      I0 => \sum_1_reg[1]_5\(14),
      I1 => \sum_1_reg[2]_4\(14),
      I2 => cnt_weight1(1),
      I3 => cnt_weight1(0),
      I4 => \sum_1_reg[0]_6\(14),
      O => C(14)
    );
\sum_1_reg[0]0_i_32\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFA0C0A0"
    )
        port map (
      I0 => \sum_1_reg[1]_5\(13),
      I1 => \sum_1_reg[2]_4\(13),
      I2 => cnt_weight1(1),
      I3 => cnt_weight1(0),
      I4 => \sum_1_reg[0]_6\(13),
      O => C(13)
    );
\sum_1_reg[0]0_i_33\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFA0C0A0"
    )
        port map (
      I0 => \sum_1_reg[1]_5\(12),
      I1 => \sum_1_reg[2]_4\(12),
      I2 => cnt_weight1(1),
      I3 => cnt_weight1(0),
      I4 => \sum_1_reg[0]_6\(12),
      O => C(12)
    );
\sum_1_reg[0]0_i_34\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BC8CB080"
    )
        port map (
      I0 => \sum_1_reg[2]_4\(11),
      I1 => cnt_weight1(1),
      I2 => cnt_weight1(0),
      I3 => \sum_1_reg[0]_6\(11),
      I4 => \sum_1_reg[1]_5\(11),
      O => C(11)
    );
\sum_1_reg[0]0_i_35\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BC8CB080"
    )
        port map (
      I0 => \sum_1_reg[2]_4\(10),
      I1 => cnt_weight1(1),
      I2 => cnt_weight1(0),
      I3 => \sum_1_reg[0]_6\(10),
      I4 => \sum_1_reg[1]_5\(10),
      O => C(10)
    );
\sum_1_reg[0]0_i_36\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAF0CA00"
    )
        port map (
      I0 => \sum_1_reg[0]_6\(9),
      I1 => \sum_1_reg[2]_4\(9),
      I2 => cnt_weight1(1),
      I3 => cnt_weight1(0),
      I4 => \sum_1_reg[1]_5\(9),
      O => C(9)
    );
\sum_1_reg[0]0_i_37\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFA0C0A0"
    )
        port map (
      I0 => \sum_1_reg[1]_5\(8),
      I1 => \sum_1_reg[2]_4\(8),
      I2 => cnt_weight1(1),
      I3 => cnt_weight1(0),
      I4 => \sum_1_reg[0]_6\(8),
      O => C(8)
    );
\sum_1_reg[0]0_i_38\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFA0C0A0"
    )
        port map (
      I0 => \sum_1_reg[1]_5\(7),
      I1 => \sum_1_reg[2]_4\(7),
      I2 => cnt_weight1(1),
      I3 => cnt_weight1(0),
      I4 => \sum_1_reg[0]_6\(7),
      O => C(7)
    );
\sum_1_reg[0]0_i_39\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFA0C0A0"
    )
        port map (
      I0 => \sum_1_reg[1]_5\(6),
      I1 => \sum_1_reg[2]_4\(6),
      I2 => cnt_weight1(1),
      I3 => cnt_weight1(0),
      I4 => \sum_1_reg[0]_6\(6),
      O => C(6)
    );
\sum_1_reg[0]0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0000AAA8AAAA"
    )
        port map (
      I0 => \feature_f_reg[11]\(9),
      I1 => \cnt_features_reg[0]_1\,
      I2 => \cnt_features_reg[1]_0\,
      I3 => \cnt_features_reg[2]_1\,
      I4 => \state1_curr_reg[1]_0\(1),
      I5 => \state1_curr_reg[1]_0\(0),
      O => feature(9)
    );
\sum_1_reg[0]0_i_40\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8C83808"
    )
        port map (
      I0 => \sum_1_reg[1]_5\(5),
      I1 => cnt_weight1(1),
      I2 => cnt_weight1(0),
      I3 => \sum_1_reg[0]_6\(5),
      I4 => \sum_1_reg[2]_4\(5),
      O => C(5)
    );
\sum_1_reg[0]0_i_41\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAF0CA00"
    )
        port map (
      I0 => \sum_1_reg[0]_6\(4),
      I1 => \sum_1_reg[2]_4\(4),
      I2 => cnt_weight1(1),
      I3 => cnt_weight1(0),
      I4 => \sum_1_reg[1]_5\(4),
      O => C(4)
    );
\sum_1_reg[0]0_i_42\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BC8CB080"
    )
        port map (
      I0 => \sum_1_reg[2]_4\(3),
      I1 => cnt_weight1(1),
      I2 => cnt_weight1(0),
      I3 => \sum_1_reg[0]_6\(3),
      I4 => \sum_1_reg[1]_5\(3),
      O => C(3)
    );
\sum_1_reg[0]0_i_43\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BC8CB080"
    )
        port map (
      I0 => \sum_1_reg[2]_4\(2),
      I1 => cnt_weight1(1),
      I2 => cnt_weight1(0),
      I3 => \sum_1_reg[0]_6\(2),
      I4 => \sum_1_reg[1]_5\(2),
      O => C(2)
    );
\sum_1_reg[0]0_i_44\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAF0CA00"
    )
        port map (
      I0 => \sum_1_reg[0]_6\(1),
      I1 => \sum_1_reg[2]_4\(1),
      I2 => cnt_weight1(1),
      I3 => cnt_weight1(0),
      I4 => \sum_1_reg[1]_5\(1),
      O => C(1)
    );
\sum_1_reg[0]0_i_45\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFA0C0A0"
    )
        port map (
      I0 => \sum_1_reg[1]_5\(0),
      I1 => \sum_1_reg[2]_4\(0),
      I2 => cnt_weight1(1),
      I3 => cnt_weight1(0),
      I4 => \sum_1_reg[0]_6\(0),
      O => C(0)
    );
\sum_1_reg[0]0_i_48\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => examples_in(1),
      I1 => cnt_ex_block_outdated,
      O => \sum_1_reg[0]0_i_48_n_0\
    );
\sum_1_reg[0]0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0000AAA8AAAA"
    )
        port map (
      I0 => \feature_f_reg[11]\(8),
      I1 => \cnt_features_reg[0]_1\,
      I2 => \cnt_features_reg[1]_0\,
      I3 => \cnt_features_reg[2]_1\,
      I4 => \state1_curr_reg[1]_0\(1),
      I5 => \state1_curr_reg[1]_0\(0),
      O => feature(8)
    );
\sum_1_reg[0]0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0000AAA8AAAA"
    )
        port map (
      I0 => \feature_f_reg[11]\(7),
      I1 => \cnt_features_reg[0]_1\,
      I2 => \cnt_features_reg[1]_0\,
      I3 => \cnt_features_reg[2]_1\,
      I4 => \state1_curr_reg[1]_0\(1),
      I5 => \state1_curr_reg[1]_0\(0),
      O => feature(7)
    );
\sum_1_reg[0]0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0000AAA8AAAA"
    )
        port map (
      I0 => \feature_f_reg[11]\(6),
      I1 => \cnt_features_reg[0]_1\,
      I2 => \cnt_features_reg[1]_0\,
      I3 => \cnt_features_reg[2]_1\,
      I4 => \state1_curr_reg[1]_0\(1),
      I5 => \state1_curr_reg[1]_0\(0),
      O => feature(6)
    );
\sum_1_reg[0]0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0000AAA8AAAA"
    )
        port map (
      I0 => \feature_f_reg[11]\(5),
      I1 => \cnt_features_reg[0]_1\,
      I2 => \cnt_features_reg[1]_0\,
      I3 => \cnt_features_reg[2]_1\,
      I4 => \state1_curr_reg[1]_0\(1),
      I5 => \state1_curr_reg[1]_0\(0),
      O => feature(5)
    );
\sum_1_reg[0]0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0000AAA8AAAA"
    )
        port map (
      I0 => \feature_f_reg[11]\(4),
      I1 => \cnt_features_reg[0]_1\,
      I2 => \cnt_features_reg[1]_0\,
      I3 => \cnt_features_reg[2]_1\,
      I4 => \state1_curr_reg[1]_0\(1),
      I5 => \state1_curr_reg[1]_0\(0),
      O => feature(4)
    );
\sum_1_reg[0][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_1[0][31]_i_1_n_0\,
      D => \sum_1_reg[0]0_n_105\,
      Q => \sum_1_reg[0]_6\(0),
      R => \^sum_1_reg[0][0]_0\
    );
\sum_1_reg[0][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_1[0][31]_i_1_n_0\,
      D => \sum_1_reg[0]0_n_95\,
      Q => \sum_1_reg[0]_6\(10),
      R => \^sum_1_reg[0][0]_0\
    );
\sum_1_reg[0][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_1[0][31]_i_1_n_0\,
      D => \sum_1_reg[0]0_n_94\,
      Q => \sum_1_reg[0]_6\(11),
      R => \^sum_1_reg[0][0]_0\
    );
\sum_1_reg[0][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_1[0][31]_i_1_n_0\,
      D => \sum_1_reg[0]0_n_93\,
      Q => \sum_1_reg[0]_6\(12),
      R => \^sum_1_reg[0][0]_0\
    );
\sum_1_reg[0][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_1[0][31]_i_1_n_0\,
      D => \sum_1_reg[0]0_n_92\,
      Q => \sum_1_reg[0]_6\(13),
      R => \^sum_1_reg[0][0]_0\
    );
\sum_1_reg[0][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_1[0][31]_i_1_n_0\,
      D => \sum_1_reg[0]0_n_91\,
      Q => \sum_1_reg[0]_6\(14),
      R => \^sum_1_reg[0][0]_0\
    );
\sum_1_reg[0][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_1[0][31]_i_1_n_0\,
      D => \sum_1_reg[0]0_n_90\,
      Q => \sum_1_reg[0]_6\(15),
      R => \^sum_1_reg[0][0]_0\
    );
\sum_1_reg[0][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_1[0][31]_i_1_n_0\,
      D => \sum_1_reg[0]0_n_89\,
      Q => \sum_1_reg[0]_6\(16),
      R => \^sum_1_reg[0][0]_0\
    );
\sum_1_reg[0][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_1[0][31]_i_1_n_0\,
      D => \sum_1_reg[0]0_n_88\,
      Q => \sum_1_reg[0]_6\(17),
      R => \^sum_1_reg[0][0]_0\
    );
\sum_1_reg[0][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_1[0][31]_i_1_n_0\,
      D => \sum_1_reg[0]0_n_87\,
      Q => \sum_1_reg[0]_6\(18),
      R => \^sum_1_reg[0][0]_0\
    );
\sum_1_reg[0][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_1[0][31]_i_1_n_0\,
      D => \sum_1_reg[0]0_n_86\,
      Q => \sum_1_reg[0]_6\(19),
      R => \^sum_1_reg[0][0]_0\
    );
\sum_1_reg[0][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_1[0][31]_i_1_n_0\,
      D => \sum_1_reg[0]0_n_104\,
      Q => \sum_1_reg[0]_6\(1),
      R => \^sum_1_reg[0][0]_0\
    );
\sum_1_reg[0][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_1[0][31]_i_1_n_0\,
      D => \sum_1_reg[0]0_n_85\,
      Q => \sum_1_reg[0]_6\(20),
      R => \^sum_1_reg[0][0]_0\
    );
\sum_1_reg[0][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_1[0][31]_i_1_n_0\,
      D => \sum_1_reg[0]0_n_84\,
      Q => \sum_1_reg[0]_6\(21),
      R => \^sum_1_reg[0][0]_0\
    );
\sum_1_reg[0][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_1[0][31]_i_1_n_0\,
      D => \sum_1_reg[0]0_n_83\,
      Q => \sum_1_reg[0]_6\(22),
      R => \^sum_1_reg[0][0]_0\
    );
\sum_1_reg[0][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_1[0][31]_i_1_n_0\,
      D => \sum_1_reg[0]0_n_82\,
      Q => \sum_1_reg[0]_6\(23),
      R => \^sum_1_reg[0][0]_0\
    );
\sum_1_reg[0][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_1[0][31]_i_1_n_0\,
      D => \sum_1_reg[0]0_n_81\,
      Q => \sum_1_reg[0]_6\(24),
      R => \^sum_1_reg[0][0]_0\
    );
\sum_1_reg[0][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_1[0][31]_i_1_n_0\,
      D => \sum_1_reg[0]0_n_80\,
      Q => \sum_1_reg[0]_6\(25),
      R => \^sum_1_reg[0][0]_0\
    );
\sum_1_reg[0][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_1[0][31]_i_1_n_0\,
      D => \sum_1_reg[0]0_n_79\,
      Q => \sum_1_reg[0]_6\(26),
      R => \^sum_1_reg[0][0]_0\
    );
\sum_1_reg[0][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_1[0][31]_i_1_n_0\,
      D => \sum_1_reg[0]0_n_78\,
      Q => \sum_1_reg[0]_6\(27),
      R => \^sum_1_reg[0][0]_0\
    );
\sum_1_reg[0][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_1[0][31]_i_1_n_0\,
      D => \sum_1_reg[0]0_n_77\,
      Q => \sum_1_reg[0]_6\(28),
      R => \^sum_1_reg[0][0]_0\
    );
\sum_1_reg[0][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_1[0][31]_i_1_n_0\,
      D => \sum_1_reg[0]0_n_76\,
      Q => \sum_1_reg[0]_6\(29),
      R => \^sum_1_reg[0][0]_0\
    );
\sum_1_reg[0][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_1[0][31]_i_1_n_0\,
      D => \sum_1_reg[0]0_n_103\,
      Q => \sum_1_reg[0]_6\(2),
      R => \^sum_1_reg[0][0]_0\
    );
\sum_1_reg[0][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_1[0][31]_i_1_n_0\,
      D => \sum_1_reg[0]0_n_75\,
      Q => \sum_1_reg[0]_6\(30),
      R => \^sum_1_reg[0][0]_0\
    );
\sum_1_reg[0][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_1[0][31]_i_1_n_0\,
      D => \sum_1_reg[0]0_n_74\,
      Q => \sum_1_reg[0]_6\(31),
      R => \^sum_1_reg[0][0]_0\
    );
\sum_1_reg[0][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_1[0][31]_i_1_n_0\,
      D => \sum_1_reg[0]0_n_102\,
      Q => \sum_1_reg[0]_6\(3),
      R => \^sum_1_reg[0][0]_0\
    );
\sum_1_reg[0][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_1[0][31]_i_1_n_0\,
      D => \sum_1_reg[0]0_n_101\,
      Q => \sum_1_reg[0]_6\(4),
      R => \^sum_1_reg[0][0]_0\
    );
\sum_1_reg[0][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_1[0][31]_i_1_n_0\,
      D => \sum_1_reg[0]0_n_100\,
      Q => \sum_1_reg[0]_6\(5),
      R => \^sum_1_reg[0][0]_0\
    );
\sum_1_reg[0][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_1[0][31]_i_1_n_0\,
      D => \sum_1_reg[0]0_n_99\,
      Q => \sum_1_reg[0]_6\(6),
      R => \^sum_1_reg[0][0]_0\
    );
\sum_1_reg[0][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_1[0][31]_i_1_n_0\,
      D => \sum_1_reg[0]0_n_98\,
      Q => \sum_1_reg[0]_6\(7),
      R => \^sum_1_reg[0][0]_0\
    );
\sum_1_reg[0][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_1[0][31]_i_1_n_0\,
      D => \sum_1_reg[0]0_n_97\,
      Q => \sum_1_reg[0]_6\(8),
      R => \^sum_1_reg[0][0]_0\
    );
\sum_1_reg[0][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_1[0][31]_i_1_n_0\,
      D => \sum_1_reg[0]0_n_96\,
      Q => \sum_1_reg[0]_6\(9),
      R => \^sum_1_reg[0][0]_0\
    );
\sum_1_reg[1][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_1[1][31]_i_1_n_0\,
      D => \sum_1_reg[0]0_n_105\,
      Q => \sum_1_reg[1]_5\(0),
      R => \^sum_1_reg[0][0]_0\
    );
\sum_1_reg[1][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_1[1][31]_i_1_n_0\,
      D => \sum_1_reg[0]0_n_95\,
      Q => \sum_1_reg[1]_5\(10),
      R => \^sum_1_reg[0][0]_0\
    );
\sum_1_reg[1][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_1[1][31]_i_1_n_0\,
      D => \sum_1_reg[0]0_n_94\,
      Q => \sum_1_reg[1]_5\(11),
      R => \^sum_1_reg[0][0]_0\
    );
\sum_1_reg[1][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_1[1][31]_i_1_n_0\,
      D => \sum_1_reg[0]0_n_93\,
      Q => \sum_1_reg[1]_5\(12),
      R => \^sum_1_reg[0][0]_0\
    );
\sum_1_reg[1][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_1[1][31]_i_1_n_0\,
      D => \sum_1_reg[0]0_n_92\,
      Q => \sum_1_reg[1]_5\(13),
      R => \^sum_1_reg[0][0]_0\
    );
\sum_1_reg[1][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_1[1][31]_i_1_n_0\,
      D => \sum_1_reg[0]0_n_91\,
      Q => \sum_1_reg[1]_5\(14),
      R => \^sum_1_reg[0][0]_0\
    );
\sum_1_reg[1][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_1[1][31]_i_1_n_0\,
      D => \sum_1_reg[0]0_n_90\,
      Q => \sum_1_reg[1]_5\(15),
      R => \^sum_1_reg[0][0]_0\
    );
\sum_1_reg[1][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_1[1][31]_i_1_n_0\,
      D => \sum_1_reg[0]0_n_89\,
      Q => \sum_1_reg[1]_5\(16),
      R => \^sum_1_reg[0][0]_0\
    );
\sum_1_reg[1][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_1[1][31]_i_1_n_0\,
      D => \sum_1_reg[0]0_n_88\,
      Q => \sum_1_reg[1]_5\(17),
      R => \^sum_1_reg[0][0]_0\
    );
\sum_1_reg[1][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_1[1][31]_i_1_n_0\,
      D => \sum_1_reg[0]0_n_87\,
      Q => \sum_1_reg[1]_5\(18),
      R => \^sum_1_reg[0][0]_0\
    );
\sum_1_reg[1][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_1[1][31]_i_1_n_0\,
      D => \sum_1_reg[0]0_n_86\,
      Q => \sum_1_reg[1]_5\(19),
      R => \^sum_1_reg[0][0]_0\
    );
\sum_1_reg[1][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_1[1][31]_i_1_n_0\,
      D => \sum_1_reg[0]0_n_104\,
      Q => \sum_1_reg[1]_5\(1),
      R => \^sum_1_reg[0][0]_0\
    );
\sum_1_reg[1][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_1[1][31]_i_1_n_0\,
      D => \sum_1_reg[0]0_n_85\,
      Q => \sum_1_reg[1]_5\(20),
      R => \^sum_1_reg[0][0]_0\
    );
\sum_1_reg[1][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_1[1][31]_i_1_n_0\,
      D => \sum_1_reg[0]0_n_84\,
      Q => \sum_1_reg[1]_5\(21),
      R => \^sum_1_reg[0][0]_0\
    );
\sum_1_reg[1][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_1[1][31]_i_1_n_0\,
      D => \sum_1_reg[0]0_n_83\,
      Q => \sum_1_reg[1]_5\(22),
      R => \^sum_1_reg[0][0]_0\
    );
\sum_1_reg[1][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_1[1][31]_i_1_n_0\,
      D => \sum_1_reg[0]0_n_82\,
      Q => \sum_1_reg[1]_5\(23),
      R => \^sum_1_reg[0][0]_0\
    );
\sum_1_reg[1][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_1[1][31]_i_1_n_0\,
      D => \sum_1_reg[0]0_n_81\,
      Q => \sum_1_reg[1]_5\(24),
      R => \^sum_1_reg[0][0]_0\
    );
\sum_1_reg[1][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_1[1][31]_i_1_n_0\,
      D => \sum_1_reg[0]0_n_80\,
      Q => \sum_1_reg[1]_5\(25),
      R => \^sum_1_reg[0][0]_0\
    );
\sum_1_reg[1][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_1[1][31]_i_1_n_0\,
      D => \sum_1_reg[0]0_n_79\,
      Q => \sum_1_reg[1]_5\(26),
      R => \^sum_1_reg[0][0]_0\
    );
\sum_1_reg[1][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_1[1][31]_i_1_n_0\,
      D => \sum_1_reg[0]0_n_78\,
      Q => \sum_1_reg[1]_5\(27),
      R => \^sum_1_reg[0][0]_0\
    );
\sum_1_reg[1][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_1[1][31]_i_1_n_0\,
      D => \sum_1_reg[0]0_n_77\,
      Q => \sum_1_reg[1]_5\(28),
      R => \^sum_1_reg[0][0]_0\
    );
\sum_1_reg[1][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_1[1][31]_i_1_n_0\,
      D => \sum_1_reg[0]0_n_76\,
      Q => \sum_1_reg[1]_5\(29),
      R => \^sum_1_reg[0][0]_0\
    );
\sum_1_reg[1][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_1[1][31]_i_1_n_0\,
      D => \sum_1_reg[0]0_n_103\,
      Q => \sum_1_reg[1]_5\(2),
      R => \^sum_1_reg[0][0]_0\
    );
\sum_1_reg[1][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_1[1][31]_i_1_n_0\,
      D => \sum_1_reg[0]0_n_75\,
      Q => \sum_1_reg[1]_5\(30),
      R => \^sum_1_reg[0][0]_0\
    );
\sum_1_reg[1][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_1[1][31]_i_1_n_0\,
      D => \sum_1_reg[0]0_n_74\,
      Q => \sum_1_reg[1]_5\(31),
      R => \^sum_1_reg[0][0]_0\
    );
\sum_1_reg[1][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_1[1][31]_i_1_n_0\,
      D => \sum_1_reg[0]0_n_102\,
      Q => \sum_1_reg[1]_5\(3),
      R => \^sum_1_reg[0][0]_0\
    );
\sum_1_reg[1][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_1[1][31]_i_1_n_0\,
      D => \sum_1_reg[0]0_n_101\,
      Q => \sum_1_reg[1]_5\(4),
      R => \^sum_1_reg[0][0]_0\
    );
\sum_1_reg[1][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_1[1][31]_i_1_n_0\,
      D => \sum_1_reg[0]0_n_100\,
      Q => \sum_1_reg[1]_5\(5),
      R => \^sum_1_reg[0][0]_0\
    );
\sum_1_reg[1][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_1[1][31]_i_1_n_0\,
      D => \sum_1_reg[0]0_n_99\,
      Q => \sum_1_reg[1]_5\(6),
      R => \^sum_1_reg[0][0]_0\
    );
\sum_1_reg[1][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_1[1][31]_i_1_n_0\,
      D => \sum_1_reg[0]0_n_98\,
      Q => \sum_1_reg[1]_5\(7),
      R => \^sum_1_reg[0][0]_0\
    );
\sum_1_reg[1][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_1[1][31]_i_1_n_0\,
      D => \sum_1_reg[0]0_n_97\,
      Q => \sum_1_reg[1]_5\(8),
      R => \^sum_1_reg[0][0]_0\
    );
\sum_1_reg[1][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_1[1][31]_i_1_n_0\,
      D => \sum_1_reg[0]0_n_96\,
      Q => \sum_1_reg[1]_5\(9),
      R => \^sum_1_reg[0][0]_0\
    );
\sum_1_reg[2][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_1[2]_2\,
      D => \sum_1_reg[0]0_n_105\,
      Q => \sum_1_reg[2]_4\(0),
      R => \^sum_1_reg[0][0]_0\
    );
\sum_1_reg[2][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_1[2]_2\,
      D => \sum_1_reg[0]0_n_95\,
      Q => \sum_1_reg[2]_4\(10),
      R => \^sum_1_reg[0][0]_0\
    );
\sum_1_reg[2][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_1[2]_2\,
      D => \sum_1_reg[0]0_n_94\,
      Q => \sum_1_reg[2]_4\(11),
      R => \^sum_1_reg[0][0]_0\
    );
\sum_1_reg[2][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_1[2]_2\,
      D => \sum_1_reg[0]0_n_93\,
      Q => \sum_1_reg[2]_4\(12),
      R => \^sum_1_reg[0][0]_0\
    );
\sum_1_reg[2][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_1[2]_2\,
      D => \sum_1_reg[0]0_n_92\,
      Q => \sum_1_reg[2]_4\(13),
      R => \^sum_1_reg[0][0]_0\
    );
\sum_1_reg[2][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_1[2]_2\,
      D => \sum_1_reg[0]0_n_91\,
      Q => \sum_1_reg[2]_4\(14),
      R => \^sum_1_reg[0][0]_0\
    );
\sum_1_reg[2][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_1[2]_2\,
      D => \sum_1_reg[0]0_n_90\,
      Q => \sum_1_reg[2]_4\(15),
      R => \^sum_1_reg[0][0]_0\
    );
\sum_1_reg[2][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_1[2]_2\,
      D => \sum_1_reg[0]0_n_89\,
      Q => \sum_1_reg[2]_4\(16),
      R => \^sum_1_reg[0][0]_0\
    );
\sum_1_reg[2][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_1[2]_2\,
      D => \sum_1_reg[0]0_n_88\,
      Q => \sum_1_reg[2]_4\(17),
      R => \^sum_1_reg[0][0]_0\
    );
\sum_1_reg[2][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_1[2]_2\,
      D => \sum_1_reg[0]0_n_87\,
      Q => \sum_1_reg[2]_4\(18),
      R => \^sum_1_reg[0][0]_0\
    );
\sum_1_reg[2][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_1[2]_2\,
      D => \sum_1_reg[0]0_n_86\,
      Q => \sum_1_reg[2]_4\(19),
      R => \^sum_1_reg[0][0]_0\
    );
\sum_1_reg[2][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_1[2]_2\,
      D => \sum_1_reg[0]0_n_104\,
      Q => \sum_1_reg[2]_4\(1),
      R => \^sum_1_reg[0][0]_0\
    );
\sum_1_reg[2][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_1[2]_2\,
      D => \sum_1_reg[0]0_n_85\,
      Q => \sum_1_reg[2]_4\(20),
      R => \^sum_1_reg[0][0]_0\
    );
\sum_1_reg[2][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_1[2]_2\,
      D => \sum_1_reg[0]0_n_84\,
      Q => \sum_1_reg[2]_4\(21),
      R => \^sum_1_reg[0][0]_0\
    );
\sum_1_reg[2][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_1[2]_2\,
      D => \sum_1_reg[0]0_n_83\,
      Q => \sum_1_reg[2]_4\(22),
      R => \^sum_1_reg[0][0]_0\
    );
\sum_1_reg[2][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_1[2]_2\,
      D => \sum_1_reg[0]0_n_82\,
      Q => \sum_1_reg[2]_4\(23),
      R => \^sum_1_reg[0][0]_0\
    );
\sum_1_reg[2][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_1[2]_2\,
      D => \sum_1_reg[0]0_n_81\,
      Q => \sum_1_reg[2]_4\(24),
      R => \^sum_1_reg[0][0]_0\
    );
\sum_1_reg[2][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_1[2]_2\,
      D => \sum_1_reg[0]0_n_80\,
      Q => \sum_1_reg[2]_4\(25),
      R => \^sum_1_reg[0][0]_0\
    );
\sum_1_reg[2][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_1[2]_2\,
      D => \sum_1_reg[0]0_n_79\,
      Q => \sum_1_reg[2]_4\(26),
      R => \^sum_1_reg[0][0]_0\
    );
\sum_1_reg[2][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_1[2]_2\,
      D => \sum_1_reg[0]0_n_78\,
      Q => \sum_1_reg[2]_4\(27),
      R => \^sum_1_reg[0][0]_0\
    );
\sum_1_reg[2][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_1[2]_2\,
      D => \sum_1_reg[0]0_n_77\,
      Q => \sum_1_reg[2]_4\(28),
      R => \^sum_1_reg[0][0]_0\
    );
\sum_1_reg[2][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_1[2]_2\,
      D => \sum_1_reg[0]0_n_76\,
      Q => \sum_1_reg[2]_4\(29),
      R => \^sum_1_reg[0][0]_0\
    );
\sum_1_reg[2][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_1[2]_2\,
      D => \sum_1_reg[0]0_n_103\,
      Q => \sum_1_reg[2]_4\(2),
      R => \^sum_1_reg[0][0]_0\
    );
\sum_1_reg[2][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_1[2]_2\,
      D => \sum_1_reg[0]0_n_75\,
      Q => \sum_1_reg[2]_4\(30),
      R => \^sum_1_reg[0][0]_0\
    );
\sum_1_reg[2][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_1[2]_2\,
      D => \sum_1_reg[0]0_n_74\,
      Q => \sum_1_reg[2]_4\(31),
      R => \^sum_1_reg[0][0]_0\
    );
\sum_1_reg[2][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_1[2]_2\,
      D => \sum_1_reg[0]0_n_102\,
      Q => \sum_1_reg[2]_4\(3),
      R => \^sum_1_reg[0][0]_0\
    );
\sum_1_reg[2][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_1[2]_2\,
      D => \sum_1_reg[0]0_n_101\,
      Q => \sum_1_reg[2]_4\(4),
      R => \^sum_1_reg[0][0]_0\
    );
\sum_1_reg[2][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_1[2]_2\,
      D => \sum_1_reg[0]0_n_100\,
      Q => \sum_1_reg[2]_4\(5),
      R => \^sum_1_reg[0][0]_0\
    );
\sum_1_reg[2][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_1[2]_2\,
      D => \sum_1_reg[0]0_n_99\,
      Q => \sum_1_reg[2]_4\(6),
      R => \^sum_1_reg[0][0]_0\
    );
\sum_1_reg[2][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_1[2]_2\,
      D => \sum_1_reg[0]0_n_98\,
      Q => \sum_1_reg[2]_4\(7),
      R => \^sum_1_reg[0][0]_0\
    );
\sum_1_reg[2][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_1[2]_2\,
      D => \sum_1_reg[0]0_n_97\,
      Q => \sum_1_reg[2]_4\(8),
      R => \^sum_1_reg[0][0]_0\
    );
\sum_1_reg[2][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_1[2]_2\,
      D => \sum_1_reg[0]0_n_96\,
      Q => \sum_1_reg[2]_4\(9),
      R => \^sum_1_reg[0][0]_0\
    );
\sum_3[0][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAA0000000000"
    )
        port map (
      I0 => \idx_stage_3_reg_n_0_[0]\,
      I1 => \cnt_hidden_reg[0]_0\,
      I2 => \cnt_hidden_reg[1]_0\,
      I3 => Q(0),
      I4 => Q(1),
      I5 => \^feedforward_en6_out\,
      O => \sum_3[0]_1\
    );
\sum_3[0][0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \prod_3_reg_n_0_[3]\,
      I1 => \sum_3_reg[0]_0\(3),
      O => \sum_3[0][0]_i_3_n_0\
    );
\sum_3[0][0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \prod_3_reg_n_0_[2]\,
      I1 => \sum_3_reg[0]_0\(2),
      O => \sum_3[0][0]_i_4_n_0\
    );
\sum_3[0][0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \prod_3_reg_n_0_[1]\,
      I1 => \sum_3_reg[0]_0\(1),
      O => \sum_3[0][0]_i_5_n_0\
    );
\sum_3[0][0]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \prod_3_reg_n_0_[0]\,
      I1 => \sum_3_reg[0]_0\(0),
      O => \sum_3[0][0]_i_6_n_0\
    );
\sum_3[0][12]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \prod_3_reg_n_0_[15]\,
      I1 => \sum_3_reg[0]_0\(15),
      O => \sum_3[0][12]_i_2_n_0\
    );
\sum_3[0][12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \prod_3_reg_n_0_[14]\,
      I1 => \sum_3_reg[0]_0\(14),
      O => \sum_3[0][12]_i_3_n_0\
    );
\sum_3[0][12]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \prod_3_reg_n_0_[13]\,
      I1 => \sum_3_reg[0]_0\(13),
      O => \sum_3[0][12]_i_4_n_0\
    );
\sum_3[0][12]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \prod_3_reg_n_0_[12]\,
      I1 => \sum_3_reg[0]_0\(12),
      O => \sum_3[0][12]_i_5_n_0\
    );
\sum_3[0][16]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \prod_3_reg_n_0_[19]\,
      I1 => \sum_3_reg[0]_0\(19),
      O => \sum_3[0][16]_i_2_n_0\
    );
\sum_3[0][16]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \prod_3_reg_n_0_[18]\,
      I1 => \sum_3_reg[0]_0\(18),
      O => \sum_3[0][16]_i_3_n_0\
    );
\sum_3[0][16]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \prod_3_reg_n_0_[17]\,
      I1 => \sum_3_reg[0]_0\(17),
      O => \sum_3[0][16]_i_4_n_0\
    );
\sum_3[0][16]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \prod_3_reg_n_0_[16]\,
      I1 => \sum_3_reg[0]_0\(16),
      O => \sum_3[0][16]_i_5_n_0\
    );
\sum_3[0][20]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \prod_3_reg_n_0_[23]\,
      I1 => \sum_3_reg[0]_0\(23),
      O => \sum_3[0][20]_i_2_n_0\
    );
\sum_3[0][20]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \prod_3_reg_n_0_[22]\,
      I1 => \sum_3_reg[0]_0\(22),
      O => \sum_3[0][20]_i_3_n_0\
    );
\sum_3[0][20]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \prod_3_reg_n_0_[21]\,
      I1 => \sum_3_reg[0]_0\(21),
      O => \sum_3[0][20]_i_4_n_0\
    );
\sum_3[0][20]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \prod_3_reg_n_0_[20]\,
      I1 => \sum_3_reg[0]_0\(20),
      O => \sum_3[0][20]_i_5_n_0\
    );
\sum_3[0][24]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \prod_3_reg_n_0_[23]\,
      I1 => \sum_3_reg[0]_0\(27),
      O => \sum_3[0][24]_i_2_n_0\
    );
\sum_3[0][24]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \prod_3_reg_n_0_[23]\,
      I1 => \sum_3_reg[0]_0\(26),
      O => \sum_3[0][24]_i_3_n_0\
    );
\sum_3[0][24]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \prod_3_reg_n_0_[23]\,
      I1 => \sum_3_reg[0]_0\(25),
      O => \sum_3[0][24]_i_4_n_0\
    );
\sum_3[0][24]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \prod_3_reg_n_0_[23]\,
      I1 => \sum_3_reg[0]_0\(24),
      O => \sum_3[0][24]_i_5_n_0\
    );
\sum_3[0][28]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sum_3_reg[0]_0\(31),
      I1 => \prod_3_reg_n_0_[23]\,
      O => \sum_3[0][28]_i_2_n_0\
    );
\sum_3[0][28]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \prod_3_reg_n_0_[23]\,
      I1 => \sum_3_reg[0]_0\(30),
      O => \sum_3[0][28]_i_3_n_0\
    );
\sum_3[0][28]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \prod_3_reg_n_0_[23]\,
      I1 => \sum_3_reg[0]_0\(29),
      O => \sum_3[0][28]_i_4_n_0\
    );
\sum_3[0][28]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \prod_3_reg_n_0_[23]\,
      I1 => \sum_3_reg[0]_0\(28),
      O => \sum_3[0][28]_i_5_n_0\
    );
\sum_3[0][4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \prod_3_reg_n_0_[7]\,
      I1 => \sum_3_reg[0]_0\(7),
      O => \sum_3[0][4]_i_2_n_0\
    );
\sum_3[0][4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \prod_3_reg_n_0_[6]\,
      I1 => \sum_3_reg[0]_0\(6),
      O => \sum_3[0][4]_i_3_n_0\
    );
\sum_3[0][4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \prod_3_reg_n_0_[5]\,
      I1 => \sum_3_reg[0]_0\(5),
      O => \sum_3[0][4]_i_4_n_0\
    );
\sum_3[0][4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \prod_3_reg_n_0_[4]\,
      I1 => \sum_3_reg[0]_0\(4),
      O => \sum_3[0][4]_i_5_n_0\
    );
\sum_3[0][8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \prod_3_reg_n_0_[11]\,
      I1 => \sum_3_reg[0]_0\(11),
      O => \sum_3[0][8]_i_2_n_0\
    );
\sum_3[0][8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \prod_3_reg_n_0_[10]\,
      I1 => \sum_3_reg[0]_0\(10),
      O => \sum_3[0][8]_i_3_n_0\
    );
\sum_3[0][8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \prod_3_reg_n_0_[9]\,
      I1 => \sum_3_reg[0]_0\(9),
      O => \sum_3[0][8]_i_4_n_0\
    );
\sum_3[0][8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \prod_3_reg_n_0_[8]\,
      I1 => \sum_3_reg[0]_0\(8),
      O => \sum_3[0][8]_i_5_n_0\
    );
\sum_3_reg[0][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_3[0]_1\,
      D => \sum_3_reg[0][0]_i_2_n_7\,
      Q => \sum_3_reg[0]_0\(0),
      R => \prod_3[23]_i_1_n_0\
    );
\sum_3_reg[0][0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \sum_3_reg[0][0]_i_2_n_0\,
      CO(2) => \sum_3_reg[0][0]_i_2_n_1\,
      CO(1) => \sum_3_reg[0][0]_i_2_n_2\,
      CO(0) => \sum_3_reg[0][0]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \prod_3_reg_n_0_[3]\,
      DI(2) => \prod_3_reg_n_0_[2]\,
      DI(1) => \prod_3_reg_n_0_[1]\,
      DI(0) => \prod_3_reg_n_0_[0]\,
      O(3) => \sum_3_reg[0][0]_i_2_n_4\,
      O(2) => \sum_3_reg[0][0]_i_2_n_5\,
      O(1) => \sum_3_reg[0][0]_i_2_n_6\,
      O(0) => \sum_3_reg[0][0]_i_2_n_7\,
      S(3) => \sum_3[0][0]_i_3_n_0\,
      S(2) => \sum_3[0][0]_i_4_n_0\,
      S(1) => \sum_3[0][0]_i_5_n_0\,
      S(0) => \sum_3[0][0]_i_6_n_0\
    );
\sum_3_reg[0][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_3[0]_1\,
      D => \sum_3_reg[0][8]_i_1_n_5\,
      Q => \sum_3_reg[0]_0\(10),
      R => \prod_3[23]_i_1_n_0\
    );
\sum_3_reg[0][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_3[0]_1\,
      D => \sum_3_reg[0][8]_i_1_n_4\,
      Q => \sum_3_reg[0]_0\(11),
      R => \prod_3[23]_i_1_n_0\
    );
\sum_3_reg[0][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_3[0]_1\,
      D => \sum_3_reg[0][12]_i_1_n_7\,
      Q => \sum_3_reg[0]_0\(12),
      R => \prod_3[23]_i_1_n_0\
    );
\sum_3_reg[0][12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_3_reg[0][8]_i_1_n_0\,
      CO(3) => \sum_3_reg[0][12]_i_1_n_0\,
      CO(2) => \sum_3_reg[0][12]_i_1_n_1\,
      CO(1) => \sum_3_reg[0][12]_i_1_n_2\,
      CO(0) => \sum_3_reg[0][12]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \prod_3_reg_n_0_[15]\,
      DI(2) => \prod_3_reg_n_0_[14]\,
      DI(1) => \prod_3_reg_n_0_[13]\,
      DI(0) => \prod_3_reg_n_0_[12]\,
      O(3) => \sum_3_reg[0][12]_i_1_n_4\,
      O(2) => \sum_3_reg[0][12]_i_1_n_5\,
      O(1) => \sum_3_reg[0][12]_i_1_n_6\,
      O(0) => \sum_3_reg[0][12]_i_1_n_7\,
      S(3) => \sum_3[0][12]_i_2_n_0\,
      S(2) => \sum_3[0][12]_i_3_n_0\,
      S(1) => \sum_3[0][12]_i_4_n_0\,
      S(0) => \sum_3[0][12]_i_5_n_0\
    );
\sum_3_reg[0][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_3[0]_1\,
      D => \sum_3_reg[0][12]_i_1_n_6\,
      Q => \sum_3_reg[0]_0\(13),
      R => \prod_3[23]_i_1_n_0\
    );
\sum_3_reg[0][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_3[0]_1\,
      D => \sum_3_reg[0][12]_i_1_n_5\,
      Q => \sum_3_reg[0]_0\(14),
      R => \prod_3[23]_i_1_n_0\
    );
\sum_3_reg[0][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_3[0]_1\,
      D => \sum_3_reg[0][12]_i_1_n_4\,
      Q => \sum_3_reg[0]_0\(15),
      R => \prod_3[23]_i_1_n_0\
    );
\sum_3_reg[0][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_3[0]_1\,
      D => \sum_3_reg[0][16]_i_1_n_7\,
      Q => \sum_3_reg[0]_0\(16),
      R => \prod_3[23]_i_1_n_0\
    );
\sum_3_reg[0][16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_3_reg[0][12]_i_1_n_0\,
      CO(3) => \sum_3_reg[0][16]_i_1_n_0\,
      CO(2) => \sum_3_reg[0][16]_i_1_n_1\,
      CO(1) => \sum_3_reg[0][16]_i_1_n_2\,
      CO(0) => \sum_3_reg[0][16]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \prod_3_reg_n_0_[19]\,
      DI(2) => \prod_3_reg_n_0_[18]\,
      DI(1) => \prod_3_reg_n_0_[17]\,
      DI(0) => \prod_3_reg_n_0_[16]\,
      O(3) => \sum_3_reg[0][16]_i_1_n_4\,
      O(2) => \sum_3_reg[0][16]_i_1_n_5\,
      O(1) => \sum_3_reg[0][16]_i_1_n_6\,
      O(0) => \sum_3_reg[0][16]_i_1_n_7\,
      S(3) => \sum_3[0][16]_i_2_n_0\,
      S(2) => \sum_3[0][16]_i_3_n_0\,
      S(1) => \sum_3[0][16]_i_4_n_0\,
      S(0) => \sum_3[0][16]_i_5_n_0\
    );
\sum_3_reg[0][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_3[0]_1\,
      D => \sum_3_reg[0][16]_i_1_n_6\,
      Q => \sum_3_reg[0]_0\(17),
      R => \prod_3[23]_i_1_n_0\
    );
\sum_3_reg[0][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_3[0]_1\,
      D => \sum_3_reg[0][16]_i_1_n_5\,
      Q => \sum_3_reg[0]_0\(18),
      R => \prod_3[23]_i_1_n_0\
    );
\sum_3_reg[0][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_3[0]_1\,
      D => \sum_3_reg[0][16]_i_1_n_4\,
      Q => \sum_3_reg[0]_0\(19),
      R => \prod_3[23]_i_1_n_0\
    );
\sum_3_reg[0][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_3[0]_1\,
      D => \sum_3_reg[0][0]_i_2_n_6\,
      Q => \sum_3_reg[0]_0\(1),
      R => \prod_3[23]_i_1_n_0\
    );
\sum_3_reg[0][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_3[0]_1\,
      D => \sum_3_reg[0][20]_i_1_n_7\,
      Q => \sum_3_reg[0]_0\(20),
      R => \prod_3[23]_i_1_n_0\
    );
\sum_3_reg[0][20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_3_reg[0][16]_i_1_n_0\,
      CO(3) => \sum_3_reg[0][20]_i_1_n_0\,
      CO(2) => \sum_3_reg[0][20]_i_1_n_1\,
      CO(1) => \sum_3_reg[0][20]_i_1_n_2\,
      CO(0) => \sum_3_reg[0][20]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \prod_3_reg_n_0_[23]\,
      DI(2) => \prod_3_reg_n_0_[22]\,
      DI(1) => \prod_3_reg_n_0_[21]\,
      DI(0) => \prod_3_reg_n_0_[20]\,
      O(3) => \sum_3_reg[0][20]_i_1_n_4\,
      O(2) => \sum_3_reg[0][20]_i_1_n_5\,
      O(1) => \sum_3_reg[0][20]_i_1_n_6\,
      O(0) => \sum_3_reg[0][20]_i_1_n_7\,
      S(3) => \sum_3[0][20]_i_2_n_0\,
      S(2) => \sum_3[0][20]_i_3_n_0\,
      S(1) => \sum_3[0][20]_i_4_n_0\,
      S(0) => \sum_3[0][20]_i_5_n_0\
    );
\sum_3_reg[0][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_3[0]_1\,
      D => \sum_3_reg[0][20]_i_1_n_6\,
      Q => \sum_3_reg[0]_0\(21),
      R => \prod_3[23]_i_1_n_0\
    );
\sum_3_reg[0][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_3[0]_1\,
      D => \sum_3_reg[0][20]_i_1_n_5\,
      Q => \sum_3_reg[0]_0\(22),
      R => \prod_3[23]_i_1_n_0\
    );
\sum_3_reg[0][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_3[0]_1\,
      D => \sum_3_reg[0][20]_i_1_n_4\,
      Q => \sum_3_reg[0]_0\(23),
      R => \prod_3[23]_i_1_n_0\
    );
\sum_3_reg[0][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_3[0]_1\,
      D => \sum_3_reg[0][24]_i_1_n_7\,
      Q => \sum_3_reg[0]_0\(24),
      R => \prod_3[23]_i_1_n_0\
    );
\sum_3_reg[0][24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_3_reg[0][20]_i_1_n_0\,
      CO(3) => \sum_3_reg[0][24]_i_1_n_0\,
      CO(2) => \sum_3_reg[0][24]_i_1_n_1\,
      CO(1) => \sum_3_reg[0][24]_i_1_n_2\,
      CO(0) => \sum_3_reg[0][24]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \prod_3_reg_n_0_[23]\,
      DI(2) => \prod_3_reg_n_0_[23]\,
      DI(1) => \prod_3_reg_n_0_[23]\,
      DI(0) => \prod_3_reg_n_0_[23]\,
      O(3) => \sum_3_reg[0][24]_i_1_n_4\,
      O(2) => \sum_3_reg[0][24]_i_1_n_5\,
      O(1) => \sum_3_reg[0][24]_i_1_n_6\,
      O(0) => \sum_3_reg[0][24]_i_1_n_7\,
      S(3) => \sum_3[0][24]_i_2_n_0\,
      S(2) => \sum_3[0][24]_i_3_n_0\,
      S(1) => \sum_3[0][24]_i_4_n_0\,
      S(0) => \sum_3[0][24]_i_5_n_0\
    );
\sum_3_reg[0][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_3[0]_1\,
      D => \sum_3_reg[0][24]_i_1_n_6\,
      Q => \sum_3_reg[0]_0\(25),
      R => \prod_3[23]_i_1_n_0\
    );
\sum_3_reg[0][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_3[0]_1\,
      D => \sum_3_reg[0][24]_i_1_n_5\,
      Q => \sum_3_reg[0]_0\(26),
      R => \prod_3[23]_i_1_n_0\
    );
\sum_3_reg[0][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_3[0]_1\,
      D => \sum_3_reg[0][24]_i_1_n_4\,
      Q => \sum_3_reg[0]_0\(27),
      R => \prod_3[23]_i_1_n_0\
    );
\sum_3_reg[0][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_3[0]_1\,
      D => \sum_3_reg[0][28]_i_1_n_7\,
      Q => \sum_3_reg[0]_0\(28),
      R => \prod_3[23]_i_1_n_0\
    );
\sum_3_reg[0][28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_3_reg[0][24]_i_1_n_0\,
      CO(3) => \NLW_sum_3_reg[0][28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \sum_3_reg[0][28]_i_1_n_1\,
      CO(1) => \sum_3_reg[0][28]_i_1_n_2\,
      CO(0) => \sum_3_reg[0][28]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \prod_3_reg_n_0_[23]\,
      DI(1) => \prod_3_reg_n_0_[23]\,
      DI(0) => \prod_3_reg_n_0_[23]\,
      O(3) => \sum_3_reg[0][28]_i_1_n_4\,
      O(2) => \sum_3_reg[0][28]_i_1_n_5\,
      O(1) => \sum_3_reg[0][28]_i_1_n_6\,
      O(0) => \sum_3_reg[0][28]_i_1_n_7\,
      S(3) => \sum_3[0][28]_i_2_n_0\,
      S(2) => \sum_3[0][28]_i_3_n_0\,
      S(1) => \sum_3[0][28]_i_4_n_0\,
      S(0) => \sum_3[0][28]_i_5_n_0\
    );
\sum_3_reg[0][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_3[0]_1\,
      D => \sum_3_reg[0][28]_i_1_n_6\,
      Q => \sum_3_reg[0]_0\(29),
      R => \prod_3[23]_i_1_n_0\
    );
\sum_3_reg[0][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_3[0]_1\,
      D => \sum_3_reg[0][0]_i_2_n_5\,
      Q => \sum_3_reg[0]_0\(2),
      R => \prod_3[23]_i_1_n_0\
    );
\sum_3_reg[0][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_3[0]_1\,
      D => \sum_3_reg[0][28]_i_1_n_5\,
      Q => \sum_3_reg[0]_0\(30),
      R => \prod_3[23]_i_1_n_0\
    );
\sum_3_reg[0][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_3[0]_1\,
      D => \sum_3_reg[0][28]_i_1_n_4\,
      Q => \sum_3_reg[0]_0\(31),
      R => \prod_3[23]_i_1_n_0\
    );
\sum_3_reg[0][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_3[0]_1\,
      D => \sum_3_reg[0][0]_i_2_n_4\,
      Q => \sum_3_reg[0]_0\(3),
      R => \prod_3[23]_i_1_n_0\
    );
\sum_3_reg[0][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_3[0]_1\,
      D => \sum_3_reg[0][4]_i_1_n_7\,
      Q => \sum_3_reg[0]_0\(4),
      R => \prod_3[23]_i_1_n_0\
    );
\sum_3_reg[0][4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_3_reg[0][0]_i_2_n_0\,
      CO(3) => \sum_3_reg[0][4]_i_1_n_0\,
      CO(2) => \sum_3_reg[0][4]_i_1_n_1\,
      CO(1) => \sum_3_reg[0][4]_i_1_n_2\,
      CO(0) => \sum_3_reg[0][4]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \prod_3_reg_n_0_[7]\,
      DI(2) => \prod_3_reg_n_0_[6]\,
      DI(1) => \prod_3_reg_n_0_[5]\,
      DI(0) => \prod_3_reg_n_0_[4]\,
      O(3) => \sum_3_reg[0][4]_i_1_n_4\,
      O(2) => \sum_3_reg[0][4]_i_1_n_5\,
      O(1) => \sum_3_reg[0][4]_i_1_n_6\,
      O(0) => \sum_3_reg[0][4]_i_1_n_7\,
      S(3) => \sum_3[0][4]_i_2_n_0\,
      S(2) => \sum_3[0][4]_i_3_n_0\,
      S(1) => \sum_3[0][4]_i_4_n_0\,
      S(0) => \sum_3[0][4]_i_5_n_0\
    );
\sum_3_reg[0][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_3[0]_1\,
      D => \sum_3_reg[0][4]_i_1_n_6\,
      Q => \sum_3_reg[0]_0\(5),
      R => \prod_3[23]_i_1_n_0\
    );
\sum_3_reg[0][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_3[0]_1\,
      D => \sum_3_reg[0][4]_i_1_n_5\,
      Q => \sum_3_reg[0]_0\(6),
      R => \prod_3[23]_i_1_n_0\
    );
\sum_3_reg[0][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_3[0]_1\,
      D => \sum_3_reg[0][4]_i_1_n_4\,
      Q => \sum_3_reg[0]_0\(7),
      R => \prod_3[23]_i_1_n_0\
    );
\sum_3_reg[0][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_3[0]_1\,
      D => \sum_3_reg[0][8]_i_1_n_7\,
      Q => \sum_3_reg[0]_0\(8),
      R => \prod_3[23]_i_1_n_0\
    );
\sum_3_reg[0][8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_3_reg[0][4]_i_1_n_0\,
      CO(3) => \sum_3_reg[0][8]_i_1_n_0\,
      CO(2) => \sum_3_reg[0][8]_i_1_n_1\,
      CO(1) => \sum_3_reg[0][8]_i_1_n_2\,
      CO(0) => \sum_3_reg[0][8]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \prod_3_reg_n_0_[11]\,
      DI(2) => \prod_3_reg_n_0_[10]\,
      DI(1) => \prod_3_reg_n_0_[9]\,
      DI(0) => \prod_3_reg_n_0_[8]\,
      O(3) => \sum_3_reg[0][8]_i_1_n_4\,
      O(2) => \sum_3_reg[0][8]_i_1_n_5\,
      O(1) => \sum_3_reg[0][8]_i_1_n_6\,
      O(0) => \sum_3_reg[0][8]_i_1_n_7\,
      S(3) => \sum_3[0][8]_i_2_n_0\,
      S(2) => \sum_3[0][8]_i_3_n_0\,
      S(1) => \sum_3[0][8]_i_4_n_0\,
      S(0) => \sum_3[0][8]_i_5_n_0\
    );
\sum_3_reg[0][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sum_3[0]_1\,
      D => \sum_3_reg[0][8]_i_1_n_6\,
      Q => \sum_3_reg[0]_0\(9),
      R => \prod_3[23]_i_1_n_0\
    );
weights1_f_RAM_reg_r1_0_31_0_5_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5141514100140414"
    )
        port map (
      I0 => \activation_2[0].sigmoid_instances2_n_4\,
      I1 => cnt_weight1(1),
      I2 => cnt_weight1(0),
      I3 => \cnt_features_reg[0]_1\,
      I4 => \cnt_features_reg[2]_1\,
      I5 => \cnt_features_reg[1]_0\,
      O => ADDRA(1)
    );
weights1_f_RAM_reg_r1_0_31_0_5_i_11: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0065FF00"
    )
        port map (
      I0 => \cnt_features_reg[0]_1\,
      I1 => cnt_weight1(1),
      I2 => cnt_weight1(0),
      I3 => \state1_curr_reg[1]_0\(0),
      I4 => \state1_curr_reg[1]_0\(1),
      O => ADDRA(0)
    );
weights1_f_RAM_reg_r1_0_31_0_5_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000400040404000"
    )
        port map (
      I0 => \state1_curr_reg[1]_0\(0),
      I1 => \state1_curr_reg[1]_0\(1),
      I2 => \cnt_features_reg[2]_1\,
      I3 => \cnt_features_reg[1]_0\,
      I4 => \cnt_features_reg[0]_1\,
      I5 => \activation_2[0].sigmoid_instances2_n_5\,
      O => ADDRA(4)
    );
weights1_f_RAM_reg_r1_0_31_0_5_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000005555140000"
    )
        port map (
      I0 => \activation_2[0].sigmoid_instances2_n_4\,
      I1 => cnt_weight1(0),
      I2 => cnt_weight1(1),
      I3 => \cnt_features_reg[0]_1\,
      I4 => \cnt_features_reg[1]_0\,
      I5 => \cnt_features_reg[2]_1\,
      O => ADDRA(3)
    );
weights1_f_RAM_reg_r1_0_31_0_5_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000009C696666"
    )
        port map (
      I0 => \cnt_features_reg[0]_1\,
      I1 => \cnt_features_reg[2]_1\,
      I2 => cnt_weight1(1),
      I3 => cnt_weight1(0),
      I4 => \cnt_features_reg[1]_0\,
      I5 => \activation_2[0].sigmoid_instances2_n_4\,
      O => ADDRA(2)
    );
weights2_f_RAM_reg_r1_0_3_0_5_i_7: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \cnt_hidden_reg[1]_0\,
      I1 => Q(1),
      I2 => Q(0),
      O => \^prod_30_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity weights_generator is
  port (
    ADDRD : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \state_curr_reg[0]_0\ : out STD_LOGIC;
    \state_curr_reg[0]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    ADDRA : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \main_state_curr_reg[2]\ : out STD_LOGIC;
    prod_30 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    lfsr : out STD_LOGIC_VECTOR ( 11 downto 0 );
    \sum_1_reg[0]0\ : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \state_curr_reg[0]_2\ : in STD_LOGIC;
    \AXIS_in[ARESETN]\ : in STD_LOGIC;
    main_state_curr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \AXIS_in[ARESETN]_0\ : in STD_LOGIC;
    clk_IBUF_BUFG : in STD_LOGIC
  );
end weights_generator;

architecture STRUCTURE of weights_generator is
  signal \cnt_weights[1]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_weights[4]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_weights[4]_i_3_n_0\ : STD_LOGIC;
  signal cnt_weights_next : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \cnt_weights_reg_n_0_[0]\ : STD_LOGIC;
  signal \cnt_weights_reg_n_0_[2]\ : STD_LOGIC;
  signal \cnt_weights_reg_n_0_[3]\ : STD_LOGIC;
  signal \cnt_weights_reg_n_0_[4]\ : STD_LOGIC;
  signal \state_curr[0]_i_1_n_0\ : STD_LOGIC;
  signal \state_curr[0]_i_2__0_n_0\ : STD_LOGIC;
  signal \state_curr[1]_i_1_n_0\ : STD_LOGIC;
  signal \^state_curr_reg[0]_0\ : STD_LOGIC;
  signal \^state_curr_reg[0]_1\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \state_curr_reg_n_0_[0]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt_weights[0]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \cnt_weights[1]_i_2\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \cnt_weights[2]_i_1__0\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \cnt_weights[3]_i_1__0\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \cnt_weights[4]_i_3\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \state_curr[1]_i_1\ : label is "soft_lutpair67";
begin
  \state_curr_reg[0]_0\ <= \^state_curr_reg[0]_0\;
  \state_curr_reg[0]_1\(0) <= \^state_curr_reg[0]_1\(0);
RNG_unit: entity work.lfsr_counter
     port map (
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      lfsr(11 downto 0) => lfsr(11 downto 0)
    );
\cnt_weights[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"54"
    )
        port map (
      I0 => \cnt_weights_reg_n_0_[0]\,
      I1 => \state_curr_reg_n_0_[0]\,
      I2 => \^state_curr_reg[0]_0\,
      O => cnt_weights_next(0)
    );
\cnt_weights[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000D8FABAFA0000"
    )
        port map (
      I0 => \^state_curr_reg[0]_0\,
      I1 => \cnt_weights_reg_n_0_[4]\,
      I2 => \state_curr_reg_n_0_[0]\,
      I3 => \cnt_weights[1]_i_2_n_0\,
      I4 => \cnt_weights_reg_n_0_[0]\,
      I5 => \^state_curr_reg[0]_1\(0),
      O => cnt_weights_next(1)
    );
\cnt_weights[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \cnt_weights_reg_n_0_[3]\,
      I1 => \cnt_weights_reg_n_0_[0]\,
      I2 => \cnt_weights_reg_n_0_[2]\,
      O => \cnt_weights[1]_i_2_n_0\
    );
\cnt_weights[2]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \cnt_weights[4]_i_3_n_0\,
      I1 => \^state_curr_reg[0]_1\(0),
      I2 => \cnt_weights_reg_n_0_[0]\,
      I3 => \cnt_weights_reg_n_0_[2]\,
      O => cnt_weights_next(2)
    );
\cnt_weights[3]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => \cnt_weights[4]_i_3_n_0\,
      I1 => \cnt_weights_reg_n_0_[0]\,
      I2 => \^state_curr_reg[0]_1\(0),
      I3 => \cnt_weights_reg_n_0_[2]\,
      I4 => \cnt_weights_reg_n_0_[3]\,
      O => cnt_weights_next(3)
    );
\cnt_weights[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF0080"
    )
        port map (
      I0 => \AXIS_in[ARESETN]\,
      I1 => main_state_curr(0),
      I2 => main_state_curr(1),
      I3 => main_state_curr(2),
      I4 => \state_curr_reg_n_0_[0]\,
      I5 => \^state_curr_reg[0]_0\,
      O => \cnt_weights[4]_i_1_n_0\
    );
\cnt_weights[4]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA80000000"
    )
        port map (
      I0 => \cnt_weights[4]_i_3_n_0\,
      I1 => \cnt_weights_reg_n_0_[3]\,
      I2 => \cnt_weights_reg_n_0_[2]\,
      I3 => \^state_curr_reg[0]_1\(0),
      I4 => \cnt_weights_reg_n_0_[0]\,
      I5 => \cnt_weights_reg_n_0_[4]\,
      O => cnt_weights_next(4)
    );
\cnt_weights[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF5FC4CC"
    )
        port map (
      I0 => \cnt_weights[1]_i_2_n_0\,
      I1 => \state_curr_reg_n_0_[0]\,
      I2 => \^state_curr_reg[0]_1\(0),
      I3 => \cnt_weights_reg_n_0_[4]\,
      I4 => \^state_curr_reg[0]_0\,
      O => \cnt_weights[4]_i_3_n_0\
    );
\cnt_weights_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \cnt_weights[4]_i_1_n_0\,
      D => cnt_weights_next(0),
      Q => \cnt_weights_reg_n_0_[0]\,
      R => \AXIS_in[ARESETN]_0\
    );
\cnt_weights_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \cnt_weights[4]_i_1_n_0\,
      D => cnt_weights_next(1),
      Q => \^state_curr_reg[0]_1\(0),
      R => \AXIS_in[ARESETN]_0\
    );
\cnt_weights_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \cnt_weights[4]_i_1_n_0\,
      D => cnt_weights_next(2),
      Q => \cnt_weights_reg_n_0_[2]\,
      R => \AXIS_in[ARESETN]_0\
    );
\cnt_weights_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \cnt_weights[4]_i_1_n_0\,
      D => cnt_weights_next(3),
      Q => \cnt_weights_reg_n_0_[3]\,
      R => \AXIS_in[ARESETN]_0\
    );
\cnt_weights_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \cnt_weights[4]_i_1_n_0\,
      D => cnt_weights_next(4),
      Q => \cnt_weights_reg_n_0_[4]\,
      R => \AXIS_in[ARESETN]_0\
    );
\main_state_curr[2]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000040000000000"
    )
        port map (
      I0 => \cnt_weights_reg_n_0_[2]\,
      I1 => \cnt_weights_reg_n_0_[0]\,
      I2 => \cnt_weights_reg_n_0_[3]\,
      I3 => \^state_curr_reg[0]_1\(0),
      I4 => \cnt_weights_reg_n_0_[4]\,
      I5 => \^state_curr_reg[0]_0\,
      O => \main_state_curr_reg[2]\
    );
\state_curr[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF3FF3FF0000AAAA"
    )
        port map (
      I0 => \state_curr[0]_i_2__0_n_0\,
      I1 => \cnt_weights[1]_i_2_n_0\,
      I2 => \^state_curr_reg[0]_1\(0),
      I3 => \cnt_weights_reg_n_0_[4]\,
      I4 => \^state_curr_reg[0]_0\,
      I5 => \state_curr_reg_n_0_[0]\,
      O => \state_curr[0]_i_1_n_0\
    );
\state_curr[0]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => main_state_curr(2),
      I1 => main_state_curr(1),
      I2 => main_state_curr(0),
      I3 => \AXIS_in[ARESETN]\,
      O => \state_curr[0]_i_2__0_n_0\
    );
\state_curr[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F720F700"
    )
        port map (
      I0 => \cnt_weights[1]_i_2_n_0\,
      I1 => \^state_curr_reg[0]_1\(0),
      I2 => \cnt_weights_reg_n_0_[4]\,
      I3 => \^state_curr_reg[0]_0\,
      I4 => \state_curr_reg_n_0_[0]\,
      O => \state_curr[1]_i_1_n_0\
    );
\state_curr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \state_curr[0]_i_1_n_0\,
      Q => \state_curr_reg_n_0_[0]\,
      R => \AXIS_in[ARESETN]_0\
    );
\state_curr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \state_curr[1]_i_1_n_0\,
      Q => \^state_curr_reg[0]_0\,
      R => \AXIS_in[ARESETN]_0\
    );
weights1_f_RAM_reg_r1_0_31_0_5_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888B88888888888"
    )
        port map (
      I0 => Q(3),
      I1 => \state_curr_reg[0]_2\,
      I2 => \AXIS_in[ARESETN]\,
      I3 => \state_curr_reg_n_0_[0]\,
      I4 => \^state_curr_reg[0]_0\,
      I5 => \cnt_weights_reg_n_0_[3]\,
      O => ADDRD(3)
    );
weights1_f_RAM_reg_r1_0_31_0_5_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888B88888888888"
    )
        port map (
      I0 => Q(2),
      I1 => \state_curr_reg[0]_2\,
      I2 => \AXIS_in[ARESETN]\,
      I3 => \state_curr_reg_n_0_[0]\,
      I4 => \^state_curr_reg[0]_0\,
      I5 => \cnt_weights_reg_n_0_[2]\,
      O => ADDRD(2)
    );
weights1_f_RAM_reg_r1_0_31_0_5_i_15: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888B88888888888"
    )
        port map (
      I0 => Q(1),
      I1 => \state_curr_reg[0]_2\,
      I2 => \AXIS_in[ARESETN]\,
      I3 => \state_curr_reg_n_0_[0]\,
      I4 => \^state_curr_reg[0]_0\,
      I5 => \^state_curr_reg[0]_1\(0),
      O => ADDRD(1)
    );
weights1_f_RAM_reg_r1_0_31_0_5_i_16: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888B8888888"
    )
        port map (
      I0 => Q(0),
      I1 => \state_curr_reg[0]_2\,
      I2 => \cnt_weights_reg_n_0_[0]\,
      I3 => \AXIS_in[ARESETN]\,
      I4 => \state_curr_reg_n_0_[0]\,
      I5 => \^state_curr_reg[0]_0\,
      O => ADDRD(0)
    );
weights1_f_RAM_reg_r1_0_31_0_5_i_19: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^state_curr_reg[0]_0\,
      I1 => \state_curr_reg_n_0_[0]\,
      I2 => \AXIS_in[ARESETN]\,
      O => \sum_1_reg[0]0\
    );
weights1_f_RAM_reg_r2_0_31_0_5_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \cnt_weights_reg_n_0_[4]\,
      I1 => \AXIS_in[ARESETN]\,
      I2 => \state_curr_reg_n_0_[0]\,
      I3 => \^state_curr_reg[0]_0\,
      O => ADDRA(4)
    );
weights1_f_RAM_reg_r2_0_31_0_5_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \AXIS_in[ARESETN]\,
      I1 => \state_curr_reg_n_0_[0]\,
      I2 => \^state_curr_reg[0]_0\,
      I3 => \cnt_weights_reg_n_0_[3]\,
      O => ADDRA(3)
    );
weights1_f_RAM_reg_r2_0_31_0_5_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \AXIS_in[ARESETN]\,
      I1 => \state_curr_reg_n_0_[0]\,
      I2 => \^state_curr_reg[0]_0\,
      I3 => \cnt_weights_reg_n_0_[2]\,
      O => ADDRA(2)
    );
weights1_f_RAM_reg_r2_0_31_0_5_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \AXIS_in[ARESETN]\,
      I1 => \state_curr_reg_n_0_[0]\,
      I2 => \^state_curr_reg[0]_0\,
      I3 => \^state_curr_reg[0]_1\(0),
      O => ADDRA(1)
    );
weights1_f_RAM_reg_r2_0_31_0_5_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \cnt_weights_reg_n_0_[0]\,
      I1 => \AXIS_in[ARESETN]\,
      I2 => \state_curr_reg_n_0_[0]\,
      I3 => \^state_curr_reg[0]_0\,
      O => ADDRA(0)
    );
weights2_f_RAM_reg_r2_0_3_0_5_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^state_curr_reg[0]_0\,
      I1 => \AXIS_in[ARESETN]\,
      I2 => \^state_curr_reg[0]_1\(0),
      O => prod_30(1)
    );
weights2_f_RAM_reg_r2_0_3_0_5_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \cnt_weights_reg_n_0_[0]\,
      I1 => \^state_curr_reg[0]_0\,
      I2 => \AXIS_in[ARESETN]\,
      O => prod_30(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity feedforward_controller is
  port (
    results_f_write_req : out STD_LOGIC;
    \main_state_curr_reg[1]\ : out STD_LOGIC;
    \main_state_curr_reg[0]\ : out STD_LOGIC;
    \main_state_curr_reg[0]_0\ : out STD_LOGIC;
    ADDRA : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \feature_f_reg[9]\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \state_curr_reg[2]\ : out STD_LOGIC;
    \state_curr_reg[0]\ : out STD_LOGIC;
    cnt_ex_block_outdated_next7_out : out STD_LOGIC;
    \cnt_ex_block_updated_reg[0]\ : out STD_LOGIC;
    \cnt_ex_block_updated_reg[0]_0\ : out STD_LOGIC;
    weight2_f_addr : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ADDRARDADDR : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \cnt_ex_block_updated_reg[0]_1\ : out STD_LOGIC;
    results_RAM_reg : out STD_LOGIC_VECTOR ( 11 downto 0 );
    clk_IBUF_BUFG : in STD_LOGIC;
    B : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \lfsr_reg[7]\ : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \main_state_curr_reg[0]_1\ : in STD_LOGIC;
    \main_state_curr_reg[0]_2\ : in STD_LOGIC;
    main_state_curr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \state_curr_reg[2]_0\ : in STD_LOGIC;
    \main_state_curr_reg[1]_0\ : in STD_LOGIC;
    \main_state_curr_reg[1]_1\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \feature_f_reg[11]\ : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \state_curr_reg[2]_1\ : in STD_LOGIC;
    \AXIS_in[ARESETN]\ : in STD_LOGIC;
    \main_state_curr_reg[2]\ : in STD_LOGIC;
    LED_8_OBUF : in STD_LOGIC;
    cnt_ex_block_outdated : in STD_LOGIC;
    \nb_examples_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \nb_examples_reg[4]\ : in STD_LOGIC;
    cnt_ex_block_updated : in STD_LOGIC;
    \main_state_curr_reg[1]_2\ : in STD_LOGIC;
    \AXIS_in[S_AXIS_TDATA][14]\ : in STD_LOGIC;
    \AXIS_in[S_AXIS_TDATA][15]\ : in STD_LOGIC;
    \session_curr_reg[0]\ : in STD_LOGIC
  );
end feedforward_controller;

architecture STRUCTURE of feedforward_controller is
  signal axis_command3 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \cnt_ex_block_outdated[0]_i_5_n_0\ : STD_LOGIC;
  signal \^cnt_ex_block_updated_reg[0]_0\ : STD_LOGIC;
  signal \cnt_examples_in[0]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_examples_in[1]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_examples_in[2]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_examples_in[3]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_examples_in[4]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_examples_in[5]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_examples_in[6]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_examples_in[6]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_examples_in[7]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_examples_in[7]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_examples_in[7]_i_3_n_0\ : STD_LOGIC;
  signal cnt_examples_out : STD_LOGIC;
  signal \cnt_examples_out[0]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_examples_out[2]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_examples_out[3]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_examples_out[4]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_examples_out[5]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_examples_out[5]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_examples_out[6]_i_3_n_0\ : STD_LOGIC;
  signal \cnt_examples_out[6]_i_4_n_0\ : STD_LOGIC;
  signal \cnt_features[2]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_features[2]_i_4_n_0\ : STD_LOGIC;
  signal \cnt_features_reg_n_0_[0]\ : STD_LOGIC;
  signal \cnt_features_reg_n_0_[1]\ : STD_LOGIC;
  signal \cnt_features_reg_n_0_[2]\ : STD_LOGIC;
  signal \cnt_hidden_reg_n_0_[0]\ : STD_LOGIC;
  signal \cnt_hidden_reg_n_0_[1]\ : STD_LOGIC;
  signal controlled_unit_n_0 : STD_LOGIC;
  signal controlled_unit_n_16 : STD_LOGIC;
  signal controlled_unit_n_17 : STD_LOGIC;
  signal controlled_unit_n_21 : STD_LOGIC;
  signal controlled_unit_n_24 : STD_LOGIC;
  signal controlled_unit_n_25 : STD_LOGIC;
  signal controlled_unit_n_26 : STD_LOGIC;
  signal controlled_unit_n_28 : STD_LOGIC;
  signal controlled_unit_n_29 : STD_LOGIC;
  signal controlled_unit_n_3 : STD_LOGIC;
  signal controlled_unit_n_30 : STD_LOGIC;
  signal controlled_unit_n_31 : STD_LOGIC;
  signal controlled_unit_n_32 : STD_LOGIC;
  signal controlled_unit_n_33 : STD_LOGIC;
  signal controlled_unit_n_34 : STD_LOGIC;
  signal controlled_unit_n_35 : STD_LOGIC;
  signal controlled_unit_n_36 : STD_LOGIC;
  signal controlled_unit_n_37 : STD_LOGIC;
  signal controlled_unit_n_38 : STD_LOGIC;
  signal controlled_unit_n_39 : STD_LOGIC;
  signal examples_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal examples_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal features_f_RAM_reg_0_63_0_2_i_17_n_0 : STD_LOGIC;
  signal feedforward_en6_out : STD_LOGIC;
  signal \main_state_curr[0]_i_2_n_0\ : STD_LOGIC;
  signal \main_state_curr[1]_i_2_n_0\ : STD_LOGIC;
  signal \main_state_curr[1]_i_4_n_0\ : STD_LOGIC;
  signal \^main_state_curr_reg[0]_0\ : STD_LOGIC;
  signal results_RAM_reg_i_17_n_0 : STD_LOGIC;
  signal stage4_latch1_out : STD_LOGIC;
  signal state1_curr : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal state1_next1 : STD_LOGIC;
  signal state1_next1_carry_n_2 : STD_LOGIC;
  signal state1_next1_carry_n_3 : STD_LOGIC;
  signal \state2_curr_reg_n_0_[0]\ : STD_LOGIC;
  signal \state2_curr_reg_n_0_[1]\ : STD_LOGIC;
  signal state3_curr : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal state3_next : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \state4_curr[1]_i_2_n_0\ : STD_LOGIC;
  signal \state4_curr_reg_n_0_[0]\ : STD_LOGIC;
  signal \state4_curr_reg_n_0_[1]\ : STD_LOGIC;
  signal \state_curr[2]_i_16_n_0\ : STD_LOGIC;
  signal \state_curr[2]_i_18_n_0\ : STD_LOGIC;
  signal \state_curr[2]_i_19_n_0\ : STD_LOGIC;
  signal \state_curr[2]_i_21_n_0\ : STD_LOGIC;
  signal \state_curr[2]_i_25_n_0\ : STD_LOGIC;
  signal \state_curr[2]_i_26_n_0\ : STD_LOGIC;
  signal \state_curr[2]_i_27_n_0\ : STD_LOGIC;
  signal \state_curr[2]_i_28_n_0\ : STD_LOGIC;
  signal \state_curr[2]_i_29_n_0\ : STD_LOGIC;
  signal \state_curr[2]_i_30_n_0\ : STD_LOGIC;
  signal \state_curr[2]_i_31_n_0\ : STD_LOGIC;
  signal \state_curr[2]_i_32_n_0\ : STD_LOGIC;
  signal \state_curr_reg[2]_i_17_n_3\ : STD_LOGIC;
  signal \state_curr_reg[2]_i_22_n_0\ : STD_LOGIC;
  signal \state_curr_reg[2]_i_22_n_1\ : STD_LOGIC;
  signal \state_curr_reg[2]_i_22_n_2\ : STD_LOGIC;
  signal \state_curr_reg[2]_i_22_n_3\ : STD_LOGIC;
  signal \state_curr_reg[2]_i_23_n_0\ : STD_LOGIC;
  signal \state_curr_reg[2]_i_23_n_1\ : STD_LOGIC;
  signal \state_curr_reg[2]_i_23_n_2\ : STD_LOGIC;
  signal \state_curr_reg[2]_i_23_n_3\ : STD_LOGIC;
  signal NLW_state1_next1_carry_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_state1_next1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_state_curr_reg[2]_i_17_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_state_curr_reg[2]_i_17_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt_ex_block_outdated[0]_i_5\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \cnt_examples_in[0]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \cnt_examples_in[1]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \cnt_examples_in[2]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \cnt_examples_in[3]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \cnt_examples_in[4]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \cnt_examples_in[6]_i_2\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \cnt_examples_out[0]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \cnt_examples_out[2]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \cnt_examples_out[3]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \cnt_examples_out[5]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \cnt_features[2]_i_2\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \cnt_features[2]_i_4\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of features_f_RAM_reg_0_63_0_2_i_17 : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \main_state_curr[0]_i_2\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \main_state_curr[2]_i_6\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \state3_curr[1]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \state4_curr[1]_i_2\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \state_curr[2]_i_16\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \state_curr[2]_i_21\ : label is "soft_lutpair56";
begin
  \cnt_ex_block_updated_reg[0]_0\ <= \^cnt_ex_block_updated_reg[0]_0\;
  \main_state_curr_reg[0]_0\ <= \^main_state_curr_reg[0]_0\;
\cnt_ex_block_outdated[0]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99900000"
    )
        port map (
      I0 => cnt_ex_block_updated,
      I1 => examples_in(1),
      I2 => \state_curr[2]_i_19_n_0\,
      I3 => \state_curr[2]_i_18_n_0\,
      I4 => \state_curr_reg[2]_i_17_n_3\,
      O => \cnt_ex_block_outdated[0]_i_5_n_0\
    );
\cnt_examples_in[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => examples_in(0),
      O => \cnt_examples_in[0]_i_1_n_0\
    );
\cnt_examples_in[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => examples_in(0),
      I1 => examples_in(1),
      O => \cnt_examples_in[1]_i_1_n_0\
    );
\cnt_examples_in[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => examples_in(2),
      I1 => examples_in(1),
      I2 => examples_in(0),
      O => \cnt_examples_in[2]_i_1_n_0\
    );
\cnt_examples_in[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => examples_in(3),
      I1 => examples_in(2),
      I2 => examples_in(0),
      I3 => examples_in(1),
      O => \cnt_examples_in[3]_i_1_n_0\
    );
\cnt_examples_in[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => examples_in(4),
      I1 => examples_in(3),
      I2 => examples_in(1),
      I3 => examples_in(0),
      I4 => examples_in(2),
      O => \cnt_examples_in[4]_i_1_n_0\
    );
\cnt_examples_in[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => examples_in(5),
      I1 => examples_in(4),
      I2 => examples_in(2),
      I3 => examples_in(0),
      I4 => examples_in(1),
      I5 => examples_in(3),
      O => \cnt_examples_in[5]_i_1_n_0\
    );
\cnt_examples_in[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => examples_in(6),
      I1 => examples_in(5),
      I2 => examples_in(3),
      I3 => \cnt_examples_in[6]_i_2_n_0\,
      I4 => examples_in(2),
      I5 => examples_in(4),
      O => \cnt_examples_in[6]_i_1_n_0\
    );
\cnt_examples_in[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => examples_in(0),
      I1 => examples_in(1),
      O => \cnt_examples_in[6]_i_2_n_0\
    );
\cnt_examples_in[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => state1_curr(0),
      I1 => \main_state_curr_reg[1]_1\,
      I2 => state1_curr(1),
      O => \cnt_examples_in[7]_i_1_n_0\
    );
\cnt_examples_in[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => examples_in(7),
      I1 => examples_in(6),
      I2 => \cnt_examples_in[7]_i_3_n_0\,
      O => \cnt_examples_in[7]_i_2_n_0\
    );
\cnt_examples_in[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => examples_in(4),
      I1 => examples_in(2),
      I2 => examples_in(0),
      I3 => examples_in(1),
      I4 => examples_in(3),
      I5 => examples_in(5),
      O => \cnt_examples_in[7]_i_3_n_0\
    );
\cnt_examples_in_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => controlled_unit_n_0,
      D => \cnt_examples_in[0]_i_1_n_0\,
      Q => examples_in(0),
      R => \cnt_examples_in[7]_i_1_n_0\
    );
\cnt_examples_in_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => controlled_unit_n_0,
      D => \cnt_examples_in[1]_i_1_n_0\,
      Q => examples_in(1),
      R => \cnt_examples_in[7]_i_1_n_0\
    );
\cnt_examples_in_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => controlled_unit_n_0,
      D => \cnt_examples_in[2]_i_1_n_0\,
      Q => examples_in(2),
      R => \cnt_examples_in[7]_i_1_n_0\
    );
\cnt_examples_in_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => controlled_unit_n_0,
      D => \cnt_examples_in[3]_i_1_n_0\,
      Q => examples_in(3),
      R => \cnt_examples_in[7]_i_1_n_0\
    );
\cnt_examples_in_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => controlled_unit_n_0,
      D => \cnt_examples_in[4]_i_1_n_0\,
      Q => examples_in(4),
      R => \cnt_examples_in[7]_i_1_n_0\
    );
\cnt_examples_in_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => controlled_unit_n_0,
      D => \cnt_examples_in[5]_i_1_n_0\,
      Q => examples_in(5),
      R => \cnt_examples_in[7]_i_1_n_0\
    );
\cnt_examples_in_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => controlled_unit_n_0,
      D => \cnt_examples_in[6]_i_1_n_0\,
      Q => examples_in(6),
      R => \cnt_examples_in[7]_i_1_n_0\
    );
\cnt_examples_in_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => controlled_unit_n_0,
      D => \cnt_examples_in[7]_i_2_n_0\,
      Q => examples_in(7),
      R => \cnt_examples_in[7]_i_1_n_0\
    );
\cnt_examples_out[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => examples_out(0),
      I1 => controlled_unit_n_3,
      O => \cnt_examples_out[0]_i_1_n_0\
    );
\cnt_examples_out[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1540"
    )
        port map (
      I0 => controlled_unit_n_3,
      I1 => examples_out(1),
      I2 => examples_out(0),
      I3 => examples_out(2),
      O => \cnt_examples_out[2]_i_1_n_0\
    );
\cnt_examples_out[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"15554000"
    )
        port map (
      I0 => controlled_unit_n_3,
      I1 => examples_out(0),
      I2 => examples_out(1),
      I3 => examples_out(2),
      I4 => examples_out(3),
      O => \cnt_examples_out[3]_i_1_n_0\
    );
\cnt_examples_out[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1555555540000000"
    )
        port map (
      I0 => controlled_unit_n_3,
      I1 => examples_out(2),
      I2 => examples_out(1),
      I3 => examples_out(0),
      I4 => examples_out(3),
      I5 => examples_out(4),
      O => \cnt_examples_out[4]_i_1_n_0\
    );
\cnt_examples_out[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"14"
    )
        port map (
      I0 => controlled_unit_n_3,
      I1 => \cnt_examples_out[5]_i_2_n_0\,
      I2 => examples_out(5),
      O => \cnt_examples_out[5]_i_1_n_0\
    );
\cnt_examples_out[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => examples_out(3),
      I1 => examples_out(0),
      I2 => examples_out(1),
      I3 => examples_out(2),
      I4 => examples_out(4),
      O => \cnt_examples_out[5]_i_2_n_0\
    );
\cnt_examples_out[6]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => \cnt_examples_out[6]_i_4_n_0\,
      I1 => examples_out(6),
      I2 => controlled_unit_n_3,
      O => \cnt_examples_out[6]_i_3_n_0\
    );
\cnt_examples_out[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => examples_out(4),
      I1 => examples_out(2),
      I2 => examples_out(1),
      I3 => examples_out(0),
      I4 => examples_out(3),
      I5 => examples_out(5),
      O => \cnt_examples_out[6]_i_4_n_0\
    );
\cnt_examples_out_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => cnt_examples_out,
      D => \cnt_examples_out[0]_i_1_n_0\,
      Q => examples_out(0),
      R => controlled_unit_n_28
    );
\cnt_examples_out_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => controlled_unit_n_39,
      Q => examples_out(1),
      R => '0'
    );
\cnt_examples_out_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => cnt_examples_out,
      D => \cnt_examples_out[2]_i_1_n_0\,
      Q => examples_out(2),
      R => controlled_unit_n_28
    );
\cnt_examples_out_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => cnt_examples_out,
      D => \cnt_examples_out[3]_i_1_n_0\,
      Q => examples_out(3),
      R => controlled_unit_n_28
    );
\cnt_examples_out_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => cnt_examples_out,
      D => \cnt_examples_out[4]_i_1_n_0\,
      Q => examples_out(4),
      R => controlled_unit_n_28
    );
\cnt_examples_out_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => cnt_examples_out,
      D => \cnt_examples_out[5]_i_1_n_0\,
      Q => examples_out(5),
      R => controlled_unit_n_28
    );
\cnt_examples_out_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => cnt_examples_out,
      D => \cnt_examples_out[6]_i_3_n_0\,
      Q => examples_out(6),
      R => controlled_unit_n_28
    );
\cnt_examples_out_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => controlled_unit_n_38,
      Q => examples_out(7),
      R => '0'
    );
\cnt_features[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00006A00"
    )
        port map (
      I0 => \cnt_features_reg_n_0_[2]\,
      I1 => \cnt_features_reg_n_0_[1]\,
      I2 => \cnt_features_reg_n_0_[0]\,
      I3 => state1_curr(1),
      I4 => state1_curr(0),
      O => \cnt_features[2]_i_2_n_0\
    );
\cnt_features[2]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \cnt_features_reg_n_0_[0]\,
      I1 => \cnt_features_reg_n_0_[2]\,
      I2 => \cnt_features_reg_n_0_[1]\,
      O => \cnt_features[2]_i_4_n_0\
    );
\cnt_features_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => controlled_unit_n_31,
      Q => \cnt_features_reg_n_0_[0]\,
      R => '0'
    );
\cnt_features_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => controlled_unit_n_30,
      Q => \cnt_features_reg_n_0_[1]\,
      R => '0'
    );
\cnt_features_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => controlled_unit_n_29,
      Q => \cnt_features_reg_n_0_[2]\,
      R => '0'
    );
\cnt_hidden_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => controlled_unit_n_34,
      Q => \cnt_hidden_reg_n_0_[0]\,
      R => '0'
    );
\cnt_hidden_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => controlled_unit_n_35,
      Q => \cnt_hidden_reg_n_0_[1]\,
      R => '0'
    );
controlled_unit: entity work.feedforward_dataflow
     port map (
      ADDRA(4 downto 0) => ADDRA(4 downto 0),
      \AXIS_in[ARESETN]\ => \AXIS_in[ARESETN]\,
      B(11 downto 0) => B(11 downto 0),
      CO(0) => state1_next1,
      D(0) => state3_next(0),
      E(0) => stage4_latch1_out,
      LED_8_OBUF => LED_8_OBUF,
      Q(1 downto 0) => state3_curr(1 downto 0),
      S(2) => controlled_unit_n_24,
      S(1) => controlled_unit_n_25,
      S(0) => controlled_unit_n_26,
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      cnt_ex_block_outdated => cnt_ex_block_outdated,
      cnt_ex_block_outdated_next7_out => cnt_ex_block_outdated_next7_out,
      \cnt_ex_block_outdated_reg[0]\ => \^cnt_ex_block_updated_reg[0]_0\,
      cnt_ex_block_updated => cnt_ex_block_updated,
      \cnt_ex_block_updated_reg[0]\ => \cnt_ex_block_updated_reg[0]\,
      \cnt_ex_block_updated_reg[0]_0\ => \cnt_ex_block_updated_reg[0]_1\,
      \cnt_ex_block_updated_reg[0]_1\ => \cnt_ex_block_outdated[0]_i_5_n_0\,
      \cnt_examples_in_reg[1]\ => \state_curr[2]_i_21_n_0\,
      cnt_examples_out => cnt_examples_out,
      \cnt_examples_out_reg[1]\ => controlled_unit_n_39,
      \cnt_examples_out_reg[4]\ => \cnt_examples_out[6]_i_4_n_0\,
      \cnt_examples_out_reg[6]\ => controlled_unit_n_28,
      \cnt_examples_out_reg[7]\ => controlled_unit_n_3,
      \cnt_examples_out_reg[7]_0\ => controlled_unit_n_38,
      \cnt_features_reg[0]\ => controlled_unit_n_31,
      \cnt_features_reg[0]_0\ => \cnt_features[2]_i_4_n_0\,
      \cnt_features_reg[0]_1\ => \cnt_features_reg_n_0_[0]\,
      \cnt_features_reg[1]\ => controlled_unit_n_30,
      \cnt_features_reg[1]_0\ => \cnt_features_reg_n_0_[1]\,
      \cnt_features_reg[2]\ => controlled_unit_n_29,
      \cnt_features_reg[2]_0\ => features_f_RAM_reg_0_63_0_2_i_17_n_0,
      \cnt_features_reg[2]_1\ => \cnt_features_reg_n_0_[2]\,
      \cnt_features_reg[2]_2\ => \state_curr[2]_i_16_n_0\,
      \cnt_features_reg[2]_3\ => \cnt_features[2]_i_2_n_0\,
      \cnt_hidden_reg[0]\ => controlled_unit_n_34,
      \cnt_hidden_reg[0]_0\ => \cnt_hidden_reg_n_0_[0]\,
      \cnt_hidden_reg[1]\ => controlled_unit_n_35,
      \cnt_hidden_reg[1]_0\ => \cnt_hidden_reg_n_0_[1]\,
      \cnt_hidden_reg[1]_1\ => \state4_curr[1]_i_2_n_0\,
      examples_in(7 downto 0) => examples_in(7 downto 0),
      examples_out(7 downto 0) => examples_out(7 downto 0),
      \feature_f_reg[11]\(11 downto 0) => \feature_f_reg[11]\(11 downto 0),
      \feature_f_reg[9]\(4 downto 0) => \feature_f_reg[9]\(4 downto 0),
      feedforward_en6_out => feedforward_en6_out,
      \lfsr_reg[7]\(11 downto 0) => \lfsr_reg[7]\(11 downto 0),
      main_state_curr(2 downto 0) => main_state_curr(2 downto 0),
      \main_state_curr_reg[1]\ => \main_state_curr_reg[1]_1\,
      \main_state_curr_reg[1]_0\ => \main_state_curr_reg[1]_0\,
      \main_state_curr_reg[1]_1\ => \main_state_curr_reg[1]_2\,
      \main_state_curr_reg[2]\ => \main_state_curr_reg[2]\,
      \nb_examples_reg[3]\ => \state_curr[2]_i_18_n_0\,
      \nb_examples_reg[4]\ => \nb_examples_reg[4]\,
      \nb_examples_reg[7]\ => \state_curr[2]_i_19_n_0\,
      \nb_examples_reg[7]_0\(0) => \state_curr_reg[2]_i_17_n_3\,
      \nb_examples_reg[7]_1\(7 downto 0) => \nb_examples_reg[7]\(7 downto 0),
      prod_30_0 => weight2_f_addr(1),
      results_RAM_reg(11 downto 0) => results_RAM_reg(11 downto 0),
      \state1_curr_reg[1]\(1) => controlled_unit_n_16,
      \state1_curr_reg[1]\(0) => controlled_unit_n_17,
      \state1_curr_reg[1]_0\(1 downto 0) => state1_curr(1 downto 0),
      \state2_curr_reg[0]\ => controlled_unit_n_33,
      \state2_curr_reg[0]_0\ => \state2_curr_reg_n_0_[0]\,
      \state2_curr_reg[1]\ => controlled_unit_n_32,
      \state2_curr_reg[1]_0\ => \state2_curr_reg_n_0_[1]\,
      \state4_curr_reg[0]\ => controlled_unit_n_37,
      \state4_curr_reg[0]_0\ => \state4_curr_reg_n_0_[0]\,
      \state4_curr_reg[1]\ => controlled_unit_n_36,
      \state4_curr_reg[1]_0\ => \state4_curr_reg_n_0_[1]\,
      \state_curr_reg[0]\ => \state_curr_reg[0]\,
      \state_curr_reg[2]\ => \state_curr_reg[2]\,
      \state_curr_reg[2]_0\ => \state_curr_reg[2]_0\,
      \state_curr_reg[2]_1\ => \state_curr_reg[2]_1\,
      \sum_1_reg[0][0]_0\ => controlled_unit_n_0,
      tmp2_reg => controlled_unit_n_21,
      \weight2_f_reg[11]\(11 downto 0) => Q(11 downto 0)
    );
features_f_RAM_reg_0_63_0_2_i_17: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \cnt_features_reg_n_0_[2]\,
      I1 => state1_curr(1),
      I2 => state1_curr(0),
      O => features_f_RAM_reg_0_63_0_2_i_17_n_0
    );
\main_state_curr[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BB88BAAAAA8AAAAA"
    )
        port map (
      I0 => \main_state_curr[0]_i_2_n_0\,
      I1 => \main_state_curr_reg[0]_2\,
      I2 => \state_curr_reg[2]_0\,
      I3 => main_state_curr(0),
      I4 => \main_state_curr_reg[1]_0\,
      I5 => \^main_state_curr_reg[0]_0\,
      O => \main_state_curr_reg[0]\
    );
\main_state_curr[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F080F05"
    )
        port map (
      I0 => main_state_curr(0),
      I1 => controlled_unit_n_21,
      I2 => main_state_curr(1),
      I3 => \session_curr_reg[0]\,
      I4 => main_state_curr(2),
      O => \main_state_curr[0]_i_2_n_0\
    );
\main_state_curr[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000F2220"
    )
        port map (
      I0 => \main_state_curr[1]_i_2_n_0\,
      I1 => \main_state_curr_reg[0]_1\,
      I2 => \main_state_curr_reg[0]_2\,
      I3 => \main_state_curr[1]_i_4_n_0\,
      I4 => main_state_curr(1),
      O => \main_state_curr_reg[1]\
    );
\main_state_curr[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DADAD0DA"
    )
        port map (
      I0 => main_state_curr(0),
      I1 => controlled_unit_n_21,
      I2 => main_state_curr(2),
      I3 => \AXIS_in[S_AXIS_TDATA][14]\,
      I4 => \AXIS_in[S_AXIS_TDATA][15]\,
      O => \main_state_curr[1]_i_2_n_0\
    );
\main_state_curr[1]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5377"
    )
        port map (
      I0 => \^main_state_curr_reg[0]_0\,
      I1 => \main_state_curr_reg[1]_0\,
      I2 => main_state_curr(0),
      I3 => \state_curr_reg[2]_0\,
      O => \main_state_curr[1]_i_4_n_0\
    );
\main_state_curr[2]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F2FF"
    )
        port map (
      I0 => main_state_curr(0),
      I1 => controlled_unit_n_21,
      I2 => main_state_curr(1),
      I3 => main_state_curr(2),
      O => \^main_state_curr_reg[0]_0\
    );
result_available_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => feedforward_en6_out,
      D => stage4_latch1_out,
      Q => results_f_write_req,
      R => '0'
    );
results_RAM_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => examples_out(7),
      I1 => examples_out(6),
      I2 => results_RAM_reg_i_17_n_0,
      O => ADDRARDADDR(7)
    );
results_RAM_reg_i_17: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => examples_out(4),
      I1 => examples_out(2),
      I2 => examples_out(1),
      I3 => examples_out(0),
      I4 => examples_out(3),
      I5 => examples_out(5),
      O => results_RAM_reg_i_17_n_0
    );
results_RAM_reg_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => examples_out(6),
      I1 => results_RAM_reg_i_17_n_0,
      O => ADDRARDADDR(6)
    );
results_RAM_reg_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA9"
    )
        port map (
      I0 => examples_out(5),
      I1 => examples_out(4),
      I2 => examples_out(2),
      I3 => examples_out(1),
      I4 => examples_out(0),
      I5 => examples_out(3),
      O => ADDRARDADDR(5)
    );
results_RAM_reg_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA9"
    )
        port map (
      I0 => examples_out(4),
      I1 => examples_out(3),
      I2 => examples_out(0),
      I3 => examples_out(1),
      I4 => examples_out(2),
      O => ADDRARDADDR(4)
    );
results_RAM_reg_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA9"
    )
        port map (
      I0 => examples_out(3),
      I1 => examples_out(2),
      I2 => examples_out(1),
      I3 => examples_out(0),
      O => ADDRARDADDR(3)
    );
results_RAM_reg_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => examples_out(2),
      I1 => examples_out(0),
      I2 => examples_out(1),
      O => ADDRARDADDR(2)
    );
results_RAM_reg_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => examples_out(1),
      I1 => examples_out(0),
      O => ADDRARDADDR(1)
    );
results_RAM_reg_i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => examples_out(0),
      O => ADDRARDADDR(0)
    );
\state1_curr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => feedforward_en6_out,
      D => controlled_unit_n_17,
      Q => state1_curr(0),
      R => '0'
    );
\state1_curr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => feedforward_en6_out,
      D => controlled_unit_n_16,
      Q => state1_curr(1),
      R => '0'
    );
state1_next1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => NLW_state1_next1_carry_CO_UNCONNECTED(3),
      CO(2) => state1_next1,
      CO(1) => state1_next1_carry_n_2,
      CO(0) => state1_next1_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_state1_next1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => '0',
      S(2) => controlled_unit_n_24,
      S(1) => controlled_unit_n_25,
      S(0) => controlled_unit_n_26
    );
\state2_curr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => controlled_unit_n_33,
      Q => \state2_curr_reg_n_0_[0]\,
      R => '0'
    );
\state2_curr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => controlled_unit_n_32,
      Q => \state2_curr_reg_n_0_[1]\,
      R => '0'
    );
\state3_curr[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6EEE"
    )
        port map (
      I0 => state3_curr(1),
      I1 => state3_curr(0),
      I2 => \cnt_hidden_reg_n_0_[1]\,
      I3 => \cnt_hidden_reg_n_0_[0]\,
      O => state3_next(1)
    );
\state3_curr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => feedforward_en6_out,
      D => state3_next(0),
      Q => state3_curr(0),
      R => '0'
    );
\state3_curr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => feedforward_en6_out,
      D => state3_next(1),
      Q => state3_curr(1),
      R => '0'
    );
\state4_curr[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \cnt_hidden_reg_n_0_[1]\,
      I1 => \cnt_hidden_reg_n_0_[0]\,
      I2 => state3_curr(0),
      I3 => state3_curr(1),
      O => \state4_curr[1]_i_2_n_0\
    );
\state4_curr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => controlled_unit_n_37,
      Q => \state4_curr_reg_n_0_[0]\,
      R => '0'
    );
\state4_curr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => controlled_unit_n_36,
      Q => \state4_curr_reg_n_0_[1]\,
      R => '0'
    );
\state_curr[2]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEA5555AAAADDD5"
    )
        port map (
      I0 => cnt_ex_block_outdated,
      I1 => \state_curr_reg[2]_i_17_n_3\,
      I2 => \state_curr[2]_i_18_n_0\,
      I3 => \state_curr[2]_i_19_n_0\,
      I4 => examples_in(1),
      I5 => cnt_ex_block_updated,
      O => \^cnt_ex_block_updated_reg[0]_0\
    );
\state_curr[2]_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \cnt_features_reg_n_0_[2]\,
      I1 => \cnt_features_reg_n_0_[1]\,
      I2 => \cnt_features_reg_n_0_[0]\,
      O => \state_curr[2]_i_16_n_0\
    );
\state_curr[2]_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF8"
    )
        port map (
      I0 => axis_command3(0),
      I1 => axis_command3(1),
      I2 => axis_command3(7),
      I3 => axis_command3(6),
      O => \state_curr[2]_i_18_n_0\
    );
\state_curr[2]_i_19\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => axis_command3(4),
      I1 => axis_command3(3),
      I2 => axis_command3(5),
      I3 => axis_command3(2),
      O => \state_curr[2]_i_19_n_0\
    );
\state_curr[2]_i_21\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => examples_in(1),
      I1 => cnt_ex_block_updated,
      O => \state_curr[2]_i_21_n_0\
    );
\state_curr[2]_i_25\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \nb_examples_reg[7]\(7),
      I1 => examples_in(7),
      O => \state_curr[2]_i_25_n_0\
    );
\state_curr[2]_i_26\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \nb_examples_reg[7]\(6),
      I1 => examples_in(6),
      O => \state_curr[2]_i_26_n_0\
    );
\state_curr[2]_i_27\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \nb_examples_reg[7]\(5),
      I1 => examples_in(5),
      O => \state_curr[2]_i_27_n_0\
    );
\state_curr[2]_i_28\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \nb_examples_reg[7]\(4),
      I1 => examples_in(4),
      O => \state_curr[2]_i_28_n_0\
    );
\state_curr[2]_i_29\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \nb_examples_reg[7]\(3),
      I1 => examples_in(3),
      O => \state_curr[2]_i_29_n_0\
    );
\state_curr[2]_i_30\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \nb_examples_reg[7]\(2),
      I1 => examples_in(2),
      O => \state_curr[2]_i_30_n_0\
    );
\state_curr[2]_i_31\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \nb_examples_reg[7]\(1),
      I1 => examples_in(1),
      O => \state_curr[2]_i_31_n_0\
    );
\state_curr[2]_i_32\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \nb_examples_reg[7]\(0),
      I1 => examples_in(0),
      O => \state_curr[2]_i_32_n_0\
    );
\state_curr_reg[2]_i_17\: unisim.vcomponents.CARRY4
     port map (
      CI => \state_curr_reg[2]_i_22_n_0\,
      CO(3 downto 1) => \NLW_state_curr_reg[2]_i_17_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \state_curr_reg[2]_i_17_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_state_curr_reg[2]_i_17_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"0001"
    );
\state_curr_reg[2]_i_22\: unisim.vcomponents.CARRY4
     port map (
      CI => \state_curr_reg[2]_i_23_n_0\,
      CO(3) => \state_curr_reg[2]_i_22_n_0\,
      CO(2) => \state_curr_reg[2]_i_22_n_1\,
      CO(1) => \state_curr_reg[2]_i_22_n_2\,
      CO(0) => \state_curr_reg[2]_i_22_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \nb_examples_reg[7]\(7 downto 4),
      O(3 downto 0) => axis_command3(7 downto 4),
      S(3) => \state_curr[2]_i_25_n_0\,
      S(2) => \state_curr[2]_i_26_n_0\,
      S(1) => \state_curr[2]_i_27_n_0\,
      S(0) => \state_curr[2]_i_28_n_0\
    );
\state_curr_reg[2]_i_23\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \state_curr_reg[2]_i_23_n_0\,
      CO(2) => \state_curr_reg[2]_i_23_n_1\,
      CO(1) => \state_curr_reg[2]_i_23_n_2\,
      CO(0) => \state_curr_reg[2]_i_23_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => \nb_examples_reg[7]\(3 downto 0),
      O(3 downto 0) => axis_command3(3 downto 0),
      S(3) => \state_curr[2]_i_29_n_0\,
      S(2) => \state_curr[2]_i_30_n_0\,
      S(1) => \state_curr[2]_i_31_n_0\,
      S(0) => \state_curr[2]_i_32_n_0\
    );
weights2_f_RAM_reg_r1_0_3_0_5_i_8: unisim.vcomponents.LUT3
    generic map(
      INIT => X"62"
    )
        port map (
      I0 => state3_curr(0),
      I1 => state3_curr(1),
      I2 => \cnt_hidden_reg_n_0_[0]\,
      O => weight2_f_addr(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity main_controller is
  port (
    clk : in STD_LOGIC;
    \AXIS_in[S_AXIS_TDATA]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \AXIS_in[S_AXIS_TLAST]\ : in STD_LOGIC;
    \AXIS_in[S_AXIS_TVALID]\ : in STD_LOGIC;
    \AXIS_in[M_AXIS_TREADY]\ : in STD_LOGIC;
    \AXIS_in[ARESETN]\ : in STD_LOGIC;
    \AXIS_out[M_AXIS_TDATA]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \AXIS_out[M_AXIS_TLAST]\ : out STD_LOGIC;
    \AXIS_out[M_AXIS_TVALID]\ : out STD_LOGIC;
    \AXIS_out[S_AXIS_TREADY]\ : out STD_LOGIC;
    LED_1 : out STD_LOGIC;
    LED_2 : out STD_LOGIC;
    LED_3 : out STD_LOGIC;
    LED_4 : out STD_LOGIC;
    LED_5 : out STD_LOGIC;
    LED_6 : out STD_LOGIC;
    LED_8 : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of main_controller : entity is true;
  attribute axis_data_width : integer;
  attribute axis_data_width of main_controller : entity is 32;
  attribute examples_block_size : integer;
  attribute examples_block_size of main_controller : entity is 2;
  attribute nb_classes : integer;
  attribute nb_classes of main_controller : entity is 3;
  attribute nb_examples_max : integer;
  attribute nb_examples_max of main_controller : entity is 200;
  attribute nb_features : integer;
  attribute nb_features of main_controller : entity is 5;
  attribute nb_hidden_nodes : integer;
  attribute nb_hidden_nodes of main_controller : entity is 3;
  attribute single_ended : string;
  attribute single_ended of main_controller : entity is "TRUE";
end main_controller;

architecture STRUCTURE of main_controller is
  signal \AXIS_out[M_AXIS_TDATA][23]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \AXIS_out[M_AXIS_TDATA]_OBUF\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal LED_1_OBUF : STD_LOGIC;
  signal LED_2_OBUF : STD_LOGIC;
  signal LED_3_OBUF : STD_LOGIC;
  signal LED_4_OBUF : STD_LOGIC;
  signal LED_5_OBUF : STD_LOGIC;
  signal LED_6_OBUF : STD_LOGIC;
  signal LED_8_OBUF : STD_LOGIC;
  signal axis_unit_n_0 : STD_LOGIC;
  signal axis_unit_n_1 : STD_LOGIC;
  signal axis_unit_n_10 : STD_LOGIC;
  signal axis_unit_n_11 : STD_LOGIC;
  signal axis_unit_n_12 : STD_LOGIC;
  signal axis_unit_n_13 : STD_LOGIC;
  signal axis_unit_n_14 : STD_LOGIC;
  signal axis_unit_n_15 : STD_LOGIC;
  signal axis_unit_n_16 : STD_LOGIC;
  signal axis_unit_n_17 : STD_LOGIC;
  signal axis_unit_n_18 : STD_LOGIC;
  signal axis_unit_n_19 : STD_LOGIC;
  signal axis_unit_n_2 : STD_LOGIC;
  signal axis_unit_n_20 : STD_LOGIC;
  signal axis_unit_n_21 : STD_LOGIC;
  signal axis_unit_n_22 : STD_LOGIC;
  signal axis_unit_n_27 : STD_LOGIC;
  signal axis_unit_n_28 : STD_LOGIC;
  signal axis_unit_n_29 : STD_LOGIC;
  signal axis_unit_n_3 : STD_LOGIC;
  signal axis_unit_n_30 : STD_LOGIC;
  signal axis_unit_n_31 : STD_LOGIC;
  signal axis_unit_n_34 : STD_LOGIC;
  signal axis_unit_n_35 : STD_LOGIC;
  signal axis_unit_n_4 : STD_LOGIC;
  signal axis_unit_n_5 : STD_LOGIC;
  signal axis_unit_n_6 : STD_LOGIC;
  signal axis_unit_n_67 : STD_LOGIC;
  signal axis_unit_n_68 : STD_LOGIC;
  signal axis_unit_n_7 : STD_LOGIC;
  signal axis_unit_n_8 : STD_LOGIC;
  signal axis_unit_n_81 : STD_LOGIC;
  signal axis_unit_n_83 : STD_LOGIC;
  signal axis_unit_n_85 : STD_LOGIC;
  signal axis_unit_n_86 : STD_LOGIC;
  signal axis_unit_n_87 : STD_LOGIC;
  signal axis_unit_n_88 : STD_LOGIC;
  signal axis_unit_n_89 : STD_LOGIC;
  signal axis_unit_n_9 : STD_LOGIC;
  signal axis_unit_n_90 : STD_LOGIC;
  signal axis_unit_n_91 : STD_LOGIC;
  signal axis_unit_n_92 : STD_LOGIC;
  signal axis_unit_n_93 : STD_LOGIC;
  signal axis_unit_n_94 : STD_LOGIC;
  signal axis_unit_n_95 : STD_LOGIC;
  signal clk_IBUF : STD_LOGIC;
  signal clk_IBUF_BUFG : STD_LOGIC;
  signal cnt_ex_block_outdated : STD_LOGIC;
  signal cnt_ex_block_outdated_next7_out : STD_LOGIC;
  signal cnt_ex_block_updated : STD_LOGIC;
  signal \cnt_examples_reg[7]_i_5_n_0\ : STD_LOGIC;
  signal cnt_weights : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal feature_a : STD_LOGIC_VECTOR ( 11 to 11 );
  signal feature_a_addr : STD_LOGIC_VECTOR ( 0 to 0 );
  signal feature_a_write_req : STD_LOGIC;
  signal feature_f : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal feature_f0 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal features_f_RAM_reg_0_63_0_2_i_12_n_0 : STD_LOGIC;
  signal features_f_RAM_reg_0_63_3_5_i_3_n_0 : STD_LOGIC;
  signal features_f_RAM_reg_0_63_3_5_i_4_n_0 : STD_LOGIC;
  signal features_f_RAM_reg_0_63_3_5_i_5_n_0 : STD_LOGIC;
  signal features_f_RAM_reg_0_63_3_5_i_6_n_0 : STD_LOGIC;
  signal features_f_RAM_reg_0_63_3_5_i_7_n_0 : STD_LOGIC;
  signal features_f_RAM_reg_0_63_3_5_i_8_n_0 : STD_LOGIC;
  signal features_f_RAM_reg_0_63_6_8_i_10_n_0 : STD_LOGIC;
  signal features_f_RAM_reg_0_63_6_8_i_11_n_0 : STD_LOGIC;
  signal features_f_RAM_reg_0_63_6_8_i_12_n_0 : STD_LOGIC;
  signal features_f_RAM_reg_0_63_6_8_i_4_n_0 : STD_LOGIC;
  signal features_f_RAM_reg_0_63_6_8_i_5_n_0 : STD_LOGIC;
  signal features_f_RAM_reg_0_63_6_8_i_6_n_0 : STD_LOGIC;
  signal features_f_RAM_reg_0_63_6_8_i_7_n_0 : STD_LOGIC;
  signal features_f_RAM_reg_0_63_6_8_i_8_n_0 : STD_LOGIC;
  signal features_f_RAM_reg_0_63_6_8_i_9_n_0 : STD_LOGIC;
  signal features_f_RAM_reg_0_63_9_11_i_10_n_0 : STD_LOGIC;
  signal features_f_RAM_reg_0_63_9_11_i_11_n_0 : STD_LOGIC;
  signal features_f_RAM_reg_0_63_9_11_i_12_n_0 : STD_LOGIC;
  signal features_f_RAM_reg_0_63_9_11_i_4_n_0 : STD_LOGIC;
  signal features_f_RAM_reg_0_63_9_11_i_5_n_0 : STD_LOGIC;
  signal features_f_RAM_reg_0_63_9_11_i_6_n_0 : STD_LOGIC;
  signal features_f_RAM_reg_0_63_9_11_i_7_n_0 : STD_LOGIC;
  signal features_f_RAM_reg_0_63_9_11_i_8_n_0 : STD_LOGIC;
  signal features_f_RAM_reg_0_63_9_11_i_9_n_0 : STD_LOGIC;
  signal feedforward_unit_n_1 : STD_LOGIC;
  signal feedforward_unit_n_10 : STD_LOGIC;
  signal feedforward_unit_n_11 : STD_LOGIC;
  signal feedforward_unit_n_12 : STD_LOGIC;
  signal feedforward_unit_n_13 : STD_LOGIC;
  signal feedforward_unit_n_14 : STD_LOGIC;
  signal feedforward_unit_n_15 : STD_LOGIC;
  signal feedforward_unit_n_17 : STD_LOGIC;
  signal feedforward_unit_n_18 : STD_LOGIC;
  signal feedforward_unit_n_2 : STD_LOGIC;
  signal feedforward_unit_n_27 : STD_LOGIC;
  signal feedforward_unit_n_29 : STD_LOGIC;
  signal feedforward_unit_n_3 : STD_LOGIC;
  signal feedforward_unit_n_5 : STD_LOGIC;
  signal feedforward_unit_n_9 : STD_LOGIC;
  signal generator_unit_n_11 : STD_LOGIC;
  signal generator_unit_n_12 : STD_LOGIC;
  signal generator_unit_n_26 : STD_LOGIC;
  signal generator_unit_n_4 : STD_LOGIC;
  signal generator_unit_n_5 : STD_LOGIC;
  signal generator_unit_n_7 : STD_LOGIC;
  signal generator_unit_n_8 : STD_LOGIC;
  signal generator_unit_n_9 : STD_LOGIC;
  signal lfsr : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal main_state_curr : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \main_state_curr[0]_i_4_n_0\ : STD_LOGIC;
  signal \main_state_curr[1]_i_3_n_0\ : STD_LOGIC;
  signal \main_state_curr[2]_i_2_n_0\ : STD_LOGIC;
  signal nb_examples : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \nb_examples_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \nb_examples_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \nb_examples_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \nb_examples_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \nb_examples_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \nb_examples_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \nb_examples_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \nb_examples_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal p_0_out : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal p_2_in : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \raw_output_f[0]\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal results_a : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal results_a_addr : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal results_f_addr : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal results_f_write_req : STD_LOGIC;
  signal session_curr : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal weight1_f0 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal weight1_f_addr : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal weight1_g_addr : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal weight2_f : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal weight2_f0 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal weight2_f_addr : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal weight2_g_addr : STD_LOGIC_VECTOR ( 0 to 0 );
  signal weights2_f_RAM_reg_r2_0_3_0_5_n_0 : STD_LOGIC;
  signal weights2_f_RAM_reg_r2_0_3_0_5_n_1 : STD_LOGIC;
  signal weights2_f_RAM_reg_r2_0_3_0_5_n_2 : STD_LOGIC;
  signal weights2_f_RAM_reg_r2_0_3_0_5_n_3 : STD_LOGIC;
  signal weights2_f_RAM_reg_r2_0_3_0_5_n_4 : STD_LOGIC;
  signal weights2_f_RAM_reg_r2_0_3_0_5_n_5 : STD_LOGIC;
  signal weights2_f_RAM_reg_r2_0_3_6_11_n_0 : STD_LOGIC;
  signal weights2_f_RAM_reg_r2_0_3_6_11_n_1 : STD_LOGIC;
  signal weights2_f_RAM_reg_r2_0_3_6_11_n_2 : STD_LOGIC;
  signal weights2_f_RAM_reg_r2_0_3_6_11_n_3 : STD_LOGIC;
  signal weights2_f_RAM_reg_r2_0_3_6_11_n_4 : STD_LOGIC;
  signal weights2_f_RAM_reg_r2_0_3_6_11_n_5 : STD_LOGIC;
  signal NLW_features_f_RAM_reg_0_63_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_features_f_RAM_reg_0_63_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_features_f_RAM_reg_0_63_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_features_f_RAM_reg_0_63_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_results_RAM_reg_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_results_RAM_reg_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 12 );
  signal NLW_results_RAM_reg_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_results_RAM_reg_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_weights1_f_RAM_reg_r1_0_31_0_5_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_weights1_f_RAM_reg_r1_0_31_6_11_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_weights1_f_RAM_reg_r2_0_31_0_5_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_weights1_f_RAM_reg_r2_0_31_6_11_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_weights2_f_RAM_reg_r1_0_3_0_5_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_weights2_f_RAM_reg_r1_0_3_6_11_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_weights2_f_RAM_reg_r2_0_3_0_5_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_weights2_f_RAM_reg_r2_0_3_6_11_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of LED_1_OBUF_inst_i_1 : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of LED_2_OBUF_inst_i_1 : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of LED_3_OBUF_inst_i_1 : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of LED_4_OBUF_inst_i_1 : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of LED_5_OBUF_inst_i_1 : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of LED_6_OBUF_inst_i_1 : label is "soft_lutpair71";
  attribute sigis : string;
  attribute sigis of clk_IBUF_inst : label is "Clk";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of features_f_RAM_reg_0_63_0_2 : label is "";
  attribute METHODOLOGY_DRC_VIOS of features_f_RAM_reg_0_63_3_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of features_f_RAM_reg_0_63_6_8 : label is "";
  attribute METHODOLOGY_DRC_VIOS of features_f_RAM_reg_0_63_9_11 : label is "";
  attribute CLOCK_DOMAINS : string;
  attribute CLOCK_DOMAINS of results_RAM_reg : label is "COMMON";
  attribute METHODOLOGY_DRC_VIOS of results_RAM_reg : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of results_RAM_reg : label is 2400;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of results_RAM_reg : label is "results_RAM";
  attribute bram_addr_begin : integer;
  attribute bram_addr_begin of results_RAM_reg : label is 0;
  attribute bram_addr_end : integer;
  attribute bram_addr_end of results_RAM_reg : label is 1023;
  attribute bram_slice_begin : integer;
  attribute bram_slice_begin of results_RAM_reg : label is 0;
  attribute bram_slice_end : integer;
  attribute bram_slice_end of results_RAM_reg : label is 17;
  attribute METHODOLOGY_DRC_VIOS of weights1_f_RAM_reg_r1_0_31_0_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of weights1_f_RAM_reg_r1_0_31_6_11 : label is "";
  attribute METHODOLOGY_DRC_VIOS of weights1_f_RAM_reg_r2_0_31_0_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of weights1_f_RAM_reg_r2_0_31_6_11 : label is "";
  attribute METHODOLOGY_DRC_VIOS of weights2_f_RAM_reg_r1_0_3_0_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of weights2_f_RAM_reg_r1_0_3_6_11 : label is "";
  attribute METHODOLOGY_DRC_VIOS of weights2_f_RAM_reg_r2_0_3_0_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of weights2_f_RAM_reg_r2_0_3_6_11 : label is "";
begin
\AXIS_out[M_AXIS_TDATA][0]_INST_0\: unisim.vcomponents.OBUF
     port map (
      I => \AXIS_out[M_AXIS_TDATA]_OBUF\(0),
      O => \AXIS_out[M_AXIS_TDATA]\(0)
    );
\AXIS_out[M_AXIS_TDATA][10]_INST_0\: unisim.vcomponents.OBUF
     port map (
      I => \AXIS_out[M_AXIS_TDATA]_OBUF\(10),
      O => \AXIS_out[M_AXIS_TDATA]\(10)
    );
\AXIS_out[M_AXIS_TDATA][11]_INST_0\: unisim.vcomponents.OBUF
     port map (
      I => \AXIS_out[M_AXIS_TDATA]_OBUF\(11),
      O => \AXIS_out[M_AXIS_TDATA]\(11)
    );
\AXIS_out[M_AXIS_TDATA][12]_INST_0\: unisim.vcomponents.OBUF
     port map (
      I => \AXIS_out[M_AXIS_TDATA]_OBUF\(12),
      O => \AXIS_out[M_AXIS_TDATA]\(12)
    );
\AXIS_out[M_AXIS_TDATA][13]_INST_0\: unisim.vcomponents.OBUF
     port map (
      I => \AXIS_out[M_AXIS_TDATA]_OBUF\(13),
      O => \AXIS_out[M_AXIS_TDATA]\(13)
    );
\AXIS_out[M_AXIS_TDATA][14]_INST_0\: unisim.vcomponents.OBUF
     port map (
      I => \AXIS_out[M_AXIS_TDATA]_OBUF\(14),
      O => \AXIS_out[M_AXIS_TDATA]\(14)
    );
\AXIS_out[M_AXIS_TDATA][15]_INST_0\: unisim.vcomponents.OBUF
     port map (
      I => \AXIS_out[M_AXIS_TDATA]_OBUF\(15),
      O => \AXIS_out[M_AXIS_TDATA]\(15)
    );
\AXIS_out[M_AXIS_TDATA][16]_INST_0\: unisim.vcomponents.OBUF
     port map (
      I => \AXIS_out[M_AXIS_TDATA]_OBUF\(16),
      O => \AXIS_out[M_AXIS_TDATA]\(16)
    );
\AXIS_out[M_AXIS_TDATA][17]_INST_0\: unisim.vcomponents.OBUF
     port map (
      I => \AXIS_out[M_AXIS_TDATA]_OBUF\(17),
      O => \AXIS_out[M_AXIS_TDATA]\(17)
    );
\AXIS_out[M_AXIS_TDATA][18]_INST_0\: unisim.vcomponents.OBUF
     port map (
      I => \AXIS_out[M_AXIS_TDATA]_OBUF\(18),
      O => \AXIS_out[M_AXIS_TDATA]\(18)
    );
\AXIS_out[M_AXIS_TDATA][19]_INST_0\: unisim.vcomponents.OBUF
     port map (
      I => \AXIS_out[M_AXIS_TDATA]_OBUF\(19),
      O => \AXIS_out[M_AXIS_TDATA]\(19)
    );
\AXIS_out[M_AXIS_TDATA][1]_INST_0\: unisim.vcomponents.OBUF
     port map (
      I => \AXIS_out[M_AXIS_TDATA]_OBUF\(1),
      O => \AXIS_out[M_AXIS_TDATA]\(1)
    );
\AXIS_out[M_AXIS_TDATA][20]_INST_0\: unisim.vcomponents.OBUF
     port map (
      I => \AXIS_out[M_AXIS_TDATA]_OBUF\(20),
      O => \AXIS_out[M_AXIS_TDATA]\(20)
    );
\AXIS_out[M_AXIS_TDATA][21]_INST_0\: unisim.vcomponents.OBUF
     port map (
      I => \AXIS_out[M_AXIS_TDATA]_OBUF\(21),
      O => \AXIS_out[M_AXIS_TDATA]\(21)
    );
\AXIS_out[M_AXIS_TDATA][22]_INST_0\: unisim.vcomponents.OBUF
     port map (
      I => \AXIS_out[M_AXIS_TDATA]_OBUF\(22),
      O => \AXIS_out[M_AXIS_TDATA]\(22)
    );
\AXIS_out[M_AXIS_TDATA][23]_INST_0\: unisim.vcomponents.OBUF
     port map (
      I => \AXIS_out[M_AXIS_TDATA]_OBUF\(23),
      O => \AXIS_out[M_AXIS_TDATA]\(23)
    );
\AXIS_out[M_AXIS_TDATA][23]_INST_0_i_2\: unisim.vcomponents.IBUF
     port map (
      I => \AXIS_in[ARESETN]\,
      O => \AXIS_out[M_AXIS_TDATA][23]_INST_0_i_2_n_0\
    );
\AXIS_out[M_AXIS_TDATA][24]_INST_0\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => \AXIS_out[M_AXIS_TDATA]\(24)
    );
\AXIS_out[M_AXIS_TDATA][25]_INST_0\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => \AXIS_out[M_AXIS_TDATA]\(25)
    );
\AXIS_out[M_AXIS_TDATA][26]_INST_0\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => \AXIS_out[M_AXIS_TDATA]\(26)
    );
\AXIS_out[M_AXIS_TDATA][27]_INST_0\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => \AXIS_out[M_AXIS_TDATA]\(27)
    );
\AXIS_out[M_AXIS_TDATA][28]_INST_0\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => \AXIS_out[M_AXIS_TDATA]\(28)
    );
\AXIS_out[M_AXIS_TDATA][29]_INST_0\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => \AXIS_out[M_AXIS_TDATA]\(29)
    );
\AXIS_out[M_AXIS_TDATA][2]_INST_0\: unisim.vcomponents.OBUF
     port map (
      I => \AXIS_out[M_AXIS_TDATA]_OBUF\(2),
      O => \AXIS_out[M_AXIS_TDATA]\(2)
    );
\AXIS_out[M_AXIS_TDATA][30]_INST_0\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => \AXIS_out[M_AXIS_TDATA]\(30)
    );
\AXIS_out[M_AXIS_TDATA][31]_INST_0\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => \AXIS_out[M_AXIS_TDATA]\(31)
    );
\AXIS_out[M_AXIS_TDATA][3]_INST_0\: unisim.vcomponents.OBUF
     port map (
      I => \AXIS_out[M_AXIS_TDATA]_OBUF\(3),
      O => \AXIS_out[M_AXIS_TDATA]\(3)
    );
\AXIS_out[M_AXIS_TDATA][4]_INST_0\: unisim.vcomponents.OBUF
     port map (
      I => \AXIS_out[M_AXIS_TDATA]_OBUF\(4),
      O => \AXIS_out[M_AXIS_TDATA]\(4)
    );
\AXIS_out[M_AXIS_TDATA][5]_INST_0\: unisim.vcomponents.OBUF
     port map (
      I => \AXIS_out[M_AXIS_TDATA]_OBUF\(5),
      O => \AXIS_out[M_AXIS_TDATA]\(5)
    );
\AXIS_out[M_AXIS_TDATA][6]_INST_0\: unisim.vcomponents.OBUF
     port map (
      I => \AXIS_out[M_AXIS_TDATA]_OBUF\(6),
      O => \AXIS_out[M_AXIS_TDATA]\(6)
    );
\AXIS_out[M_AXIS_TDATA][7]_INST_0\: unisim.vcomponents.OBUF
     port map (
      I => \AXIS_out[M_AXIS_TDATA]_OBUF\(7),
      O => \AXIS_out[M_AXIS_TDATA]\(7)
    );
\AXIS_out[M_AXIS_TDATA][8]_INST_0\: unisim.vcomponents.OBUF
     port map (
      I => \AXIS_out[M_AXIS_TDATA]_OBUF\(8),
      O => \AXIS_out[M_AXIS_TDATA]\(8)
    );
\AXIS_out[M_AXIS_TDATA][9]_INST_0\: unisim.vcomponents.OBUF
     port map (
      I => \AXIS_out[M_AXIS_TDATA]_OBUF\(9),
      O => \AXIS_out[M_AXIS_TDATA]\(9)
    );
\AXIS_out[M_AXIS_TLAST]_INST_0\: unisim.vcomponents.OBUF
     port map (
      I => axis_unit_n_35,
      O => \AXIS_out[M_AXIS_TLAST]\
    );
\AXIS_out[M_AXIS_TVALID]_INST_0\: unisim.vcomponents.OBUF
     port map (
      I => axis_unit_n_34,
      O => \AXIS_out[M_AXIS_TVALID]\
    );
\AXIS_out[S_AXIS_TREADY]_INST_0\: unisim.vcomponents.OBUF
     port map (
      I => axis_unit_n_27,
      O => \AXIS_out[S_AXIS_TREADY]\
    );
LED_1_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => LED_1_OBUF,
      O => LED_1
    );
LED_1_OBUF_inst_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => main_state_curr(0),
      I1 => \AXIS_out[M_AXIS_TDATA][23]_INST_0_i_2_n_0\,
      I2 => main_state_curr(1),
      I3 => main_state_curr(2),
      O => LED_1_OBUF
    );
LED_2_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => LED_2_OBUF,
      O => LED_2
    );
LED_2_OBUF_inst_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => \AXIS_out[M_AXIS_TDATA][23]_INST_0_i_2_n_0\,
      I1 => main_state_curr(0),
      I2 => main_state_curr(2),
      I3 => main_state_curr(1),
      O => LED_2_OBUF
    );
LED_3_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => LED_3_OBUF,
      O => LED_3
    );
LED_3_OBUF_inst_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => main_state_curr(0),
      I1 => \AXIS_out[M_AXIS_TDATA][23]_INST_0_i_2_n_0\,
      I2 => main_state_curr(2),
      I3 => main_state_curr(1),
      O => LED_3_OBUF
    );
LED_4_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => LED_4_OBUF,
      O => LED_4
    );
LED_4_OBUF_inst_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => main_state_curr(0),
      I1 => main_state_curr(2),
      I2 => main_state_curr(1),
      I3 => \AXIS_out[M_AXIS_TDATA][23]_INST_0_i_2_n_0\,
      O => LED_4_OBUF
    );
LED_5_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => LED_5_OBUF,
      O => LED_5
    );
LED_5_OBUF_inst_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => main_state_curr(1),
      I1 => main_state_curr(2),
      I2 => main_state_curr(0),
      I3 => \AXIS_out[M_AXIS_TDATA][23]_INST_0_i_2_n_0\,
      O => LED_5_OBUF
    );
LED_6_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => LED_6_OBUF,
      O => LED_6
    );
LED_6_OBUF_inst_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => main_state_curr(0),
      I1 => \AXIS_out[M_AXIS_TDATA][23]_INST_0_i_2_n_0\,
      I2 => main_state_curr(1),
      I3 => main_state_curr(2),
      O => LED_6_OBUF
    );
LED_8_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => LED_8_OBUF,
      O => LED_8
    );
axis_unit: entity work.AXIS_controller
     port map (
      ADDRA(0) => weight2_g_addr(0),
      ADDRBWRADDR(7 downto 1) => results_a_addr(7 downto 1),
      ADDRBWRADDR(0) => axis_unit_n_67,
      ADDRD(1) => axis_unit_n_21,
      ADDRD(0) => axis_unit_n_22,
      \AXIS_in[ARESETN]\ => \AXIS_out[M_AXIS_TDATA][23]_INST_0_i_2_n_0\,
      \AXIS_in[M_AXIS_TREADY]\ => \cnt_examples_reg[7]_i_5_n_0\,
      \AXIS_in[S_AXIS_TDATA][10]\ => features_f_RAM_reg_0_63_6_8_i_6_n_0,
      \AXIS_in[S_AXIS_TDATA][11]\ => features_f_RAM_reg_0_63_6_8_i_9_n_0,
      \AXIS_in[S_AXIS_TDATA][12]\ => features_f_RAM_reg_0_63_6_8_i_12_n_0,
      \AXIS_in[S_AXIS_TDATA][13]\ => features_f_RAM_reg_0_63_9_11_i_6_n_0,
      \AXIS_in[S_AXIS_TDATA][14]\ => features_f_RAM_reg_0_63_9_11_i_9_n_0,
      \AXIS_in[S_AXIS_TDATA][15]\ => features_f_RAM_reg_0_63_9_11_i_10_n_0,
      \AXIS_in[S_AXIS_TDATA][16]\ => features_f_RAM_reg_0_63_3_5_i_4_n_0,
      \AXIS_in[S_AXIS_TDATA][17]\ => features_f_RAM_reg_0_63_3_5_i_7_n_0,
      \AXIS_in[S_AXIS_TDATA][18]\ => features_f_RAM_reg_0_63_6_8_i_5_n_0,
      \AXIS_in[S_AXIS_TDATA][19]\ => features_f_RAM_reg_0_63_6_8_i_8_n_0,
      \AXIS_in[S_AXIS_TDATA][20]\ => features_f_RAM_reg_0_63_6_8_i_11_n_0,
      \AXIS_in[S_AXIS_TDATA][21]\ => features_f_RAM_reg_0_63_9_11_i_5_n_0,
      \AXIS_in[S_AXIS_TDATA][22]\ => features_f_RAM_reg_0_63_9_11_i_8_n_0,
      \AXIS_in[S_AXIS_TDATA][23]\ => features_f_RAM_reg_0_63_9_11_i_11_n_0,
      \AXIS_in[S_AXIS_TDATA][24]\ => features_f_RAM_reg_0_63_3_5_i_3_n_0,
      \AXIS_in[S_AXIS_TDATA][25]\ => features_f_RAM_reg_0_63_3_5_i_6_n_0,
      \AXIS_in[S_AXIS_TDATA][26]\ => features_f_RAM_reg_0_63_6_8_i_4_n_0,
      \AXIS_in[S_AXIS_TDATA][27]\ => features_f_RAM_reg_0_63_6_8_i_7_n_0,
      \AXIS_in[S_AXIS_TDATA][28]\ => features_f_RAM_reg_0_63_6_8_i_10_n_0,
      \AXIS_in[S_AXIS_TDATA][29]\ => features_f_RAM_reg_0_63_9_11_i_4_n_0,
      \AXIS_in[S_AXIS_TDATA][30]\ => features_f_RAM_reg_0_63_9_11_i_7_n_0,
      \AXIS_in[S_AXIS_TDATA][31]\ => features_f_RAM_reg_0_63_9_11_i_12_n_0,
      \AXIS_in[S_AXIS_TDATA][8]\ => features_f_RAM_reg_0_63_3_5_i_5_n_0,
      \AXIS_in[S_AXIS_TDATA][9]\ => features_f_RAM_reg_0_63_3_5_i_8_n_0,
      \AXIS_in[S_AXIS_TVALID]\ => features_f_RAM_reg_0_63_0_2_i_12_n_0,
      \AXIS_out[M_AXIS_TDATA]_OBUF\(23 downto 0) => \AXIS_out[M_AXIS_TDATA]_OBUF\(23 downto 0),
      \AXIS_out[M_AXIS_TLAST]\ => axis_unit_n_35,
      \AXIS_out[M_AXIS_TVALID]\ => axis_unit_n_34,
      \AXIS_out[S_AXIS_TREADY]\ => axis_unit_n_27,
      D(7) => \nb_examples_reg[7]_i_2_n_0\,
      D(6) => \nb_examples_reg[6]_i_1_n_0\,
      D(5) => \nb_examples_reg[5]_i_1_n_0\,
      D(4) => \nb_examples_reg[4]_i_1_n_0\,
      D(3) => \nb_examples_reg[3]_i_1_n_0\,
      D(2) => \nb_examples_reg[2]_i_1_n_0\,
      D(1) => \nb_examples_reg[1]_i_1_n_0\,
      D(0) => \nb_examples_reg[0]_i_1_n_0\,
      DOBDO(11 downto 0) => results_a(11 downto 0),
      E(0) => axis_unit_n_8,
      LED_5_OBUF => LED_5_OBUF,
      LED_8_OBUF => LED_8_OBUF,
      Q(3 downto 0) => cnt_weights(3 downto 0),
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      cnt_ex_block_outdated => cnt_ex_block_outdated,
      cnt_ex_block_outdated_next7_out => cnt_ex_block_outdated_next7_out,
      \cnt_ex_block_outdated_reg[0]\ => axis_unit_n_7,
      \cnt_ex_block_outdated_reg[0]_0\ => axis_unit_n_92,
      \cnt_ex_block_outdated_reg[0]_1\ => feedforward_unit_n_18,
      cnt_ex_block_updated => cnt_ex_block_updated,
      \cnt_ex_block_updated_reg[0]\ => axis_unit_n_4,
      \cnt_examples_reg[1]_0\ => axis_unit_n_68,
      \cnt_features_reg[2]\ => feedforward_unit_n_17,
      \cnt_weights_reg[0]_0\ => axis_unit_n_0,
      \cnt_weights_reg[1]_0\(0) => generator_unit_n_5,
      \cnt_weights_reg[2]_0\ => generator_unit_n_11,
      \cnt_weights_reg[4]_0\(0) => weight1_g_addr(4),
      feature_a(7) => feature_a(11),
      feature_a(6) => axis_unit_n_85,
      feature_a(5) => axis_unit_n_86,
      feature_a(4) => axis_unit_n_87,
      feature_a(3) => axis_unit_n_88,
      feature_a(2) => axis_unit_n_89,
      feature_a(1) => axis_unit_n_90,
      feature_a(0) => axis_unit_n_91,
      feature_a_write_req => feature_a_write_req,
      \feature_f_reg[0]\(4) => axis_unit_n_28,
      \feature_f_reg[0]\(3) => axis_unit_n_29,
      \feature_f_reg[0]\(2) => axis_unit_n_30,
      \feature_f_reg[0]\(1) => axis_unit_n_31,
      \feature_f_reg[0]\(0) => feature_a_addr(0),
      lfsr(11 downto 0) => lfsr(11 downto 0),
      \lfsr_reg[7]\(11 downto 0) => p_0_out(11 downto 0),
      main_state_curr(2 downto 0) => main_state_curr(2 downto 0),
      \main_state_curr_reg[0]\ => axis_unit_n_83,
      \main_state_curr_reg[0]_0\ => \main_state_curr[2]_i_2_n_0\,
      \main_state_curr_reg[0]_1\ => feedforward_unit_n_3,
      \main_state_curr_reg[0]_2\ => feedforward_unit_n_14,
      \main_state_curr_reg[2]\ => axis_unit_n_1,
      \main_state_curr_reg[2]_0\ => axis_unit_n_2,
      \nb_examples_reg[7]\(7 downto 0) => nb_examples(7 downto 0),
      p_0_out(11) => weights2_f_RAM_reg_r2_0_3_6_11_n_4,
      p_0_out(10) => weights2_f_RAM_reg_r2_0_3_6_11_n_5,
      p_0_out(9) => weights2_f_RAM_reg_r2_0_3_6_11_n_2,
      p_0_out(8) => weights2_f_RAM_reg_r2_0_3_6_11_n_3,
      p_0_out(7) => weights2_f_RAM_reg_r2_0_3_6_11_n_0,
      p_0_out(6) => weights2_f_RAM_reg_r2_0_3_6_11_n_1,
      p_0_out(5) => weights2_f_RAM_reg_r2_0_3_0_5_n_4,
      p_0_out(4) => weights2_f_RAM_reg_r2_0_3_0_5_n_5,
      p_0_out(3) => weights2_f_RAM_reg_r2_0_3_0_5_n_2,
      p_0_out(2) => weights2_f_RAM_reg_r2_0_3_0_5_n_3,
      p_0_out(1) => weights2_f_RAM_reg_r2_0_3_0_5_n_0,
      p_0_out(0) => weights2_f_RAM_reg_r2_0_3_0_5_n_1,
      p_2_in(11) => axis_unit_n_9,
      p_2_in(10) => axis_unit_n_10,
      p_2_in(9) => axis_unit_n_11,
      p_2_in(8) => axis_unit_n_12,
      p_2_in(7) => axis_unit_n_13,
      p_2_in(6) => axis_unit_n_14,
      p_2_in(5) => axis_unit_n_15,
      p_2_in(4) => axis_unit_n_16,
      p_2_in(3) => axis_unit_n_17,
      p_2_in(2) => axis_unit_n_18,
      p_2_in(1) => axis_unit_n_19,
      p_2_in(0) => axis_unit_n_20,
      session_curr(1 downto 0) => session_curr(1 downto 0),
      \session_curr_reg[0]\ => axis_unit_n_94,
      \session_curr_reg[1]\ => axis_unit_n_95,
      \state_curr_reg[0]_0\ => axis_unit_n_3,
      \state_curr_reg[1]_0\ => axis_unit_n_5,
      \state_curr_reg[1]_1\ => generator_unit_n_4,
      \state_curr_reg[1]_2\ => generator_unit_n_26,
      \sum_1_reg[0]0\(11 downto 0) => p_2_in(11 downto 0),
      \sum_1_reg[0]0_0\ => axis_unit_n_81,
      \sum_1_reg[0]0_1\(0) => p_1_in(4),
      \sum_1_reg[0][0]\ => axis_unit_n_6,
      update_requested_reg => axis_unit_n_93,
      update_requested_reg_0 => feedforward_unit_n_15
    );
clk_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => clk_IBUF,
      O => clk_IBUF_BUFG
    );
clk_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => clk,
      O => clk_IBUF
    );
\cnt_ex_block_outdated_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => axis_unit_n_92,
      Q => cnt_ex_block_outdated,
      R => '0'
    );
\cnt_ex_block_updated_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => feedforward_unit_n_29,
      Q => cnt_ex_block_updated,
      R => '0'
    );
\cnt_examples_reg[7]_i_5\: unisim.vcomponents.IBUF
     port map (
      I => \AXIS_in[M_AXIS_TREADY]\,
      O => \cnt_examples_reg[7]_i_5_n_0\
    );
\feature_f_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => feature_f0(0),
      Q => feature_f(0),
      R => '0'
    );
\feature_f_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => feature_f0(10),
      Q => feature_f(10),
      R => '0'
    );
\feature_f_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => feature_f0(11),
      Q => feature_f(11),
      R => '0'
    );
\feature_f_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => feature_f0(1),
      Q => feature_f(1),
      R => '0'
    );
\feature_f_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => feature_f0(2),
      Q => feature_f(2),
      R => '0'
    );
\feature_f_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => feature_f0(3),
      Q => feature_f(3),
      R => '0'
    );
\feature_f_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => feature_f0(4),
      Q => feature_f(4),
      R => '0'
    );
\feature_f_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => feature_f0(5),
      Q => feature_f(5),
      R => '0'
    );
\feature_f_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => feature_f0(6),
      Q => feature_f(6),
      R => '0'
    );
\feature_f_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => feature_f0(7),
      Q => feature_f(7),
      R => '0'
    );
\feature_f_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => feature_f0(8),
      Q => feature_f(8),
      R => '0'
    );
\feature_f_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => feature_f0(9),
      Q => feature_f(9),
      R => '0'
    );
features_f_RAM_reg_0_63_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5) => '0',
      ADDRA(4) => feedforward_unit_n_9,
      ADDRA(3) => feedforward_unit_n_10,
      ADDRA(2) => feedforward_unit_n_11,
      ADDRA(1) => feedforward_unit_n_12,
      ADDRA(0) => feedforward_unit_n_13,
      ADDRB(5) => '0',
      ADDRB(4) => feedforward_unit_n_9,
      ADDRB(3) => feedforward_unit_n_10,
      ADDRB(2) => feedforward_unit_n_11,
      ADDRB(1) => feedforward_unit_n_12,
      ADDRB(0) => feedforward_unit_n_13,
      ADDRC(5) => '0',
      ADDRC(4) => feedforward_unit_n_9,
      ADDRC(3) => feedforward_unit_n_10,
      ADDRC(2) => feedforward_unit_n_11,
      ADDRC(1) => feedforward_unit_n_12,
      ADDRC(0) => feedforward_unit_n_13,
      ADDRD(5) => '0',
      ADDRD(4) => axis_unit_n_28,
      ADDRD(3) => axis_unit_n_29,
      ADDRD(2) => axis_unit_n_30,
      ADDRD(1) => axis_unit_n_31,
      ADDRD(0) => feature_a_addr(0),
      DIA => '0',
      DIB => '0',
      DIC => '0',
      DID => '0',
      DOA => feature_f0(0),
      DOB => feature_f0(1),
      DOC => feature_f0(2),
      DOD => NLW_features_f_RAM_reg_0_63_0_2_DOD_UNCONNECTED,
      WCLK => clk_IBUF_BUFG,
      WE => feature_a_write_req
    );
features_f_RAM_reg_0_63_0_2_i_12: unisim.vcomponents.IBUF
     port map (
      I => \AXIS_in[S_AXIS_TVALID]\,
      O => features_f_RAM_reg_0_63_0_2_i_12_n_0
    );
features_f_RAM_reg_0_63_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5) => '0',
      ADDRA(4) => feedforward_unit_n_9,
      ADDRA(3) => feedforward_unit_n_10,
      ADDRA(2) => feedforward_unit_n_11,
      ADDRA(1) => feedforward_unit_n_12,
      ADDRA(0) => feedforward_unit_n_13,
      ADDRB(5) => '0',
      ADDRB(4) => feedforward_unit_n_9,
      ADDRB(3) => feedforward_unit_n_10,
      ADDRB(2) => feedforward_unit_n_11,
      ADDRB(1) => feedforward_unit_n_12,
      ADDRB(0) => feedforward_unit_n_13,
      ADDRC(5) => '0',
      ADDRC(4) => feedforward_unit_n_9,
      ADDRC(3) => feedforward_unit_n_10,
      ADDRC(2) => feedforward_unit_n_11,
      ADDRC(1) => feedforward_unit_n_12,
      ADDRC(0) => feedforward_unit_n_13,
      ADDRD(5) => '0',
      ADDRD(4) => axis_unit_n_28,
      ADDRD(3) => axis_unit_n_29,
      ADDRD(2) => axis_unit_n_30,
      ADDRD(1) => axis_unit_n_31,
      ADDRD(0) => feature_a_addr(0),
      DIA => '0',
      DIB => axis_unit_n_91,
      DIC => axis_unit_n_90,
      DID => '0',
      DOA => feature_f0(3),
      DOB => feature_f0(4),
      DOC => feature_f0(5),
      DOD => NLW_features_f_RAM_reg_0_63_3_5_DOD_UNCONNECTED,
      WCLK => clk_IBUF_BUFG,
      WE => feature_a_write_req
    );
features_f_RAM_reg_0_63_3_5_i_3: unisim.vcomponents.IBUF
     port map (
      I => \AXIS_in[S_AXIS_TDATA]\(24),
      O => features_f_RAM_reg_0_63_3_5_i_3_n_0
    );
features_f_RAM_reg_0_63_3_5_i_4: unisim.vcomponents.IBUF
     port map (
      I => \AXIS_in[S_AXIS_TDATA]\(16),
      O => features_f_RAM_reg_0_63_3_5_i_4_n_0
    );
features_f_RAM_reg_0_63_3_5_i_5: unisim.vcomponents.IBUF
     port map (
      I => \AXIS_in[S_AXIS_TDATA]\(8),
      O => features_f_RAM_reg_0_63_3_5_i_5_n_0
    );
features_f_RAM_reg_0_63_3_5_i_6: unisim.vcomponents.IBUF
     port map (
      I => \AXIS_in[S_AXIS_TDATA]\(25),
      O => features_f_RAM_reg_0_63_3_5_i_6_n_0
    );
features_f_RAM_reg_0_63_3_5_i_7: unisim.vcomponents.IBUF
     port map (
      I => \AXIS_in[S_AXIS_TDATA]\(17),
      O => features_f_RAM_reg_0_63_3_5_i_7_n_0
    );
features_f_RAM_reg_0_63_3_5_i_8: unisim.vcomponents.IBUF
     port map (
      I => \AXIS_in[S_AXIS_TDATA]\(9),
      O => features_f_RAM_reg_0_63_3_5_i_8_n_0
    );
features_f_RAM_reg_0_63_6_8: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5) => '0',
      ADDRA(4) => feedforward_unit_n_9,
      ADDRA(3) => feedforward_unit_n_10,
      ADDRA(2) => feedforward_unit_n_11,
      ADDRA(1) => feedforward_unit_n_12,
      ADDRA(0) => feedforward_unit_n_13,
      ADDRB(5) => '0',
      ADDRB(4) => feedforward_unit_n_9,
      ADDRB(3) => feedforward_unit_n_10,
      ADDRB(2) => feedforward_unit_n_11,
      ADDRB(1) => feedforward_unit_n_12,
      ADDRB(0) => feedforward_unit_n_13,
      ADDRC(5) => '0',
      ADDRC(4) => feedforward_unit_n_9,
      ADDRC(3) => feedforward_unit_n_10,
      ADDRC(2) => feedforward_unit_n_11,
      ADDRC(1) => feedforward_unit_n_12,
      ADDRC(0) => feedforward_unit_n_13,
      ADDRD(5) => '0',
      ADDRD(4) => axis_unit_n_28,
      ADDRD(3) => axis_unit_n_29,
      ADDRD(2) => axis_unit_n_30,
      ADDRD(1) => axis_unit_n_31,
      ADDRD(0) => feature_a_addr(0),
      DIA => axis_unit_n_89,
      DIB => axis_unit_n_88,
      DIC => axis_unit_n_87,
      DID => '0',
      DOA => feature_f0(6),
      DOB => feature_f0(7),
      DOC => feature_f0(8),
      DOD => NLW_features_f_RAM_reg_0_63_6_8_DOD_UNCONNECTED,
      WCLK => clk_IBUF_BUFG,
      WE => feature_a_write_req
    );
features_f_RAM_reg_0_63_6_8_i_10: unisim.vcomponents.IBUF
     port map (
      I => \AXIS_in[S_AXIS_TDATA]\(28),
      O => features_f_RAM_reg_0_63_6_8_i_10_n_0
    );
features_f_RAM_reg_0_63_6_8_i_11: unisim.vcomponents.IBUF
     port map (
      I => \AXIS_in[S_AXIS_TDATA]\(20),
      O => features_f_RAM_reg_0_63_6_8_i_11_n_0
    );
features_f_RAM_reg_0_63_6_8_i_12: unisim.vcomponents.IBUF
     port map (
      I => \AXIS_in[S_AXIS_TDATA]\(12),
      O => features_f_RAM_reg_0_63_6_8_i_12_n_0
    );
features_f_RAM_reg_0_63_6_8_i_4: unisim.vcomponents.IBUF
     port map (
      I => \AXIS_in[S_AXIS_TDATA]\(26),
      O => features_f_RAM_reg_0_63_6_8_i_4_n_0
    );
features_f_RAM_reg_0_63_6_8_i_5: unisim.vcomponents.IBUF
     port map (
      I => \AXIS_in[S_AXIS_TDATA]\(18),
      O => features_f_RAM_reg_0_63_6_8_i_5_n_0
    );
features_f_RAM_reg_0_63_6_8_i_6: unisim.vcomponents.IBUF
     port map (
      I => \AXIS_in[S_AXIS_TDATA]\(10),
      O => features_f_RAM_reg_0_63_6_8_i_6_n_0
    );
features_f_RAM_reg_0_63_6_8_i_7: unisim.vcomponents.IBUF
     port map (
      I => \AXIS_in[S_AXIS_TDATA]\(27),
      O => features_f_RAM_reg_0_63_6_8_i_7_n_0
    );
features_f_RAM_reg_0_63_6_8_i_8: unisim.vcomponents.IBUF
     port map (
      I => \AXIS_in[S_AXIS_TDATA]\(19),
      O => features_f_RAM_reg_0_63_6_8_i_8_n_0
    );
features_f_RAM_reg_0_63_6_8_i_9: unisim.vcomponents.IBUF
     port map (
      I => \AXIS_in[S_AXIS_TDATA]\(11),
      O => features_f_RAM_reg_0_63_6_8_i_9_n_0
    );
features_f_RAM_reg_0_63_9_11: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5) => '0',
      ADDRA(4) => feedforward_unit_n_9,
      ADDRA(3) => feedforward_unit_n_10,
      ADDRA(2) => feedforward_unit_n_11,
      ADDRA(1) => feedforward_unit_n_12,
      ADDRA(0) => feedforward_unit_n_13,
      ADDRB(5) => '0',
      ADDRB(4) => feedforward_unit_n_9,
      ADDRB(3) => feedforward_unit_n_10,
      ADDRB(2) => feedforward_unit_n_11,
      ADDRB(1) => feedforward_unit_n_12,
      ADDRB(0) => feedforward_unit_n_13,
      ADDRC(5) => '0',
      ADDRC(4) => feedforward_unit_n_9,
      ADDRC(3) => feedforward_unit_n_10,
      ADDRC(2) => feedforward_unit_n_11,
      ADDRC(1) => feedforward_unit_n_12,
      ADDRC(0) => feedforward_unit_n_13,
      ADDRD(5) => '0',
      ADDRD(4) => axis_unit_n_28,
      ADDRD(3) => axis_unit_n_29,
      ADDRD(2) => axis_unit_n_30,
      ADDRD(1) => axis_unit_n_31,
      ADDRD(0) => feature_a_addr(0),
      DIA => axis_unit_n_86,
      DIB => axis_unit_n_85,
      DIC => feature_a(11),
      DID => '0',
      DOA => feature_f0(9),
      DOB => feature_f0(10),
      DOC => feature_f0(11),
      DOD => NLW_features_f_RAM_reg_0_63_9_11_DOD_UNCONNECTED,
      WCLK => clk_IBUF_BUFG,
      WE => feature_a_write_req
    );
features_f_RAM_reg_0_63_9_11_i_10: unisim.vcomponents.IBUF
     port map (
      I => \AXIS_in[S_AXIS_TDATA]\(15),
      O => features_f_RAM_reg_0_63_9_11_i_10_n_0
    );
features_f_RAM_reg_0_63_9_11_i_11: unisim.vcomponents.IBUF
     port map (
      I => \AXIS_in[S_AXIS_TDATA]\(23),
      O => features_f_RAM_reg_0_63_9_11_i_11_n_0
    );
features_f_RAM_reg_0_63_9_11_i_12: unisim.vcomponents.IBUF
     port map (
      I => \AXIS_in[S_AXIS_TDATA]\(31),
      O => features_f_RAM_reg_0_63_9_11_i_12_n_0
    );
features_f_RAM_reg_0_63_9_11_i_4: unisim.vcomponents.IBUF
     port map (
      I => \AXIS_in[S_AXIS_TDATA]\(29),
      O => features_f_RAM_reg_0_63_9_11_i_4_n_0
    );
features_f_RAM_reg_0_63_9_11_i_5: unisim.vcomponents.IBUF
     port map (
      I => \AXIS_in[S_AXIS_TDATA]\(21),
      O => features_f_RAM_reg_0_63_9_11_i_5_n_0
    );
features_f_RAM_reg_0_63_9_11_i_6: unisim.vcomponents.IBUF
     port map (
      I => \AXIS_in[S_AXIS_TDATA]\(13),
      O => features_f_RAM_reg_0_63_9_11_i_6_n_0
    );
features_f_RAM_reg_0_63_9_11_i_7: unisim.vcomponents.IBUF
     port map (
      I => \AXIS_in[S_AXIS_TDATA]\(30),
      O => features_f_RAM_reg_0_63_9_11_i_7_n_0
    );
features_f_RAM_reg_0_63_9_11_i_8: unisim.vcomponents.IBUF
     port map (
      I => \AXIS_in[S_AXIS_TDATA]\(22),
      O => features_f_RAM_reg_0_63_9_11_i_8_n_0
    );
features_f_RAM_reg_0_63_9_11_i_9: unisim.vcomponents.IBUF
     port map (
      I => \AXIS_in[S_AXIS_TDATA]\(14),
      O => features_f_RAM_reg_0_63_9_11_i_9_n_0
    );
feedforward_unit: entity work.feedforward_controller
     port map (
      ADDRA(4) => weight1_f_addr(4),
      ADDRA(3) => feedforward_unit_n_5,
      ADDRA(2 downto 0) => weight1_f_addr(2 downto 0),
      ADDRARDADDR(7 downto 2) => results_f_addr(7 downto 2),
      ADDRARDADDR(1) => feedforward_unit_n_27,
      ADDRARDADDR(0) => results_f_addr(0),
      \AXIS_in[ARESETN]\ => \AXIS_out[M_AXIS_TDATA][23]_INST_0_i_2_n_0\,
      \AXIS_in[S_AXIS_TDATA][14]\ => features_f_RAM_reg_0_63_9_11_i_9_n_0,
      \AXIS_in[S_AXIS_TDATA][15]\ => features_f_RAM_reg_0_63_9_11_i_10_n_0,
      B(11 downto 0) => weight1_f0(11 downto 0),
      LED_8_OBUF => LED_8_OBUF,
      Q(11 downto 0) => weight2_f(11 downto 0),
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      cnt_ex_block_outdated => cnt_ex_block_outdated,
      cnt_ex_block_outdated_next7_out => cnt_ex_block_outdated_next7_out,
      cnt_ex_block_updated => cnt_ex_block_updated,
      \cnt_ex_block_updated_reg[0]\ => feedforward_unit_n_17,
      \cnt_ex_block_updated_reg[0]_0\ => feedforward_unit_n_18,
      \cnt_ex_block_updated_reg[0]_1\ => feedforward_unit_n_29,
      \feature_f_reg[11]\(11 downto 0) => feature_f(11 downto 0),
      \feature_f_reg[9]\(4) => feedforward_unit_n_9,
      \feature_f_reg[9]\(3) => feedforward_unit_n_10,
      \feature_f_reg[9]\(2) => feedforward_unit_n_11,
      \feature_f_reg[9]\(1) => feedforward_unit_n_12,
      \feature_f_reg[9]\(0) => feedforward_unit_n_13,
      \lfsr_reg[7]\(11 downto 0) => weight2_f0(11 downto 0),
      main_state_curr(2 downto 0) => main_state_curr(2 downto 0),
      \main_state_curr_reg[0]\ => feedforward_unit_n_2,
      \main_state_curr_reg[0]_0\ => feedforward_unit_n_3,
      \main_state_curr_reg[0]_1\ => \main_state_curr[1]_i_3_n_0\,
      \main_state_curr_reg[0]_2\ => axis_unit_n_2,
      \main_state_curr_reg[1]\ => feedforward_unit_n_1,
      \main_state_curr_reg[1]_0\ => axis_unit_n_83,
      \main_state_curr_reg[1]_1\ => axis_unit_n_6,
      \main_state_curr_reg[1]_2\ => axis_unit_n_4,
      \main_state_curr_reg[2]\ => axis_unit_n_3,
      \nb_examples_reg[4]\ => axis_unit_n_68,
      \nb_examples_reg[7]\(7 downto 0) => nb_examples(7 downto 0),
      results_RAM_reg(11 downto 0) => \raw_output_f[0]\(11 downto 0),
      results_f_write_req => results_f_write_req,
      \session_curr_reg[0]\ => \main_state_curr[0]_i_4_n_0\,
      \state_curr_reg[0]\ => feedforward_unit_n_15,
      \state_curr_reg[2]\ => feedforward_unit_n_14,
      \state_curr_reg[2]_0\ => axis_unit_n_5,
      \state_curr_reg[2]_1\ => axis_unit_n_7,
      weight2_f_addr(1 downto 0) => weight2_f_addr(1 downto 0)
    );
generator_unit: entity work.weights_generator
     port map (
      ADDRA(4) => weight1_g_addr(4),
      ADDRA(3) => generator_unit_n_7,
      ADDRA(2) => generator_unit_n_8,
      ADDRA(1) => generator_unit_n_9,
      ADDRA(0) => weight1_g_addr(0),
      ADDRD(3 downto 0) => p_1_in(3 downto 0),
      \AXIS_in[ARESETN]\ => \AXIS_out[M_AXIS_TDATA][23]_INST_0_i_2_n_0\,
      \AXIS_in[ARESETN]_0\ => axis_unit_n_0,
      Q(3 downto 0) => cnt_weights(3 downto 0),
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      lfsr(11 downto 0) => lfsr(11 downto 0),
      main_state_curr(2 downto 0) => main_state_curr(2 downto 0),
      \main_state_curr_reg[2]\ => generator_unit_n_11,
      prod_30(1) => generator_unit_n_12,
      prod_30(0) => weight2_g_addr(0),
      \state_curr_reg[0]_0\ => generator_unit_n_4,
      \state_curr_reg[0]_1\(0) => generator_unit_n_5,
      \state_curr_reg[0]_2\ => axis_unit_n_81,
      \sum_1_reg[0]0\ => generator_unit_n_26
    );
\main_state_curr[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0404FF0404040404"
    )
        port map (
      I0 => session_curr(0),
      I1 => session_curr(1),
      I2 => main_state_curr(0),
      I3 => features_f_RAM_reg_0_63_9_11_i_10_n_0,
      I4 => main_state_curr(2),
      I5 => features_f_RAM_reg_0_63_9_11_i_9_n_0,
      O => \main_state_curr[0]_i_4_n_0\
    );
\main_state_curr[1]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => main_state_curr(0),
      I1 => session_curr(1),
      I2 => session_curr(0),
      O => \main_state_curr[1]_i_3_n_0\
    );
\main_state_curr[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00FFDF"
    )
        port map (
      I0 => features_f_RAM_reg_0_63_9_11_i_9_n_0,
      I1 => features_f_RAM_reg_0_63_9_11_i_10_n_0,
      I2 => main_state_curr(0),
      I3 => main_state_curr(2),
      I4 => main_state_curr(1),
      O => \main_state_curr[2]_i_2_n_0\
    );
\main_state_curr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => feedforward_unit_n_2,
      Q => main_state_curr(0),
      R => axis_unit_n_0
    );
\main_state_curr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => feedforward_unit_n_1,
      Q => main_state_curr(1),
      R => axis_unit_n_0
    );
\main_state_curr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => axis_unit_n_1,
      Q => main_state_curr(2),
      R => axis_unit_n_0
    );
\nb_examples_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => axis_unit_n_8,
      D => \nb_examples_reg[0]_i_1_n_0\,
      Q => nb_examples(0),
      R => '0'
    );
\nb_examples_reg[0]_i_1\: unisim.vcomponents.IBUF
     port map (
      I => \AXIS_in[S_AXIS_TDATA]\(0),
      O => \nb_examples_reg[0]_i_1_n_0\
    );
\nb_examples_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => axis_unit_n_8,
      D => \nb_examples_reg[1]_i_1_n_0\,
      Q => nb_examples(1),
      R => '0'
    );
\nb_examples_reg[1]_i_1\: unisim.vcomponents.IBUF
     port map (
      I => \AXIS_in[S_AXIS_TDATA]\(1),
      O => \nb_examples_reg[1]_i_1_n_0\
    );
\nb_examples_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => axis_unit_n_8,
      D => \nb_examples_reg[2]_i_1_n_0\,
      Q => nb_examples(2),
      R => '0'
    );
\nb_examples_reg[2]_i_1\: unisim.vcomponents.IBUF
     port map (
      I => \AXIS_in[S_AXIS_TDATA]\(2),
      O => \nb_examples_reg[2]_i_1_n_0\
    );
\nb_examples_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => axis_unit_n_8,
      D => \nb_examples_reg[3]_i_1_n_0\,
      Q => nb_examples(3),
      R => '0'
    );
\nb_examples_reg[3]_i_1\: unisim.vcomponents.IBUF
     port map (
      I => \AXIS_in[S_AXIS_TDATA]\(3),
      O => \nb_examples_reg[3]_i_1_n_0\
    );
\nb_examples_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => axis_unit_n_8,
      D => \nb_examples_reg[4]_i_1_n_0\,
      Q => nb_examples(4),
      R => '0'
    );
\nb_examples_reg[4]_i_1\: unisim.vcomponents.IBUF
     port map (
      I => \AXIS_in[S_AXIS_TDATA]\(4),
      O => \nb_examples_reg[4]_i_1_n_0\
    );
\nb_examples_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => axis_unit_n_8,
      D => \nb_examples_reg[5]_i_1_n_0\,
      Q => nb_examples(5),
      R => '0'
    );
\nb_examples_reg[5]_i_1\: unisim.vcomponents.IBUF
     port map (
      I => \AXIS_in[S_AXIS_TDATA]\(5),
      O => \nb_examples_reg[5]_i_1_n_0\
    );
\nb_examples_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => axis_unit_n_8,
      D => \nb_examples_reg[6]_i_1_n_0\,
      Q => nb_examples(6),
      R => '0'
    );
\nb_examples_reg[6]_i_1\: unisim.vcomponents.IBUF
     port map (
      I => \AXIS_in[S_AXIS_TDATA]\(6),
      O => \nb_examples_reg[6]_i_1_n_0\
    );
\nb_examples_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => axis_unit_n_8,
      D => \nb_examples_reg[7]_i_2_n_0\,
      Q => nb_examples(7),
      R => '0'
    );
\nb_examples_reg[7]_i_2\: unisim.vcomponents.IBUF
     port map (
      I => \AXIS_in[S_AXIS_TDATA]\(7),
      O => \nb_examples_reg[7]_i_2_n_0\
    );
results_RAM_reg: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"00000",
      INIT_B => X"00000",
      INIT_FILE => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 18,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 18
    )
        port map (
      ADDRARDADDR(13 downto 12) => B"11",
      ADDRARDADDR(11 downto 6) => results_f_addr(7 downto 2),
      ADDRARDADDR(5) => feedforward_unit_n_27,
      ADDRARDADDR(4) => results_f_addr(0),
      ADDRARDADDR(3 downto 0) => B"1111",
      ADDRBWRADDR(13 downto 12) => B"11",
      ADDRBWRADDR(11 downto 5) => results_a_addr(7 downto 1),
      ADDRBWRADDR(4) => axis_unit_n_67,
      ADDRBWRADDR(3 downto 0) => B"1111",
      CLKARDCLK => clk_IBUF_BUFG,
      CLKBWRCLK => clk_IBUF_BUFG,
      DIADI(15 downto 12) => B"0000",
      DIADI(11 downto 0) => \raw_output_f[0]\(11 downto 0),
      DIBDI(15 downto 0) => B"0000111111111111",
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => B"00",
      DOADO(15 downto 0) => NLW_results_RAM_reg_DOADO_UNCONNECTED(15 downto 0),
      DOBDO(15 downto 12) => NLW_results_RAM_reg_DOBDO_UNCONNECTED(15 downto 12),
      DOBDO(11 downto 0) => results_a(11 downto 0),
      DOPADOP(1 downto 0) => NLW_results_RAM_reg_DOPADOP_UNCONNECTED(1 downto 0),
      DOPBDOP(1 downto 0) => NLW_results_RAM_reg_DOPBDOP_UNCONNECTED(1 downto 0),
      ENARDEN => results_f_write_req,
      ENBWREN => '1',
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1 downto 0) => B"11",
      WEBWE(3 downto 0) => B"0000"
    );
\session_curr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => axis_unit_n_94,
      Q => session_curr(0),
      R => axis_unit_n_0
    );
\session_curr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => axis_unit_n_95,
      Q => session_curr(1),
      R => axis_unit_n_0
    );
update_requested_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => axis_unit_n_93,
      Q => LED_8_OBUF,
      R => '0'
    );
\weight2_f_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => weight2_f0(0),
      Q => weight2_f(0),
      R => '0'
    );
\weight2_f_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => weight2_f0(10),
      Q => weight2_f(10),
      R => '0'
    );
\weight2_f_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => weight2_f0(11),
      Q => weight2_f(11),
      R => '0'
    );
\weight2_f_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => weight2_f0(1),
      Q => weight2_f(1),
      R => '0'
    );
\weight2_f_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => weight2_f0(2),
      Q => weight2_f(2),
      R => '0'
    );
\weight2_f_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => weight2_f0(3),
      Q => weight2_f(3),
      R => '0'
    );
\weight2_f_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => weight2_f0(4),
      Q => weight2_f(4),
      R => '0'
    );
\weight2_f_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => weight2_f0(5),
      Q => weight2_f(5),
      R => '0'
    );
\weight2_f_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => weight2_f0(6),
      Q => weight2_f(6),
      R => '0'
    );
\weight2_f_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => weight2_f0(7),
      Q => weight2_f(7),
      R => '0'
    );
\weight2_f_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => weight2_f0(8),
      Q => weight2_f(8),
      R => '0'
    );
\weight2_f_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => weight2_f0(9),
      Q => weight2_f(9),
      R => '0'
    );
weights1_f_RAM_reg_r1_0_31_0_5: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4) => weight1_f_addr(4),
      ADDRA(3) => feedforward_unit_n_5,
      ADDRA(2 downto 0) => weight1_f_addr(2 downto 0),
      ADDRB(4) => weight1_f_addr(4),
      ADDRB(3) => feedforward_unit_n_5,
      ADDRB(2 downto 0) => weight1_f_addr(2 downto 0),
      ADDRC(4) => weight1_f_addr(4),
      ADDRC(3) => feedforward_unit_n_5,
      ADDRC(2 downto 0) => weight1_f_addr(2 downto 0),
      ADDRD(4 downto 0) => p_1_in(4 downto 0),
      DIA(1 downto 0) => p_2_in(1 downto 0),
      DIB(1 downto 0) => p_2_in(3 downto 2),
      DIC(1 downto 0) => p_2_in(5 downto 4),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => weight1_f0(1 downto 0),
      DOB(1 downto 0) => weight1_f0(3 downto 2),
      DOC(1 downto 0) => weight1_f0(5 downto 4),
      DOD(1 downto 0) => NLW_weights1_f_RAM_reg_r1_0_31_0_5_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk_IBUF_BUFG,
      WE => '1'
    );
weights1_f_RAM_reg_r1_0_31_6_11: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4) => weight1_f_addr(4),
      ADDRA(3) => feedforward_unit_n_5,
      ADDRA(2 downto 0) => weight1_f_addr(2 downto 0),
      ADDRB(4) => weight1_f_addr(4),
      ADDRB(3) => feedforward_unit_n_5,
      ADDRB(2 downto 0) => weight1_f_addr(2 downto 0),
      ADDRC(4) => weight1_f_addr(4),
      ADDRC(3) => feedforward_unit_n_5,
      ADDRC(2 downto 0) => weight1_f_addr(2 downto 0),
      ADDRD(4 downto 0) => p_1_in(4 downto 0),
      DIA(1 downto 0) => p_2_in(7 downto 6),
      DIB(1 downto 0) => p_2_in(9 downto 8),
      DIC(1 downto 0) => p_2_in(11 downto 10),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => weight1_f0(7 downto 6),
      DOB(1 downto 0) => weight1_f0(9 downto 8),
      DOC(1 downto 0) => weight1_f0(11 downto 10),
      DOD(1 downto 0) => NLW_weights1_f_RAM_reg_r1_0_31_6_11_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk_IBUF_BUFG,
      WE => '1'
    );
weights1_f_RAM_reg_r2_0_31_0_5: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4) => weight1_g_addr(4),
      ADDRA(3) => generator_unit_n_7,
      ADDRA(2) => generator_unit_n_8,
      ADDRA(1) => generator_unit_n_9,
      ADDRA(0) => weight1_g_addr(0),
      ADDRB(4) => weight1_g_addr(4),
      ADDRB(3) => generator_unit_n_7,
      ADDRB(2) => generator_unit_n_8,
      ADDRB(1) => generator_unit_n_9,
      ADDRB(0) => weight1_g_addr(0),
      ADDRC(4) => weight1_g_addr(4),
      ADDRC(3) => generator_unit_n_7,
      ADDRC(2) => generator_unit_n_8,
      ADDRC(1) => generator_unit_n_9,
      ADDRC(0) => weight1_g_addr(0),
      ADDRD(4 downto 0) => p_1_in(4 downto 0),
      DIA(1 downto 0) => p_2_in(1 downto 0),
      DIB(1 downto 0) => p_2_in(3 downto 2),
      DIC(1 downto 0) => p_2_in(5 downto 4),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => p_0_out(1 downto 0),
      DOB(1 downto 0) => p_0_out(3 downto 2),
      DOC(1 downto 0) => p_0_out(5 downto 4),
      DOD(1 downto 0) => NLW_weights1_f_RAM_reg_r2_0_31_0_5_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk_IBUF_BUFG,
      WE => '1'
    );
weights1_f_RAM_reg_r2_0_31_6_11: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4) => weight1_g_addr(4),
      ADDRA(3) => generator_unit_n_7,
      ADDRA(2) => generator_unit_n_8,
      ADDRA(1) => generator_unit_n_9,
      ADDRA(0) => weight1_g_addr(0),
      ADDRB(4) => weight1_g_addr(4),
      ADDRB(3) => generator_unit_n_7,
      ADDRB(2) => generator_unit_n_8,
      ADDRB(1) => generator_unit_n_9,
      ADDRB(0) => weight1_g_addr(0),
      ADDRC(4) => weight1_g_addr(4),
      ADDRC(3) => generator_unit_n_7,
      ADDRC(2) => generator_unit_n_8,
      ADDRC(1) => generator_unit_n_9,
      ADDRC(0) => weight1_g_addr(0),
      ADDRD(4 downto 0) => p_1_in(4 downto 0),
      DIA(1 downto 0) => p_2_in(7 downto 6),
      DIB(1 downto 0) => p_2_in(9 downto 8),
      DIC(1 downto 0) => p_2_in(11 downto 10),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => p_0_out(7 downto 6),
      DOB(1 downto 0) => p_0_out(9 downto 8),
      DOC(1 downto 0) => p_0_out(11 downto 10),
      DOD(1 downto 0) => NLW_weights1_f_RAM_reg_r2_0_31_6_11_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk_IBUF_BUFG,
      WE => '1'
    );
weights2_f_RAM_reg_r1_0_3_0_5: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4 downto 2) => B"000",
      ADDRA(1 downto 0) => weight2_f_addr(1 downto 0),
      ADDRB(4 downto 2) => B"000",
      ADDRB(1 downto 0) => weight2_f_addr(1 downto 0),
      ADDRC(4 downto 2) => B"000",
      ADDRC(1 downto 0) => weight2_f_addr(1 downto 0),
      ADDRD(4 downto 2) => B"000",
      ADDRD(1) => axis_unit_n_21,
      ADDRD(0) => axis_unit_n_22,
      DIA(1) => axis_unit_n_19,
      DIA(0) => axis_unit_n_20,
      DIB(1) => axis_unit_n_17,
      DIB(0) => axis_unit_n_18,
      DIC(1) => axis_unit_n_15,
      DIC(0) => axis_unit_n_16,
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => weight2_f0(1 downto 0),
      DOB(1 downto 0) => weight2_f0(3 downto 2),
      DOC(1 downto 0) => weight2_f0(5 downto 4),
      DOD(1 downto 0) => NLW_weights2_f_RAM_reg_r1_0_3_0_5_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk_IBUF_BUFG,
      WE => '1'
    );
weights2_f_RAM_reg_r1_0_3_6_11: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4 downto 2) => B"000",
      ADDRA(1 downto 0) => weight2_f_addr(1 downto 0),
      ADDRB(4 downto 2) => B"000",
      ADDRB(1 downto 0) => weight2_f_addr(1 downto 0),
      ADDRC(4 downto 2) => B"000",
      ADDRC(1 downto 0) => weight2_f_addr(1 downto 0),
      ADDRD(4 downto 2) => B"000",
      ADDRD(1) => axis_unit_n_21,
      ADDRD(0) => axis_unit_n_22,
      DIA(1) => axis_unit_n_13,
      DIA(0) => axis_unit_n_14,
      DIB(1) => axis_unit_n_11,
      DIB(0) => axis_unit_n_12,
      DIC(1) => axis_unit_n_9,
      DIC(0) => axis_unit_n_10,
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => weight2_f0(7 downto 6),
      DOB(1 downto 0) => weight2_f0(9 downto 8),
      DOC(1 downto 0) => weight2_f0(11 downto 10),
      DOD(1 downto 0) => NLW_weights2_f_RAM_reg_r1_0_3_6_11_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk_IBUF_BUFG,
      WE => '1'
    );
weights2_f_RAM_reg_r2_0_3_0_5: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4 downto 2) => B"000",
      ADDRA(1) => generator_unit_n_12,
      ADDRA(0) => weight2_g_addr(0),
      ADDRB(4 downto 2) => B"000",
      ADDRB(1) => generator_unit_n_12,
      ADDRB(0) => weight2_g_addr(0),
      ADDRC(4 downto 2) => B"000",
      ADDRC(1) => generator_unit_n_12,
      ADDRC(0) => weight2_g_addr(0),
      ADDRD(4 downto 2) => B"000",
      ADDRD(1) => axis_unit_n_21,
      ADDRD(0) => axis_unit_n_22,
      DIA(1) => axis_unit_n_19,
      DIA(0) => axis_unit_n_20,
      DIB(1) => axis_unit_n_17,
      DIB(0) => axis_unit_n_18,
      DIC(1) => axis_unit_n_15,
      DIC(0) => axis_unit_n_16,
      DID(1 downto 0) => B"00",
      DOA(1) => weights2_f_RAM_reg_r2_0_3_0_5_n_0,
      DOA(0) => weights2_f_RAM_reg_r2_0_3_0_5_n_1,
      DOB(1) => weights2_f_RAM_reg_r2_0_3_0_5_n_2,
      DOB(0) => weights2_f_RAM_reg_r2_0_3_0_5_n_3,
      DOC(1) => weights2_f_RAM_reg_r2_0_3_0_5_n_4,
      DOC(0) => weights2_f_RAM_reg_r2_0_3_0_5_n_5,
      DOD(1 downto 0) => NLW_weights2_f_RAM_reg_r2_0_3_0_5_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk_IBUF_BUFG,
      WE => '1'
    );
weights2_f_RAM_reg_r2_0_3_6_11: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4 downto 2) => B"000",
      ADDRA(1) => generator_unit_n_12,
      ADDRA(0) => weight2_g_addr(0),
      ADDRB(4 downto 2) => B"000",
      ADDRB(1) => generator_unit_n_12,
      ADDRB(0) => weight2_g_addr(0),
      ADDRC(4 downto 2) => B"000",
      ADDRC(1) => generator_unit_n_12,
      ADDRC(0) => weight2_g_addr(0),
      ADDRD(4 downto 2) => B"000",
      ADDRD(1) => axis_unit_n_21,
      ADDRD(0) => axis_unit_n_22,
      DIA(1) => axis_unit_n_13,
      DIA(0) => axis_unit_n_14,
      DIB(1) => axis_unit_n_11,
      DIB(0) => axis_unit_n_12,
      DIC(1) => axis_unit_n_9,
      DIC(0) => axis_unit_n_10,
      DID(1 downto 0) => B"00",
      DOA(1) => weights2_f_RAM_reg_r2_0_3_6_11_n_0,
      DOA(0) => weights2_f_RAM_reg_r2_0_3_6_11_n_1,
      DOB(1) => weights2_f_RAM_reg_r2_0_3_6_11_n_2,
      DOB(0) => weights2_f_RAM_reg_r2_0_3_6_11_n_3,
      DOC(1) => weights2_f_RAM_reg_r2_0_3_6_11_n_4,
      DOC(0) => weights2_f_RAM_reg_r2_0_3_6_11_n_5,
      DOD(1 downto 0) => NLW_weights2_f_RAM_reg_r2_0_3_6_11_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk_IBUF_BUFG,
      WE => '1'
    );
end STRUCTURE;
