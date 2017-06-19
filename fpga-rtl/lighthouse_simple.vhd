library IEEE;
use IEEE.std_logic_1164.all;        
use IEEE.numeric_std.all;
use IEEE.std_logic_signed.all;

-- Synchronous lighthouse sensor interface
--
-- Tthis module will wait until the sensor emits a pulse and measure the 
-- pulse duration. Duration is valid when 'ready' 
-- is set to '1'. 


entity test_lighthouse is 
	port (
		clk : in std_logic;
		sensor : in std_logic; -- sensor input
		ready : out std_logic;
		duration_high : out signed(31 downto 0); -- duration of the last peak
		duration_low : out signed(31 downto 0)   -- duration of the last low phase
	);
end test_lighthouse;

architecture baustein42 of test_lighthouse is
	signal sensor_prev : std_logic;
	signal state : std_logic_vector(2 downto 0) := (others => '0');
	signal time_sensor_rise : signed(31 downto 0);
	signal time_sensor_fall : signed(31 downto 0);
	signal counter : signed(31 downto 0) := (others => '0');
	signal switch : unsigned(5 downto 0) := (others => '0');
	
begin
	

	ready <= '1';
	
	
	process(clk)
	begin
		if rising_edge(clk) then		

			if (sensor_prev = '0') then 
			
				-- LOW PHASE
				if (sensor = '1') then 
					-- check if phase can be switched
					if (switch > 25) then				
						-- CHANGE PHASE
						sensor_prev <= '1';
						duration_low <= counter;
						counter <= "00000000000000000000000000000000";	
						switch <= "000000";	
					else
						-- not sure about this switch, could be noize
						switch <= switch + 1;
						counter <= counter + 1;	
					end if;
					
				else 
					-- KEEP PHASE
					counter <= counter + 1;	
					if (switch > 0) then
						switch <= switch - 1;					
					end if;					
					
				end if;
				
			
			else  -- sensor_prev = '1'
			
				-- HIGH PHASE				
				if (sensor = '0') then
					-- check if phase can be switched
					if (switch > 25) then				
						-- CHANGE PHASE
						sensor_prev <= '0';
						duration_high <= counter;
						counter <= "00000000000000000000000000000000";
						switch <= "000000";	
					else
						-- not sure about this switch, could be noize
						switch <= switch + 1;
						counter <= counter + 1;		
					end if;
					
				else					
					-- KEEP PHASE
					counter <= counter + 1;	
					if (switch > 0) then
						switch <= switch - 1;					
					end if;	
					
				end if;
			end if;
			
			
		end if; -- end rising_edge(clk)
		
	end process;
	
	
	
end architecture;