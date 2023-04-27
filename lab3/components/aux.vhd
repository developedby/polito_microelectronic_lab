library ieee;
use ieee.MATH_REAL.all;

package aux is
  function i_log2ceil (x: integer) return integer;
end package;

package body aux is
  function i_log2ceil (x: integer) return integer is
  begin
     return integer(ceil(log2(real(x))));
  end function;
end aux;