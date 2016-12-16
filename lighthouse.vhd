library ieee;
use ieee.std_logic_1164.all;        
use ieee.numeric_std.all;
USE IEEE.std_logic_signed.all;

entity lighthouse is
   port( sensor: in std_logic;
 	 timer: in std_logic_vector(31 downto 0);
	 result: out std_logic;
	 sweep_duration_A: out integer := 0;
	 sweep_duration_B: out integer;
	 rotor: out std_logic;
	 pulse_duration: out integer;
	 lighthouse_A: out std_logic;
	 error: out std_logic);
end lighthouse;
 
architecture Behavioral of lighthouse is
   signal t_0: 		std_logic_vector(31 downto 0);
	signal t_0_prev: 	std_logic_vector(31 downto 0);
	signal t_A: 		std_logic_vector(31 downto 0);
	signal t_B: 		std_logic_vector(31 downto 0);
	signal t_sweep_start: std_logic_vector(31 downto 0);
	signal t_sweep_duration: std_logic_vector(31 downto 0);
	signal skip_prev: std_logic;
	signal skip: std_logic;
	signal data: std_logic;
	signal t_cycle_duration: integer;
	
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
			if(duration < 50) then -- this is a sweep
				t_sweep_duration <= (t_0-t_sweep_start);
				result <= '1';
			elsif (duration > (63 - 5)) and (duration < (94 + 5)) then -- this is a sync pulse, NOT skipping
				t_sweep_start <= t_0;
				
				if(start_valid_sync = 0) then
					start_valid_sync <= t_0;
				elsif(start_valid_sync /= 0 and stop_valid_sync = 0) then
					stop_valid_sync := t_0;
				end if;
				
				skip 	<= '0';
				result <= '0';
			elsif (duration > (104 - 5)) and (duration < (135 + 5)) then -- this is a sync pulse, skipping
				skip 	<= '1';
				result <= '0';
			end if;
			
			if((start_valid_sync > 0) and (stop_valid_sync > 0)) then
				sync_gap_duration := std_logic_vector(unsigned(stop_valid_sync) - unsigned(start_valid_sync));
				start_valid_sync <= t_0;
				stop_valid_sync := (others => '0');
				sweep_duration_A <= to_integer(unsigned(sync_gap_duration));	
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
	
			skip_prev <= skip;
			t_0_prev <= timer;
			pulse_duration <= to_integer(unsigned(duration));		
			
		end if;
   end process;
end Behavioral;