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
		clk_1MHz : in std_logic;
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
	signal time_sensor_rise : std_logic_vector(31 downto 0);
	signal time_sensor_fall : std_logic_vector(31 downto 0);
begin
	
	process(clk_1MHz)
	begin
		if rising_edge(clk_1MHz) then
			if start = '1' then
			end if;
			
			-- STATES
			if state = "000" then
				-- wait until start == '1'
			
			elsif state = "001" then
				-- waiting for sensor to go up (rising edge)
				if (sensor_prev = '0' and sensor = '1') then
					state <= "010";
					time_sensor_rise <= timer;
				end if;
			
			elsif state = "010" then
				-- waitung for sensor to go down (falling edge)
				if (sensor_prev = '1' and sensor = '0') then
					state <= "011";
					time_sensor_fall <= timer;			
				end if;
			
			elsif state = "011" then
				--  calc duration
				
				-- TODO: check for overflow: time_sensor_fall < time_sensor_rise
				
				duration <= std_logic_vector(unsigned(time_sensor_fall) - unsigned(time_sensor_rise));
				state <= "000"; -- wait again
			
			end if;
			
			
			sensor_prev <= sensor;
			
			
			
		end if; -- end rising_edge(clk_1MHz)
		
	end process;
	
	
	ready <= '1' when (state = "000") else '0';
	
end architecture;