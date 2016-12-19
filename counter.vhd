library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity counter is
	Generic (
		constant counter_width  : natural := 32
	);
   port( clock: in std_logic;
 	 output: out std_logic_vector(counter_width-1 downto 0));
end counter;
 
architecture Behavioral of counter is
   signal temp: std_logic_vector(counter_width-1 downto 0);
begin   process(clock)
   begin
		if rising_edge(clock) then
			temp <= temp + 1;
		end if;
   end process;
   output <= temp;
end Behavioral;