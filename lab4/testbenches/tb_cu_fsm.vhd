library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use work.myTypes_fsm.all;

-- This testbench tests the Microprocessed Control Unit isolated.
--
-- It doesn't verify that it correctly controls the CPU,
-- just that it outputs the expected control signal with expected timing. 
--
-- This control unit is for a unpipelined processor where the instructions
-- are fetched each 3 clock cyces by some other circuit that is not included here.
entity tb_cu_fsm is
end tb_cu_fsm;

architecture TEST of tb_cu_fsm is
  component cu_fsm
    port (
      clk : in std_logic;
      rst : in std_logic;

      -- Input word
      opcode : in std_logic_vector(OP_CODE_SIZE - 1 downto 0);
      func   : in std_logic_vector(FUNC_SIZE - 1 downto 0);

      -- Stage 1 outputs
      rf1 : out std_logic; -- Register file read Enable 1
      rf2 : out std_logic; -- Register file read Enable 1
      wf1 : out std_logic; -- Register file write Enable (sent only in 3rd cycle)
      en1 : out std_logic; -- Pipe registers stage 1 Enable
      -- Stage 2 outputs
      s1   : out std_logic; -- ALU input 1 source select (0=RF1, 1=INP1)
      s2   : out std_logic; -- ALU input 2 source select (0=INP2, 1=RF2)
      alu1 : out std_logic; -- ALU function select bit 1
      alu2 : out std_logic; -- ALU function select bit 2
      en2  : out std_logic; -- Pipe registers stage 2 Enable
      -- Stage 3 outputs
      rm  : out std_logic; -- Memory read Enable
      wm  : out std_logic; -- Memory write Enable
      en3 : out std_logic; -- Pipe registers stage 3 and memory Enable
      s3  : out std_logic -- Output source select (0=ALU, 1=MemOut)
    );
  end component;

  -- Input signals of the DUT
  signal Clock       : std_logic := '0';
  signal Reset       : std_logic := '1';
  signal cu_opcode_i : std_logic_vector(OP_CODE_SIZE - 1 downto 0) := (others => '1');
  signal cu_func_i   : std_logic_vector(FUNC_SIZE - 1 downto 0) := (others => '0');
  -- Output signals of the DUT
  signal RF1_i, RF2_i, WF1_i, EN1_i        : std_logic; -- Stage 1
  signal S1_i, S2_i, ALU1_i, ALU2_i, EN2_i : std_logic; -- Stage 2
  signal RM_i, WM_i, EN3_i, S3_i           : std_logic; -- Stage 3

  -- Clock period for this testbench
  constant tclk : time := 2 ns;
begin
  -- Instantiate the control unit
  dut : cu_fsm
  port map(
    -- INPUTS
    OPCODE => cu_opcode_i,
    FUNC   => cu_func_i,
    Clk    => Clock,
    Rst    => Reset,
    -- OUTPUTS
    EN1  => EN1_i,
    RF1  => RF1_i,
    RF2  => RF2_i,
    WF1  => WF1_i,
    EN2  => EN2_i,
    S1   => S1_i,
    S2   => S2_i,
    ALU1 => ALU1_i,
    ALU2 => ALU2_i,
    EN3  => EN3_i,
    RM   => RM_i,
    WM   => WM_i,
    S3   => S3_i
  );

  -- Clock oscilatting with 2ns period
  Clock <= not Clock after tclk/2;
  -- Reset at the start
  Reset <= '1', '0' after 3 * tclk;

  -- Send each of the possible instruction, one per 3 clock cycles.
  -- We expect to see only outputs for the first cycle in the first cycle and so on
  CONTROL : process
  begin
    -- Wait for end of reset
    wait for 3.25 * tclk;

    -- First we send each I-type instruction once
    -- For all I-types FUNC is not used, so we send 0
    cu_func_i <= (others => '0');

    -- ADDI1 RA, RB, INP1
    cu_opcode_i <= ITYPE_ADDI1;
    wait for 3 * tclk;

    -- SUBI1 RA, RB, INP1
    cu_opcode_i <= ITYPE_SUBI1;
    wait for 3 * tclk;

    -- ANDI1 RA, RB, INP1
    cu_opcode_i <= ITYPE_ANDI1;
    wait for 3 * tclk;

    -- ORI1 RA, RB, INP1
    cu_opcode_i <= ITYPE_ORI1;
    wait for 3 * tclk;

    -- ADDI2 RA, RB, INP1
    cu_opcode_i <= ITYPE_ADDI2;
    wait for 3 * tclk;

    -- SUBI2 RA, RB, INP1
    cu_opcode_i <= ITYPE_SUBI2;
    wait for 3 * tclk;

    -- ANDI2 RA, RB, INP1
    cu_opcode_i <= ITYPE_ANDI2;
    wait for 3 * tclk;

    -- ORI2 RA, RB, INP1
    cu_opcode_i <= ITYPE_ORI2;
    wait for 3 * tclk;

    -- MOV RA, RB
    cu_opcode_i <= ITYPE_MOV;
    wait for 3 * tclk;

    -- S_REG1 RA, RB, INP1
    cu_opcode_i <= ITYPE_SREG1;
    wait for 3 * tclk;

    -- S_REG2, RA, RB, INP2
    cu_opcode_i <= ITYPE_SREG2;
    wait for 3 * tclk;

    -- S_MEM RA, RB, INP2
    cu_opcode_i <= ITYPE_SMEM;
    wait for 3 * tclk;

    -- L_MEM1, RA, RB, INP1
    cu_opcode_i <= ITYPE_LMEM1;
    wait for 3 * tclk;

    -- L_MEM2, RA, RB, INP2
    cu_opcode_i <= ITYPE_LMEM2;
    wait for 3 * tclk;

    -- Then we send each R-type once
    -- They all share the same OPCODE, and differ only in FUNC
    cu_opcode_i <= RTYPE;

    -- ADD RA, RB, RC
    cu_func_i <= RTYPE_ADD;
    wait for 3 * tclk;

    -- SUB RA, RB, RC
    cu_func_i <= RTYPE_SUB;
    wait for 3 * tclk;

    -- AND RA, RB, RC
    cu_func_i <= RTYPE_AND;
    wait for 3 * tclk;

    -- OR, RA, RB, RC
    cu_func_i <= RTYPE_OR;
    wait for 3 * tclk;

    -- Remain at a NOP forever
    cu_opcode_i <= (others => '1');
    cu_func_i <= (others => '1');
    wait;
  end process;

end architecture;