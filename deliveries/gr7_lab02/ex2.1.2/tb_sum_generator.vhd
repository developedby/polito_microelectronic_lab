library ieee; 
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity TBSUM_GENERATOR is 
end TBSUM_GENERATOR; 

architecture TEST of TBSUM_GENERATOR is

  component LFSR16 
    port (CLK, RESET, LD, EN : in std_logic; 
          DIN : in std_logic_vector(15 downto 0); 
          PRN : out std_logic_vector(15 downto 0); 
          ZERO_D : out std_logic);
  end component;

	constant NBIT_PER_BLOCK : natural := 4;
	constant NBLOCKS : natural := 2;


	component SUM_GENERATOR is
		generic (
			NBIT_PER_BLOCK: integer;
			NBLOCKS: integer);
		port (
			A:	in	std_logic_vector(NBIT_PER_BLOCK*NBLOCKS-1 downto 0);
			B:	in	std_logic_vector(NBIT_PER_BLOCK*NBLOCKS-1 downto 0);
			Ci:	in	std_logic_vector(NBLOCKS-1 downto 0);
			S:	out	std_logic_vector(NBIT_PER_BLOCK*NBLOCKS-1 downto 0));
	end component;

	signal clk, rst, ld, en, zero : std_logic;
	signal start, rand: std_logic_vector(15 downto 0);
	signal sum : std_logic_vector(NBLOCKS*NBIT_PER_BLOCK - 1 downto 0);
	signal carry: std_logic_vector(NBLOCKS-1 downto 0);

begin
	
	clk_proc: process
	begin
		clk <= '0';
		wait for 1 ns; 
		clk <= '1';
		wait for 1 ns;
	end process;

	carry_proc: process
	begin
		carry <= (others => '0');
		wait for 1 ns;
		carry <= (others => '1');
		wait for 1 ns; 
	end process;

	start <= "0010101101100010";
	rst <= '1', '0' after 3 ns;
	en <= '0', '1' after 5 ns;
	ld <= '0', '1' after 3 ns, '0' after 5 ns;

	lfsr_ab: LFSR16
	port map (clk, rst, ld, en, start, rand, zero);
	
	uut: SUM_GENERATOR
	generic map (NBIT_PER_BLOCK, NBLOCKS)
	port map (rand(15 downto 8), rand(7 downto 0), carry, sum);

end TEST;
