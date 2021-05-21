`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/11/2021 07:57:47 PM
// Design Name: 
// Module Name: BallCollision_top
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


module BallCollision_top(
    input       Clk_100MHz,
    input       Reset,
    
    input       GameEnable,
    input       LivesCountReset,
    
    input [9:0] paddlePosY,
    input [9:0] ballPosX,
    input [9:0] ballPosY,
    
    output [2:0] ColOut,
    output [9:0] ballSpeed,
    output [1:0] LivesCount
    );
    
    BallCollision UUT1a (
    .XCord(ballPosX),
    .YCord(ballPosY),
    .PadTY(paddlePosY),
    .Clk(Clk_100MHz),            
    .ColOut(ColOut)          
    );
    
    collisionAddOn UUT1b (
    .Clk_100MHz(Clk_100MHz),
    .Reset(Reset),
    .ColOut(ColOut),
    .GameEnable(GameEnable),
    .LivesCountReset(LivesCountReset),
    .ball_speed(ballSpeed),
    .livesCount(LivesCount)
    );
    
    
endmodule
