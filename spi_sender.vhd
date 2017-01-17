LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity spi_sender is
generic(
  sys_clk_frq : INTEGER   := 50_000_000; --system clock speed in Hz
  spi_cpol    : STD_LOGIC := '0';        --spi clock polarity mode
  spi_cpha    : STD_LOGIC := '0');       --spi clock phase mode
port(
	  clock   : IN    STD_LOGIC;  --system clock
	  reset_n : IN    STD_LOGIC;  --active low reset
	  sclk    : IN    STD_LOGIC;  --spi serial clock
	  ss_n    : IN    STD_LOGIC;  --spi slave select
	  mosi    : IN    STD_LOGIC;  --spi master out, slave in
	  data 	 : IN		STD_LOGIC_VECTOR(31 DOWNTO 0); 	--data to be send via spi
	  miso    : OUT   STD_LOGIC;  --spi master in, slave out
	  trdy_out    : OUT   STD_LOGIC; --spi transmit ready
	  send_sensor0: in std_logic;
	 send_sensor1: in std_logic;
	 send_sensor2: in std_logic;
	 send_sensor3: in std_logic;
	 send_sensor4: in std_logic;
	 send_sensor5: in std_logic;
	 send_sensor6: in std_logic;
	 send_sensor7: in std_logic;
	  sweep_detected_sensor0: in std_logic;
	 sweep_detected_sensor1: in std_logic;
	 sweep_detected_sensor2: in std_logic;
	 sweep_detected_sensor3: in std_logic;
	 sweep_detected_sensor4: in std_logic;
	 sweep_detected_sensor5: in std_logic;
	 sweep_detected_sensor6: in std_logic;
	 sweep_detected_sensor7: in std_logic;
	 sensor_selector: out std_logic_vector(2 downto 0));	-- mux slector
end spi_sender;

ARCHITECTURE logic OF spi_sender IS
  CONSTANT spi_d_width : INTEGER := 32;  --spi data width in bits
  SIGNAL   spi_busy    : STD_LOGIC;
  SIGNAL   spi_tx_ena  : STD_LOGIC;
  SIGNAL   spi_tx_data : STD_LOGIC_VECTOR(31 DOWNTO 0);
  SIGNAL   spi_rx_req  : STD_LOGIC;
  SIGNAL   spi_rx_data : STD_LOGIC_VECTOR(31 DOWNTO 0);
  SIGNAL   spi_rrdy    : STD_LOGIC;
  signal sensors_sent: std_logic_vector(7 downto 0);
  signal data_ready: std_logic;

  --declare spi slave component
  COMPONENT spi_slave IS
    GENERIC(
      cpol    : STD_LOGIC; --spi clock polarity mode
      cpha    : STD_LOGIC; --spi clock phase mode
      d_width : INTEGER);  --data width in bits
    PORT(
      sclk         : IN     STD_LOGIC;                            --spi clk from master
      reset_n      : IN     STD_LOGIC;                            --active low reset
      ss_n         : IN     STD_LOGIC;                            --active low slave select
      mosi         : IN     STD_LOGIC;                            --master out, slave in
      rx_req       : IN     STD_LOGIC;                            --'1' while busy = '0' moves data to the rx_data output
      st_load_en   : IN     STD_LOGIC;                            --asynchronous load enable
      st_load_trdy : IN     STD_LOGIC;                            --asynchronous trdy load input
      st_load_rrdy : IN     STD_LOGIC;                            --asynchronous rrdy load input
      st_load_roe  : IN     STD_LOGIC;                            --asynchronous roe load input
      tx_load_en   : IN     STD_LOGIC;                            --asynchronous transmit buffer load enable
      tx_load_data : IN     STD_LOGIC_VECTOR(d_width-1 DOWNTO 0); --asynchronous tx data to load
      trdy         : BUFFER STD_LOGIC := '0';                     --transmit ready bit
      rrdy         : BUFFER STD_LOGIC := '0';                     --receive ready bit
      roe          : BUFFER STD_LOGIC := '0';                     --receive overrun error bit
      rx_data      : OUT    STD_LOGIC_VECTOR(d_width-1 DOWNTO 0); --receive register output to logic
      busy         : OUT    STD_LOGIC := '0';                     --busy signal to logic ('1' during transaction)
      miso         : OUT    STD_LOGIC := 'Z');                    --master in, slave out
  END COMPONENT spi_slave;

