library IEEE;
use ieee.std_logic_1164.all;        
use IEEE.std_logic_signed.all;
use ieee.numeric_std.all;

entity sensor_mux is
   port( 
	 clock: in std_logic;	-- clock signal
	 sweep_detected_sensor0: in std_logic;
	 sweep_detected_sensor1: in std_logic;
	 sweep_detected_sensor2: in std_logic;
	 sweep_detected_sensor3: in std_logic;
	 sweep_detected_sensor4: in std_logic;
	 sweep_detected_sensor5: in std_logic;
	 sweep_detected_sensor6: in std_logic;
	 sweep_detected_sensor7: in std_logic;
	 send_sensor0: in std_logic;
	 send_sensor1: in std_logic;
	 send_sensor2: in std_logic;
	 send_sensor3: in std_logic;
	 send_sensor4: in std_logic;
	 send_sensor5: in std_logic;
	 send_sensor6: in std_logic;
	 send_sensor7: in std_logic;
	 busy:  		in std_logic;
 	 sensor_selector: out std_logic_vector(2 downto 0);	-- mux slector
	 send: out std_logic); -- send it
end sensor_mux;
 
architecture Behavioral of sensor_mux is
	signal sensors_sent: std_logic_vector(7 downto 0);
begin   process(clock)
   begin
		if rising_edge(clock) and (busy = '0') then
			if sweep_detected_sensor0 = '1' and send_sensor0 = '1' and sensors_sent(0) = '0' then
				sensor_selector <= "000";
				send <= '1';
				sensors_sent(0) <= '1';
			elsif sweep_detected_sensor1 = '1' and send_sensor1 = '1' and sensors_sent(1) = '0'  then 
				sensor_selector <= "001";
				send <= '1';
				sensors_sent(1) <= '1';
			elsif sweep_detected_sensor2 = '1' and send_sensor2 = '1' and sensors_sent(2) = '0'  then 
				sensor_selector <= "010";
				send <= '1';
				sensors_sent(2) <= '1';
			elsif sweep_detected_sensor3 = '1' and send_sensor3 = '1' and sensors_sent(3) = '0'  then 
				sensor_selector <= "011";
				send <= '1';
				sensors_sent(3) <= '1';
			elsif sweep_detected_sensor4 = '1' and send_sensor4 = '1' and sensors_sent(4) = '0'  then 
				sensor_selector <= "100";
				send <= '1';
				sensors_sent(4) <= '1';
			elsif sweep_detected_sensor5 = '1' and send_sensor5 = '1' and sensors_sent(5) = '0'  then 
				sensor_selector <= "101";
				send <= '1';
				sensors_sent(5) <= '1';
			elsif sweep_detected_sensor6 = '1' and send_sensor6 = '1' and sensors_sent(6) = '0'  then 
				sensor_selector <= "110";
				send <= '1';
				sensors_sent(6) <= '1';
			elsif sweep_detected_sensor7 = '1' and send_sensor7 = '1' and sensors_sent(7) = '0'  then 
				sensor_selector <= "111";
				send <= '1';
				sensors_sent(7) <= '1';
			end if;
			
			if sweep_detected_sensor0 = '0' then
				sensors_sent(0) <= '0';
			elsif sweep_detected_sensor1 = '0' then
				sensors_sent(1) <= '0';
			elsif sweep_detected_sensor2 = '0' then
				sensors_sent(2) <= '0';
			elsif sweep_detected_sensor3 = '0' then
				sensors_sent(3) <= '0';
			elsif sweep_detected_sensor4 = '0' then
				sensors_sent(4) <= '0';
			elsif sweep_detected_sensor5 = '0' then
				sensors_sent(5) <= '0';
			elsif sweep_detected_sensor6 = '0' then
				sensors_sent(6) <= '0';
			elsif sweep_detected_sensor7 = '0' then
				sensors_sent(7) <= '0';
			end if;
		elsif rising_edge(clock) then 
			send <= '0';
		end if;
   end process;
end Behavioral;