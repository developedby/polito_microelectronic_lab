library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;
use ieee.numeric_std.all;
use WORK.constants.all;
use WORK.alu_type.all;

entity ALU is
  generic (N : integer := numBit);
  port 	 ( FUNC: IN TYPE_OP;
           DATA1, DATA2: IN std_logic_vector(N-1 downto 0);
           OUTALU: OUT std_logic_vector(N-1 downto 0));
end ALU;

architecture BEHAVIOR of ALU is
  -- from http://computer-programming-forum.com/42-vhdl/2932f89b711ebd60.htm
  function log2ceil (n : integer) return integer is
    variable m, p : integer;
  begin
    m := 0;
    p := 1;
    for i in 0 to n loop
      if p < n then
        m := m + 1;
        p := p * 2;
      end if;
    end loop;
    return m;
  end log2ceil;   
    
  constant tmp_num : integer := log2ceil(N);
  type barrel_sig_type is array(1 to tmp_num) of std_logic_vector(N-1 downto 0);
  signal barrel_tmp: barrel_sig_type;
  signal barrel_in : barrel_sig_type;
      
begin

P_ALU: process (FUNC, DATA1, DATA2)
  begin
    case FUNC is
      when ADD     => OUTALU <= DATA1 + DATA2; 
      when SUB 	   => OUTALU <= DATA1 - DATA2;
      when MULT 	 => OUTALU <= DATA1(N/2 - 1 downto 0) * DATA2(N/2 - 1 downto 0);
      when BITAND  => OUTALU <= DATA1 and DATA2; -- bitwise operations
      when BITOR 	 => OUTALU <= DATA1 or DATA2;
      when BITXOR  => OUTALU <= DATA1 xor DATA2;
      -- Shift/Rotate 1 bit
      when FUNCLSL => OUTALU <= DATA1(N-2 downto 0) & '0';
      when FUNCLSR => OUTALU <= '0' & DATA1(N-1 downto 1);
      when FUNCRL => OUTALU <= DATA1(N-2 downto 0) & DATA1(N-1);
      when FUNCRR => OUTALU <= DATA1(0) & DATA1(N-1 downto 1);
      -- Implemented a Barrel shifter by cascading combinational steps that each shift 2**step
      -- Only ceil(log2(N)) bits are read from DATA2
      -- Don't know why it doesn't work
      -- when FUNCLSL =>
      --   for ii in 1 to tmp_num loop
      --     if ii = 1 then
      --       barrel_in(ii) <= DATA1;
      --     else
      --       barrel_in(ii) <= barrel_tmp(ii-1);
      --     end if;
      --     if DATA2(ii-1) = '1' then
      --       barrel_tmp(ii)(N-1 downto 2**ii) <= barrel_in(ii)(N-1 - (2**ii) downto 0);
      --       barrel_tmp(ii)((2**ii) - 1 downto 0) <= (others => '0');
      --     else
      --       barrel_tmp(ii) <= barrel_in(ii);
      --     end if;
      --   end loop;
      --   OUTALU <= barrel_tmp(tmp_num);
      -- when FUNCLSR =>
      --   for ii in 1 to tmp_num loop
      --     if ii = 1 then
      --       barrel_in(ii) <= DATA1;
      --     else
      --       barrel_in(ii) <= barrel_tmp(ii-1);
      --     end if;
      --     if DATA2(ii-1) = '1' then
      --       barrel_tmp(ii)(N-1 - (2**ii) downto 0) <= barrel_in(ii)(N-1 downto 2**ii);
      --       barrel_tmp(ii)(N-1 downto N-1 - (2**ii) + 1) <= (others => '0');
      --     else
      --       barrel_tmp(ii) <= barrel_in(ii);
      --     end if;
      --   end loop;
      --   OUTALU <= barrel_tmp(tmp_num);
      -- when FUNCRL  =>
      --   for ii in 1 to tmp_num loop
      --     if ii = 1 then
      --       barrel_in(ii) <= DATA1;
      --     else
      --       barrel_in(ii) <= barrel_tmp(ii-1);
      --     end if;
      --     if DATA2(ii-1) = '1' then
      --       barrel_tmp(ii)(N-1 downto 2**ii) <= barrel_in(ii)(N-1 - (2**ii) downto 0);
      --       barrel_tmp(ii)((2**ii) - 1 downto 0) <= barrel_in(ii)(N-1 downto N-1 - (2**ii) + 1);
      --     else
      --       barrel_tmp(ii) <= barrel_in(ii);
      --     end if;
      --   end loop;
      --   OUTALU <= barrel_tmp(tmp_num);
      -- when FUNCRR  =>
      --   for ii in 1 to tmp_num loop
      --     if ii = 1 then
      --       barrel_in(ii) <= DATA1;
      --     else
      --       barrel_in(ii) <= barrel_tmp(ii-1);
      --     end if;
      --     if DATA2(ii-1) = '1' then
      --       barrel_tmp(ii)(N-1 - (2**ii) downto 0) <= barrel_in(ii)(N-1 downto 2**ii);
      --       barrel_tmp(ii)(N-1 downto N-1 - (2**ii) + 1) <= barrel_in(ii)((2**ii) - 1 downto 0);
      --     else
      --       barrel_tmp(ii) <= barrel_in(ii);
      --     end if;
      --   end loop;
      --   OUTALU <= barrel_tmp(tmp_num);
      when others => null;
    end case; 
  end process P_ALU;

end BEHAVIOR;

configuration CFG_ALU_BEHAVIORAL of ALU is
  for BEHAVIOR
  end for;
end CFG_ALU_BEHAVIORAL;

