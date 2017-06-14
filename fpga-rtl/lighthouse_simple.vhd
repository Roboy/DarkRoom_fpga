library IEEE;
use IEEE.std_logic_1164.all;        
use IEEE.numeric_std.all;
use IEEE.std_logic_signed.all;

-- Synchronous lighthouse sensor interface
--
-- After start is set to '1' this module will wait 
-- until the sensor emits a pulse and measure the 
-- pulse duration. Duration is valid when 'ready' 
-- is set to '1'. 


entity test_lighthouse is 
	port (
		clk : in std_logic;
		start : in std_logic;  -- set this to 1 to start
		sensor : in std_logic; -- sensor input
		timer : in std_logic_vector(31 downto 0);
		ready : out std_logic;
		duration : out std_logic_vector(31 downto 0) -- duration of the last peak
	);
end test_lighthouse;

architecture baustein42 of test_lighthouse is
	signal sensor_prev : std_logic;
	signal state : std_logic_vector(2 downto 0) := (others => '0');
	signal time_sensor_rise : unsigned(63 downto 0);
	signal time_sensor_fall : unsigned(63 downto 0);
	signal counter : unsigned(63 downto 0) := (others => '0');
	
begin
	

	
	process(clk)
	begin
		if rising_edge(clk) then
			if start = '1' then
			end if;
			
			
			--duration(0) <= sensor;
			
			-- STATES
			if state = "000" then
				-- wait until start == '1'
				state <= "001"; -- ONLY FOR TESTING!! REMOVE LATER
				
				
				--duration <= "00000000000000000000000000101010"; -- initial value for debug
				
			elsif state = "001" then
				-- waiting for sensor to go up (rising edge)
				if (sensor_prev = '0' and sensor = '1') then
					state <= "010";
					time_sensor_rise <= counter;
				end if;
			
			elsif state = "010" then
				-- waitung for sensor to go down (falling edge)
				if (sensor_prev = '1' and sensor = '0') then
					state <= "011";
					time_sensor_fall <= counter;			
				end if;
			
			elsif state = "011" then
				--  calc duration				
				duration <=  std_logic_vector(time_sensor_fall - time_sensor_rise) (31 downto 0);
				state <= "000"; -- wait again
			
			end if;
			
			
			sensor_prev <= sensor;
			
			counter <= counter + 1;
			
			
			
		end if; -- end rising_edge(clk)
		
	end process;
	
	
	ready <= '1' when (state = "000") else '0';
	
end architecture;