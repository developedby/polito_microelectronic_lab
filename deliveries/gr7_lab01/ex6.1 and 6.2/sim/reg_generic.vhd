library IEEE;
use IEEE.std_logic_1164.all; 
use WORK.constants.all;

entity reg_generic is
	generic (
		NBIT: integer := numBit);
	Port (
		d_in: in std_logic_vector(NBIT-1 downto 0);
		d_out: out std_logic_vector(NBIT-1 downto 0);
		en_n: in std_logic;
		rst_n: in std_logic;
		clk: in std_logic);
end reg_generic;


architecture ARCH of reg_generic is
	signal mem: std_logic_vector(NBIT-1 downto 0);
begin
	d_out <= mem;

	process(clk)
	begin
		if rising_edge(clk) then
			if rst_n = '0' then
				mem <= (others => '0');
	  	elsif en_n = '0' then
				mem <= d_in;
			else
				mem <= mem;
			end if;
		end if;
	end process;

end ARCH;


configuration CFG_REG_GEN of reg_generic is
	for ARCH
	end for;
end CFG_REG_GEN;
