library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
--use work.math_real.all;
--use IEEE.math_real.all;
use work.utility.all;

entity AXIS_interface_V1 is
    generic
    (
        nb_features:            Natural := 13;
        nb_hidden_nodes:        Natural := 5;
        nb_output_nodes:        Natural := 1;
        examples_block_size:    Natural := 1
    );

	port 
	(
		ACLK	: in	std_logic;
		ARESETN	: in	std_logic;
		S_AXIS_TREADY	: out	std_logic;
		S_AXIS_TDATA	: in	std_logic_vector(31 downto 0);
		S_AXIS_TLAST	: in	std_logic;
		S_AXIS_TVALID	: in	std_logic;
		M_AXIS_TVALID	: out	std_logic;
		M_AXIS_TDATA	: out	std_logic_vector(31 downto 0);
		M_AXIS_TLAST	: out	std_logic;
		M_AXIS_TREADY	: in	std_logic;
		
		start_new_session     : in std_logic;
		read_next_examples    : in std_logic;
		
		examples_block_done   : out std_logic
	);

    attribute SIGIS : string; 
    attribute SIGIS of ACLK : signal is "Clk"; 
end AXIS_interface_V1;

architecture version1 of AXIS_interface_V1 is

    constant features_block_size  : natural := 4;
    constant weights_block_size   : natural := 2;

    type STATE_TYPE is (Idle, Read_Data, Read_Opcode, Read_Weigths1, Read_Weights2, Write_Outputs);
    signal state : STATE_TYPE := Idle;

    type Weights1_t is array (0 to ( (nb_features+1)*nb_hidden_nodes - 1) ) of signed(11 downto 0);
    type Weights2_t is array (0 to ( (nb_hidden_nodes+1)*nb_output_nodes - 1) ) of signed(11 downto 0);
    type features_t is array (0 to (examples_block_size*nb_features - 1) ) of signed(11 downto 0);
    type labels_t is array (0 to (examples_block_size - 1) ) of unsigned(3 downto 0);
   
    signal weights1: Weights1_t := (others => (others => '0'));
    signal weights2: Weights2_t := (others => (others => '0'));
    signal features: features_t := (others => (others => '0'));
    signal labels: labels_t := (others => (others => '0'));

    signal c_features_block : natural range 0 to ( natural(nb_features+1)/features_block_size +1 - 1) := 0; -- should use ceil, here 13+1 / 4 = 3.5 -> 3 + 1
    signal c_examples : natural range 0 to examples_block_size-1 := 0;
    signal c_weights : natural range 0 to ( max(natural(nb_features+1)*natural(nb_hidden_nodes),natural(nb_hidden_nodes+1)*natural(nb_output_nodes)/weights_block_size) - 1) := 0; -- here max{ (13+1)*5;(5+1)*1 } = 70 / 2 = 35
    signal read_features_MSB : std_logic := '0';
  
    type features_pre_scale_t is array (0 to (features_block_size-1) ) of unsigned(7 downto 0);
    type features_post_scale_t is array (0 to (features_block_size-1) ) of unsigned(11 downto 0);
    signal features_pre_scale: features_pre_scale_t := (others => (others => '0'));
    signal features_post_scale: features_post_scale_t := (others => (others => '0'));
    
    signal opcode: std_logic_vector(15 downto 0) := (others => '0');
    
