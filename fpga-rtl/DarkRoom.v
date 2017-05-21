// DarkRoom node
// you can read out the registers via avalon bus in the following way:
// #define IORD(base,reg) (*(((volatile uint32_t*)base)+reg))
// #define IOWR(base,reg,data) (*(((volatile uint32_t*)base)+reg)=data)
// where reg corresponds to the address of the avalon slave

`timescale 1ns/10ps

module DarkRoom (
	input clock,
	input reset_n,
	// this is for the avalon interface
	input [5:0] address,
	input write,
	input signed [31:0] writedata,
	input read,
	output signed [31:0] readdata,
	output waitrequest,
//	output interrupt_sender_irq,
	// these are the spi ports
	input [15:0] sensor_signal_i,
	output [6:0] LED
);

// sensor results
reg unsigned [31:0] sensor0;
reg unsigned [31:0] sensor1;
reg unsigned [31:0] sensor2;
reg unsigned [31:0] sensor3;
reg unsigned [31:0] sensor4;
reg unsigned [31:0] sensor5;
reg unsigned [31:0] sensor6;
reg unsigned [31:0] sensor7;
reg unsigned [31:0] sensor8;
reg unsigned [31:0] sensor9;
reg unsigned [31:0] sensor10;
reg unsigned [31:0] sensor11;
reg unsigned [31:0] sensor12;
reg unsigned [31:0] sensor13;
reg unsigned [31:0] sensor14;
reg unsigned [31:0] sensor15;

reg unsigned [15:0] data_available;

assign readdata = 
	((address == 0))? sensor0 :
	((address == 1))? sensor1 :
	((address == 2))? sensor2 :
	((address == 3))? sensor3 :
	((address == 4))? sensor4 :
	((address == 5))? sensor5 :
	((address == 6))? sensor6 :
	((address == 7))? sensor7 :
	((address == 8))? sensor8 :
	((address == 10))? sensor9 :
	((address == 11))? sensor10 :
	((address == 12))? sensor11 :
	((address == 13))? sensor12 :
	((address == 14))? sensor13 :
	((address == 15))? sensor14 :
	((address == 16))? data_available:
	32'hDEAD_BEEF;

// when spi is done we transfer the results, which would be a bad time to read the values.
assign waitrequest = 0;

wire clock_1MHz;
wire [31:0] timer;

assign LED[3:0] = timer[24:21];
assign LED[4] = data_available[0];
assign LED[5] = data_available[1];
assign LED[6] = data_available[2];

pll pll_1MHz(
	.refclk(clock),
	.rst(reset_n),
	.outclk_0(clock_1MHz)
);

Counter counter(
	.clk(clock_1MHz),
	.reset(~reset_n),
	.count(timer)
);

lighthouse #(0) sensor0_decoder(
	.sensor(sensor_signal_i[0]),
	.timer(timer),
	.sensor_value(sensor0),
	.data_available(data_available[0])
);

lighthouse #(1) sensor1_decoder(
	.sensor(sensor_signal_i[1]),
	.timer(timer),
	.sensor_value(sensor1),
	.data_available(data_available[1])
);

lighthouse #(2) sensor2_decoder(
	.sensor(sensor_signal_i[2]),
	.timer(timer),
	.sensor_value(sensor2),
	.data_available(data_available[2])
);

lighthouse #(3) sensor3_decoder(
	.sensor(sensor_signal_i[3]),
	.timer(timer),
	.sensor_value(sensor3),
	.data_available(data_available[3])
);

lighthouse #(4) sensor4_decoder(
	.sensor(sensor_signal_i[4]),
	.timer(timer),
	.sensor_value(sensor4),
	.data_available(data_available[4])
);

lighthouse #(5) sensor5_decoder(
	.sensor(sensor_signal_i[5]),
	.timer(timer),
	.sensor_value(sensor5),
	.data_available(data_available[5])
);

lighthouse #(6) sensor6_decoder(
	.sensor(sensor_signal_i[6]),
	.timer(timer),
	.sensor_value(sensor6),
	.data_available(data_available[6])
);

lighthouse #(7) sensor7_decoder(
	.sensor(sensor_signal_i[7]),
	.timer(timer),
	.sensor_value(sensor7),
	.data_available(data_available[7])
);

lighthouse #(8) sensor8_decoder(
	.sensor(sensor_signal_i[8]),
	.timer(timer),
	.sensor_value(sensor8),
	.data_available(data_available[8])
);

endmodule

