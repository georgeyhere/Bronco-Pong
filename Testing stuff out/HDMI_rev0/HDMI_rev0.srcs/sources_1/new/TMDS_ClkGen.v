`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/07/2021 11:45:09 AM
// Design Name: 
// Module Name: TMDS_ClkGen
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


module TMDS_ClkGen(
    input            Clk,
    output wire TMDS_Clk
    );
    
    wire DCM_TMDS_CLKFX;  // 25MHz x 10 = 250MHz
    DCM_SP #(.CLKFX_MULTIPLY(10)) DCM_TMDS_inst(.CLKIN(pixclk), .CLKFX(DCM_TMDS_CLKFX), .RST(1'b0));
    BUFG BUFG_TMDSp(.I(DCM_TMDS_CLKFX), .O(TMDS_Clk));
   
endmodule
