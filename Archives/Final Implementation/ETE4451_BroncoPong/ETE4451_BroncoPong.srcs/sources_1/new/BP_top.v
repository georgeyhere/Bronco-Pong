`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/10/2021 04:55:15 PM
// Design Name: 
// Module Name: BP_top
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


module BP_top(
    input           SysClk,
    input           Reset,
    input           startButton,
    input           pauseSwitch,
    
    output [3:0]    TMDS_P,
    output [3:0]    TMDS_N
    );


// ===========================================================================
//                    Parameters, Registers, and Wires    
// =========================================================================== 
    // DCM
    wire Clk_100MHz;
    wire TMDS_Clk;
    wire PClk;
    
    // HDMI Timing
    wire BRAM_PORTA_0_we;
    
    // GameControl
    wire Display_Enable;
    wire GameEnable;
    wire GameTimer_Enable;
    wire GameTimer_Reset;

    // Collision
    
    // Ball
    
    // Paddle
    
// ===========================================================================
//                                  Implementation    
// ===========================================================================    
    DCM_wrapper CLKGEN(
    .Clk_100MHz_0(Clk_100MHz),
    .PClk_0(PClk),
    .TMDS_Clk_0(TMDS_Clk),
    .reset_0(Reset),
    .clk_in1_0(SysClk)
    );


    GameControl_top UUT1 (
    .Clk_100MHz(Clk_100MHz),
    .Reset(Reset),
    .VMA_busy(BRAM_PORTA_0_we),
    .startButton(startButton),
    .pauseSwitch(pauseSwitch),         
    .LivesCount(2'd3),          
    .Game_Enable(GameEnable),
    .Display_Enable(Display_Enable),
    .GameTimer_Enable(GameTimer_Enable),
    .GameTimer_Reset(GameTimer_Reset)
    );
   
    Display_top UUT4 (
    .Clk_100MHz(Clk_100MHz),
    .TMDS_Clk(TMDS_Clk),
    .PClk(PClk),
    .Reset(Reset),
    .LivesCount(2'd3),
    .Display_Enable(Display_Enable),
    .GameTimer_Reset(GameTimer_Reset),
    .GameTimer_Enable(GameTimer_Enable),
    .GameEnable(GameEnable),
    .TMDS_P(TMDS_P),
    .TMDS_N(TMDS_N),
    .BRAM_PORTA_0_we(BRAM_PORTA_0_we)
    );
    
endmodule
