`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/13/2021 02:59:11 PM
// Design Name: 
// Module Name: Mem_Timing_tb
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


module Mem_Timing_tb();

    reg Clk_100MHz = 0;
    reg Reset;
    reg memTiming_en;
    
    wire [9:0] memCounterX;
    wire [9:0] memCounterY;
    
    parameter CLK_PERIOD = 10;
    
    always#(CLK_PERIOD/2) begin
        Clk_100MHz = ~Clk_100MHz;
    end
    
    Mem_Timing UUT (
    .Clk_100MHz(Clk_100MHz),
    .Reset(Reset),
    .memTiming_en(memTiming_en),
    .memCounterX(memCounterX),
    .memCounterY(memCounterY)
    );
    
    initial begin
        Reset <= 1;
        memTiming_en <= 0;
        #100;
        Reset <= 0;
        #100;
        @(posedge Clk_100MHz)
           memTiming_en <= 1;
    end
    
    
    
endmodule
