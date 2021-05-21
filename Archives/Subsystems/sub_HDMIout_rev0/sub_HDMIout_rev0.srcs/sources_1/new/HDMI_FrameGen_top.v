`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/29/2021 12:12:45 PM
// Design Name: 
// Module Name: HDMI_FrameGen_top
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


module HDMI_FrameGen_top(
    input           clk_100MHz,
    input           PClk,
    input           Reset,
    input           testButton,
    
    input      [9:0] CounterX,       
    input      [9:0] CounterY,
    input            FIFO_Dout,
    
    output           FIFO_ReadEn,
    output     [7:0] Red,
    output     [7:0] Green,
    output     [7:0] Blue
    );
    
    wire [7:0] ROM_Red, ROM_Green, ROM_Blue;
    wire [3:0] PixelSel;
    
    HDMI_FrameGen UUT2a(
        .clk_100MHz(clk_100MHz),
        .PClk(PClk),
        .Reset(Reset),
        .testButton(testButton),
        .CounterX(CounterX),
        .CounterY(CounterY),
        .FIFO_dout(FIFO_dout),
        .ROM_Red(ROM_Red),
        .ROM_Green(ROM_Green),
        .ROM_Blue(ROM_Blue),
        .FIFO_ReadEn(FIFO_ReadEn),
        .PixelSel(PixelSel),
        .Red(Red),
        .Green(Green),
        .Blue(Blue)
    );
    
    HDMI_PixelROM UUT2b(
        .clk_100MHz(clk_100MHz),
        .Reset(Reset),
        .PixelSel(PixelSel),
        .ROM_Red(ROM_Red),
        .ROM_Green(ROM_Green),
        .ROM_Blue(ROM_Blue)
    );
    
    
endmodule
