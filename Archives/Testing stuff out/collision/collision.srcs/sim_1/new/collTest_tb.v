`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/06/2021 10:55:25 AM
// Design Name: 
// Module Name: collTest_tb
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


module collTest_tb();

    reg Clk = 0;
    reg Reset;
    reg game_start;
    reg calc_start;
    
    reg [9:0] XCord;
    reg [9:0] YCord;
    reg [9:0] PadTY;
    
    wire [9:0] ball_speed;
    wire [1:0] livesCount;
    
    parameter CLK_PERIOD = 10;
    always#(CLK_PERIOD/2) begin
        Clk = ~Clk;
    end
    
    collTest_top UUT(
    .Clk_100MHz(Clk),
    .Reset(Reset),
    .game_start(game_start),
    .calc_start(calc_start),
    .XCord(XCord),
    .YCord(YCord),
    .PadTY(PadTY),
    .ball_speed(ball_speed),
    .livesCount(livesCount)
    );
    
    initial begin
        game_start = 0;
        calc_start = 0;
        XCord = 0;
        YCord = 0;
        PadTY = 0;
        Reset = 1;
        #100;
        @(posedge Clk)
            game_start = 1;
        @(posedge Clk)
        @(posedge Clk)
            calc_start = 1;
            XCord = 633;
            YCord = 80;
            PadTY = 79;
        @(posedge Clk)
            calc_start = 1;
        @(posedge Clk)
            calc_start = 1;
            XCord = 600;
            YCord = 80;
            PadTY = 79;
        @(posedge Clk)
            calc_start = 1;
    end

endmodule
