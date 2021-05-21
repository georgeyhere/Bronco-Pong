`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/06/2021 10:38:16 AM
// Design Name: 
// Module Name: collTest_top
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


module collTest_top(
    input       Clk_100MHz,
    input       Reset,
    input       game_start,
    input       calc_start,
    
    input [9:0] XCord,
    input [9:0] YCord,
    input [9:0] PadTY,
    
    output [9:0] ball_speed,
    output [1:0] livesCount
    );
    
    wire [2:0] ColOut;
    wire [5:0] ColSel;
    
    
    BallCollision UUT0 (
    .Clk(Clk_100MHz),
    .ColOut(ColOut),
    .ColSel(ColSel),
    .XCord(XCord),   // ball xcord
    .YCord(YCord),   // ball ycord
    .PadTY(PadTY)    // ball top y cord
    );
    
    collisionAddOn UUT1(
    .Clk_100MHz(Clk_100MHz),
    .Reset(Reset),
    .collision(ColOut),
    .game_start(game_start),
    .calc_start(calc_start),
    .ball_speed(ball_speed),
    .livesCount(livesCount)
    );
    
    
endmodule
