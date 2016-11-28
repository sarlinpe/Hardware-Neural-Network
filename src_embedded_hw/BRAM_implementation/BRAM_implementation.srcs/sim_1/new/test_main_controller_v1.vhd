library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.utility.all;

entity test_main_controller_v1 is
--  Port ( );
end test_main_controller_v1;

architecture Behavioral of test_main_controller_v1 is

    component main_controller is
    generic (
        nb_features:            natural;
        nb_hidden_nodes:        natural;
        nb_classes:             natural;
        single_ended:           boolean;
        nb_examples_max:        natural;
        axis_data_width:        natural;
        examples_block_size:    natural       -- this has to be a power of 2
    );
    port ( 
        clk:        in std_logic;
        AXIS_in :   in AXIS_in_t;
        AXIS_out :  out AXIS_out_t );
    end component main_controller;
    
    -- Entity related parameters
    constant nb_features: natural := 13;
    constant nb_hidden_nodes: natural := 20;
    constant nb_classes: natural := 2;
    constant single_ended: boolean := false;
    constant nb_examples_max: natural := 200;
    constant axis_data_width: natural := 32;
    constant examples_block_size: natural := 8;
    
    constant nb_output_nodes: natural := sel(single_ended, 1, nb_classes);
    
    constant new_session: std_logic := '1';
    constant train: std_logic := '0';
    constant option: std_logic_vector(1 downto 0) := b"01";
    constant nb_examples : natural range 0 to (nb_examples_max-1) := 9;
    signal opcode: std_logic_vector(31 downto 0) := x"000" & new_session & train & option & std_logic_vector(to_unsigned(nb_examples,16));
    
    -- Data related parameters
    signal clk: std_logic;
    signal AXIS_in: AXIS_in_t;
    signal AXIS_out: AXIS_out_t;
    
    type features_t is array (0 to (nb_features*nb_examples - 1)) of integer;
    signal features_RAM : features_t := 
--        (50,150,20,40,
--        93,109,154,199,
--        67,75,29,44,
--        134,103,68,255,
--        4,5,9,3,
--        100,101,102,103);
    (225,92,143,53,250,180,194,86,206,144,151,246,193,
    144,96,75,0,129,164,175,76,93,109,154,199,190,
    141,129,199,111,134,180,206,96,255,145,148,178,217,
    78,48,0,0,75,96,35,86,0,42,154,57,82,
    75,57,108,61,134,103,68,255,0,79,210,43,114,
    100,72,47,76,129,100,88,214,19,147,134,36,68,
    117,71,117,99,228,48,78,50,55,102,73,9,104,
    118,165,136,138,147,26,76,65,43,137,67,21,84,
    113,126,136,214,120,11,68,81,43,146,45,15,90);
--    104,198,126,166,156,67,75,29,44,126,78,9,98,
--    225,92,143,53,250,180,194,86,206,144,151,246,193,
--    144,96,75,0,129,164,175,76,93,109,154,199,190,
--    141,129,199,111,134,180,206,96,255,145,148,178,217,
--    78,48,0,0,75,96,35,86,0,42,154,57,82,
--    75,57,108,61,134,103,68,255,0,79,210,43,114,
--    100,72,47,76,129,100,88,214,19,147,134,36,68);
                                         
    type labels_t is array (0 to (nb_examples - 1)) of integer;
    signal labels_RAM : labels_t := 
--        (1,1,1,1,4,4);
        (1,1,1,2,2,2,3,3,3);--,3,1,1,1,2,2,2);
    
    type weights1_t is array (0 to ((nb_features+1)*nb_hidden_nodes -1)) of integer;
    signal weights1_RAM: weights1_t;-- :=
--        (-1005,1134,11,
--        145,344,2004,
--        1890,-242,-1000,
--        32,-1149,134,
--        -500,224,908);
--        (-1005,145,1890,32,-500,
--        1134,344,-242,-1149,224,
--        11,2004,-1000,134,908);
    
    type weights2_t is array (0 to ((nb_hidden_nodes+1)*nb_output_nodes -1)) of integer;
    signal weights2_RAM: weights2_t;-- :=
--        (1795,-59,599,-1955);
    
    type results_raw_t is array (0 to (nb_examples*nb_output_nodes - 1)) of signed(11 downto 0);
    signal results_raw: results_raw_t;
    
    constant S_TDATA_length: integer := 1 --opcode
                                        --+ ceil_div((nb_features+1)*nb_hidden_nodes,2) -- weights1
                                        --+ ceil_div((nb_hidden_nodes+1)*nb_output_nodes,2) -- weights2
                                        + nb_examples*ceil_div(nb_features+1, 4); -- 4 features/labels per transfer
                                        
    type S_TDATA_t is array (0 to (S_TDATA_length - 1)) of std_logic_vector(31 downto 0);
    signal S_TDATA: S_TDATA_t;
    signal offset: natural := 0;
        
    signal cnt_sent, random_stop : integer range -2 to S_TDATA_length := 0;
    signal cnt_received : integer range 0 to (nb_examples + 1) := 0;
    signal disable_flag : boolean := true;

begin
        
    uut: main_controller
    generic map (
        nb_features, nb_hidden_nodes, nb_classes, single_ended,
        nb_examples_max, axis_data_width, examples_block_size )      -- this has to be a power of 2
    port map( 
        clk, AXIS_in, AXIS_out );
    
    sim: process
        variable T_half : time := 50 ns;
        variable tmp : integer;
    begin
    
        random_stop <= -2;

