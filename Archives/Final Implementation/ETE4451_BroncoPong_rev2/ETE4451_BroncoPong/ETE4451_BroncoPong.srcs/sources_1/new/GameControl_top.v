`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/10/2021 06:25:33 PM
// Design Name: 
// Module Name: GameControl_top
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


module GameControl_top(
    input           Clk_100MHz,
    input           Reset,
    input           VMA_busy,
    input           startButton,
    input           pauseSwitch,
    input [1:0]     LivesCount,
    
    output       Display_Enable,
    output       Game_Enable,
    output       GameTimer_Enable,
    output       GameTimer_Reset,
    output       Welcome_Enable,
    output       startPrompt_Enable,
    
    output       ballPosReset,
    output       paddlePosReset,
    output       LivesCountReset
    );
    
    wire ControlTimer_Enable;
    wire ControlTimer_Done;
    wire [7:0] SecondsCounter;
    
    GameControl UUT0a(
    .Clk(Clk_100MHz),
    .Reset(Reset),
    .VMA_busy(VMA_busy),
    .startButton(startButton),
    .pauseSwitch(pauseSwitch),
    .LivesCount(LivesCount),
    .ControlTimer_Enable(ControlTimer_Enable),
    .Game_Enable(Game_Enable),
    .DisplayEnable(Display_Enable),
    .GameTimer_Enable(GameTimer_Enable),
    .GameTimer_Reset(GameTimer_Reset),
    .Welcome_Enable(Welcome_Enable),
    .startPrompt_Enable(startPrompt_Enable),
    .SecondsCounter(SecondsCounter),
    .Clk_Div(Clk_Div),
    .ballPosReset(ballPosReset),
    .paddlePosReset(paddlePosReset),
    .LivesCountReset(LivesCountReset)
    );
    
    GameControlTimer UUT0b(
    .Clk(Clk_100MHz),
    .Reset(Reset),
    .ControlTimer_Enable(ControlTimer_Enable),
    .SecondsCounter(SecondsCounter),
    .Clk_Div(Clk_Div)
    );

endmodule
