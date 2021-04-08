`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/09/2021 10:39:38 AM
// Design Name: 
// Module Name: TMDS_ClkWzrd
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


module TMDS_ClkWzrd(
    input Clk,
    input Reset_n,
    output TMDS_Clk,
    output locked
    );
    
  // Instantiation of the clocking network
  //--------------------------------------
  clk_wiz_0 clknetwork
   (
    // Clock out ports
    .TMDS_Clk           (TMDS_Clk),
    // Status and control signals
    .resetn             (Reset_n),
    .locked             (locked),
   // Clock in ports
    .Clk                (Clk)
);
endmodule
