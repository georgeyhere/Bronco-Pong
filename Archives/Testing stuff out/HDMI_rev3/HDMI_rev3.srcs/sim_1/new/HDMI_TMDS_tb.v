`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/21/2021 07:24:15 PM
// Design Name: 
// Module Name: HDMI_TMDS_tb
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


module HDMI_TMDS_tb();
    
    reg Clk = 0;
    reg Reset_n;
    wire [9:0] TMDS_Red, TMDS_Green, TMDS_Blue;
    
    integer i;
    reg [7:0] read_data[0:9];
    
    parameter CLK_PERIOD = 10;
    
    always#(CLK_PERIOD/2) begin
        Clk <= ~Clk;
    end
    
    HDMI_TMDS_Test UUT(
    .Clk(Clk),
    .Reset_n(Reset_n),
    .TMDS_Red(TMDS_Red),
    .TMDS_Green(TMDS_Green),
    .TMDS_Blue(TMDS_Blue)
    );
    
    initial begin
        Reset_n <= 0;
        #100;
        Reset_n <= 1;
    end
    
    
    
    
endmodule
