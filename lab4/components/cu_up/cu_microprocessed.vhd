library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.myTypes_up.all;
use work.funcs.all;

entity cu_microprocessed is
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

architecture up of cu_microprocessed is
  -- The number of entries of our microcode output table (including paddings)
  constant UC_MEM_SIZE : natural := (16 + 16) * 4;

  -- The type of the output control word, 1 bit for each output
  subtype control_word_t is std_logic_vector(12 downto 0);

  -- The type of our output table, a big array of control words.
  type microcode_array is array (0 to UC_MEM_SIZE - 1) of control_word_t;

  -- The microcode table of outputs.
  --  Instructions 0 to 13*4 are I-type and are addresses by OPCODE*4
  --  Instructions 16*4 to 19*4 are R-type and are addressed by (16+FUNC)*4
  --  Since we only need 3 instructions per input every 4th instruction is a NOP,
  -- to make sure that the start of every instruction is 4-aligned.
  --  The logic behind these values is explained in the hardwired control unit file,
  -- this is exactly the same except only 1 stage per cycle.
  constant microcode : microcode_array := (
    -- 0: ADDI1 RA,RB,INP1
    "011" & "00000" & "00000",
    "000" & "11011" & "00000",
    "000" & "00000" & "00101",
    "0000000000000",
    -- 1: SUBI1 RA,RB,INP1
    "011" & "00000" & "00000",
    "000" & "11011" & "00000",
    "000" & "00000" & "00101",
    "0000000000000",
    -- 2: ANDI1 RA,RB,INP1
    "011" & "00000" & "00000",
    "000" & "11101" & "00000",
    "000" & "00000" & "00101",
    "0000000000000",
    -- 3: ORI1  RS,RD,INP1
    "011" & "00000" & "00000",
    "000" & "11111" & "00000",
    "000" & "00000" & "00101",
    "0000000000000",
    -- 4: ADDI2 RS,RD,INP2
    "101" & "00000" & "00000",
    "000" & "00001" & "00000",
    "000" & "00000" & "00101",
    "0000000000000",
    -- 5: SUBI2 RS,RD,INP2
    "101" & "00000" & "00000",
    "000" & "00011" & "00000",
    "000" & "00000" & "00101",
    "0000000000000",
    -- 6: ANDI2 RS,RD,INP2
    "101" & "00000" & "00000",
    "000" & "00101" & "00000",
    "000" & "00000" & "00101",
    "0000000000000",
    -- 7: ORI2  RS,RD,INP2
    "101" & "00000" & "00000",
    "000" & "00111" & "00000",
    "000" & "00000" & "00101",
    "0000000000000",
    -- 8: MOV RS,RD
    "101" & "00000" & "00000",
    "000" & "00001" & "00000",
    "000" & "00000" & "00101",
    "0000000000000",
    -- 9: S_REG1 RD,INP1
    "001" & "00000" & "00000",
    "000" & "11001" & "00000",
    "000" & "00000" & "00101",
    "0000000000000",
    -- 10: S_REG2 RD,INP2
    "001" & "00000" & "00000",
    "000" & "00001" & "00000",
    "000" & "00000" & "00101",
    "0000000000000",
    -- 11: S_MEM RB,RS,INP2
    "111" & "00000" & "00000",
    "000" & "00001" & "00000",
    "000" & "00000" & "01100",
    "0000000000000",
    -- 12: L_MEM1 RB,RD,INP1
    "011" & "00000" & "00000",
    "000" & "11001" & "00000",
    "000" & "00000" & "10111",
    "0000000000000",
    -- 13: L_MEM2 RB,RD,INP2
    "101" & "00000" & "00000",
    "000" & "00001" & "00000",
    "000" & "00000" & "10111",
    "0000000000000",
    -- 14, 15: NOP
    "0000000000000", "0000000000000", "0000000000000", "0000000000000",
    "0000000000000", "0000000000000", "0000000000000", "0000000000000",
    -- 16.0: ADD RS1,RS2,RD
    "111" & "00000" & "00000",
    "000" & "01001" & "00000",
    "000" & "00000" & "00101",
    "0000000000000",
    -- 16.1: SUB RS1,RS2,RD
    "111" & "00000" & "00000",
    "000" & "01011" & "00000",
    "000" & "00000" & "00101",
    "0000000000000",
    -- 16.2: AND RS1,RS2,RD
    "111" & "00000" & "00000",
    "000" & "01101" & "00000",
    "000" & "00000" & "00101",
    "0000000000000",
    -- 16.3: OR  RS1,RS2,RD
    "111" & "00000" & "00000",
    "000" & "01111" & "00000",
    "000" & "00000" & "00101",
    "0000000000000",
    -- Invalid micro opcodes (20 to 32 * 4) are all NOPs
    "0000000000000", "0000000000000", "0000000000000", "0000000000000",
    "0000000000000", "0000000000000", "0000000000000", "0000000000000",
    "0000000000000", "0000000000000", "0000000000000", "0000000000000",
    "0000000000000", "0000000000000", "0000000000000", "0000000000000",
    "0000000000000", "0000000000000", "0000000000000", "0000000000000",
    "0000000000000", "0000000000000", "0000000000000", "0000000000000",
    "0000000000000", "0000000000000", "0000000000000", "0000000000000",
    "0000000000000", "0000000000000", "0000000000000", "0000000000000",
    "0000000000000", "0000000000000", "0000000000000", "0000000000000",
    "0000000000000", "0000000000000", "0000000000000", "0000000000000",
    "0000000000000", "0000000000000", "0000000000000", "0000000000000",
    "0000000000000", "0000000000000", "0000000000000", "0000000000000"
  );

  constant addr_width : natural := i_log2ceil(UC_MEM_SIZE);

  -- A register to hold the address of the microcode memory being read
  signal instruction_ptr : std_logic_vector(addr_width - 1 downto 0);
  -- The output control word
  signal control_word : control_word_t;
  -- A cycle counter to know when to read next input.
  signal cycle_counter : unsigned(1 downto 0);

