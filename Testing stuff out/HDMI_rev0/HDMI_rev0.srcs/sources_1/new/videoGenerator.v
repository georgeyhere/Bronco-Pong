`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: George Yu
// 
// Create Date: 03/05/2021 02:36:23 PM
// Design Name: 
// Module Name: videoGenerator
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
// This module contains two counters: CounterX and CounterY that are used to determine 
// the current pixel being drawn on the screen.
// CounterX counts to 799 and CounterY counts to 524 for 800x525.
// 
// The output of this module are three 8-bit signals representing RGB and
// hsync and vsync signals. 
// Based on HDMI tutorial from FPGA4fun.com
//////////////////////////////////////////////////////////////////////////////////


module videoGenerator(

    input            Pixel_Clk, // 25 Mhz pixel clock
    input            Rst,       // Active-high reset
    
    output wire [7:0] Red,       // HDMI signals 
    output wire [7:0] Green,
    output wire [7:0] Blue,
    output wire       hSync,
    output wire       vSync,
    output wire       activeArea     
    );
    
// ===========================================================================
// 			          Parameters, Regsiters, and Wires
// ===========================================================================    
    
    reg [9:0] CounterX;
    reg [9:0] CounterY;
    
    wire       TMDS_Clk;                // TMDS Channel 3
    wire [9:0] TMDS_Red;                // TMDS Channel 2
    wire [9:0] TMDS_Green;              // TMDS Channel 1
    wire [9:0] TMDS_Blue;               // TMDS Channel 0
    
    reg [3:0] TMDS_mod10=0;             // modulus 10 counter to check if time to shift in new stuff
    reg       TMDS_shift_load=0;        // register that triggers shifting new stuff
    reg [9:0] TMDS_Shift_Red=0;         // ten-bit shift register for TMDS Red output
    reg [9:0] TMDS_Shift_Green=0;       // ten-bit shift register for TMDS Green output
    reg [9:0] TMDS_Shift_Blue=0;        // ten-bit shift register for TMDS Blue output
    

// ===========================================================================
    // 			           Instantiate TMDS_ClockGen
// ===========================================================================    
    TMDS_ClkGen TMDS_CLKGEN(            // 250 MHz TMDS Clock
        .Clk(Clk),
        .TMDS_Clk(TMDS_Clk)
    );
    
// ===========================================================================
//                              Implementation    
// ===========================================================================    
    
    // assign display timing signals
    assign hSync = (CounterX >= 656) && (CounterX < 752);     // standard HDMI timings for 640x480
    assign vSync = (CounterY >= 490) && (CounterY < 492);     
    assign activeArea = (CounterX < 640) && (CounterY < 480); 
    
    // test pattern
    assign Red[7:0] = {CounterX[5:0] & {6{CounterY[4:3] == ~CounterX[4:3]}}, 2'b00};
    assign Green[7:0] = CounterX[7:0] & {8{CounterY[6]}};
    assign Blue[7:0] = CounterY [7:0];
    
    
    always@(posedge Pixel_Clk) begin                         // 25 Mhz Pixel Clock                          
        CounterX <= (CounterX == 799) ? 0 : CounterX+1;      // increment CounterX each time a pixel is sent                                                                                     
        if(CounterX == 799)                                  // increment CounterY each time a row is completed
            CounterY <= (CounterY == 524) ? 0 : CounterY+1;  
        else 
            CounterY <= CounterY;       
    end
    
    TMDS_Encoder TMDS_RED(
    .PClk(PClk),
    .Reset_n(Reset_n),
    .Control(2'b00),
    .Data(Red),
    .Dout(TMDS_Red)
    );
    
    TMDS_Encoder TMDS_GREEN(
    .PClk(PClk),
    .Reset_n(Reset_n),
    .Control(2'b00),
    .Data(Green),
    .Dout(TMDS_Green)
    );
    
    TMDS_Encoder TMDS_BLUE(
    .PClk(PClk),
    .Reset_n(Reset_n),
    .Control({vSync,hSync}), // vSync and hSync are sent on Channel 0 only
    .Data(Blue),
    .Dout(TMDS_Blue)
    );
    
    
    
    
    
    
    
endmodule
