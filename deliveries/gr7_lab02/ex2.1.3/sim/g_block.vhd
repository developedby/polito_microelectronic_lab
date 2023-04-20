library ieee; 
use ieee.std_logic_1164.all; 
use WORK.constants.all;

entity g_block is
  port (
    Gik : in  std_logic;
    Pik : in  std_logic;
    Gkj : in  std_logic;
    Gij : out std_logic);
end entity;

architecture behavioural of g_block is
begin
  Gij <= Gik or (Pik and Gkj);
end architecture;
