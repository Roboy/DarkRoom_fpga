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
	input [31:0] writedata,
	input read,
	output [31:0] readdata,
	output waitrequest,
	input reset_key,
	input [15:0] sensor_signal_i,
	output [6:0] LED
);

// sensor results
reg [31:0] sensor1;
reg [31:0] sensor2;
reg [31:0] sensor3;
reg [31:0] sensor4;
reg [31:0] sensor5;
reg [31:0] sensor6;
reg [31:0] sensor7;
reg [31:0] sensor8;
reg [31:0] sensor9;
reg [31:0] sensor10;
reg [31:0] sensor11;
reg [31:0] sensor12;
reg [31:0] sensor13;
reg [31:0] sensor14;
reg [31:0] sensor15;

reg [15:0] data_available;

assign readdata = 
	((address == 0))? data_available:
	((address == 1))? sensor1 :
	((address == 2))? sensor2 :
	((address == 3))? sensor3 :
	((address == 4))? sensor4 :
	((address == 5))? sensor5 :
	((address == 6))? sensor6 :
	((address == 7))? sensor7 :
	((address == 8))? sensor8 :
	((address == 9))? sensor9 :
	((address == 10))? sensor10 :
	((address == 11))? sensor11 :
	((address == 12))? sensor12 :
	((address == 13))? sensor13 :
	((address == 14))? sensor14 :
	32'hDEAD_BEEF;

// when spi is done we transfer the results, which would be a bad time to read the values.
assign waitrequest = 0;//!data_available[2];

wire clock_1MHz;
wire [31:0] timer;

assign LED[3:0] = timer[24:21];
assign LED[4] = data_available[0];
assign LED[5] = data_available[1];
assign LED[6] = data_available[2];

pll pll_1MHz(
	.refclk(clock),
	.rst(~reset_n),
	.outclk_0(clock_1MHz)
);

Counter counter(
	.clk(clock_1MHz),
	.reset(~reset_n),
	.count(timer)
);

lighthouse sensor2_decoder(
	.sensor(sensor_signal_i[2]),
	.timer(timer),
	.sensor_data(sensor2),
	.data_ready(data_available[2])
);

endmodule