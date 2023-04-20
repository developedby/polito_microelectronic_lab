library IEEE;
use IEEE.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use WORK.constants.all;

entity ACC is
	generic (
		NBIT: integer := numBit);
	port (
		A          : in  std_logic_vector(NBIT - 1 downto 0);
		B          : in  std_logic_vector(NBIT - 1 downto 0);
		CLK        : in  std_logic;
		RST_n      : in  std_logic;
		ACCUMULATE : in  std_logic;
		ACC_EN_n   : in  std_logic;  -- optional use of the enable
		Y          : out std_logic_vector(NBIT - 1 downto 0));
end ACC;


architecture structural of ACC is
	component reg_generic is
		generic (
			NBIT: integer);
		Port (
			d_in : in  std_logic_vector(NBIT-1 downto 0);
			d_out: out std_logic_vector(NBIT-1 downto 0);
			en_n : in  std_logic;
			rst_n: in  std_logic;
			clk  : in  std_logic);
	end component;

	component MUX21_GENERIC is
		Generic (
			NBIT: integer;
			DELAY_MUX: Time);
		Port (
			A:	In	std_logic_vector(NBIT-1 downto 0);
			B:	In	std_logic_vector(NBIT-1 downto 0);
			SEL:In	std_logic;
			Y:	Out	std_logic_vector(NBIT-1 downto 0));
	end component;

	component ADD_NO_CARRY is 
		generic (NBIT: integer);
		Port (
			A:	In	std_logic_vector(NBIT-1 downto 0);
			B:	In	std_logic_vector(NBIT-1 downto 0);
			S:	Out	std_logic_vector(NBIT-1 downto 0));
	end component;

	signal add_in_b: std_logic_vector(NBIT-1 downto 0);
	signal out_add : std_logic_vector(NBIT-1 downto 0);
	signal feed_back : std_logic_vector(NBIT-1 downto 0);
begin
	Y <= feed_back;

	reg_acc: reg_generic
	generic map (NBIT)
	port map (d_in => out_add, d_out => feed_back, en_n => ACC_EN_n, rst_n => RST_n, clk => CLK);

	mux_fb: MUX21_GENERIC
	generic map (NBIT, 0 ns)
	port map (A => B, B => feed_back, SEL => ACCUMULATE, Y => add_in_b);

	adder: ADD_NO_CARRY
	generic map (NBIT)
	port map (A => A, B => add_in_b, S => out_add);
end structural;

architecture behavioral of ACC is
	signal accumulated: std_logic_vector(NBIT-1 downto 0);
begin
	Y <= accumulated;

	process(CLK) is
	begin
		if rising_edge(CLK) then
			if RST_n = '0' then
				accumulated <= (others => '0');
			elsif ACC_EN_n = '0' then
				if accumulate = '0' then
					accumulated <= (A + B);
				else
					accumulated <= (A + accumulated);
				end if;
			else
				accumulated <= accumulated;
			end if;
		end if;
	end process;
end behavioral;


configuration CFG_ACC_STRUCTURAL of ACC is
	for structural
	end for;
end CFG_ACC_STRUCTURAL;

configuration CFG_ACC_BEHAVIORAL of ACC is
	for behavioral
	end for;
end CFG_ACC_BEHAVIORAL;
