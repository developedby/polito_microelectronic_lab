library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package myTypes_fsm is

-- Control unit input sizes
    constant OP_CODE_SIZE : natural :=  6;  -- OPCODE field size
    constant FUNC_SIZE    : natural :=  11; -- FUNC field size

-- RS  : Source register
-- RD  : Destination register
-- RB  : Base address register
-- INP1: Immediate to input 1
-- INP2: Immediate to input 2

-- R-Type instruction -> FUNC field
    constant RTYPE_ADD : std_logic_vector(FUNC_SIZE - 1 downto 0) :=  std_logic_vector(to_unsigned(0, FUNC_SIZE));    -- ADD RS1,RS2,RD
    constant RTYPE_SUB : std_logic_vector(FUNC_SIZE - 1 downto 0) :=  std_logic_vector(to_unsigned(1, FUNC_SIZE));    -- SUB RS1,RS2,RD
    constant RTYPE_AND : std_logic_vector(FUNC_SIZE - 1 downto 0) :=  std_logic_vector(to_unsigned(2, FUNC_SIZE));    -- AND RS1,RS2,RD
    constant RTYPE_OR  : std_logic_vector(FUNC_SIZE - 1 downto 0) :=  std_logic_vector(to_unsigned(3, FUNC_SIZE));    -- OR  RS1,RS2,RD

-- R-Type instruction -> OPCODE field
    constant RTYPE       : std_logic_vector(OP_CODE_SIZE - 1 downto 0) :=  std_logic_vector(to_unsigned(0, OP_CODE_SIZE));  -- for ADD, SUB, AND, OR register-to-register operation
-- I-Type instruction -> OPCODE field
    constant ITYPE_ADDI1 : std_logic_vector(OP_CODE_SIZE - 1 downto 0) :=  std_logic_vector(to_unsigned(1, OP_CODE_SIZE));  -- ADDI1 RS,RD,INP1
    constant ITYPE_SUBI1 : std_logic_vector(OP_CODE_SIZE - 1 downto 0) :=  std_logic_vector(to_unsigned(2, OP_CODE_SIZE));  -- SUBI1 RS,RD,INP1
    constant ITYPE_ANDI1 : std_logic_vector(OP_CODE_SIZE - 1 downto 0) :=  std_logic_vector(to_unsigned(3, OP_CODE_SIZE));  -- ANDI1 RS,RD,INP1
    constant ITYPE_ORI1  : std_logic_vector(OP_CODE_SIZE - 1 downto 0) :=  std_logic_vector(to_unsigned(4, OP_CODE_SIZE));  -- ORI1  RS,RD,INP1
    constant ITYPE_ADDI2 : std_logic_vector(OP_CODE_SIZE - 1 downto 0) :=  std_logic_vector(to_unsigned(5, OP_CODE_SIZE));  -- ADDI2 RS,RD,INP2
    constant ITYPE_SUBI2 : std_logic_vector(OP_CODE_SIZE - 1 downto 0) :=  std_logic_vector(to_unsigned(6, OP_CODE_SIZE));  -- SUBI2 RS,RD,INP2
    constant ITYPE_ANDI2 : std_logic_vector(OP_CODE_SIZE - 1 downto 0) :=  std_logic_vector(to_unsigned(7, OP_CODE_SIZE));  -- ANDI2 RS,RD,INP2
    constant ITYPE_ORI2  : std_logic_vector(OP_CODE_SIZE - 1 downto 0) :=  std_logic_vector(to_unsigned(8, OP_CODE_SIZE));  -- ORI2  RS,RD,INP2
    constant ITYPE_MOV   : std_logic_vector(OP_CODE_SIZE - 1 downto 0) :=  std_logic_vector(to_unsigned(9, OP_CODE_SIZE));  -- MOV RS,RD
    constant ITYPE_SREG1 : std_logic_vector(OP_CODE_SIZE - 1 downto 0) :=  std_logic_vector(to_unsigned(10, OP_CODE_SIZE)); -- S_REG1 RD,INP1
    constant ITYPE_SREG2 : std_logic_vector(OP_CODE_SIZE - 1 downto 0) :=  std_logic_vector(to_unsigned(11, OP_CODE_SIZE)); -- S_REG2 RD,INP2
    constant ITYPE_SMEM  : std_logic_vector(OP_CODE_SIZE - 1 downto 0) :=  std_logic_vector(to_unsigned(12, OP_CODE_SIZE)); -- S_MEM RB,RS,INP2
    constant ITYPE_LMEM1 : std_logic_vector(OP_CODE_SIZE - 1 downto 0) :=  std_logic_vector(to_unsigned(13, OP_CODE_SIZE)); -- L_MEM1 RB,RD,INP1
    constant ITYPE_LMEM2 : std_logic_vector(OP_CODE_SIZE - 1 downto 0) :=  std_logic_vector(to_unsigned(14, OP_CODE_SIZE)); -- L_MEM2 RB,RD,INP2
end myTypes_fsm;

