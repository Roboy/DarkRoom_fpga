module lighthouse (
	input clk,
	input sensor_signal,
	input reset,
	input signed [31:0] timer,
	output reg [31:0] sensor_data,
	output reg data_ready
);

reg sensor_signal_prev;
reg signed [31:0] t_0;

always @(posedge sensor_signal ) begin: I2C_CONTROL_LOGIC
	reg signed [31:0] duration;
	reg signed [31:0] t_sweep_start;
	reg signed [31:0] t_sweep_stop;
	reg signed [31:0] t_sweep_duration;
	reg signed [31:0] start_valid_sync;
	reg stop_valid_sync;
	reg signed [31:0] sync_gap_duration;
	reg lighthouse;
	reg rotor;
	reg data;
	
	data_ready <= 0;
	if( (sensor_signal_prev == 0) && (sensor_signal == 1) ) // rising edge
		t_0 <= $signed(timer);
	else if( (sensor_signal_prev == 1) && (sensor_signal == 0) ) begin // falling edge
		duration = timer-t_0;
		if(duration < 55) begin
//				t_sweep_duration <= (t_0-t_sweep_start);
			sensor_data <= (t_0-t_sweep_start);
			data_ready <= 1;
		end else if ( (duration >= 55) && (duration < 100) ) begin // sync pulse not skipping
		
			t_sweep_start <= t_0;
		end
	end
endmodule
//				
//				if(start_valid_sync == 0) begin
//					start_valid_sync <= t_0;
//				end else if( (start_valid_sync > 0) && (stop_valid_sync == 0)) begin
//					sensor_data <= t_0 - start_valid_sync;
//					data_ready <= 1;
//					start_valid_sync <= t_0;
//					stop_valid_sync <= 0;
//					if((sync_gap_duration - 15'sd8333 ) > 15'sd300 ) begin
//						lighthouse = 1;
//					end else if ((sync_gap_duration - 15'sd8333 ) < -15'sd300 ) begin
//						lighthouse = 0;
//					end
//				end
//				
//				if( (duration > 58) && (duration < 68) ) begin
//					rotor = 0;
//					data  = 0;
//				end else if( (duration >= 68) && (duration < 78) ) begin
//					rotor = 1;
//					data  = 0;
//				end else if( (duration >= 78) && (duration < 89) ) begin
//					rotor = 0;
//					data  = 1;
//				end else if( (duration >= 89) && (duration < 100) ) begin
//					rotor = 1;
//					data  = 1;
//				end 
				
//				if( (t_sweep_duration < 8000) && (t_sweep_duration > 300) ) begin
//					sensor_data[12] <= 1; //valid sweep
//				end else begin
//					sensor_data[12] <= 0; //not valid
//				end
//				
//				sensor_data[9] <= lighthouse;
//				sensor_data[10] <= rotor;
//				sensor_data[11] <= data;
//				sensor_data[31:13] <= $unsigned(t_sweep_duration[18:0]);
//				data_ready <= 1; //we can send the data shortly after a sync
			
//				sensor_data[15:0] <= $unsigned(duration);
//				data_ready <= 1; //we can send the data shortly after a sync
//			end //else if (duration >= 15'sd100 && duration < 15'sd140) begin
			
//				sensor_data[31:16] <= $unsigned(duration);
//				data_ready <= 1; //we can send the data shortly after a sync
//	end
				
//				
//		end

