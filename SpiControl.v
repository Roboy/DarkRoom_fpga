`timescale 1ns/10ps

module SpiControl (
   input clock,
	input [(8*32)-1:0] data,
	input dataReady,
	input reset_n,
	input di_req,
	input write_ack,
	output reg [7:0] byte,
	output reg wren
);
// Splits the 32-bit data into bitfield chunks
// 
// data -- input data
// dataReady -- signal data is ready for transmission
// send -- toggle the transmission
// bitfield -- which part should be send

reg [7:0] numberOfBytesTransmitted;
reg write_ack_prev;

always @(posedge clock, negedge reset_n) begin: SPICONTROL_SPILOGIC
    if (reset_n == 0) begin
			numberOfBytesTransmitted <= 0;
			wren <= 0;
			write_ack_prev <= 0;
    end
	 
    else begin
			
			write_ack_prev <= write_ack;
			if( write_ack_prev==0 && write_ack == 1 ) begin
				wren <= 0;
				numberOfBytesTransmitted <= numberOfBytesTransmitted + 1;
			end
			
			if(di_req==1 && numberOfBytesTransmitted<34) begin
				case(numberOfBytesTransmitted)
					1: byte <= 0; // this is the address we want to write to on the esp(we start at 0)
					// sensor0
					2: byte <= data[(1*1*8)-1:((1*1-1)*8)];
					3: byte <= data[(1*2*8)-1:((1*2-1)*8)];
					4: byte <= data[(1*3*8)-1:((1*3-1)*8)];
					5: byte <= data[(1*4*8)-1:((1*4-1)*8)];
					// sensor1
					6: byte <= data[(2*1*8)-1:((2*1-1)*8)];
					7: byte <= data[(2*2*8)-1:((2*2-1)*8)];
					8: byte <= data[(2*3*8)-1:((2*3-1)*8)];
					9: byte <= data[(2*4*8)-1:((2*4-1)*8)];
					// sensor3
					10: byte <= data[(3*1*8)-1:((3*1-1)*8)];
					11: byte <= data[(3*2*8)-1:((3*2-1)*8)];
					12: byte <= data[(3*3*8)-1:((3*3-1)*8)];
					13: byte <= data[(3*4*8)-1:((3*4-1)*8)];
					// sensor4
					14: byte <= data[(4*1*8)-1:((4*1-1)*8)];
					15: byte <= data[(4*2*8)-1:((4*2-1)*8)];
					16: byte <= data[(4*3*8)-1:((4*3-1)*8)];
					17: byte <= data[(4*4*8)-1:((4*4-1)*8)];
					// sensor5
					18: byte <= data[(5*1*8)-1:((5*1-1)*8)];
					19: byte <= data[(5*2*8)-1:((5*2-1)*8)];
					20: byte <= data[(5*3*8)-1:((5*3-1)*8)];
					21: byte <= data[(5*4*8)-1:((5*4-1)*8)];
					// sensor6
					22: byte <= data[(6*1*8)-1:((6*1-1)*8)];
					23: byte <= data[(6*2*8)-1:((6*2-1)*8)];
					24: byte <= data[(6*3*8)-1:((6*3-1)*8)];
					25: byte <= data[(6*4*8)-1:((6*4-1)*8)];
					// sensor7
					26: byte <= data[(7*1*8)-1:((7*1-1)*8)];
					27: byte <= data[(7*2*8)-1:((7*2-1)*8)];
					28: byte <= data[(7*3*8)-1:((7*3-1)*8)];
					29: byte <= data[(7*4*8)-1:((7*4-1)*8)];
					// sensor8
					30: byte <= data[(8*1*8)-1:((8*1-1)*8)];
					31: byte <= data[(8*2*8)-1:((8*2-1)*8)];
					32: byte <= data[(8*3*8)-1:((8*3-1)*8)];
					33: byte <= data[(8*4*8)-1:((8*4-1)*8)];
					default: byte <= numberOfBytesTransmitted-2;
				endcase
				wren <= 1;
			end
			
			if (dataReady==1) begin
				numberOfBytesTransmitted<= 0;
				byte <= 2;
				wren <= 1;
			end
    end
end

endmodule
