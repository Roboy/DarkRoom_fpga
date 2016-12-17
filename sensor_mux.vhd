library IEEE;
use ieee.std_logic_1164.all;        
use IEEE.std_logic_signed.all;
use ieee.numeric_std.all;

entity sensor_mux is
	Generic (
		constant number_of_sensors  : natural := 8
	);
   port( 
	 clock: in std_logic;	-- clock signal
 	 sensor_selector: out std_logic_vector(2 downto 0);	-- mux slector
	 sensor_read: 	out std_logic; -- trigger read
	 send: out std_logic); -- send it
end sensor_mux;
 
architecture Behavioral of sensor_mux is
	signal counter: integer;
begin   process(clock, counter)
	variable sensor: integer;
   begin
		if rising_edge(clock) then
			sensor := counter mod number_of_sensors;
			sensor_selector <= std_logic_vector(to_unsigned(sensor, 32))(2 downto 0);
			sensor_read <= '1';
			send <= '1';
			counter <= counter + 1;
		end if;
   end process;
end Behavioral;