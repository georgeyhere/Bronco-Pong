`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/21/2021 06:57:00 PM
// Design Name: 
// Module Name: HDMI_Timing_tb
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


module HDMI_Timing_tb();
    
    reg PClk = 0;
    reg Reset_n;
    
    wire [7:0] Red;
    wire [7:0] Green;
    wire [7:0] Blue;
    wire       vsync;
    wire       hsync;
    wire       activeArea;
    
    parameter PCLK_PERIOD = 40;
    always#(PCLK_PERIOD/2) begin
        PClk <= ~PClk;
    end
       
    HDMI_Timing UUT(
    .PClk(PClk),
    .Reset_n(Reset_n),
    .Red(Red),
    .Green(Green),
    .Blue(Blue),
    .vsync(vsync),
    .hsync(hsync),
    .activeArea(activeArea)
    );
    
    initial begin
        Reset_n <= 0;
        #100;
        Reset_n <= 1;
        
    end
    
endmodule
