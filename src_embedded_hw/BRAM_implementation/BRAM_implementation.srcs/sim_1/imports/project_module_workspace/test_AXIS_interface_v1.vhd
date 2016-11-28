
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity test_AXIS_interface_v1 is
--    Port ( );
end test_AXIS_interface_v1;

architecture Behavioral of test_AXIS_interface_v1 is
    component AXIS_interface is
	generic
    (
        nb_features:            Natural;
        nb_hidden_nodes:        Natural;
        nb_output_nodes:        Natural;
        examples_block_size:    Natural
    );

    port 
    (
        ACLK	   : in	std_logic;
        ARESETN    : in    std_logic;
        S_AXIS_TREADY    : out    std_logic;
        S_AXIS_TDATA     : in    std_logic_vector(31 downto 0);
        S_AXIS_TLAST     : in    std_logic;
        S_AXIS_TVALID    : in    std_logic;
        M_AXIS_TVALID    : out    std_logic;
        M_AXIS_TDATA     : out    std_logic_vector(31 downto 0);
        M_AXIS_TLAST     : out    std_logic;
        M_AXIS_TREADY    : in    std_logic;
        
        start_new_session     : in std_logic;
        read_next_examples    : in std_logic;
        examples_block_done   : out std_logic
    );
    end component;
    
    signal ACLK, ARESETN    : std_logic;
    signal S_AXIS_TREADY, S_AXIS_TLAST, S_AXIS_TVALID: std_logic;
    signal S_AXIS_TDATA    : std_logic_vector(31 downto 0);
    signal M_AXIS_TVALID, M_AXIS_TLAST, M_AXIS_TREADY    : std_logic;
    signal M_AXIS_TDATA    : std_logic_vector(31 downto 0);
    
    signal start_new_session     : std_logic;
    signal read_next_examples    : std_logic;
    signal examples_block_done   : std_logic;
    
    type features_t is array (0 to 12) of unsigned(7 downto 0);
    signal M_features : features_t := (x"01", x"02", x"03", x"04", x"05", x"06", x"07", x"08", x"09", x"0A", x"0B", x"0C", x"0D");
    signal M_labels : unsigned(3 downto 0) := x"3";
    signal M_opcode : std_logic_vector(31 downto 0) := (others => '0');
    

begin
    uut: AXIS_interface
        generic map
        (
            nb_features => 13,
            nb_hidden_nodes => 5,
            nb_output_nodes => 1,
            examples_block_size => 1
        )
        port map
        (
            ACLK, ARESETN, 
            S_AXIS_TREADY, S_AXIS_TDATA, S_AXIS_TLAST, S_AXIS_TVALID,
            M_AXIS_TVALID, M_AXIS_TDATA, M_AXIS_TLAST, M_AXIS_TREADY,
            start_new_session, read_next_examples, examples_block_done
        );
    ARESETN <= '1';
    
    stim_process: process
      variable i : integer range 0 to 10;
    begin
       M_opcode <= (15 => '0', 14 => '1', others => '0'); 
       M_opcode(13 downto 0) <= std_logic_vector(to_unsigned(4,14));
       
       S_AXIS_TLAST <= '0';
       S_AXIS_TDATA <= (others => '0');
       M_AXIS_TREADY <= '0';
       ACLK <= '0';
       S_AXIS_TVALID <= '0';
       start_new_session <= '0';
       read_next_examples <= '0';
       
       wait for 100 ns;
       ACLK <= '1';
       wait for 100 ns;
       ACLK <= '0';
  
       start_new_session <= '1';
       
       wait for 100 ns;
       ACLK <= '1';
       wait for 100 ns;
       ACLK <= '0';
       
       start_new_session <= '0';
       -- interface waiting from 1st chunk from DMA
       
       wait for 100ns;
       ACLK <= '1';
       wait for 100 ns;
       ACLK <= '0';

       S_AXIS_TDATA <= M_opcode;
       S_AXIS_TVALID <= '1';

       wait for 100ns;
       ACLK <= '1';
       wait for 100 ns;
       ACLK <= '0';
       
       S_AXIS_TVALID <= '0';
       
       wait for 100ns;
       ACLK <= '1';
       wait for 100 ns;
       ACLK <= '0';
       
       S_AXIS_TVALID <= '1';
       while (i <= 3) loop
        if( S_AXIS_TREADY = '1') then
          if (i = 3) then
            --S_AXIS_TDATA <= std_logic_vector(((7 downto 0) => features(12), (11 downto 8) => to_unsigned(labels,4), others => '0'));
            S_AXIS_TDATA <= (others => '0');
            S_AXIS_TDATA(7 downto 0) <= std_logic_vector(M_features(12));
            S_AXIS_TDATA(11 downto 8) <= std_logic_vector(M_labels);
          else
            S_AXIS_TDATA <= std_logic_vector(M_features(3+i*4)) & std_logic_vector(M_features(2+i*4)) & std_logic_vector(M_features(1+i*4)) & std_logic_vector(M_features(i*4));
          end if;
          i := i+1;
        end if;
        wait for 100ns;
        ACLK <= '1';
        wait for 100 ns;
        ACLK <= '0';
       end loop;
       
       for i in 0 to 4 loop
         wait for 100ns;
         ACLK <= '1';
         wait for 100 ns;
         ACLK <= '0';
       end loop;

       wait;
     end process stim_process;
end Behavioral;
