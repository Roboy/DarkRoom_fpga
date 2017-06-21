library IEEE;
use IEEE.std_logic_1164.all;        
use IEEE.numeric_std.all;
use IEEE.std_logic_signed.all;

-- This entity mesures the duration between not skipping pulses and sweeps.


entity lighthouse_sensor is 
	port (
		clk : in std_logic;		-- 50 MHz clock
		sensor : in std_logic;	-- sensor input
		ready : out std_logic;
		duration_nskip_to_sweep: out unsigned(31 downto 0);
		axis : out std_logic;				-- sweep x or y axis
		lighthouse_id : out std_logic;	-- which lighthouse emitted the sweep
		combined_data : out unsigned(31 downto 0);
		debug_data : out unsigned(31 downto 0);
	);
end lighthouse_sensor;


architecture baustein42 of lighthouse_sensor is
	-- INPUT STATES
	-- input signal state: high or low, filtered from noise
	signal sensor_state : std_logic;
	-- counter for noise filtering
	signal sensor_state_switch_counter : unsigned(5 downto 0) := (others => '0');
	
	-- LIGHTHOUSE TIMING
	-- counts time from the last NSKIP pulse (start)
	signal counter_from_nskip_rise : unsigned(31 downto 0) := (others => '0');
	-- counts time from the last signal rising edge
	signal counter_from_last_rise : unsigned(31 downto 0) := (others => '0');
	-- duration from last NSKIP pulse (start) to the last signal rising edge
	signal duration_from_nskip_rise_to_last_rise : unsigned(31 downto 0) := (others => '0');
	-- duration from last NSKIP pulse (start) to the SWEEP rise
	signal duration_from_nskip_rise_to_sweep_rise : unsigned(31 downto 0) := (others => '0');
	
	-- AXIS & LIGHTHOUSE ID
	signal current_axis : std_logic := '0';
	signal current_lighthouse_id : std_logic := '0';
	
begin
	

	-- OUTPUT SIGNALS
	ready <= '1'; -- TODO : improve this	
	duration_nskip_to_sweep <= duration_from_nskip_rise_to_sweep_rise;
	lighthouse_id <= current_lighthouse_id;
	axis <= current_axis;
	
	-- combined data: lighthouse_id + current_axis + duration (nskip to sweep)
	combined_data(31) <= lighthouse_id;
	combined_data(30) <= current_axis;
	combined_data(29 downto 0) <= duration_from_nskip_rise_to_sweep_rise(29 downto 0);
	
	-- for future use
	debug_data <= "00000000000000000000000000101010";
	
	
	
	process(clk)
	begin
		if rising_edge(clk) then
			
			-- update counters
			counter_from_nskip_rise <= counter_from_nskip_rise + 1;
			counter_from_last_rise <= counter_from_last_rise + 1;
			
			
			if (sensor_state = '0') then 
			
				-- LOW PHASE				
				if (sensor = '0') then
				
					-- KEEP LOW PHASE
					if (sensor_state_switch_counter > 0) then
						sensor_state_switch_counter <= sensor_state_switch_counter - 1;					
					end if;						
					
				else -- sensor = '1'
				
					-- check if state can be switched (no noise)
					if (sensor_state_switch_counter > 25) then		
					
						-- GO TO HIGH PHASE == rising_edge(sensor)
						sensor_state <= '1';
						sensor_state_switch_counter <= "000000";	
						
						-- reset counter that counts high pulse length
						counter_from_last_rise <= "00000000000000000000000000000000";
						-- save duration from last NSKIP start to this rising_edge
						duration_from_nskip_rise_to_last_rise <= counter_from_nskip_rise;
						
					else						
						-- do not change state yet, could be noise
						sensor_state_switch_counter <= sensor_state_switch_counter + 1;
						
					end if;
					
				end if;				
				-- end LOW PHASE
				
			
			else  -- sensor_state = '1'
			
				-- HIGH PHASE		
				if (sensor = '1') then
				
					-- KEEP HIGH PHASE
					if (sensor_state_switch_counter > 0) then
						sensor_state_switch_counter <= sensor_state_switch_counter - 1;					
					end if;	
				
				else -- sensor = '0' 

					-- check if state can be switched (no noise)
					if (sensor_state_switch_counter > 25) then		
					
						-- GO TO LOW PHASE == falling_edge(sensor)
						sensor_state <= '0';
						sensor_state_switch_counter <= "000000";	
						
						-- CHECK PULSE DURATION, we use 50 MHz clock
						if (counter_from_last_rise < 2500) then 
						
							-- last pulse was a SWEEP (max 50 microseconds * 50 clock speed = 2500)							
							-- duration from NSKIP to last rising edge is the duration to sweep
							duration_from_nskip_rise_to_sweep_rise <= duration_from_nskip_rise_to_last_rise;
							
						elsif (counter_from_last_rise < 4950) then
						
							-- last pulse was NOT SKIPPING	
						
							-- check if active lighhouse has changed
							if (counter_from_nskip_rise < 401650) then
								-- (8333-300) * 50 = 401650
								-- first lighthouse became active
								current_lighthouse_id <= '0'; 

							elsif (counter_from_nskip_rise > 431650) then
								-- (8333+300) * 50 = 431650
								-- second lighthouse became active
								current_lighthouse_id <= '1';  
							
							end if;
							
							-- new NSKIP detected! --> overwrite old counter, time is counted from the last rising edge 
							counter_from_nskip_rise <= counter_from_last_rise + 1;
		
							
							if (counter_from_last_rise < 3350) then
								-- Not skipping, axis = 0, data = 0  
								-- (max 67 microseconds * 50 clock speed = 3350, real time = 62.5 microseconds)
								current_axis <= '0';
								
							elsif (counter_from_last_rise < 3900) then							
								-- Not skipping, axis = 1, data = 0  
								-- (max 78 microseconds * 50 clock speed = 3900, real time = 72.9 microseconds)
								current_axis <= '1';								
								
							elsif (counter_from_last_rise < 4400) then	
								-- Not skipping, axis = 0, data = 1  
								-- (max 88 microseconds * 50 clock speed = 4400, real time = 83.3 microseconds)
								current_axis <= '0';								
								
							else	
								-- Not skipping, axis = 1, data = 1  
								-- (max 99 microseconds * 50 clock speed = 3350, real time = 93.8 microseconds)
								current_axis <= '1';								
								
							end if;
							
						else 						
							-- SKIPPING  (real time = 104 or more microseconds)
							-- ignore this one completely
						
						end if;
						
							
							
												
						
					else
						-- do not change state yet, could be noise
						sensor_state_switch_counter <= sensor_state_switch_counter + 1;
						
					end if;					
					
				end if;
				
				-- end HIGH PHASE	
				
			end if;
			
			
		end if; -- end rising_edge(clk)
		
	end process;
	
	
	
end architecture;