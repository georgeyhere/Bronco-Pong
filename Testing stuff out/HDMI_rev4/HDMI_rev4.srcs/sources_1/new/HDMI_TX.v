`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/16/2021 10:13:58 AM
// Design Name: 
// Module Name: HDMI_TX
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


module HDMI_TMDS(
    input       PClk,
    input       Reset_n,
    input [7:0] Red,
    input [7:0] Green,
    input [7:0] Blue,
    input       vsync,
    input       hsync,
    input       activeArea,
    
    output [9:0] TMDS_Red,
    output [9:0] TMDS_Green,
    output [9:0] TMDS_Blue
    );
    
    TMDS_encoder1 TMDS_CH0(
        .clk(PClk),
        .resetn(Reset_n),
        .de(activeArea),
        .ctrl({vsync,hsync}),
        .din(Red),
        .dout(TMDS_Red)
    );
    
    TMDS_encoder1 TMDS_CH1(
        .clk(PClk),
        .resetn(Reset_n),
        .de(activeArea),
        .ctrl(2'b0),
        .din(Green),
        .dout(TMDS_Green)
    );
    
    TMDS_encoder1 TMDS_CH2(
        .clk(PClk),
        .resetn(Reset_n),
        .de(activeArea),
        .ctrl(2'b0),
        .din(Blue),
        .dout(TMDS_Blue)
    );
    
endmodule
