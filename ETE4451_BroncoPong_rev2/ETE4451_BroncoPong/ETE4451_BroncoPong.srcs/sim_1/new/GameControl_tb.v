`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/10/2021 05:27:10 PM
// Design Name: 
// Module Name: GameControl_tb
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


module GameControl_tb();

    reg Clk_100MHz = 0;
    reg Reset;
    reg vsync;
    reg startButton;
    reg pauseSwitch;
    reg [1:0] LivesCount = 2'd3;
    
    wire Game_Enable;
    wire GameTimer_Enable;
    wire GameTimer_Reset;
    wire Display_Enable;
    wire Welcome_Enable;
    wire startPrompt_Enable;
    
    parameter CLK_PERIOD = 10;
    always#(CLK_PERIOD/2) begin
        Clk_100MHz  = ~Clk_100MHz;
    end
    
    GameControl_top UUT(
    .Clk_100MHz(Clk_100MHz),
    .Reset(Reset),
    .VMA_busy(vsync),
    .startButton(startButton),
    .pauseSwitch(pauseSwitch),
    .LivesCount(LivesCount),
    .Game_Enable(Game_Enable),
    .GameTimer_Enable(GameTimer_Enable),
    .GameTimer_Reset(GameTimer_Reset),
    .Welcome_Enable(Welcome_Enable),
    .Display_Enable(Display_Enable),
    .startPrompt_Enable(startPrompt_Enable)
    );
    
    initial begin
        Reset <= 0;
        vsync <= 0;
        startButton <= 0;
        pauseSwitch <= 0;
        #100;      
        startButton <= 1;
        @(posedge Clk_100MHz)  
            startButton <= 0;
        @(posedge Clk_100MHz)
            vsync = 1;
            #60;
        @(posedge Clk_100MHz)
            vsync = 0;
        #300;
        pauseSwitch <= 1;
        #100;
        pauseSwitch <= 0;
        
    end
    
endmodule
