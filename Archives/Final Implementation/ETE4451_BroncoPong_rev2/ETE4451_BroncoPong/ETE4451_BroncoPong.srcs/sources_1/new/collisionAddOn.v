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
	input [2:0] ColOut,	
	input		GameEnable,
	input       LivesCountReset,

	output reg [9:0] ball_speed,
	output reg [1:0] livesCount
);
    
    
    
	initial begin
		ball_speed <= 10'd10;
		livesCount <= 2'd3;
	end
	
	always@(posedge Clk_100MHz)
	   if (Reset == 1'b1) begin
	       ball_speed <= 0;
	       livesCount <= 2'd3;
	   end
	   else begin
	
		if(GameEnable == 1'b0) begin
			ball_speed <= 10'd10;
			livesCount <= 2'd3;
		end	
		else begin
			 // Paddle Collision
			if (ColOut == 3'b001) begin	
				ball_speed <= ball_speed + 1'd1;   // increment ballspeed by 1 pixel/frame
				livesCount <= livesCount;
			 end	
			 
			 // Net Collision
			else if (ColOut == 3'b011) begin
			    ball_speed <= ball_speed;
			    livesCount <= (livesCount == 0) ? 0 : livesCount-2'd1; // decrement livesCount
			end
			
			// Any other Collision
			else begin
				ball_speed <= ball_speed;
				livesCount <= livesCount;
			end
		end	
	end
endmodule