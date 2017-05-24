module lighthouse (
	input clk,
	input sensor_signal,
	input reset,
	input unsigned [31:0] timer,
	output reg [31:0] sensor_data,
	output reg data_ready
);

reg sensor_signal_prev;
reg [31:0] t_0;

always @(posedge clk, posedge reset) begin: I2C_CONTROL_LOGIC
	reg signed [31:0] duration;
	reg signed [31:0] t_sweep_start;
	reg signed [31:0] t_sweep_stop;
	reg signed [31:0] t_sweep_duration;
	reg signed [31:0] start_valid_sync;
	reg signed [31:0] stop_valid_sync;
	reg signed [31:0] sync_gap_duration;
	reg lighthouse;
	reg rotor;
	reg data;
	if (reset == 1) begin 
		sensor_signal_prev <= 0;
	end else begin
		sensor_signal_prev <= sensor_signal;
		data_ready <= 0;
		if(sensor_signal_prev == 0 && sensor_signal == 1) // rising edge
			t_0 <= timer;
		else if(sensor_signal_prev == 1 && sensor_signal == 0) begin // falling edge
			duration = timer-t_0;
			if(duration < 50+5) begin
				t_sweep_duration <= (t_0-t_sweep_start);
			end else if (duration >= 55 && duration < 100) begin
				t_sweep_start <= t_0;
				
				if(start_valid_sync == 0) 
					start_valid_sync <= t_0;
				else if(start_valid_sync > 0 && stop_valid_sync == 0) 
					stop_valid_sync = t_0;
				end
				
				if((start_valid_sync > 0 && stop_valid_sync > 0)) begin
					sync_gap_duration = stop_valid_sync - start_valid_sync;
					start_valid_sync <= t_0;
					stop_valid_sync = 0;
					if((sync_gap_duration - 8333 ) > 300 ) 
						lighthouse = 1;
					else if ((sync_gap_duration - 8333 ) < -300 ) 
						lighthouse = 0;
					end
				end
				
				if((duration > 63-5) && (duration < 63+5)) begin
					rotor = 0;
					data  = 0;
				end else if((duration > 73-5) && (duration < 73+5)) begin
					rotor = 0;
					data  = 1;
				end else if((duration > 83-5) && (duration < 83+5)) begin
					rotor = 1;
					data  = 0;
				end else if((duration > 94-5) && (duration < 94+5)) begin
					rotor = 1;
					data  = 1;
				end else if((duration > 104-5) && (duration < 104+5)) begin
					rotor = 0;
					data  = 0;
				end else if((duration > 115-5) && (duration < 115+5)) begin
					rotor = 0;
					data  = 1;
				end else if((duration > 125-5) && (duration < 125+5)) begin
					rotor = 1;
					data  = 0;
				end else if((duration > 135-5) && (duration < 135+5)) begin
					rotor = 1;
					data  = 1;
				end
				
//				if(t_sweep_duration < 8000 && t_sweep_duration > 300 )  
//					sensor_data[12] <= 1; //valid sweep
//				else
//					sensor_data[12] <= 0; //not valid
//				end
//				
//				sensor_data[9] <= lighthouse;
//				sensor_data[10] <= rotor;
//				sensor_data[11] <= data;
//				sensor_data[31:13] <= t_sweep_duration[18:0];
				
				sensor_data <= sync_gap_duration;
				
				data_ready <= 1; //we can send the data shortly after a sync
		end
	end

endmodule