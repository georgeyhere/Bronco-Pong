`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/20/2021 07:52:18 PM
// Design Name: 
// Module Name: HDMI_top
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


module HDMI_top(
    input        clk_25MHz,
    input        clk_100MHz,
    input        clk_250MHz,
    input        testButton,
    input        Reset,
    input        FIFO_Dout,
    
    output       FIFO_ReadEn,
    output       activeArea,
    output [9:0] CounterX,
    output [9:0] CounterY,     
    output [3:0] TMDS_P,
    output [3:0] TMDS_N
    );
    
    wire       PClk;
    wire [7:0] Red;
    wire [7:0] Green;
    wire [7:0] Blue;
    wire [9:0] TMDS_Red;
    wire [9:0] TMDS_Green;
    wire [9:0] TMDS_Blue;
    wire       vsync;
    wire       hsync;
    wire       TMDS_Clk;
   
    HDMI_Timing UUT1(
    .PClk(clk_25MHz),
    .Reset(Reset),
    .vsync(vsync),
    .hsync(hsync),
    .activeArea(activeArea),
    .CounterX(CounterX),
    .CounterY(CounterY)
    );
    
    HDMI_FrameGen_top UUT2(
    .clk_100MHz(clk_100MHz),
    .PClk(clk_25MHz),
    .Reset(Reset),
    .testButton(testButton),
    .CounterX(CounterX),
    .CounterY(CounterY),
    .Red(Red),
    .Green(Green),
    .Blue(Blue),
    .FIFO_Dout(FIFO_Dout),
    .FIFO_ReadEn(FIFO_ReadEn)
    );
    
    HDMI_TMDS UUT3(
    .PClk(clk_25MHz),
    .Reset(Reset),
    .Red(Red),
    .Green(Green),
    .Blue(Blue),
    .vsync(vsync),
    .hsync(hsync),
    .activeArea(activeArea),
    .TMDS_Red(TMDS_Red),
    .TMDS_Green(TMDS_Green),
    .TMDS_Blue(TMDS_Blue)
    );
    
    HDMI_Out UUT4(
    .PClk(clk_25MHz),
    .TMDS_Clk(clk_250MHz),
    .Reset(Reset),
    .TMDS_Red(TMDS_Red),
    .TMDS_Green(TMDS_Green),
    .TMDS_Blue(TMDS_Blue),
    .TMDS_P(TMDS_P),
    .TMDS_N(TMDS_N)
    );
    
    
endmodule
