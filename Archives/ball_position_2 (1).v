`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:07:22 05/05/2021 
// Design Name: 
// Module Name:    ball_position_2 
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
module ball_position_2(clk,ball_x,ball_y,game_enable,ballPosReset,ball_speed,col
);
	 
	 output reg [9:0] ball_x = 0;
	 output reg [9:0] ball_y = 0;
			  
			  reg ball_dirX = 0;
			  reg ball_dirY = 0;
			  
			  input clk;
			  input game_enable;
			  input ballPosReset;
			  input [9:0] ball_speed;
			  input [2:0] col;
			  
	
	always @ (posedge clk)
		if (ballPosReset) begin
			ball_x = 320;
			ball_y = 20;
		end
		
		else if (game_enable) begin //invert x and y
			if (col == 3'd1) begin
				ball_dirX <= ~(ball_dirX);
				ball_dirY <= ~(ball_dirY); 
				
			end
			else if (col == 3'd2) begin //reset ball postion
				ball_x = 320;
				ball_y = 20;
			end
			else if (col == 3'd3) begin // same x and invert y
				ball_dirX <= ball_dirX;
				ball_dirY <= ~(ball_dirY);
			end
			else if (col == 3'd4) begin // same x and invert y
				ball_dirX <= ball_dirX;
				ball_dirY <= ~(ball_dirY);
			end
			else if (col == 3'd5) begin // invert x and same y
				ball_dirX <= ~(ball_dirX);
				ball_dirY <= ball_dirY;
		
		 end
		 ball_x <= ball_x + (ball_dirX ? -ball_speed : ball_speed);
		 ball_y <= ball_y + (ball_dirY ? -ball_speed: ball_speed);
		end
endmodule
