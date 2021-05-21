`timescale 1ns / 1ns
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

    reg clk_25MHz = 0;
    reg clk_100MHz = 0;
    reg clk_250MHz = 0;
    reg Reset;
    
    wire [3:0] TMDS_P, TMDS_N;
    
    parameter clk_25MHz_PERIOD = 40;
    parameter clk_100MHz_PERIOD = 10;
    parameter clk_250MHz_PERIOD = 4;
    
    always#(clk_25MHz_PERIOD/2) begin
        clk_25MHz <= ~clk_25MHz;
    end
    
    always#(clk_100MHz_PERIOD/2) begin
        clk_100MHz <= ~clk_100MHz;
    end
    
    always#(clk_250MHz_PERIOD/2) begin
        clk_250MHz <= ~clk_250MHz;
    end
    
    HDMI_top UUT(
    .clk_25MHz(clk_25MHz),
    .clk_100MHz(clk_100MHz),
    .clk_250MHz(clk_250MHz),
    .Reset(Reset),
    .TMDS_P(TMDS_P),
    .TMDS_N(TMDS_N),
    .FIFO_Dout(1'b1),
    .PaddlePosition(9'd240),
    .ballX(10'd320),
    .ballY(10'd320)
    );
    
    initial begin
        Reset <= 1;
        #100;
        Reset <= 0;
    end
    
endmodule
