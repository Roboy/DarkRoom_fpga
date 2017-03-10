module sensor_select (
    input clk,
    input [31:0] sensor_value0,
	 input [31:0] sensor_value1,
	 input [31:0] sensor_value2,
	 input [31:0] sensor_value3,
	 input [31:0] sensor_value4,
	 input [31:0] sensor_value5,
	 input [31:0] sensor_value6,
	 input [31:0] sensor_value7,
	 input [31:0] sensor_value8,
	 input [7:0] data_available,
    output reg [31:0] sensor_value_out,
	 output reg write
);

reg [7:0] counter;

always @(posedge clk) begin
		write = 0;
		if(^data_available) begin
			counter = counter+1;
			case(data_available)
				8'b00000001: sensor_value_out = sensor_value0; 
				8'b00000010: sensor_value_out = sensor_value1;
				8'b00000100: sensor_value_out = sensor_value2;
				8'b00001000: sensor_value_out = sensor_value3;
				8'b00010000: sensor_value_out = sensor_value4;
				8'b00100000: sensor_value_out = sensor_value5;
				8'b01000000: sensor_value_out = sensor_value6;
				8'b10000000: sensor_value_out = sensor_value7;
			endcase
			write = 1;
		end
end

endmodule