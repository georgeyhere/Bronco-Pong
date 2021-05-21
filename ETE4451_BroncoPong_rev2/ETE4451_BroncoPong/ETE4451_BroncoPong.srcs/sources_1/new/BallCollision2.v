`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/14/2021 02:50:38 PM
// Design Name: 
// Module Name: BallCollision2
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


module BallCollisionRev1(
    input           Clk,
    input           Reset,
    
    input           GameEnable,
    input           ballPosReset,
    input [9:0]     ballPosX,
    input [9:0]     ballPosY,
    input [9:0]     paddlePosY,
    
    output reg [2:0] ColOut
    );
    
    parameter [9:0] topBoundary = 73;
    parameter [9:0] bottomBoundary = 472;
    parameter [9:0] leftBoundary = 8;
    parameter [9:0] rightBoundary = 600;
    
    parameter [9:0] paddleX = 592;
    parameter [9:0] paddleYLength = 80;
    
    always@(posedge Clk) begin
        if(Reset == 1'b1 || ballPosReset == 1'b1) begin
            ColOut <= 0;
        end
        else begin
            if(GameEnable == 1'b1) begin 
            // ! if statement priority !
            
                // wall check
                if((ballPosX) < leftBoundary)
                    ColOut <= 5;
                    
                // net check
                else if(ballPosX == rightBoundary)
                    ColOut <= 4;
                    
                // paddle check
                else if((ballPosX >= 592) && (ballPosX < rightBoundary) && ((ballPosY+8) >= paddlePosY) && ((ballPosY) <= (paddlePosY + 80)))
                    ColOut <= 1; 
                      
                // ceiling check
                else if(ballPosY <= topBoundary)
                    ColOut <= 3;
                    
                // floor check
                else if((ballPosY+8) >= bottomBoundary)
                    ColOut <= 2;
                    
                // all checks failed - no collision
                else
                    ColOut <= 0;
            end
            else begin
                ColOut <= ColOut;
            end
        end
    end
endmodule
