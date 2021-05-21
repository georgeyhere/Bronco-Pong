`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/11/2021 08:22:32 PM
// Design Name: 
// Module Name: BallPosition
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


module BallPosition(
    output reg [31:0] ball_x,
    output reg [31:0] ball_y,
    
    input       clock,
    input       Reset,
    input       ballPosReset,
    input [9:0] ball_speed,
    input       game_start 
    );
    
    reg [32:0] ball_count;
	reg [31:0] prevball_x = 0;
	reg [31:0] prevball_y = 0;
	
    parameter Screen_X = 640;
    parameter Screen_Y = 400;
    
    //sets the ball at start of game in center of screen
    always@(posedge clock) begin
        if((ballPosReset == 1'b1)||(Reset==1'b1)) begin
            ball_x      <= Screen_X/2;
            ball_y      <= Screen_Y/2;
            prevball_x 	<= (Screen_X)/2 - 1;
            prevball_y  <= (Screen_Y)/2 + 1;
        end
        
        // update ball counter
        else begin
            if(game_start == 1'b1) begin
            
            end
            else begin
            
            end
        end
    end
    
    
    
endmodule
