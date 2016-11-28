library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

package utility is

    type AXIS_out_t is record
        M_AXIS_TDATA :  std_logic_vector(31 downto 0);
        M_AXIS_TLAST :  std_logic;
        M_AXIS_TVALID : std_logic;
        S_AXIS_TREADY : std_logic;
    end record;
    
    type AXIS_in_t is record
        S_AXIS_TDATA :  std_logic_vector(31 downto 0);
        S_AXIS_TLAST :  std_logic;
        S_AXIS_TVALID : std_logic;
        M_AXIS_TREADY : std_logic;
        ARESETN	:       std_logic;
    end record;
    
    type axis_command_t is (axis_wait, axis_read_opcode, axis_read_weights, axis_read_examples, axis_write_raw, axis_write_pred, axis_write_cost);
    type session_t is (none, train, predict);
    
    -- Feedforward types
    type feedforward_out_t is array (natural range <>) of signed(11 downto 0); 
    
    -- Backpropagation types
    type activ1_out_t is array (natural range <>) of signed(11 downto 0);
    
    function max(L, R: INTEGER) return INTEGER;
    function min(L, R: INTEGER) return INTEGER;
    function log2(val:INTEGER) return natural;
    function ceil_div(NUM, DEN: INTEGER) return INTEGER;
    function sel(Cond: BOOLEAN; If_True, If_False: integer) return integer;

end utility;

package body utility is

    function max(L,R:INTEGER) return INTEGER is
    begin
        if L > R then
            return L;
        else
            return R;
        end if;
    end;
    
    function min(L,R:INTEGER) return INTEGER is
    begin
        if L < R then
            return L;
        else
            return R;
        end if;
    end;
    
    function log2(val:INTEGER) return natural is
        variable res:natural;
    begin
        for i in 0 to 31 loop
            if(val<=(2**i))then
                res:=i;
                exit; 
            end if;
        end loop;
        return res;
    end function Log2;
    
    function ceil_div(NUM, DEN: INTEGER) return INTEGER is
        variable res:natural;
    begin
        for i in 0 to 255 loop
            if(NUM<=(DEN*i))then
                res:=i;
                exit; 
            end if;
        end loop;
        return res;
    end function ceil_div;
  
  ----------------------------------------------------------------
  -- Functions to select one or the other based on a boolean (or
  -- std_ulogic or std_logic) input.
  -- Analogous to the C statement x = Cond ? a : b
  ----------------------------------------------------------------
    function sel(Cond: BOOLEAN; If_True, If_False: integer) return integer is
    begin
        if (Cond = TRUE) then
            return(If_True);
        else
            return(If_False);
        end if;
    end function sel; 

end utility;