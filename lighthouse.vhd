library ieee;
use ieee.std_logic_1164.all;        
use ieee.numeric_std.all;
USE IEEE.std_logic_signed.all;

entity lighthouse is
	Generic (
		constant sensorID  : std_logic_vector(8 downto 0) := "000000000"
	);
   port( 
		sensor: in std_logic;
		timer: in std_logic_vector(31 downto 0);
		sweep_detected: out std_logic;
		sensor_value: out std_logic_vector(31 downto 0));
end lighthouse;
 
architecture Behavioral of lighthouse is
   signal t_0: 		std_logic_vector(31 downto 0);
	signal t_sweep_start: std_logic_vector(31 downto 0);
	signal t_sweep_duration: std_logic_vector(31 downto 0);
	signal data: std_logic;
	signal rotor: std_logic;
	signal lighthouse: std_logic;
	signal start_valid_sync 	: std_logic_vector(31 downto 0);
	
	constant zeros : std_logic_vector(t_0'range) := (others => '0');

	
begin   process(sensor)
	variable duration: std_logic_vector(31 downto 0);
	variable stop_valid_sync : std_logic_vector(31 downto 0) := (others => '0');
	variable sync_gap_duration 	: std_logic_vector(31 downto 0):= (others => '0');
   begin
		if rising_edge(sensor) then
			t_0 <= timer;
		elsif falling_edge(sensor) then
			duration := std_logic_vector(unsigned(timer)-unsigned(t_0));
			sweep_detected <= '0';
			if(duration < 50) then -- this is a sweep
				t_sweep_duration <= (t_0-t_sweep_start);
				sweep_detected <= '1';
			elsif (duration > (63 - 5)) and (duration < (94 + 5)) then -- this is a sync pulse, NOT skipping
				t_sweep_start <= t_0;
				
				if(start_valid_sync = 0) then
					start_valid_sync <= t_0;
				elsif(start_valid_sync /= 0 and stop_valid_sync = 0) then
					stop_valid_sync := t_0;
				end if;
			end if;
			
			if((start_valid_sync > 0) and (stop_valid_sync > 0)) then
				sync_gap_duration := std_logic_vector(unsigned(stop_valid_sync) - unsigned(start_valid_sync));
				start_valid_sync <= t_0;
				stop_valid_sync := (others => '0');
				if((sync_gap_duration - 8333 ) > 100 ) then
					lighthouse <= '1';
				elsif ((sync_gap_duration - 8333 ) < -100 ) then
					lighthouse <= '0';
				end if;
			end if;
			
			if(abs(duration - 63) < 5) then
				rotor <= '0';
				data  <= '0';
			elsif(abs(duration - 73) < 5) then
				rotor <= '1';
				data  <= '0';
			elsif(abs(duration - 83) < 5) then
				rotor <= '0';
				data  <= '1';
			elsif(abs(duration - 94) < 5) then
				rotor <= '1';
				data  <= '1';
			elsif(abs(duration - 104) < 5) then
				rotor <= '0';
				data  <= '0';
			elsif(abs(duration - 115) < 5) then
				rotor <= '1';
				data  <= '0';
			elsif(abs(duration - 125) < 5) then
				rotor <= '0';
				data  <= '1';
			elsif(abs(duration - 135) < 5) then
				rotor <= '1';
				data  <= '1';
			end if;
			
			if(t_sweep_duration < 8192) and (t_sweep_duration > 0 ) then 
				sensor_value(12) <= '1'; -- valid sweep
			else
				sensor_value(12) <= '0'; -- not valid
			end if;
			
			sensor_value(8 downto 0) <= sensorID;
			sensor_value(9) <= lighthouse;
			sensor_value(10) <= rotor;
			sensor_value(11) <= data;
			sensor_value(31 downto 13) <= t_sweep_duration(18 downto 0);
		end if;
   end process;
end Behavioral;