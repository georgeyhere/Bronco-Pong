`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:39:24 04/25/2021 
// Design Name: 
// Module Name:    Ball_position 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Ball_position(ball_x,ball_y,clock,game_start, ball_speed,calc_start, draw_ball,
    CounterX,CounterY);
	 output reg [31:0] ball_x = 0;
	 output reg [31:0] ball_y = 0;
	 output reg 		 draw_ball;
	 input [9:0] 		 ball_speed;
	 input 				 calc_start;
	 
	 input game_start;
	 input clock;
	 
	 reg [32:0] ball_count;
	 reg [31:0] prevball_x = 0;
	 reg [31:0] prevball_y = 0;
	  
	 input [9:0] CounterX;
	 input [8:0] CounterY;
	 
	 parameter Screen_X = 640;
	 parameter Screen_Y = 400;
	 
	 
	 //sets the ball at start of game in center of screen
	 
	 always @ (posedge clock) begin
		 if(game_start == 1'b0)
			begin
				ball_x		<= Screen_X/2;
				ball_y		<= Screen_Y/2;
				prevball_x 	<= (Screen_X)/2 - 1;
				prevball_y  <= (Screen_Y)/2 + 1;
		end
	
	// update ball counter
	
		
	  else if(calc_start == 1)
		begin 
			if (ball_count < ball_speed)
				ball_count <= ball_count + 1;
	
		else
		 begin
		  ball_count <= 0;
		// Stores previous position of ball
		prevball_x <= ball_x;
		prevball_y <= ball_y;
		
		// If previous ball position is less the current, ball moves
		// to the right. If ball position is greater than current ball 
		// moves to the left. Same thing applies for y position
		
		 if ((prevball_x < ball_x && ball_x == Screen_X - 1) ||
			 (prevball_x > ball_x && ball_x != 0))
			  ball_x <= ball_x - 1; 
		 else
			 ball_x <= ball_x + 1;
			 
		 if ((prevball_y < ball_y && ball_y == Screen_Y - 1) ||
			 (prevball_y > ball_y && ball_y != 0))
			  ball_y <= ball_y - 1;
		else
			 ball_y <= ball_y + 1;	
	end
	end	
	end
	
	always @ (posedge clock) begin		 
			if (CounterX == ball_x && CounterY == ball_y)
			draw_ball <= 1'd1; // Draw ball
			else
			draw_ball <= 1'd0; // Dont draw ball
	end
		
		
		


endmodule
