
module spi (
	clk_clk,
	reset_reset_n,
	spi_0_external_MISO,
	spi_0_external_MOSI,
	spi_0_external_SCLK,
	spi_0_external_SS_n,
	spi_0_spi_control_port_writedata,
	spi_0_spi_control_port_readdata,
	spi_0_spi_control_port_address,
	spi_0_spi_control_port_read_n,
	spi_0_spi_control_port_chipselect,
	spi_0_spi_control_port_write_n);	

	input		clk_clk;
	input		reset_reset_n;
	input		spi_0_external_MISO;
	output		spi_0_external_MOSI;
	output		spi_0_external_SCLK;
	output		spi_0_external_SS_n;
	input	[15:0]	spi_0_spi_control_port_writedata;
	output	[15:0]	spi_0_spi_control_port_readdata;
	input	[2:0]	spi_0_spi_control_port_address;
	input		spi_0_spi_control_port_read_n;
	input		spi_0_spi_control_port_chipselect;
	input		spi_0_spi_control_port_write_n;
endmodule
