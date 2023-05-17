library ieee;
use ieee.std_logic_1164.all;
use work.myTypes_hw.all;

entity cu_hardwired is
  port (
    clk : in std_logic;
    rst : in std_logic;

    -- Input word
    opcode : in std_logic_vector(OP_CODE_SIZE - 1 downto 0);
    func   : in std_logic_vector(FUNC_SIZE - 1 downto 0);

    -- Stage 1 outputs
    rf1 : out std_logic; -- Register file read Enable 1
    rf2 : out std_logic; -- Register file read Enable 1
    wf1 : out std_logic; -- Register file write Enable
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
end entity;

-- This architecture generates the outputs based on a LUT.
-- Since this is for a pipelined cpu architecture, we receive one input word each clock.
-- To be able to deliver the outputs for the pipline stages with a stateless hardwired architecture
-- we delay some of the outputs so that they align with the required timings.
-- This is a very simple solution but doesn't easily allow for the output of one stage to affect another.
architecture lut of cu_hardwired is
  -- The output word that is generated at every clock by a LUT;
  -- The out bits are in the following order:
  --  rf1, rf2, en1; s1, s2, alu1, alu2, en2; rm, wm, en3, s3, wf1
  signal output_word : std_logic_vector(12 downto 0);
  -- Write all outputs to a register to hold the sampled value
  -- rf1, rf2, en1; s1, s2, alu1, alu2, en2; rm, wm, en3, s3, wf1
  signal delay0_word : std_logic_vector(12 downto 0);
  -- The outputs that are delayed by at least 1 clock
  -- s1, s2, alu1, alu2, en2; rm, wm, en3, s3, wf1
  signal delay1_word : std_logic_vector(9 downto 0);
  -- The outputs that are delayed by 2 clocks
  -- rm, wm, en3, s3, wf1
  signal delay2_word : std_logic_vector(4 downto 0);
begin
  rf1 <= delay0_word(12);
  rf2 <= delay0_word(11);
  en1 <= delay0_word(10);

  s1 <= delay1_word(9);
  s2   <= delay1_word(8);
  alu1 <= delay1_word(7);
  alu2 <= delay1_word(6);
  en2  <= delay1_word(5);

  rm  <= delay2_word(4);
  wm  <= delay2_word(3);
  en3 <= delay2_word(2);
  s3  <= delay2_word(1);
  wf1 <= delay2_word(0);

  out_delay_proc : process (clk)
  begin
    if rising_edge(clk) then
      if rst = '1' then
        delay0_word <= (others => '0');
        delay1_word <= (others => '0');
        delay2_word <= (others => '0');
      else
        delay0_word <= output_word;
        delay1_word <= delay0_word(9 downto 0);
        delay2_word <= delay1_word(4 downto 0);
      end if;
    end if;
  end process;

  output_word <=
    -- R-type
    -- Read both registers, combine them and write back
    "111" & "01001" & "00101" when opcode = RTYPE and func = RTYPE_ADD else
    "111" & "01011" & "00101" when opcode = RTYPE and func = RTYPE_SUB else
    "111" & "01101" & "00101" when opcode = RTYPE and func = RTYPE_AND else
    "111" & "01111" & "00101" when opcode = RTYPE and func = RTYPE_OR else
    -- I-type arith inp1
    -- Read reg2, combine it with inp1, write back
    "011" & "11001" & "00101" when opcode = ITYPE_ADDI1 else
    "011" & "11011" & "00101" when opcode = ITYPE_SUBI1 else
    "011" & "11101" & "00101" when opcode = ITYPE_ANDI1 else
    "011" & "11111" & "00101" when opcode = ITYPE_ORI1 else
    -- I-type arith inp2
    -- Read reg1, combine it with inp2, write back
    "101" & "00001" & "00101" when opcode = ITYPE_ADDI2 else
    "101" & "00011" & "00101" when opcode = ITYPE_SUBI2 else
    "101" & "00101" & "00101" when opcode = ITYPE_ANDI2 else
    "101" & "00111" & "00101" when opcode = ITYPE_ORI2 else
    -- I-type Regs
    -- Mov: Read reg1, add with inp2 (hsa to be 0), write back
    "101" & "00001" & "00101" when opcode = ITYPE_MOV else
    -- Assuming that disabling a read port outputs 0
    -- S_REG: Don't read any regs, add inpX to disabled reg, write back
    "001" & "11001" & "00101" when opcode = ITYPE_SREG1 else
    "001" & "00001" & "00101" when opcode = ITYPE_SREG2 else
    -- I-type Mem
    -- S_MEM: Read both registers, R1 adds with INP2 to become write addr of Mem,
    -- R2 is used as Mem data, don't write back, output the mem write addr
    "111" & "00001" & "01100" when opcode = ITYPE_SMEM else
    -- On LMEM we want to output the read value
    -- L_MEM: Read one of the regs, add it to the other INP.
    -- This becomes read addr of Mem, write back and output this value.which is 
    "011" & "11001" & "10111" when opcode = ITYPE_LMEM1 else
    "101" & "00001" & "10111" when opcode = ITYPE_LMEM2 else
    (others => '0');

end architecture;
