library ieee;
use ieee.MATH_REAL.all;

package CONSTANTS is
   constant IVDELAY : time := 0.1 ns;
   constant NDDELAY : time := 0.2 ns;
   constant NDDELAYRISE : time := 0.6 ns;
   constant NDDELAYFALL : time := 0.4 ns;
   constant NRDELAY : time := 0.2 ns;
   constant DRCAS : time := 1 ns;
   constant DRCAC : time := 2 ns;
   constant TP_MUX : time := 0.5 ns; 	
   constant NumBit : integer := 4;
   constant NumBitBlock : integer := 4;
   constant NumBitTotal : integer := 32;

   function i_max (a: integer; b: integer) return integer;
   function i_min (a: integer; b: integer) return integer;
   function i_if (cond: boolean; t: integer; f: integer) return integer;
   function i_log2ceil (x: integer) return integer;
end CONSTANTS;

package body CONSTANTS is

   function i_max (a: integer; b: integer) return integer is
   begin
      if a >= b then
         return a;
      else
         return b;
      end if;
   end function;

   function i_min (a: integer; b: integer) return integer is
   begin
      if a < b then
         return a;
      else
         return b;
      end if;
   end function;

   function i_log2ceil (x: integer) return integer is
   begin
      return integer(ceil(log2(real(x))));
   end function;

   function i_if (cond: boolean; t: integer; f: integer) return integer is
   begin
      if cond then return t; else return f; end if;
   end function;

end CONSTANTS;