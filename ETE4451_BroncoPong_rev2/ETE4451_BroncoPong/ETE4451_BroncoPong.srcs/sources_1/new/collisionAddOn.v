`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/11/2021 08:04:34 PM
// Design Name: 
// Module Name: collisionAddOn
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module collisionAddOn (

	input 		Clk_100MHz,
	input		Reset,
	input       Sw2,
	input [2:0] ColOut,	
	
	input [9:0] ballPosX,
	input [9:0] ballPosY,
	input [9:0] paddlePosY,
	
	input		GameEnable,
	input       LivesCountReset,
    
	output reg [9:0] ball_speed,
	output reg [1:0] livesCount
);
    
    reg livesCount_R;
    
    
	initial begin
		ball_speed <= 10'd1;
		livesCount <= 2'd3;
	end

	
	always@(posedge Clk_100MHz)
	   if (Reset == 1'b1 || LivesCountReset == 1) begin
	       ball_speed <= 1;
	       livesCount <= 2'd3;
	   end
	   else begin
		if(GameEnable == 1'b0) begin
			ball_speed <= ball_speed;
			livesCount <= livesCount;
		end	
		else begin
			 // Paddle Collision
			 if(ColOut == 1) begin	
				ball_speed <= (Sw2 == 1) ? 2 : ball_speed + 1;   // increment ballspeed by 1 pixel/frame
				livesCount <= livesCount;
			 end	
			 
			 // Net Collision
			else if (ColOut == 4) begin
			    ball_speed <= ball_speed;
			    livesCount <= (livesCount == 0) ? 0 : livesCount-1; // decrement livesCount
			end
			
			// Any other Collision
			else begin
				ball_speed <= ball_speed;
				livesCount <= livesCount;
			end
		end	
	end
	
endmodule