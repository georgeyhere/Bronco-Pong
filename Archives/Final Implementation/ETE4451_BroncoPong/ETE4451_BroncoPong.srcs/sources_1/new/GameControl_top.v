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
    input           LivesCount,
    
    output       Display_Enable,
    output       Game_Enable,
    output       GameTimer_Enable,
    output       GameTimer_Reset
    );
    
    wire ControlTimer_Enable;
    wire ControlTimer_Done;
    
    GameControl UUT1a(
    .Clk(Clk_100MHz),
    .Reset(Reset),
    .VMA_busy(VMA_busy),
    .startButton(startButton),
    .pauseSwitch(pauseSwitch),
    .ControlTimer_Done(ControlTimer_Done),
    .LivesCount(LivesCount),
    .ControlTimer_Enable(ControlTimer_Enable),
    .Game_Enable(Game_Enable),
    .DisplayEnable(Display_Enable),
    .GameTimer_Enable(GameTimer_Enable),
    .GameTimer_Reset(GameTimer_Reset)
    );
    
    GameControlTimer UUT1b(
    .Clk(Clk_100MHz),
    .Reset(Reset),
    .ControlTimer_Enable(ControlTimer_Enable),
    .ControlTimer_Done(ControlTimer_Done)
    );
    
    
    
    
endmodule
