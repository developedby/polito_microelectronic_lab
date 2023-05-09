library ieee;
use ieee.MATH_REAL.all;

package aux is
  function i_log2ceil (x: natural) return natural;
  function wrf_window_len(N: natural; M: natural) return natural;
end package;

package body aux is
  function i_log2ceil (x: natural) return natural is
  begin
     return natural(ceil(log2(real(x))));
  end function;

  -- The size of each window
  function wrf_window_len(N: natural; M: natural) return natural is
  begin
    return (3*N) + M;
  end function;

end aux;