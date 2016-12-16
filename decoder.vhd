library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity decoder is
   port( rising: in std_logic;
 	 timer: in std_logic_vector(0 to 31);
	 skip: out std_logic;
	 rotor: out std_logic;
	 data: out std_logic);
end decoder;
 
architecture Behavioral of decoder is
begin process(rising, timer)
	variable TEMP : STD_LOGIC_VECTOR(0 to 31);
	signal duration : STD_LOGIC_VECTOR(0 to 31);
   begin
		if (rising = '1') then
			TEMP <= timer;
		else then
			duration <= (timer - TIMER);
		end if;
   end process;
	rising <= rising_true;
	edge_time <= temp;   
end Behavioral;