`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/20/2021 10:24:09 PM
// Design Name: 
// Module Name: PMOD_SCLK_Div
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


module PMOD_SCLK_Div(

    input                Clk,           // 100 Mhz input clock   
    input                reset_n,       // Asynchronous active low reset
    output reg           SCLK           // Output 50Hz 
    );
    
    
// ===========================================================================
// 							  Parameters, Regsiters, and Wires
// ===========================================================================
    parameter cntEndVal = 10'b1011101110; // magic Digilent number
    
    reg [9:0] clkCount = 10'b0;        // 32-bit counter
    
    
// ===========================================================================
// 										Implementation
// ===========================================================================    

    always@(posedge Clk) begin
        if(reset_n == 1'b0) begin
            SCLK <= 0;
            clkCount <= 10'b0;
        end
        else begin
            if(clkCount == cntEndVal) begin     // issa clock divider yes
                SCLK <= ~SCLK;
                clkCount <= 10'b0;
            end
            else begin
                clkCount <= clkCount + 1'b1;
            end
        end
    end
    
endmodule