begin
  -- Separate the outputs from the control word
  -- Cycle 1 outputs
  rf1 <= control_word(12);
  rf2 <= control_word(11);
  en1 <= control_word(10);
  -- Cycle 2 outputs
  s1   <= control_word(9);
  s2   <= control_word(8);
  alu1 <= control_word(7);
  alu2 <= control_word(6);
  en2  <= control_word(5);
  -- Cycle 3 outputs
  rm  <= control_word(4);
  wm  <= control_word(3);
  en3 <= control_word(2);
  s3  <= control_word(1);
  wf1 <= control_word(0);

  -- The control word directly reads the microcode memory according to
  -- the current value of the instruction pointer.
  -- Since the instruction pointer is synchronous, we can have an async read here.
  control_word <= microcode(to_integer(unsigned(instruction_ptr)));

  -- Every 3 cycles we fetch a new instruction.
  -- In the other 2 cycles we increment the instruction pointer
  cycle_proc : process (clk)
  begin
    if rising_edge(clk) then
      if rst = '1' then
        -- Reset
        cycle_counter   <= "10";
        instruction_ptr <= (others => '1');
      else
        -- Normal cycle
        if cycle_counter = "10" then
          -- On cycle 2 (so every 3), read new input
          -- and use it as new microcode address.
          cycle_counter <= "00";

          if opcode(r_bit) = '0' then
            -- I-type instructions use OPCODE as the microcode address
            instruction_ptr(addr_width - 1)          <= '0'; -- R-type relocation is 0
            instruction_ptr(addr_width - 2 downto 2) <= opcode(3 downto 0); -- opcode determines address
            instruction_ptr(1 downto 0)              <= "00"; -- Last 2 bits are for the 3 cycles of microcode
          else
            -- R-type instructions use FUNC as the microcode address (+ 16)
            instruction_ptr(addr_width - 1)          <= '1'; -- R-type relocation is 1
            instruction_ptr(addr_width - 2 downto 2) <= FUNC(3 downto 0); -- func determines address
            instruction_ptr(1 downto 0)              <= "00"; -- The 3 micro instructions per input
          end if;
        else
          -- Go to next cycle for this input, increment instruction pointer by 1
          cycle_counter   <= cycle_counter + 1;
          instruction_ptr <= std_logic_vector(unsigned(instruction_ptr) + 1);
        end if;
      end if;
    end if;
  end process;
end architecture;