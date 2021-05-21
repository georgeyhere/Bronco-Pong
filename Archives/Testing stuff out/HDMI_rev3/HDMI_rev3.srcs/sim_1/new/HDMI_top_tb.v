`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/22/2021 07:06:25 PM
// Design Name: 
// Module Name: HDMI_top_tb
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


module HDMI_top_tb();

    reg Clk = 0;
    reg Reset_n;
    
    wire [3:0] TMDS_P, TMDS_N;
    
    parameter CLK_PERIOD = 10;
    
    always#(CLK_PERIOD/2) begin
        Clk <= ~Clk;
    end
    
    HDMI_top UUT(
    .clk_100MHz(Clk),
    .Reset_n(Reset_n),
    .TMDS_P(TMDS_P),
    .TMDS_N(TMDS_N)
    );
    
    initial begin
        Reset_n <= 1;
        #100;
        Reset_n <= 0;
    end
    
endmodule
