
module ballSpeedCalc (

	input 		clk_100MHz,
	input		Reset,
	input [2:0] collision,	
	input		game_start,
	input		calc_start,

	output [9:0] ball_speed
);

	initial begin
		ball_speed <= 10'd10;
	end
	
	
	always@(posedge clk_100MHz)
		if(game_start == 1'b0) begin
			ball_speed <= 10'd10;
		end
		
		else begin
			if(calc_start == 1'b1) begin
				if (collision == 3'b001) begin			
					ball_speed <= ball_speed + 1'd1;
				end
				else begin
					ball_speed <= ball_speed;
				end
			end
			else begin
				ball_speed <= ball_speed;
			end
		end	
	end
	
endmodule
	
	
	
	