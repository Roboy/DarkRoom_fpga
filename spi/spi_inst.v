	spi u0 (
		.clk_clk                           (<connected-to-clk_clk>),                           //                    clk.clk
		.reset_reset_n                     (<connected-to-reset_reset_n>),                     //                  reset.reset_n
		.spi_0_external_MISO               (<connected-to-spi_0_external_MISO>),               //         spi_0_external.MISO
		.spi_0_external_MOSI               (<connected-to-spi_0_external_MOSI>),               //                       .MOSI
		.spi_0_external_SCLK               (<connected-to-spi_0_external_SCLK>),               //                       .SCLK
		.spi_0_external_SS_n               (<connected-to-spi_0_external_SS_n>),               //                       .SS_n
		.spi_0_spi_control_port_writedata  (<connected-to-spi_0_spi_control_port_writedata>),  // spi_0_spi_control_port.writedata
		.spi_0_spi_control_port_readdata   (<connected-to-spi_0_spi_control_port_readdata>),   //                       .readdata
		.spi_0_spi_control_port_address    (<connected-to-spi_0_spi_control_port_address>),    //                       .address
		.spi_0_spi_control_port_read_n     (<connected-to-spi_0_spi_control_port_read_n>),     //                       .read_n
		.spi_0_spi_control_port_chipselect (<connected-to-spi_0_spi_control_port_chipselect>), //                       .chipselect
		.spi_0_spi_control_port_write_n    (<connected-to-spi_0_spi_control_port_write_n>)     //                       .write_n
	);

