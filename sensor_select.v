module sensor_select (
    input clk,
    input [31:0] a,
	 input [31:0] b,
	 input [31:0] c,
	 input [31:0] d,
	 input [31:0] e,
	 input [31:0] f,
	 input [31:0] g,
	 input [31:0] h,
	 input [31:0] i,
	 input [31:0] j,
	 input [31:0] k,
	 input [31:0] l,
	 input [31:0] m,
	 input [31:0] n,
	 input [31:0] o,
	 input [31:0] p,
	 input [15:0] data_available,
    output reg [31:0] sensor_value_out,
	 output reg write
);

reg [7:0] counter;

always @(posedge clk) begin
		write = 0;
		if(^data_available) begin
			counter = counter+1;
			case(data_available)
				16'b0000000000000001: sensor_value_out = a; 
				16'b0000000000000010: sensor_value_out = b;
				16'b0000000000000100: sensor_value_out = c;
				16'b0000000000001000: sensor_value_out = d;
				16'b0000000000010000: sensor_value_out = e;
				16'b0000000000100000: sensor_value_out = f;
				16'b0000000001000000: sensor_value_out = g;
				16'b0000000010000000: sensor_value_out = h;
				16'b0000000100000000: sensor_value_out = i; 
				16'b0000001000000000: sensor_value_out = j;
				16'b0000010000000000: sensor_value_out = k;
				16'b0000100000000000: sensor_value_out = l;
				16'b0001000000000000: sensor_value_out = m;
				16'b0010000000000000: sensor_value_out = n;
				16'b0100000000000000: sensor_value_out = o;
				16'b1000000000000000: sensor_value_out = p;
			endcase
			write = 1;
		end
end

endmodule