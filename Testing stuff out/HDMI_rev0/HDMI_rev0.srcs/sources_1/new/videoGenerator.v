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
//////////////////////////////////////////////////////////////////////////////////


module videoGenerator(

<<<<<<< Updated upstream
    input            Pixel_Clk, // 25 Mhz pixel clock
    input            TMDS_Clk,  // 250 Mhz TMDS clock
    input            Rst,       // Active-high reset
    
    output wire [7:0] Red,       // HDMI signals 
    output wire [7:0] Green,
    output wire [7:0] Blue,
    output wire       hSync,
    output wire       vSync,
    output wire       activeArea     
=======
    input            PClk,      // 25 Mhz pixel clock
    input            Reset_n,       // Active-high reset
    output wire      TMDS_TX_N0,                
    output wire      TMDS_TX_P0,  
               
    output wire      TMDS_TX_N1,              
    output wire      TMDS_TX_P1,
    
    output wire      TMDS_TX_N2,                
    output wire      TMDS_TX_P2, 
                
    output wire      TMDS_TX_N3,              
    output wire      TMDS_TX_P3                 
>>>>>>> Stashed changes
    );
    
// ===========================================================================
// 			          Parameters, Regsiters, and Wires
// ===========================================================================    
<<<<<<< Updated upstream
=======
    
>>>>>>> Stashed changes
    
    reg [9:0] CounterX;
    reg [9:0] CounterY;
    
<<<<<<< Updated upstream
=======
    wire [7:0] Red;                     // intermediary wires for test pattern
    wire [7:0] Green;
    wire [7:0] Blue;
    
    wire [9:0] TMDS_Red;                     // intermediary wires for test pattern
    wire [9:0] TMDS_Green;
    wire [9:0] TMDS_Blue;
    wire       TMDS_Clk;
    
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
    TMDS_ClkWzrd TMDS_CLKWIZ(            // 250 MHz TMDS Clock
        .Clk(PClk),
        .Reset_n(Reset_n),
        .TMDS_Clk(TMDS_Clk),
        .locked(locked)
    );
>>>>>>> Stashed changes
    
// ===========================================================================
//                              Implementation    
// ===========================================================================    
    
    assign hSync = (CounterX >= 656) && (CounterX < 752);
    assign vSync = (CounterY >= 490) && (CounterY < 492);
    assign activeArea = (CounterX < 640) && (CounterY < 480);
    
    // test pattern
    assign Red[7:0] = {CounterX[5:0] & {6{CounterY[4:3] == ~CounterX[4:3]}}, 2'b00};
    assign Green[7:0] = CounterX[7:0] & {8{CounterY[6]}};
    assign Blue[7:0] = CounterY [7:0];
    
<<<<<<< Updated upstream
    
    always@(posedge Pixel_Clk) begin
        CounterX <= (CounterX == 799) ? 0 : CounterX+1;     // increment CounterX on each positive edge of pixel clock
                                                            // i.e count each time a pixel is sent
                                                            
        if(CounterX == 799)                                 // increment CounterY each time CounterX maxes out
            CounterY <= (CounterY == 524) ? 0 : CounterY+1; // i.e. count each time a row is completed
        else 
            CounterY <= CounterY;       
=======
    assign TMDS_TX_N0 = ~TMDS_ShiftRed[9];
    assign TMDS_TX_P0 = TMDS_ShiftRed[9];
    
    assign TMDS_TX_N1 = ~TMDS_ShiftGreen[9];
    assign TMDS_TX_P1 = ~TMDS_ShiftGreen[9];
    
    assign TMDS_TX_N2 = ~TMDS_ShiftBlue[9];
    assign TMDS_TX_P2 = ~TMDS_ShiftBlue[9];
    
    assign TMDS_TX_N3 = ~TMDS_Clk;
    assign TMDS_TX_P3 = ~TMDS_Clk;
    
    always@(posedge PClk) begin                         // 25 Mhz Pixel Clock  
        if(Reset_n == 1'b0) begin
            CounterX <= 0;
            CounterY <= 0;
            TMDS_ShiftRed <= 0;
            TMDS_ShiftGreen <= 0;
            TMDS_ShiftBlue <= 0;
        end
        else begin                        
        CounterX <= (CounterX == 799) ? 0 : CounterX+1;      // increment CounterX each time a pixel is sent                                                                                     
            if(CounterX == 799)                                  // increment CounterY each time a row is completed
                CounterY <= (CounterY == 524) ? 0 : CounterY+1;  
            else 
                CounterY <= CounterY;    
        end   
>>>>>>> Stashed changes
    end
    
    
    
endmodule
