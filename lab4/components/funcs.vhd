library ieee;
use ieee.std_logic_1164.all;
use ieee.MATH_REAL.all;
use ieee.numeric_std.all;

package funcs is
  function i_log2ceil(x : natural) return natural;
  function int_to_vec(n : natural; len : natural) return std_logic_vector;
end package;

package body funcs is
  function i_log2ceil(x : natural) return natural is
  begin
    return natural(ceil(log2(real(x))));
  end function;

  function int_to_vec(n : natural; len : natural) return std_logic_vector is
  begin
    return std_logic_vector(to_unsigned(n, len));
  end function;

end funcs;