--        for i in 0 to (weights1_RAM'length - 1) loop
--            weights1_RAM(i) <= 2*i-2000;
--        end loop;
--        for i in 0 to (weights2_RAM'length - 1) loop
--            weights2_RAM(i) <= 90*i+1;
--        end loop;
--        wait for 1 ns;
        
        -- initialisation of S_TDATA
        S_TDATA(0) <= opcode;
        
        
--        for i in 0 to ((weights1_RAM'length)/2 - 1) loop
--            S_TDATA(i + 1) <= x"00" & std_logic_vector(to_signed(weights1_RAM(i*2 + 1),12)) & std_logic_vector(to_signed(weights1_RAM(i*2),12));
--        end loop;
--        if ( (weights1_RAM'length mod 2) = 1) then
--            S_TDATA((weights1_RAM'length)/2 + 1) <= x"00000" & std_logic_vector(to_signed(weights1_RAM(weights1_RAM'length - 1),12));
--        end if;
        
--        for i in 0 to ((weights2_RAM'length)/2 - 1) loop
--            S_TDATA(i + 1 + ceil_div(weights1_RAM'length,2)) <= x"00" & std_logic_vector(to_signed(weights2_RAM(i*2 + 1),12)) & std_logic_vector(to_signed(weights2_RAM(i*2),12));
--        end loop;
--        if ( (weights2_RAM'length mod 2) = 1) then
--            S_TDATA(1 + ceil_div(weights1_RAM'length,2) + (weights2_RAM'length)/2) <= x"00000" & std_logic_vector(to_signed(weights2_RAM(weights2_RAM'length - 1),12));
--        end if;
        
        --offset = ceil_div(weights1_RAM'length,2) + ceil_div(weights2_RAM'length,2);
        
        for i in 0 to (nb_examples - 1) loop
            for j in 0 to (nb_features/4 - 1) loop
                S_TDATA(1 + offset + i*ceil_div(nb_features+1,4) + j) 
                                <= std_logic_vector(to_unsigned(features_RAM(i*nb_features + j*4 + 3),8))
                                   & std_logic_vector(to_unsigned(features_RAM(i*nb_features + j*4 + 2),8))
                                   & std_logic_vector(to_unsigned(features_RAM(i*nb_features + j*4 + 1),8))
                                   & std_logic_vector(to_unsigned(features_RAM(i*nb_features + j*4 + 0),8));
            end loop;
            tmp := 1 + offset + i*ceil_div(nb_features+1,4) + (nb_features/4);
            wait for 1 ns;
            S_TDATA(tmp) <= (others => '0');
            wait for 1 ns;
            for j in 0 to ((NB_FEATURES mod 4) - 1) loop
                S_TDATA(tmp) <= S_TDATA(tmp) or std_logic_vector(to_unsigned(features_RAM(i*nb_features + (nb_features/4)*4 + j),32) sll j*8);
                wait for 1 ns;
            end loop;
            wait for 1 ns;
            S_TDATA(tmp) <= S_TDATA(tmp) or std_logic_vector(to_unsigned(labels_RAM(i),32) sll ((nb_features mod 4)*8));
        end loop;

        -- initialisation of communication lines
        AXIS_in.S_AXIS_TDATA <= (others => '0');
        AXIS_in.S_AXIS_TLAST <= '0';
        AXIS_in.S_AXIS_TVALID <= '0';
        AXIS_in.M_AXIS_TREADY <= '0';
        AXIS_in.ARESETN <= '1';
        clk <= '0'; 

        wait for T_half; clk <= '1';
        wait for T_half; clk <= '0';
        
        wait for T_half; clk <= '1';
        wait for T_half; clk <= '0';
       
        AXIS_in.S_AXIS_TVALID <= '1';
        AXIS_in.M_AXIS_TREADY <= '1';
        -- start sending
        while (true) loop
            AXIS_in.S_AXIS_TVALID <= '1'; -- default
            if (AXIS_out.M_AXIS_TVALID = '1') then
                if ( (cnt_received/2) < (ceil_div(nb_examples,2) - 1) ) then
                    results_raw(cnt_received) <= signed(AXIS_out.M_AXIS_TDATA(11 downto 0));
                    results_raw(cnt_received + 1) <= signed(AXIS_out.M_AXIS_TDATA(23 downto 12));
                    cnt_received <= cnt_received + 2;
                elsif ( (cnt_received/2) = (ceil_div(nb_examples,2) - 1)) then
                    results_raw(cnt_received) <= signed(AXIS_out.M_AXIS_TDATA(11 downto 0));
                    if ( (nb_examples mod 2) = 0) then
                        results_raw(cnt_received + 1) <= signed(AXIS_out.M_AXIS_TDATA(23 downto 12));
                    end if;
                    cnt_received <= cnt_received + 2;
                end if;
            end if;
            if (cnt_sent < S_TDATA_length) then
                AXIS_in.S_AXIS_TDATA <= S_TDATA(cnt_sent);
            else
                AXIS_in.S_AXIS_TVALID <= '0';
            end if;
            if (cnt_sent = random_stop) then
                random_stop <= 0;
                AXIS_in.S_AXIS_TVALID <= '0';
            else
                if (AXIS_out.S_AXIS_TREADY = '1') then
                    cnt_sent <= cnt_sent + 1;
                end if;
            end if;
            wait for T_half; clk <= '1';
            wait for T_half; clk <= '0';
        end loop;
        AXIS_in.S_AXIS_TVALID <= '0';
        
        while (true) loop
            wait for T_half; clk <= '1';
            wait for T_half; clk <= '0';
        end loop;
        
        wait for T_half; clk <= '1';
        wait for T_half; clk <= '0';

        wait;
    end process;

end Behavioral;
