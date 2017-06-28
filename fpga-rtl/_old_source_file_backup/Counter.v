`timescale 1ns/10ps

module Counter (
   output reg [31:0] count,
	input clk,
	input reset
);

always @(posedge clk, posedge reset) begin: COUNTER_COUNTERLOGIC
    if (reset == 1)
        count <= 0;
    else
        count <= count + 1;
end

endmodule