BEGIN
  --instantiate the spi slave
  spi_slave_0:  spi_slave
    GENERIC MAP(cpol => spi_cpol, cpha => spi_cpha, d_width => spi_d_width)
    PORT MAP(sclk => sclk, reset_n => '1', ss_n => ss_n, mosi => mosi,
             rx_req => spi_rx_req, st_load_en => '0', st_load_trdy => '0',
             st_load_rrdy => '0', st_load_roe => '0', tx_load_en => spi_tx_ena,
             tx_load_data => spi_tx_data, trdy => trdy_out, rrdy => spi_rrdy, roe => open,
             rx_data => spi_rx_data, busy => spi_busy, miso => miso);
	 process (clock)
	 variable prev_data:		STD_LOGIC;
	 begin 
		if rising_edge(clock) then
			if ( spi_busy = '0' ) then
				spi_tx_ena <= '0';
				data_ready <= '0';
				if sweep_detected_sensor0 = '1' and send_sensor0 = '1' and sensors_sent(0) = '0' then
					sensor_selector <= "000";
					data_ready <= '1';
					sensors_sent(0) <= '1';
				elsif sweep_detected_sensor1 = '1' and send_sensor1 = '1' and sensors_sent(1) = '0'  then 
					sensor_selector <= "001";
					data_ready <= '1';
					sensors_sent(1) <= '1';
				elsif sweep_detected_sensor2 = '1' and send_sensor2 = '1' and sensors_sent(2) = '0'  then 
					sensor_selector <= "010";
					data_ready <= '1';
					sensors_sent(2) <= '1';
				elsif sweep_detected_sensor3 = '1' and send_sensor3 = '1' and sensors_sent(3) = '0'  then 
					sensor_selector <= "011";
					data_ready <= '1';
					sensors_sent(3) <= '1';
				elsif sweep_detected_sensor4 = '1' and send_sensor4 = '1' and sensors_sent(4) = '0'  then 
					sensor_selector <= "100";
					data_ready <= '1';
					sensors_sent(4) <= '1';
				elsif sweep_detected_sensor5 = '1' and send_sensor5 = '1' and sensors_sent(5) = '0'  then 
					sensor_selector <= "101";
					data_ready <= '1';
					sensors_sent(5) <= '1';
				elsif sweep_detected_sensor6 = '1' and send_sensor6 = '1' and sensors_sent(6) = '0'  then 
					sensor_selector <= "110";
					data_ready <= '1';
					sensors_sent(6) <= '1';
				elsif sweep_detected_sensor7 = '1' and send_sensor7 = '1' and sensors_sent(7) = '0'  then 
					sensor_selector <= "111";
					data_ready <= '1';
					sensors_sent(7) <= '1';
				end if;
			end if;
			
			if data_ready = '1' then
				spi_tx_data <= data;
				spi_tx_ena <= '1';
				data_ready <= '0';
			end if;
			
			if sweep_detected_sensor0 = '0' then
				sensors_sent(0) <= '0';
			end if;
			if sweep_detected_sensor1 = '0' then
				sensors_sent(1) <= '0';
			end if;
			if sweep_detected_sensor2 = '0' then
				sensors_sent(2) <= '0';
			end if;
			if sweep_detected_sensor3 = '0' then
				sensors_sent(3) <= '0';
			end if;
			if sweep_detected_sensor4 = '0' then
				sensors_sent(4) <= '0';
			end if;
			if sweep_detected_sensor5 = '0' then
				sensors_sent(5) <= '0';
			end if;
			if sweep_detected_sensor6 = '0' then
				sensors_sent(6) <= '0';
			end if;
			if sweep_detected_sensor7 = '0' then
				sensors_sent(7) <= '0';
			end if;
		end if;
	end process;
 END logic;
