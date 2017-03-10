`timescale 1ns/10ps

module SpiControl (
   input clock,
	input [31:0] data,
	input [8:0] fifo_content,
	input reset_n,
	input di_req,
	input write_ack,
	input data_read_valid,
	input [7:0]data_read,
	input mpu_interrupt_in,
	input start,
	input state,
	output reg fifo_read,
	output reg [7:0] Byte,
	output reg wren,
	output mpu_interrupt_out,
	output reg [31:0]command,
	output reg active
);

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
		if(state==0) begin // spi transmit 256bitframe consisting of 8 sensor values a 32bit
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
			
			if ( numberOfBytesTransmitted>=34 ) begin
				active <= 0;
				if (start==1 && fifo_content>8) begin
					numberOfBytesTransmitted<= 0;
					Byte <= 2;
					wren <= 1;
					next_value <= 1;
					active <= 1;
				end
			end 
			
		end else if (state==1) begin // read command register
			write_ack_prev <= write_ack;
			if( write_ack_prev==0 && write_ack == 1) begin
				wren <= 0;
				numberOfBytesTransmitted <= numberOfBytesTransmitted + 1;
				next_value <= 1;
			end
			
			if(di_req==1 && numberOfBytesTransmitted<5 && next_value==1) begin
				wren <= 1;
				next_value <= 0;
			end
			
			if(data_read_valid==1) begin
				case(numberOfBytesTransmitted)
					2: command[31:24] <= data_read;
					3: command[23:16] <= data_read;
					4: command[15:8] <= data_read;
					5: command[7:0] <= data_read;
				endcase
			end
			
			
			if ( numberOfBytesTransmitted>=5 ) begin
				active <= 0;
				if (start==1) begin
					numberOfBytesTransmitted<= 0;
					Byte <= 0;
					wren <= 1;
					next_value <= 1;
					active <= 1;
				end
			end 
			
		end
	end
end

endmodule
