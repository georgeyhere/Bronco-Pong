`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/22/2021 06:55:07 PM
// Design Name: 
// Module Name: HDMI_TMDS_TEST
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


module HDMI_TMDS_Test(
    input       Clk,        // 100 Mhz clk
    input       Reset_n,
    
    output [9:0] TMDS_Red,
    output [9:0] TMDS_Green,
    output [9:0] TMDS_Blue
    );
    
    wire       PClk;
    wire [7:0] Red;
    wire [7:0] Green;
    wire [7:0] Blue;
    wire hsync;
    wire vsync;
    wire activeArea;
    
    DCM_wrapper CLKGEN(
    .clk_100MHz(Clk),
    .reset_rtl_0(Reset_n),
    .PClk_0(PClk)
    );
    
    HDMI_Timing UUT1(
    .PClk(PClk),
    .Reset_n(Reset_n),
    .Red(Red),
    .Green(Green),
    .Blue(Blue),
    .vsync(vsync),
    .hsync(hsync),
    .activeArea(activeArea)
    ); 
    
    HDMI_TMDS UUT2(
    .PClk(PClk),
    .Reset_n(Reset_n),
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
    
endmodule
