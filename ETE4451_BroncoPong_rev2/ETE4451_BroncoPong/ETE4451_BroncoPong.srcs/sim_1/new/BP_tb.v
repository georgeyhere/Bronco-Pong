`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/10/2021 06:05:19 PM
// Design Name: 
// Module Name: BP_tb
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


module BP_tb();
    reg     SysClk = 0;
    reg     Reset;
    reg     startButton;
    reg     pauseSwitch;
    reg     MISO = 0;
    
    wire [3:0] TMDS_P, TMDS_N;
    wire SS, SCLK, MOSI;
    
    parameter SysClk_Period = 10;
    always#(SysClk_Period/2) begin
        SysClk = ~SysClk;
    end
    
    
    BP_top UUT(
    .SysClk(SysClk),
    .Reset(Reset),
    .startButton(startButton),
    .pauseSwitch(pauseSwitch),
    .MISO(MISO),
    .SS(SS),
    .SCLK(SCLK),
    .MOSI(MOSI),
    .TMDS_P(TMDS_P),
    .TMDS_N(TMDS_N)
    );
    
    initial begin
        Reset = 1;
        pauseSwitch = 0;
        #100;
        Reset = 0;
        startButton = 1;
        #400;
        startButton = 0;        
    end

    
endmodule
