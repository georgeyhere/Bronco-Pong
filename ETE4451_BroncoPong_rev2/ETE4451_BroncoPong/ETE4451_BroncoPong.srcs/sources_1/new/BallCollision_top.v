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
    input       Sw2,
    
    input       GameEnable,
    input       LivesCountReset,
    
    input [9:0] paddlePosY,
    input [9:0] ballPosX,
    input [9:0] ballPosY,
    
    output [2:0] ColOut,
    output [9:0] ballSpeed,
    output [1:0] LivesCount
    );
    
    /*
    BallCollision UUT1a (
    .XCord(ballPosX),
    .YCord(ballPosY),
    .PadTY(paddlePosY),
    .Clk(Clk_100MHz),            
    .ColOut(ColOut)          
    );
    */
    
    BallCollisionRev1 UUT1a(
    .Clk(Clk_100MHz),
    .Reset(Reset),
    .GameEnable(GameEnable),
    .ballPosReset(ballPosReset),
    .paddlePosY(paddlePosY),
    .ballPosX(ballPosX),
    .ballPosY(ballPosY),
    .ColOut(ColOut)
    );


    collisionAddOn UUT1b (
    .Clk_100MHz(Clk_100MHz),
    .Reset(Reset),
    .Sw2(Sw2),
    .ColOut(ColOut),
    .GameEnable(GameEnable),
    .LivesCountReset(LivesCountReset),
    .ball_speed(ballSpeed),
    .livesCount(LivesCount),
    .ballPosX(ballPosX),
    .ballPosY(ballPosY),
    .paddlePosY(paddlePosY)
    );
    
    
endmodule
