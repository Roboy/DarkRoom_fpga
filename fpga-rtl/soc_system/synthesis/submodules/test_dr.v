// I2C_avalon_bridge node
// you can read out the registers via avalon bus in the following way:
// #define IORD(base,reg) (*(((volatile uint32_t*)base)+reg))
// #define IOWR(base,reg,data) (*(((volatile uint32_t*)base)+reg)=data)
// where reg corresponds to the address of the avalon slave

`timescale 1ns/10ps

module test_dr (
	input clock,
	input reset,
	
	// this is for the avalon interface
	input [2:0] address,
	input write,
	input signed [31:0] writedata,
	input read,
	output signed [31:0] readdata,
	output waitrequest,
	
	// lighthouse sensors
	input [15:0] sensor_signal_i
);


// SENSOR RESULTS
wire [31:0] sensor_combined_data_00;
wire [31:0] sensor_combined_data_01;
wire [31:0] sensor_combined_data_02;
wire [31:0] sensor_combined_data_03;
wire [31:0] sensor_combined_data_04;
wire [31:0] sensor_combined_data_05;
wire [31:0] sensor_combined_data_06;
wire [31:0] sensor_combined_data_07;
wire [31:0] sensor_combined_data_08;


// OUTPUT TO THE ARM CORE
assign readdata = 
	(address == 0) ? sensor_combined_data_00 :
	(address == 1) ? sensor_combined_data_01 :
	(address == 2) ? sensor_combined_data_02 :
	(address == 3) ? sensor_combined_data_03 :
	(address == 4) ? sensor_combined_data_04 :
	(address == 5) ? sensor_combined_data_05 :
	(address == 6) ? sensor_combined_data_06 :
	(address == 7) ? sensor_combined_data_07 :
	(address == 8) ? sensor_combined_data_08 :
						  32'hDEAD_BEEF;

assign waitrequest = 0;

// SENSORS
lighthouse_sensor awesome_lighthouse00 (
	.clk(clock),
	.sensor(sensor_signal_i[0]),
	.combined_data(sensor_combined_data_00)
);

lighthouse_sensor awesome_lighthouse01 (
	.clk(clock),
	.sensor(sensor_signal_i[1]),
	.combined_data(sensor_combined_data_01)
);

lighthouse_sensor awesome_lighthouse02 (
	.clk(clock),
	.sensor(sensor_signal_i[2]),
	.combined_data(sensor_combined_data_02)
);


lighthouse_sensor awesome_lighthouse03 (
	.clk(clock),
	.sensor(sensor_signal_i[3]),
	.combined_data(sensor_combined_data_03)
);

lighthouse_sensor awesome_lighthouse04 (
	.clk(clock),
	.sensor(sensor_signal_i[4]),
	.combined_data(sensor_combined_data_04)
);

lighthouse_sensor awesome_lighthouse05 (
	.clk(clock),
	.sensor(sensor_signal_i[5]),
	.combined_data(sensor_combined_data_05)
);

lighthouse_sensor awesome_lighthouse06 (
	.clk(clock),
	.sensor(sensor_signal_i[6]),
	.combined_data(sensor_combined_data_06)
);

lighthouse_sensor awesome_lighthouse07 (
	.clk(clock),
	.sensor(sensor_signal_i[7]),
	.combined_data(sensor_combined_data_07)
);

lighthouse_sensor awesome_lighthouse08 (
	.clk(clock),
	.sensor(sensor_signal_i[8]),
	.combined_data(sensor_combined_data_08)
);

endmodule