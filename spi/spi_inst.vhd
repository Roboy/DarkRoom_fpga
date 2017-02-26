	component spi is
		port (
			clk_clk                           : in  std_logic                     := 'X';             -- clk
			reset_reset_n                     : in  std_logic                     := 'X';             -- reset_n
			spi_0_external_MISO               : in  std_logic                     := 'X';             -- MISO
			spi_0_external_MOSI               : out std_logic;                                        -- MOSI
			spi_0_external_SCLK               : out std_logic;                                        -- SCLK
			spi_0_external_SS_n               : out std_logic;                                        -- SS_n
			spi_0_spi_control_port_writedata  : in  std_logic_vector(15 downto 0) := (others => 'X'); -- writedata
			spi_0_spi_control_port_readdata   : out std_logic_vector(15 downto 0);                    -- readdata
			spi_0_spi_control_port_address    : in  std_logic_vector(2 downto 0)  := (others => 'X'); -- address
			spi_0_spi_control_port_read_n     : in  std_logic                     := 'X';             -- read_n
			spi_0_spi_control_port_chipselect : in  std_logic                     := 'X';             -- chipselect
			spi_0_spi_control_port_write_n    : in  std_logic                     := 'X'              -- write_n
		);
	end component spi;

	u0 : component spi
		port map (
			clk_clk                           => CONNECTED_TO_clk_clk,                           --                    clk.clk
			reset_reset_n                     => CONNECTED_TO_reset_reset_n,                     --                  reset.reset_n
			spi_0_external_MISO               => CONNECTED_TO_spi_0_external_MISO,               --         spi_0_external.MISO
			spi_0_external_MOSI               => CONNECTED_TO_spi_0_external_MOSI,               --                       .MOSI
			spi_0_external_SCLK               => CONNECTED_TO_spi_0_external_SCLK,               --                       .SCLK
			spi_0_external_SS_n               => CONNECTED_TO_spi_0_external_SS_n,               --                       .SS_n
			spi_0_spi_control_port_writedata  => CONNECTED_TO_spi_0_spi_control_port_writedata,  -- spi_0_spi_control_port.writedata
			spi_0_spi_control_port_readdata   => CONNECTED_TO_spi_0_spi_control_port_readdata,   --                       .readdata
			spi_0_spi_control_port_address    => CONNECTED_TO_spi_0_spi_control_port_address,    --                       .address
			spi_0_spi_control_port_read_n     => CONNECTED_TO_spi_0_spi_control_port_read_n,     --                       .read_n
			spi_0_spi_control_port_chipselect => CONNECTED_TO_spi_0_spi_control_port_chipselect, --                       .chipselect
			spi_0_spi_control_port_write_n    => CONNECTED_TO_spi_0_spi_control_port_write_n     --                       .write_n
		);

