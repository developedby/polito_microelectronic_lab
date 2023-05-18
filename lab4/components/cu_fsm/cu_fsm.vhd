library ieee;
use ieee.std_logic_1164.all;
use work.myTypes_fsm.all;

entity cu_fsm is
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

architecture behavioral of cu_fsm is

  -- The out bits are in the following order:
  --  rf1, rf2, en1; s1, s2, alu1, alu2, en2; rm, wm, en3, s3, wf1
  signal output_word : std_logic_vector(12 downto 0);

  type state_type is (
    restart,
    decode,
    execute,
    writeback
  );
  signal current_state, next_state : state_type;

begin
  rf1 <= output_word(12);
  rf2 <= output_word(11);
  en1 <= output_word(10);

  s1   <= output_word(9);
  s2   <= output_word(8);
  alu1 <= output_word(7);
  alu2 <= output_word(6);
  en2  <= output_word(5);

  rm  <= output_word(4);
  wm  <= output_word(3);
  en3 <= output_word(2);
  s3  <= output_word(1);
  wf1 <= output_word(0);

  process (clk)
  begin
    if rising_edge(clk) then
      if rst = '1' then
        current_state <= restart;
      else
        current_state <= next_state;
      end if;
    end if;
  end process;

  process (current_state, opcode, func)
  begin
    case current_state is
      when restart =>
        next_state <= decode;
        output_word <= (others => '0');

      when decode =>
        output_word(9 downto 0) <= (others => '0');
        case opcode is
          when RTYPE => output_word(12 downto 10) <= "111";

            -- when ITYPE_ADDI1 | ITYPE_SUBI1 | ITYPE_ANDI1 | ITYPE_ORI1 => output_word(12 downto 10) <= "011";

          when ITYPE_ADDI1 => output_word(12 downto 10)  <= "011";
          when ITYPE_SUBI1 => output_word(12 downto 10)  <= "011";
          when ITYPE_ANDI1 => output_word(12 downto 10)  <= "011";
          when ITYPE_ORI1  => output_word(12 downto 10)  <= "011";

            -- when ITYPE_ADDI2 | ITYPE_SUBI2 | ITYPE_ANDI2 | ITYPE_ORI2 => output_word(12 downto 10) <= "101";

          when ITYPE_ADDI2 => output_word(12 downto 10)  <= "101";
          when ITYPE_SUBI2 => output_word(12 downto 10)  <= "101";
          when ITYPE_ANDI2 => output_word(12 downto 10)  <= "101";
          when ITYPE_ORI2  => output_word(12 downto 10)  <= "101";

          when ITYPE_MOV => output_word(12 downto 10) <= "101";

          when ITYPE_SREG1 => output_word(12 downto 10) <= "001";
          when ITYPE_SREG2 => output_word(12 downto 10) <= "001";

          when ITYPE_SMEM => output_word(12 downto 10) <= "111";

          when ITYPE_LMEM1 => output_word(12 downto 10)      <= "011";
          when ITYPE_LMEM2 => output_word(12 downto 10)      <= "101";
          when others      => output_word                    <= (others => '0');

        end case;
        next_state <= execute;

      when execute =>
        output_word(12 downto 10) <= (others => '0');
        output_word(4 downto 0)   <= (others => '0');
        case opcode is
          when RTYPE =>
            case FUNC is
              when RTYPE_ADD => output_word(9 downto 5)    <= "01001";
              when RTYPE_SUB => output_word(9 downto 5)    <= "01011";
              when RTYPE_AND => output_word(9 downto 5)    <= "01101";
              when RTYPE_OR  => output_word(9 downto 5)    <= "01111";
              when others    => output_word                <= (others => '0');
            end case;
          when ITYPE_ADDI1 => output_word(9 downto 5)  <= "11001";
          when ITYPE_SUBI1 => output_word(9 downto 5)  <= "11011";
          when ITYPE_ANDI1 => output_word(9 downto 5)  <= "11101";
          when ITYPE_ORI1  => output_word(9 downto 5)  <= "11111";

          when ITYPE_ADDI2 => output_word(9 downto 5)  <= "00001";
          when ITYPE_SUBI2 => output_word(9 downto 5)  <= "00011";
          when ITYPE_ANDI2 => output_word(9 downto 5)  <= "00101";
          when ITYPE_ORI2  => output_word(9 downto 5)  <= "00111";

          when ITYPE_MOV => output_word(9 downto 5) <= "00001";

          when ITYPE_SREG1 => output_word(9 downto 5) <= "11001";
          when ITYPE_SREG2 => output_word(9 downto 5) <= "00001";

          when ITYPE_SMEM => output_word(9 downto 5) <= "00001";

          when ITYPE_LMEM1 => output_word(9 downto 5)      <= "11001";
          when ITYPE_LMEM2 => output_word(9 downto 5)      <= "00001";
          when others      => output_word                  <= (others => '0');

        end case;

        next_state <= writeback;

      when writeback =>
        output_word(12 downto 5) <= (others => '0');
        case opcode is

          when RTYPE => output_word(4 downto 0) <= "00101";

          when ITYPE_ADDI1 => output_word(4 downto 0)  <= "00101";
          when ITYPE_SUBI1 => output_word(4 downto 0)  <= "00101";
          when ITYPE_ANDI1 => output_word(4 downto 0)  <= "00101";
          when ITYPE_ORI1  => output_word(4 downto 0)  <= "00101";

          when ITYPE_ADDI2 => output_word(4 downto 0)  <= "00101";
          when ITYPE_SUBI2 => output_word(4 downto 0)  <= "00101";
          when ITYPE_ANDI2 => output_word(4 downto 0)  <= "00101";
          when ITYPE_ORI2  => output_word(4 downto 0)  <= "00101";

          when ITYPE_MOV => output_word(4 downto 0) <= "00101";

          when ITYPE_SREG1 => output_word(4 downto 0) <= "00101";
          when ITYPE_SREG2 => output_word(4 downto 0) <= "00101";

          when ITYPE_SMEM => output_word(4 downto 0) <= "01100";

          when ITYPE_LMEM1 => output_word(4 downto 0)      <= "10111";
          when ITYPE_LMEM2 => output_word(4 downto 0)      <= "10111";
          when others      => output_word                  <= (others => '0');

        end case;
        next_state <= decode;
    end case;

  end process;
end architecture;