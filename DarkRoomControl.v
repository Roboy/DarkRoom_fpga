module DarkRoomControl (
    input clk,
    input [31:0] timer,
    output reg send_sensor_values
);

reg [7:0] counter;

always @(posedge clk) begin
	send_sensor_values<=0;
	if((timer%1000)==0)
		send_sensor_values<=1;
end

endmodule