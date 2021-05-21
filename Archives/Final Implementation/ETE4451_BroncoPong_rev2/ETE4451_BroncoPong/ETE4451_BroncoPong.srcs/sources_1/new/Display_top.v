`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/13/2021 03:39:06 PM
// Design Name: 
// Module Name: test_top
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


module Display_top(
    input             Clk_100MHz, // 100 MHz 
    input             TMDS_Clk,   // 250 MHz
    input             PClk,       // 25 Mhz
    input             Reset,  
    
    input [1:0]       LivesCount,         // lives count
    input [9:0]       ballPosX,           // ball X position (0-639)    
    input [9:0]       ballPosY,           // ball Y position (0-479)
    input [9:0]       paddlePosY,         // paddle Y position (0-479)
    
    input             Display_Enable,     // enable for Video Memory write  
    input             GameTimer_Reset,    // resets game timer (on-screen timer)
    input             GameTimer_Enable,   // enables game timer to count up
    input             GameEnable,         // enables game modules, i.e. collision, ballpos, etc
    input             Welcome_Enable,     // enable for initial on screen text
    input             startPrompt_Enable, // enable for press button 1 prompt

    output       BRAM_PORTA_0_we,   
    output [3:0] TMDS_P,            // HDMI differential outputs
    output [3:0] TMDS_N
    );

// ===========================================================================
//                    Parameters, Registers, and Wires    
// =========================================================================== 


    wire [3:0] TimerDigit2;
    wire [3:0] TimerDigit1;
    wire [3:0] TimerDigit0;

    wire       memTiming_en;
    wire [9:0] memCounterX;
    wire [9:0] memCounterY;
    
    wire [9:0] CounterX;
    wire [9:0] CounterY;
    wire [9:0] ReadCounterX;
    
    wire [18:0] BRAM_PORTA_0_addr;
    wire        BRAM_PORTA_0_din;
    wire        BRAM_PORTA_0_en;
    
    wire [18:0] BRAM_PORTB_0_addr;
    wire        BRAM_PORTB_0_dout;
    wire        BRAM_PORTB_0_en;
    
    wire [7:0] Red, Green, Blue;
    wire [9:0] TMDS_Red, TMDS_Green, TMDS_Blue;
    wire hsync, activeArea;
    
    
// ===========================================================================
//                              Implementation    
// ===========================================================================     
    GameTimer UUT4a(
    .Clk(Clk_100MHz),
    .Reset(GameTimer_Reset),
    .Enable(GameTimer_Enable),
    .TimerDigit2(TimerDigit2),
    .TimerDigit1(TimerDigit1),
    .TimerDigit0(TimerDigit0)
    );
    
    Mem_Timing UUT4b(
    .Clk_100MHz(Clk_100MHz),
    .Reset(Reset),
    .memTiming_en(memTiming_en),
    .memCounterX(memCounterX),
    .memCounterY(memCounterY)
    );
    
    Mem_Writer UUT4c(
    .Clk(Clk_100MHz),
    .Reset(Reset),
    .TimerDigit2(TimerDigit2),
    .TimerDigit1(TimerDigit1),
    .TimerDigit0(TimerDigit0),
    .memCounterX(memCounterX),
    .memCounterY(memCounterY),
    .timer_en(GameTimer_Enable),
    .disp_en(Display_Enable),
    .welcome_en(Welcome_Enable),
    .startPrompt_en(startPrompt_Enable),
    .LivesCount_input(LivesCount),
    .ballPosX(ballPosX),
    .ballPosY(ballPosY),
    .paddlePosY(paddlePosY),
    .CounterX(CounterX),
    .CounterY(CounterY),
    .memTiming_en(memTiming_en),
    .BRAM_address(BRAM_PORTA_0_addr),
    .BRAM_data(BRAM_PORTA_0_din),
    .BRAM_en(BRAM_PORTA_0_en),
    .BRAM_wr_en(BRAM_PORTA_0_we)
    );
    
    VideoBuffer_wrapper UUT4d(
    .BRAM_PORTA_0_addr(BRAM_PORTA_0_addr),
    .BRAM_PORTA_0_clk(Clk_100MHz),
    .BRAM_PORTA_0_din(BRAM_PORTA_0_din),
    .BRAM_PORTA_0_en(BRAM_PORTA_0_en),
    .BRAM_PORTA_0_we(BRAM_PORTA_0_we),
    .BRAM_PORTB_0_addr(BRAM_PORTB_0_addr),
    .BRAM_PORTB_0_clk(Clk_100MHz),
    .BRAM_PORTB_0_dout(BRAM_PORTB_0_dout),
    .BRAM_PORTB_0_en(BRAM_PORTB_0_en));

    HDMI_Timing UUT4e(
    .PClk(PClk),
    .Reset(Reset),
    .vsync(vsync),
    .hsync(hsync),
    .activeArea(activeArea),
    .CounterX(CounterX),
    .CounterY(CounterY),
    .ReadCounterX(ReadCounterX) 
    );
    
    HDMI_FrameGen_top UUT4f(
    .Clk_100MHz(Clk_100MHz),
    .Reset(Reset),
    .CounterX(CounterX),
    .CounterY(CounterY),
    .ReadCounterX(ReadCounterX),
    .BRAM_Dout(BRAM_PORTB_0_dout),    
    .BRAM_addr(BRAM_PORTB_0_addr),
    .BRAM_en(BRAM_PORTB_0_en),
    .Red(Red),
    .Green(Green),
    .Blue(Blue)
    );
    
    HDMI_TMDS UUT4g(
    .PClk(PClk),
    .Reset(Reset),
    .Red(Red),
    .Green(Green),
    .Blue(Blue),
    .vsync(vsync),
    .hsync(hsync),
    .activeArea(activeArea),
    .TMDS_Red(TMDS_Red),
    .TMDS_Green(TMDS_Green),
    .TMDS_Blue(TMDS_Blue)  
    );
    
    HDMI_Out UUT4h (
    .PClk(PClk),
    .TMDS_Clk(TMDS_Clk),
    .Reset(Reset),
    .TMDS_Red(TMDS_Red),
    .TMDS_Green(TMDS_Green),
    .TMDS_Blue(TMDS_Blue),
    .TMDS_P(TMDS_P),
    .TMDS_N(TMDS_N)
    );
    
endmodule
