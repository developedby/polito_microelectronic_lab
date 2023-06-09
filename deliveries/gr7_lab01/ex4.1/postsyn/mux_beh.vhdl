
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_MUX21_GENERIC is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_MUX21_GENERIC;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_MUX21_GENERIC.all;

entity MUX21_GENERIC is

   port( A, B : in std_logic_vector (3 downto 0);  SEL : in std_logic;  Y : out
         std_logic_vector (3 downto 0));

end MUX21_GENERIC;

architecture SYN_BEHAVIORAL of MUX21_GENERIC is

   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U10 : MUX2_X1 port map( A => A(3), B => B(3), S => SEL, Z => Y(3));
   U11 : MUX2_X1 port map( A => A(2), B => B(2), S => SEL, Z => Y(2));
   U12 : MUX2_X1 port map( A => A(1), B => B(1), S => SEL, Z => Y(1));
   U13 : MUX2_X1 port map( A => A(0), B => B(0), S => SEL, Z => Y(0));

end SYN_BEHAVIORAL;
