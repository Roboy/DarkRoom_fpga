library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity LCD is port (
  display_value : in  integer;
  sseg0  : out std_logic_vector(7 downto 0);
  sseg1  : out std_logic_vector(7 downto 0);
  sseg2  : out std_logic_vector(7 downto 0);
  sseg3  : out std_logic_vector(7 downto 0));
end LCD;

architecture top of LCD is
begin display : process(display_value) is
	variable tmp: integer;
	variable thousand: integer;
	variable hundred: integer;
	variable ten: integer;
	variable one: integer;
  begin
	tmp := display_value; 
	tmp := tmp/1000000000000;
	tmp := tmp mod 9999;
   thousand := tmp/1000;
	 case thousand is
      when 0 => sseg3 <= "11000000";
      when 1 => sseg3 <= "11111001";
      when 2 => sseg3 <= "10100100";
      when 3 => sseg3 <= "10110000";
      when 4 => sseg3 <= "10011001";
      when 5 => sseg3 <= "10010010";
      when 6 => sseg3 <= "10000010";
      when 7 => sseg3 <= "11111000";
      when 8 => sseg3 <= "10000000";
      when 9 => sseg3 <= "10010000";
      when others => sseg3 <= "11111111";
    end case;
	
	 hundred := (tmp-thousand*1000)/100;
    case hundred is
      when 0 => sseg2 <= "11000000";
      when 1 => sseg2 <= "11111001";
      when 2 => sseg2 <= "10100100";
      when 3 => sseg2 <= "10110000";
      when 4 => sseg2 <= "10011001";
      when 5 => sseg2 <= "10010010";
      when 6 => sseg2 <= "10000010";
      when 7 => sseg2 <= "11111000";
      when 8 => sseg2 <= "10000000";
      when 9 => sseg2 <= "10010000";
      when others => sseg2 <= "11111111";
    end case;
	 
	 ten := (tmp-thousand*1000-hundred*100)/10;
	 case ten is
      when 0 => sseg1 <= "11000000";
      when 1 => sseg1 <= "11111001";
      when 2 => sseg1 <= "10100100";
      when 3 => sseg1 <= "10110000";
      when 4 => sseg1 <= "10011001";
      when 5 => sseg1 <= "10010010";
      when 6 => sseg1 <= "10000010";
      when 7 => sseg1 <= "11111000";
      when 8 => sseg1 <= "10000000";
      when 9 => sseg1 <= "10010000";
      when others => sseg1 <= "11111111";
    end case;
	 
	 one := tmp-thousand*1000-hundred*100-ten*10;
	 case one is
      when 0 => sseg0 <= "11000000";
      when 1 => sseg0 <= "11111001";
      when 2 => sseg0 <= "10100100";
      when 3 => sseg0 <= "10110000";
      when 4 => sseg0 <= "10011001";
      when 5 => sseg0 <= "10010010";
      when 6 => sseg0 <= "10000010";
      when 7 => sseg0 <= "11111000";
      when 8 => sseg0 <= "10000000";
      when 9 => sseg0 <= "10010000";
      when others => sseg0 <= "11111111";
    end case;
	 
	
  end process;
  end top; 