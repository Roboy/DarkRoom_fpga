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


reg [31:0] start_sensor;


// C code reads
assign readdata = 
	(address == 0) ? 32'h0000_0005 : 
	(address == 1) ? test_duration_high :
	(address == 2) ? test_duration_low :
	32'hDEAD_BEEF;
	
always @(posedge clock, posedge reset) begin: I2C_CONTROL_LOGIC
	if (reset == 1) 
		begin 
			start_sensor <= 0;
			test_start <= 0;
		end 
	else 
		begin		
			// if we are writing via avalon bus and waitrequest is deasserted, write the respective register
			if(write && ~waitrequest) begin
				case(address)
					0: start_sensor <= writedata; 
				endcase 
			end
			
			// start sensor when 1 was written
			if(start_sensor == 1) begin 
				start_sensor <= 0;
				test_start <= 1;				
			end else begin
				test_start <= 0;
			end
			
				
		end 
end

// if sensor ha no data we have to wait
assign waitrequest =~test_ready;



wire 			test_sensor_in;
reg 			test_start;
wire 			test_ready;
wire [31:0]  test_duration_high;
wire [31:0]  test_duration_low;



// test lighthouse sensor
test_lighthouse test_sensor(
	.clk(clock), // clock_1MHz 
	.sensor(sensor_signal_i[1]), // sensor input
	.ready(test_ready),
	.duration_high(test_duration_high), // duration of the last peak
	.duration_low(test_duration_low) // duration of the last peak
);

// real lighthouse sensor
//lighthouse_sensor



endmodule