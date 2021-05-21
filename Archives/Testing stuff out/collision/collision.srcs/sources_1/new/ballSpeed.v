
module collisionAddOn (

	input 		Clk_100MHz,
	input		Reset,
	input [2:0] collision,	
	input		game_start,
	input		calc_start,

	output reg [9:0] ball_speed,
	output reg [1:0] livesCount
);
    
    
    
	initial begin
		ball_speed <= 10'd10;
		livesCount <= 2'd3;
	end
	
	
	always@(posedge Clk_100MHz)
		if(game_start == 1'b0) begin
			ball_speed <= 10'd10;
			livesCount <= 2'd3;
		end
		
		else begin
		
			if(calc_start == 1'b1) begin
			    // Paddle Collision
				if (collision == 3'b001) begin	
					ball_speed <= ball_speed + 1'd1;   // increment ballspeed by 1 pixel/frame
					livesCount <= livesCount;
			    end	
			    
			    // Net Collision
				else if (collision == 3'b011) begin
				    ball_speed <= ball_speed;
				    livesCount <= (livesCount == 0) ? 0 : livesCount-2'd1; // decrement livesCount
				end
				
				// Any other Collision
				else begin
					ball_speed <= ball_speed;
					livesCount <= livesCount;
				end
			end
			
			else begin
				ball_speed <= ball_speed;
				livesCount <= livesCount;
			end
		end	
endmodule
	
	
	
	