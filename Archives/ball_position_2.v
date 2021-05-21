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
module ball_position_2(clk,ball_x,ball_y
    );
	 
	 output reg [9:0] ball_x = 0;
	 output reg [9:0] ball_y = 0;
			  reg ball_inX;
			  reg ball_inY;
			  reg ball_pos;
			  reg ball_dirX;
			  reg ball_dirY;
			  
			  reg [9:0] CounterX;
			  reg [9:0] CounterY;
			  input clk;
			  
			  
			  parameter WallX_right = 0;
			  parameter WallX_left =640;
			  parameter WallY_Top = 0;
			  parameter WallY_bottom = 400;
			  
	
	always @ (posedge clk)
		if (ball_inX == 0)
			ball_inX <= (CounterX == ball_x); //Draws x coordinate of ball
		else 
			ball_inX <= !(CounterX == ball_x+16);
		
	always @ (posedge clk)
		if (ball_inY == 0)
			ball_inY<= (CounterY == ball_x); //Draws y coordinate of ball 
		else 
			ball_inX <= !(CounterX == ball_x+16);
	
	always @ (posedge clk)
		ball_pos <= (CounterY == 500) & (CounterX == 0);
	
	always @ (posedge clk)
		if (ball_pos) begin
			if (~(WallX_right & WallX_left))
			begin 
				ball_x <= ball_x + (ball_dirX ? -1:1);
					if (WallX_left) 
						ball_dirX <= 1; // ball will move negative X direction
						else if (WallX_right)
							ball_dirX <=0;// ball will move positive X direction
				end
			
			if (~(WallY_Top & WallY_bottom))
			begin 
				ball_y <= ball_y + (ball_dirY ? -1:1);
					if (WallY_Top) 
						ball_dirY <= 1; // ball will move negative Y direction
						else if (WallY_bottom)
							ball_dirY <=0;// ball will move positive Y direction
				end
		end
		

endmodule