begin

   --S_AXIS_TREADY  <= '1'   when state = Read_Inputs   else '0';
   --M_AXIS_TVALID <= '1' when state = Write_Outputs else '0';
   --M_AXIS_TLAST <= '1' when (state = Write_Outputs and (c2 = P-1) and (c1 = N-1)) else '0';

  FSM : process (ACLK) is
  begin  -- process The_SW_accelerator
    if ACLK'event and ACLK = '1' then     -- Rising clock edge
      M_AXIS_TDATA <= (others => '0');
      M_AXIS_TVALID <= '0';
      M_AXIS_TLAST <= '0';
      S_AXIS_TREADY <= '1';
      examples_block_done <= '0';
      if ARESETN = '0' then               -- Synchronous reset (active low)
        state <= Idle;
      else
        case state is
        
          when Idle =>
            if (start_new_session = '1') then
                --S_AXIS_TREADY <= '1';
                state <= Read_opcode;
            elsif (read_next_examples = '1') then
                --S_AXIS_TREADY <= '1';
                state <= Read_Data;
                read_features_MSB <= '0';
            else
                S_AXIS_TREADY <= '0';
            end if;
            
          when Read_Opcode =>
            if (S_AXIS_TVALID = '1') then
                opcode <= S_AXIS_TDATA(15 downto 0);
                if (S_AXIS_TDATA(14) = '1') then
                    state <= Read_Data;
                    c_examples <= 0;
                    c_features_block <= 0;
                    read_features_MSB <= '0';
                else
                    state <= Read_Weigths1;
                    c_weights <= 0;
                end if;
                --S_AXIS_TREADY <= '1';
            end if;
            
          when Read_Weigths1 =>
            if (S_AXIS_TVALID = '1') then
              if (c_weights = 34) then -- ( integer(ceil(natural(nb_features+1)*natural(nb_hidden_nodes)/weights_block_size)) - 1 ) ) then
                weights1(c_weights*weights_block_size) <= signed(S_AXIS_TDATA(31 downto 20));
                if ( (((nb_features+1)*nb_hidden_nodes) mod weights_block_size) = 0 ) then
                  weights1(c_weights*weights_block_size + 1) <= signed(S_AXIS_TDATA(19 downto 8));
                end if;
                state <= Read_Weights2;
                c_weights <= 0;
              else  
                weights1(c_weights*weights_block_size) <= signed(S_AXIS_TDATA(31 downto 20));
                weights1(c_weights*weights_block_size + 1) <= signed(S_AXIS_TDATA(19 downto 8));
                c_weights <= c_weights + 1;
              end if;
              --S_AXIS_TREADY <= '1';
            end if;
            
          when Read_Weights2 =>
            if (S_AXIS_TVALID = '1') then
              if (c_weights = 2) then --( integer(ceil(natural(nb_hidden_nodes+1)*natural(nb_output_nodes)/weights_block_size)) - 1 )) then -- (5+1)*1 /2 -1
                weights2(c_weights*weights_block_size) <= signed(S_AXIS_TDATA(31 downto 20));
                if ( (((nb_hidden_nodes+1)*nb_output_nodes) mod weights_block_size) = 0 ) then
                  weights2(c_weights*weights_block_size + 1) <= signed(S_AXIS_TDATA(19 downto 8));
                end if;
                state <= Read_Data;
                c_examples <= 0;
                c_features_block <= 0;
                read_features_MSB <= '0';
              else  
                weights2(c_weights*weights_block_size) <= signed(S_AXIS_TDATA(31 downto 20));
                weights2(c_weights*weights_block_size + 1) <= signed(S_AXIS_TDATA(19 downto 8));
                c_weights <= c_weights + 1;
              end if;
              --S_AXIS_TREADY <= '1';
            end if;
          
          when others => -- Read_Data
            if (S_AXIS_TVALID = '1') then
              if (c_features_block = 3) then --( integer(ceil(natural(nb_features+1)/features_block_size)) -1) ) then -- last chunk of features
                if ( (nb_features mod features_block_size) = 0) then
                  labels(c_examples) <= unsigned(S_AXIS_TDATA(3 downto 0));
                  if (c_examples = (examples_block_size - 1)) then
                    state <= Idle;
                    examples_block_done <= '1';-- inform main FSM that reading is complete
                  else
                    c_features_block <= 0;
                    c_examples <= c_examples + 1;
                  end if;
                elsif ( (nb_features mod features_block_size) > 2) then
                  if (read_features_MSB = '0') then
                    for i in 0 to 1 loop
                      features(c_examples*nb_features + c_features_block*features_block_size + i) <= signed(std_logic_vector(unsigned(S_AXIS_TDATA(7+i*8 downto i*8))+to_unsigned(128,8)) & std_logic_vector'(others => '0'));
                    end loop;
                    read_features_MSB <= '1';
                    S_AXIS_TREADY <= '0'; -- do not proceed to next chunk because we need one more cycle to process the current features or label
                  else
                    for i in 2 to 2 loop
                      features(c_examples*nb_features + c_features_block*features_block_size + i) <= signed(std_logic_vector(unsigned(S_AXIS_TDATA(7+i*8 downto i*8))+to_unsigned(128,8)) & std_logic_vector'(others => '0'));
                    end loop;
                    labels(c_examples) <= unsigned(S_AXIS_TDATA(27 downto 24));
                    read_features_MSB <= '0';
                    if (c_examples = (examples_block_size - 1)) then
                      state <= Idle;
                      examples_block_done <= '1';-- inform main FSM that reading is complete
                    else
                      c_features_block <= 0;
                      c_examples <= c_examples + 1;
                    end if;
                  end if;
                else -- only one or two features left and the label
                  for i in 0 to ((nb_features mod features_block_size) - 1) loop
                    features(c_examples*nb_features + c_features_block*features_block_size + i) <= (others => '0'); --signed(std_logic_vector(unsigned(S_AXIS_TDATA(7+i*8 downto i*8))+to_unsigned(128,8)) & std_logic_vector'(others => '0'));
                    features(c_examples*nb_features + c_features_block*features_block_size + i)(7 downto 0) <= signed(S_AXIS_TDATA(7+i*8 downto i*8));
                  end loop;  
                  labels(c_examples) <= unsigned(S_AXIS_TDATA((nb_features mod features_block_size)*8 + 3 downto (nb_features mod features_block_size)*8));
                  if (c_examples = (examples_block_size - 1)) then
                    state <= Idle;
                    examples_block_done <= '1';-- inform main FSM that reading is complete
                  else
                    c_features_block <= 0;
                    c_examples <= c_examples + 1;
                  end if;
                end if;
              else -- still some features to come
                if (read_features_MSB = '0') then
                  for i in 0 to 1 loop
                    features(c_examples*nb_features + c_features_block*features_block_size + i) <= (others => '0');--signed(std_logic_vector(unsigned(S_AXIS_TDATA(7+i*8 downto i*8))+to_unsigned(128,8)) & std_logic_vector'(others => '0'));
                    features(c_examples*nb_features + c_features_block*features_block_size + i)(7 downto 0) <= signed(S_AXIS_TDATA(7+i*8 downto i*8));
                  end loop;
                  read_features_MSB <= '1';
                  S_AXIS_TREADY <= '0';
                else
                  for i in 2 to 3 loop
                    features(c_examples*nb_features + c_features_block*features_block_size + i) <= (others => '0'); --signed(std_logic_vector(unsigned(S_AXIS_TDATA(7+i*8 downto i*8))+to_unsigned(128,8)) & std_logic_vector'(others => '0'));
                    features(c_examples*nb_features + c_features_block*features_block_size + i)(7 downto 0) <= signed(S_AXIS_TDATA(7+i*8 downto i*8));
                  end loop;
                  read_features_MSB <= '0';
                  c_features_block <= c_features_block + 1;
                end if;
              end if;
            end if;

        end case;
      end if;
    end if;
  end process FSM;
   
--  scaling : process (features_pre_scale) is
--  variable features_tmp_scale: features_post_scale_t;
--  begin
--    for i in 0 to (features_block_size-1) loop
--      features_tmp_scale(i) := unsigned(std_logic_vector(features_pre_scale(i)) & std_logic_vector'(others => '0'));
--      features_post_scale(i) <= features_tmp_scale(i) - to_unsigned(2048,12);
--    end loop;
--  end process scaling;
   
end architecture version1;