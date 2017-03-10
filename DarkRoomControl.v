module DarkRoomControl (
    input clk,
    input [31:0] timer,
	 input [31:0] command,
	 output reg start,
	 output reg state
);

always @(posedge clk) begin
	start<=0;
	if((timer%1000)==0) begin
		state <= 0;	
		start <= 1;
	end
end

endmodule