`timescale 1ns/10ps

module ConcatenateSensorValues (
	output [(8*32)-1:0] data,
	input [31:0] sensor0,
	input [31:0] sensor1,
	input [31:0] sensor2,
	input [31:0] sensor3,
	input [31:0] sensor4,
	input [31:0] sensor5,
	input [31:0] sensor6,
	input [31:0] sensor7
);

assign data[(1*32)-1:(0*32)] = sensor0;
assign data[(2*32)-1:(1*32)] = sensor1;
assign data[(3*32)-1:(2*32)] = sensor2;
assign data[(4*32)-1:(3*32)] = sensor3;
assign data[(5*32)-1:(4*32)] = sensor4;
assign data[(6*32)-1:(5*32)] = sensor5;
assign data[(7*32)-1:(6*32)] = sensor6;
assign data[(8*32)-1:(7*32)] = sensor7;

endmodule