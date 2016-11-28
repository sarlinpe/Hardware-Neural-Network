-- (c) Copyright 1995-2016 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: user.org:user:AXIS_MLP_Neural_Network_distr:1.0
-- IP Revision: 8

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY PS_PL_coprocessing_distributed_AXIS_MLP_Neural_Network_distr_0_0 IS
  PORT (
    ACLK : IN STD_LOGIC;
    ARESETN : IN STD_LOGIC;
    S_AXIS_TREADY : OUT STD_LOGIC;
    S_AXIS_TDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    S_AXIS_TLAST : IN STD_LOGIC;
    S_AXIS_TVALID : IN STD_LOGIC;
    M_AXIS_TVALID : OUT STD_LOGIC;
    M_AXIS_TDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    M_AXIS_TLAST : OUT STD_LOGIC;
    M_AXIS_TREADY : IN STD_LOGIC;
    LED_1 : OUT STD_LOGIC;
    LED_2 : OUT STD_LOGIC;
    LED_3 : OUT STD_LOGIC;
    LED_4 : OUT STD_LOGIC;
    LED_5 : OUT STD_LOGIC;
    LED_6 : OUT STD_LOGIC
  );
END PS_PL_coprocessing_distributed_AXIS_MLP_Neural_Network_distr_0_0;

ARCHITECTURE PS_PL_coprocessing_distributed_AXIS_MLP_Neural_Network_distr_0_0_arch OF PS_PL_coprocessing_distributed_AXIS_MLP_Neural_Network_distr_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF PS_PL_coprocessing_distributed_AXIS_MLP_Neural_Network_distr_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT AXIS_interface IS
    GENERIC (
      nb_features : INTEGER;
      nb_hidden_nodes : INTEGER;
      nb_classes : INTEGER;
      single_ended : BOOLEAN;
      nb_examples_max : INTEGER;
      examples_block_size : INTEGER;
      axis_data_width : INTEGER
    );
    PORT (
      ACLK : IN STD_LOGIC;
      ARESETN : IN STD_LOGIC;
      S_AXIS_TREADY : OUT STD_LOGIC;
      S_AXIS_TDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      S_AXIS_TLAST : IN STD_LOGIC;
      S_AXIS_TVALID : IN STD_LOGIC;
      M_AXIS_TVALID : OUT STD_LOGIC;
      M_AXIS_TDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      M_AXIS_TLAST : OUT STD_LOGIC;
      M_AXIS_TREADY : IN STD_LOGIC;
      LED_1 : OUT STD_LOGIC;
      LED_2 : OUT STD_LOGIC;
      LED_3 : OUT STD_LOGIC;
      LED_4 : OUT STD_LOGIC;
      LED_5 : OUT STD_LOGIC;
      LED_6 : OUT STD_LOGIC
    );
  END COMPONENT AXIS_interface;
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF ACLK: SIGNAL IS "xilinx.com:signal:clock:1.0 ACLK CLK";
  ATTRIBUTE X_INTERFACE_INFO OF ARESETN: SIGNAL IS "xilinx.com:signal:reset:1.0 ARESETN RST";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXIS_TREADY: SIGNAL IS "xilinx.com:interface:axis:1.0 S_AXIS TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXIS_TDATA: SIGNAL IS "xilinx.com:interface:axis:1.0 S_AXIS TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXIS_TLAST: SIGNAL IS "xilinx.com:interface:axis:1.0 S_AXIS TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXIS_TVALID: SIGNAL IS "xilinx.com:interface:axis:1.0 S_AXIS TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXIS_TVALID: SIGNAL IS "xilinx.com:interface:axis:1.0 M_AXIS TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXIS_TDATA: SIGNAL IS "xilinx.com:interface:axis:1.0 M_AXIS TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXIS_TLAST: SIGNAL IS "xilinx.com:interface:axis:1.0 M_AXIS TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXIS_TREADY: SIGNAL IS "xilinx.com:interface:axis:1.0 M_AXIS TREADY";
BEGIN
  U0 : AXIS_interface
    GENERIC MAP (
      nb_features => 13,
      nb_hidden_nodes => 20,
      nb_classes => 3,
      single_ended => false,
      nb_examples_max => 1020,
      examples_block_size => 8,
      axis_data_width => 32
    )
    PORT MAP (
      ACLK => ACLK,
      ARESETN => ARESETN,
      S_AXIS_TREADY => S_AXIS_TREADY,
      S_AXIS_TDATA => S_AXIS_TDATA,
      S_AXIS_TLAST => S_AXIS_TLAST,
      S_AXIS_TVALID => S_AXIS_TVALID,
      M_AXIS_TVALID => M_AXIS_TVALID,
      M_AXIS_TDATA => M_AXIS_TDATA,
      M_AXIS_TLAST => M_AXIS_TLAST,
      M_AXIS_TREADY => M_AXIS_TREADY,
      LED_1 => LED_1,
      LED_2 => LED_2,
      LED_3 => LED_3,
      LED_4 => LED_4,
      LED_5 => LED_5,
      LED_6 => LED_6
    );
END PS_PL_coprocessing_distributed_AXIS_MLP_Neural_Network_distr_0_0_arch;
