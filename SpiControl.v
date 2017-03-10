`timescale 1ns/10ps

module SpiControl (
   input clock,
	input [31:0] data,
	input [8:0] fifo_content,
	input reset_n,
	input di_req,
	input write_ack,
	input mpu_interrupt_in,
	input send,
	output reg [7:0] Byte,
	output reg wren,
	output reg fifo_read,
	output mpu_interrupt_out
);
// Splits the 32-bit data into bitfield chunks
// 
// data -- input data
// dataReady -- signal data is ready for transmission
// send -- toggle the transmission
// bitfield -- which part should be send

reg [7:0] numberOfBytesTransmitted;
reg write_ack_prev;
reg [31:0]sensor_value;
reg next_value;

assign mpu_interrupt_out = mpu_interrupt_in;

always @(posedge clock, negedge reset_n) begin: SPICONTROL_SPILOGIC
	 if (reset_n == 0) begin
		numberOfBytesTransmitted <= 34;
		wren <= 0;
		write_ack_prev <= 0;
    end else begin
		fifo_read <= 0;
		write_ack_prev <= write_ack;
		if( write_ack_prev==0 && write_ack == 1) begin
			wren <= 0;
			numberOfBytesTransmitted <= numberOfBytesTransmitted + 1;
			next_value <= 1;
		end
		
		if(di_req==1 && numberOfBytesTransmitted<34 && next_value==1) begin
			if(numberOfBytesTransmitted==1) 
				Byte <= 0; // this is the address we want to write to on the esp(we start at 0)
			else begin
				case((numberOfBytesTransmitted-2)%4)
					0: Byte <= data[7:0];
					1: Byte <= data[15:8];
					2: Byte <= data[23:16];
					3: Byte <= data[31:24];
					default: Byte <= 255;
				endcase
				if((numberOfBytesTransmitted-2)%4==3) begin
					fifo_read <= 1;
				end
			end
			wren <= 1;
			next_value <= 0;
		end
		
		if (send==1 && numberOfBytesTransmitted>=34) begin
			numberOfBytesTransmitted<= 0;
			Byte <= 2;
			wren <= 1;
			next_value <= 1;
		end
	end
end

endmodule
