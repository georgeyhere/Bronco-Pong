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
    input           Clk_100MHz,
    input           Reset,

    input      [9:0] CounterX,       
    input      [9:0] CounterY,
    input      [9:0] ReadCounterX,
    input            BRAM_Dout,
   
    
    output    [18:0] BRAM_addr,
    output           BRAM_en,
    output     [7:0] Red,
    output     [7:0] Green,
    output     [7:0] Blue
    );
    
    wire [7:0] ROM_Red, ROM_Green, ROM_Blue;
    wire [3:0] PixelSel;
    
    HDMI_FrameRead UUT5a(
        .Clk_100MHz(Clk_100MHz),
        .Reset(Reset),
        .CounterX(CounterX),
        .CounterY(CounterY),
        .ReadCounterX(ReadCounterX),
        .BRAM_Dout(BRAM_Dout),
        .ROM_Red(ROM_Red),
        .ROM_Green(ROM_Green),
        .ROM_Blue(ROM_Blue),
        .BRAM_addr(BRAM_addr),
        .BRAM_en(BRAM_en),
        .PixelSel(PixelSel),
        .Red(Red),
        .Green(Green),
        .Blue(Blue)
    );
    
    HDMI_PixelROM UUT5b(
        .clk_100MHz(Clk_100MHz),
        .Reset(Reset),
        .PixelSel(PixelSel),
        .ROM_Red(ROM_Red),
        .ROM_Green(ROM_Green),
        .ROM_Blue(ROM_Blue)
    );
    
    
endmodule
