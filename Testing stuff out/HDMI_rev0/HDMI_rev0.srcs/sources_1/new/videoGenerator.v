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

    input            PClk, // 25 Mhz pixel clock
    input            Rst,       // Active-high reset
    
    output wire      TMDS_RX_N0,                
    output wire      TMDS_RX_P0,  
               
    output wire      TMDS_RX_N1,              
    output wire      TMDS_RX_P1,
    
    output wire      TMDS_RX_N2,                
    output wire      TMDS_RX_P2, 
                
    output wire      TMDS_RX_N3,              
    output wire      TMDS_RX_P3                 
    );
    
// ===========================================================================
// 			          Parameters, Regsiters, and Wires
// ===========================================================================    
    wire      Reset_n = ~Rst;
    
    reg [9:0] CounterX;
    reg [9:0] CounterY;
    
    wire [7:0] Red;                     // intermediary wires for test pattern
    wire [7:0] Green;
    wire [7:0] Blue;
    
    wire [9:0] TMDS_Red;                     // intermediary wires for test pattern
    wire [9:0] TMDS_Green;
    wire [9:0] TMDS_Blue;
    
    wire activeArea;          
    wire hSync;
    wire vSync;
    
    reg [3:0] TMDS_ShiftCounter=0;      // modulus 10 counter to check if time to shift in new stuff
    reg       TMDS_ShiftLoad=0;        // register that triggers shifting new stuff
    reg [9:0] TMDS_ShiftRed=0;         // ten-bit shift register for TMDS Red output
    reg [9:0] TMDS_ShiftGreen=0;       // ten-bit shift register for TMDS Green output
    reg [9:0] TMDS_ShiftBlue=0;        // ten-bit shift register for TMDS Blue output
    

// ===========================================================================
    // 			           Instantiate TMDS_ClockGen
// ===========================================================================    
    TMDS_ClkGen TMDS_CLKGEN(            // 250 MHz TMDS Clock
        .Clk(PClk),
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
    
    assign TMDS_RX_N0 = ~TMDS_Red;
    assign TMDS_RX_P0 = TMDS_Red;
    
    assign TMDS_RX_N1 = ~TMDS_Green;
    assign TMDS_RX_P1 = ~TMDS_Green;
    
    assign TMDS_RX_N2 = ~TMDS_Blue;
    assign TMDS_RX_P2 = ~TMDS_Blue;
    
    assign TMDS_RX_N3 = ~TMDS_Clk;
    assign TMDS_RX_P3 = ~TMDS_Clk;
    
    always@(posedge PClk) begin                         // 25 Mhz Pixel Clock                          
        CounterX <= (CounterX == 799) ? 0 : CounterX+1;      // increment CounterX each time a pixel is sent                                                                                     
        if(CounterX == 799)                                  // increment CounterY each time a row is completed
            CounterY <= (CounterY == 524) ? 0 : CounterY+1;  
        else 
            CounterY <= CounterY;       
    end
    
    TMDS_Encoder TMDS_RED(
    .PClk(PClk),
    .Reset_n(Reset_n),
    .activeArea(activeArea),
    .Control(2'b00),
    .Data(Red),
    .Dout(TMDS_Red)
    );
    
    TMDS_Encoder TMDS_GREEN(
    .PClk(PClk),
    .Reset_n(Reset_n),
    .activeArea(activeArea),
    .Control(2'b00),
    .Data(Green),
    .Dout(TMDS_Green)
    );
    
    TMDS_Encoder TMDS_BLUE(
    .PClk(PClk),
    .Reset_n(Reset_n),
    .activeArea(activeArea),
    .Control({vSync,hSync}), // vSync and hSync are sent on Channel 0 only
    .Data(Blue),
    .Dout(TMDS_Blue)
    );
    
    always@(posedge TMDS_Clk) begin
        TMDS_ShiftRed <= TMDS_ShiftLoad ? TMDS_Red : TMDS_ShiftRed[9:1]; // either shift in next bit or load new pixel
        TMDS_ShiftGreen <= TMDS_ShiftLoad ? TMDS_Green : TMDS_ShiftGreen[9:1];
        TMDS_ShiftBlue <= TMDS_ShiftLoad ? TMDS_Blue : TMDS_ShiftBlue[9:1];
    end
    
    
endmodule
