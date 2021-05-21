`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/13/2021 03:50:24 PM
// Design Name: 
// Module Name: test_tb
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


module test_tb();

    reg SysClk = 0;
    reg Clk_25MHz = 0;
    reg Reset;
    reg [3:0] Sw;
    
    parameter CLK_100MHZ_PERIOD = 10;
    parameter CLK_25MHZ_PERIOD = 40;
    
    always#(CLK_100MHZ_PERIOD/2) begin
        SysClk = ~SysClk;
    end
    
    always#(CLK_25MHZ_PERIOD/2) begin
        Clk_25MHz = ~Clk_25MHz;
    end
    
    
    test_top UUT(
    .SysClk(SysClk),
    .Reset(Reset),
    .Sw(Sw),
    .TMDS_P(TMDS_P),
    .TMDS_N(TMDS_N)
    );  
    
    initial begin
        Reset = 1;
        Sw = 1;
        #100;
        @(posedge SysClk) 
            Reset = 0;
        #100
        @(posedge SysClk)
            Sw = 0;
            
    end
    
endmodule
