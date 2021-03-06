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

    input            Pixel_Clk, // 25 Mhz pixel clock
    input            TMDS_Clk,  // 250 Mhz TMDS clock
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
    
    
    always@(posedge Pixel_Clk) begin
        CounterX <= (CounterX == 799) ? 0 : CounterX+1;     // increment CounterX on each positive edge of pixel clock
                                                            // i.e count each time a pixel is sent
                                                            
        if(CounterX == 799)                                 // increment CounterY each time CounterX maxes out
            CounterY <= (CounterY == 524) ? 0 : CounterY+1; // i.e. count each time a row is completed
        else 
            CounterY <= CounterY;       
    end
    
    
    
endmodule
