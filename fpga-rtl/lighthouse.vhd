library ieee;
use ieee.std_logic_1164.all;        
use ieee.numeric_std.all;
USE IEEE.std_logic_signed.all;

entity lighthouse is
	Generic (
		constant sensorID  : INTEGER RANGE 0 TO 100
	);
   port( 
		sensor: in std_logic;
		timer: in std_logic_vector(31 downto 0);
		sensor_value: out std_logic_vector(31 downto 0);
		data_available: out std_logic);
end lighthouse;
 
architecture Behavioral of lighthouse is
   signal t_0: 		std_logic_vector(31 downto 0);
	signal t_sweep_start: std_logic_vector(31 downto 0);
	signal t_sweep_duration: std_logic_vector(31 downto 0);
	signal data: std_logic;
	signal rotor: std_logic;
	signal lighthouse: std_logic;
	signal start_valid_sync 	: std_logic_vector(31 downto 0);
	
begin   process(sensor)
	variable duration: std_logic_vector(31 downto 0);
	variable stop_valid_sync : std_logic_vector(31 downto 0) := (others => '0');
	variable sync_gap_duration 	: std_logic_vector(31 downto 0):= (others => '0');
   begin
		--sensor_value(8 downto 0) <= std_logic_vector(to_unsigned(sensorID, 9));
		if rising_edge(sensor) then
			t_0 <= timer;
		elsif falling_edge(sensor) then
			duration := std_logic_vector(unsigned(timer)-unsigned(t_0));
			
			
			
			-------------- new
			
			
			--- MSB> 8x"0" || sweep duration (8bit) || NOT skipping pulse duration (8bit) || skipping pulse duration (8bit)  <LSB
			if(duration < 50+5) then 
				-- this is a sweep
				sensor_value(23 downto 16) <= duration(7 downto 0);	
	
				data_available <= '1'; -- available			
				
			elsif (duration > (63-5)) and (duration < (94+5)) then 
				-- this is a sync pulse, NOT skipping
				sensor_value(15 downto 8) <= duration(7 downto 0);	
			
				data_available <= '0'; -- not available			
						
			else
				-- this is a skipping sync pulse
				sensor_value(7 downto 0) <= duration(7 downto 0);				
				
				data_available <= '0'; -- not available	
				
			end if;
			
			
			
			---- old
			
--			data_available <= '0';
--			if(duration < 50+5) then -- this is a sweep
--				t_sweep_duration <= (t_0-t_sweep_start);
--			elsif (duration > (63-5)) and (duration < (94+5)) then -- this is a sync pulse, NOT skipping
--				t_sweep_start <= t_0;
--				
--				if(start_valid_sync = 0) then
--					start_valid_sync <= t_0;
--				elsif(start_valid_sync /= 0 and stop_valid_sync = 0) then
--					stop_valid_sync := t_0;
--				end if;
--				
--				if((start_valid_sync > 0) and (stop_valid_sync > 0)) then
--					sync_gap_duration := std_logic_vector(unsigned(stop_valid_sync) - unsigned(start_valid_sync));
--					start_valid_sync <= t_0;
--					stop_valid_sync := (others => '0');
--					if((sync_gap_duration - 8333 ) > 300 ) then
--						lighthouse <= '1';
--					elsif ((sync_gap_duration - 8333 ) < -300 ) then
--						lighthouse <= '0';
--					end if;
--				end if;
--				
--				if(abs(duration - 63) < 5) then
--					rotor <= '0';
--					data  <= '0';
--				elsif(abs(duration - 73) < 5) then
--					rotor <= '1';
--					data  <= '0';
--				elsif(abs(duration - 83) < 5) then
--					rotor <= '0';
--					data  <= '1';
--				elsif(abs(duration - 94) < 5) then
--					rotor <= '1';
--					data  <= '1';
--				elsif(abs(duration - 104) < 5) then
--					rotor <= '0';
--					data  <= '0';
--				elsif(abs(duration - 115) < 5) then
--					rotor <= '1';
--					data  <= '0';
--				elsif(abs(duration - 125) < 5) then
--					rotor <= '0';
--					data  <= '1';
--				elsif(abs(duration - 135) < 5) then
--					rotor <= '1';
--					data  <= '1';
--				end if;
--				
--				if(t_sweep_duration < 8000) and (t_sweep_duration > 300 ) then 
--					sensor_value(12) <= '1'; -- valid sweep
--				else
--					sensor_value(12) <= '0'; -- not valid
--				end if;
--				
--				sensor_value(9) <= lighthouse;
--				sensor_value(10) <= rotor;
--				sensor_value(11) <= data;
--				sensor_value(31 downto 13) <= t_sweep_duration(18 downto 0);
--				data_available <= '1'; -- we can send the data shortly after a sync
--			end if;
			
			
		end if; -- falling_edge(sensor)
   end process;
end Behavioral;
