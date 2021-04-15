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


module test_top(
    input             SysClk, // 100MHz clock
    input             Reset,  // synchronous active high reset (might be async in some modules)
    input [3:0]       Sw,     // switches for testing
    
    output [3:0] TMDS_P,      // HDMI differential outputs
    output [3:0] TMDS_N
    );

// ===========================================================================
//                    Parameters, Registers, and Wires    
// =========================================================================== 
    wire Clk_100MHz;
    wire TMDS_Clk;
    wire PClk;
    
    wire [3:0] TimerDigit0;
    wire [4:0] Speed;
    wire Mem_Writer_Done;
    wire memTiming_en;
    wire [9:0] memCounterX;
    wire [9:0] memCounterY;
    
    wire [9:0] CounterX;
    wire [9:0] CounterY;
    wire [9:0] ReadCounterX;
    
    wire [15:0] BRAM_PORTA_0_addr;
    wire        BRAM_PORTA_0_din;
    wire        BRAM_PORTA_0_en;
    wire        BRAM_PORTA_0_we;
    
    wire [15:0] BRAM_PORTB_0_addr;
    wire        BRAM_PORTB_0_dout;
    wire        BRAM_PORTB_0_en;
    
    wire [7:0] Red, Green, Blue;
    wire [9:0] TMDS_Red, TMDS_Green, TMDS_Blue;
    wire vsync, hsync, activeArea;
    
// ===========================================================================
//                              Implementation    
// ===========================================================================    
    clockGen_wrapper CLKGEN(
    .Clk_250MHz_0(TMDS_Clk),
    .Clk_100MHz_0(Clk_100MHz),
    .Clk_25MHz_0(PClk),
    .clk_in1_0(SysClk),
    .reset_0(Reset)
    );
    
    InputRead UUT0 (
    .Clk(Clk_100MHz),
    .Reset(Reset),
    .Sw(Sw),
    .Speed(Speed),
    .Stretch(Stretch),
    .TimerDigit0(TimerDigit0)
    );
    
    Mem_Timing UUT1(
    .Clk_100MHz(Clk_100MHz),
    .Reset(Reset),
    .memTiming_en(memTiming_en),
    .memCounterX(memCounterX),
    .memCounterY(memCounterY)
    );
    
    Mem_Writer UUT2(
    .Clk(Clk_100MHz),
    .Reset(Reset),
    .TimerDigit0(TimerDigit0),
    .memCounterX(memCounterX),
    .memCounterY(memCounterY),
    .CounterX(CounterX),
    .CounterY(CounterY),
    .memTiming_en(memTiming_en),
    .BRAM_address(BRAM_PORTA_0_addr),
    .BRAM_data(BRAM_PORTA_0_din),
    .BRAM_en(BRAM_PORTA_0_en),
    .BRAM_wr_en(BRAM_PORTA_0_we)
    );
    
    VideoBuffer_wrapper UUT3
       (.BRAM_PORTA_0_addr(BRAM_PORTA_0_addr),
        .BRAM_PORTA_0_clk(Clk_100MHz),
        .BRAM_PORTA_0_din(BRAM_PORTA_0_din),
        .BRAM_PORTA_0_en(BRAM_PORTA_0_en),
        .BRAM_PORTA_0_we(BRAM_PORTA_0_we),
        .BRAM_PORTB_0_addr(BRAM_PORTB_0_addr),
        .BRAM_PORTB_0_clk(Clk_100MHz),
        .BRAM_PORTB_0_dout(BRAM_PORTB_0_dout),
        .BRAM_PORTB_0_en(BRAM_PORTB_0_en));

    
    
    HDMI_Timing UUT4(
    .PClk(PClk),
    .Reset(Reset),
    .vsync(vsync),
    .hsync(hsync),
    .Speed(Speed),
    .Stretch(Stretch),
    .activeArea(activeArea),
    .CounterX(CounterX),
    .CounterY(CounterY),
    .ReadCounterX(ReadCounterX) 
    );
    
    HDMI_FrameGen_top UUT5(
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
    
    HDMI_TMDS UUT6(
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
    
    HDMI_Out UUT7 (
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
