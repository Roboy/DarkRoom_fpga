library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity global_counter is
   port( clock: in std_logic;
 	 output: out std_logic_vector(0 to 31));
end global_counter;
 
architecture Behavioral of global_counter is
   signal temp: std_logic_vector(0 to 31);
begin   process(clock)
   begin
		if rising_edge(clock) then
			temp <= temp + 1;
		end if;
   end process;
   output <= temp;
end Behavioral;