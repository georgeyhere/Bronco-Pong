`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/13/2021 02:55:20 PM
// Design Name: 
// Module Name: Mem_Writer
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
module Mem_Writer(
    input             Clk,          // 100MHz clock
    input             Reset,        // sync active high reset
    
    input [3:0]       TimerDigitT,
    input [3:0]       TimerDigitI,
    input [3:0]       TimerDigitM,
    input [3:0]       TimerDigitM1,
    input [3:0]       TimerDigitE,
    input [3:0]       TimerDigit0,
    input [3:0]       TimerDigitSemiColon,
    input [3:0]       TimerDigit1,
    input [3:0]       TimerDigit2,
    input timer_en,
    input game_en,
//    input [3:0]       Live1,
//    input [3:0]       Live2,
//    input [3:0]       Live3,
    
    input [1:0]       LivesCount_input,
   
    
    // From UUT1 Mem_Timing
    input [9:0]       memCounterX,  // these counters control memory write address
    input [9:0]       memCounterY,
    
    // From UUT4 HDMI_Timing
    input [9:0]       CounterX,     // these counters control state transitions
    input [9:0]       CounterY,
    
    output reg        memTiming_en, // enable for memCounters
    
    output reg [15:0] BRAM_address, // VideoBuffer write address
    output reg [0:0]  BRAM_data,    // VideoBuffer write data
    output reg        BRAM_en,      // VideoBuffer Port A enable
    output reg        BRAM_wr_en    // VideoBuffer Port A write enable
    
    );

// ===========================================================================
// 			              Parameters, Registers, and Wires
// ===========================================================================
    
    reg [1:0] FSM_State;
    reg [1:0] FSM_NextState;
    
    // FSM States, one-hot encoding
    localparam s0_INITIALIZE = 2'b01;
    localparam s1_IDLE       = 2'b00;  // default state
    localparam s2_WRITE      = 2'b10;
    
    reg  DigitT_Active; 
    wire DigitT_SegA = ((memCounterX > 1)  && (memCounterX < 5) && (memCounterY > 5)  && (memCounterY < 12));
    wire DigitT_SegB = ((memCounterX == 5) &&                      (memCounterY > 11) && (memCounterY < 34));
    wire DigitT_SegC = ((memCounterX == 5) &&                      (memCounterY > 33) && (memCounterY < 60));
    wire DigitT_SegD = ((memCounterX > 4)  && (memCounterX < 8) && (memCounterY > 5)  && (memCounterY < 12)); //NEXT TO SEG A
    wire DigitT_SegE = ((memCounterX > 3)  && (memCounterX < 5) && (memCounterY > 33) && (memCounterY < 60));
    wire DigitT_SegF = ((memCounterX == 4) &&                      (memCounterY > 11) && (memCounterY < 34));
    wire DigitT_SegG = ((memCounterX == 4) &&                      (memCounterY > 11) && (memCounterY < 34)); //OVERLAP
    
    reg  DigitI_Active; 
    wire DigitI_SegA = ((memCounterX > 9)  && (memCounterX < 13) && (memCounterY > 5)  && (memCounterY < 12));
    wire DigitI_SegB = ((memCounterX > 10) && (memCounterX < 13) && (memCounterY > 11) && (memCounterY < 34));
    wire DigitI_SegC = ((memCounterX > 10) && (memCounterX < 13) && (memCounterY > 33) && (memCounterY < 54));
    wire DigitI_SegD = ((memCounterX > 9)  && (memCounterX < 13) && (memCounterY > 53)  && (memCounterY < 60)); 
    wire DigitI_SegE = ((memCounterX > 9)  && (memCounterX < 11) && (memCounterY > 33) && (memCounterY < 54));
    wire DigitI_SegF = ((memCounterX == 10) &&                      (memCounterY > 11) && (memCounterY < 34));
    wire DigitI_SegG = ((memCounterX > 9)  && (memCounterX < 13) && (memCounterY > 30) && (memCounterY < 37)); //OVERLAP
    
    reg  DigitM_Active; 
    wire DigitM_SegA = ((memCounterX > 14)  && (memCounterX < 18) && (memCounterY > 5)  && (memCounterY < 12));
    wire DigitM_SegB = ((memCounterX == 17) &&                      (memCounterY > 11) && (memCounterY < 34));
    wire DigitM_SegC = ((memCounterX == 17) &&                      (memCounterY > 33) && (memCounterY < 60));
    wire DigitM_SegD = ((memCounterX > 14)  && (memCounterX < 18) && (memCounterY > 5)  && (memCounterY < 12)); //OVERLAP
    wire DigitM_SegE = ((memCounterX > 14)  && (memCounterX < 16) && (memCounterY > 33) && (memCounterY < 60));
    wire DigitM_SegF = ((memCounterX == 15) &&                      (memCounterY > 11) && (memCounterY < 34));
    wire DigitM_SegG = ((memCounterX == 15) &&                      (memCounterY > 11) && (memCounterY < 34)); //OVERLAP
    
    reg  DigitM1_Active; 
    wire DigitM1_SegA = ((memCounterX > 17)  && (memCounterX < 21) && (memCounterY > 5)  && (memCounterY < 12));
    wire DigitM1_SegB = ((memCounterX == 20) &&                      (memCounterY > 11) && (memCounterY < 34));
    wire DigitM1_SegC = ((memCounterX == 20) &&                      (memCounterY > 33) && (memCounterY < 60));
    wire DigitM1_SegD = ((memCounterX > 17)  && (memCounterX < 21) && (memCounterY > 5)  && (memCounterY < 12)); //OVERLAP
    wire DigitM1_SegE = ((memCounterX > 17)  && (memCounterX < 19) && (memCounterY > 33) && (memCounterY < 60));
    wire DigitM1_SegF = ((memCounterX == 18) &&                      (memCounterY > 11) && (memCounterY < 34));
    wire DigitM1_SegG = ((memCounterX == 18) &&                      (memCounterY > 11) && (memCounterY < 34)); //OVERLAP
    
    reg  DigitE_Active; 
    wire DigitE_SegA = ((memCounterX > 22)  && (memCounterX < 26) && (memCounterY > 5)  && (memCounterY < 12)); 
    wire DigitE_SegG = ((memCounterX > 22)  && (memCounterX < 26) && (memCounterY > 30) && (memCounterY < 37));
    wire DigitE_SegB = ((memCounterX == 23) &&                      (memCounterY > 11) && (memCounterY < 34)); //OVERLAP
    wire DigitE_SegC = ((memCounterX == 23) &&                      (memCounterY > 11) && (memCounterY < 34)); //OVERLAP
    wire DigitE_SegD = ((memCounterX > 22)  && (memCounterX < 26) && (memCounterY > 53) && (memCounterY < 60));
    wire DigitE_SegE = ((memCounterX > 22)  && (memCounterX < 24) && (memCounterY > 33) && (memCounterY < 54));
    wire DigitE_SegF = ((memCounterX == 23) &&                      (memCounterY > 11) && (memCounterY < 34));
//    wire DigitE_SegG = ((memCounterX > 22)  && (memCounterX < 26) && (memCounterY > 30) && (memCounterY < 37));
    
    reg  DigitSemiColon_Active; 
    wire DigitSemiColon_SegA = ((memCounterX > 34)  && (memCounterX < 36) && (memCounterY > 17)  && (memCounterY < 24)); 
    wire DigitSemiColon_SegB = ((memCounterX > 34)  && (memCounterX < 36) && (memCounterY > 17)  && (memCounterY < 24)); //OVERLAP
    wire DigitSemiColon_SegC = ((memCounterX > 34)  && (memCounterX < 36) && (memCounterY > 17)  && (memCounterY < 24)); //OVERLAP
    wire DigitSemiColon_SegD = ((memCounterX > 34)  && (memCounterX < 36) && (memCounterY > 42) && (memCounterY < 49));
    wire DigitSemiColon_SegE = ((memCounterX > 34)  && (memCounterX < 36) && (memCounterY > 42) && (memCounterY < 49)); //OVERLAP
    wire DigitSemiColon_SegF = ((memCounterX > 34)  && (memCounterX < 36) && (memCounterY > 42) && (memCounterY < 49)); //OVERLAP
    wire DigitSemiColon_SegG = ((memCounterX > 34)  && (memCounterX < 36) && (memCounterY > 42) && (memCounterY < 49)); //OVERLAP
    
    reg  Digit0_Active; 
    wire Digit0_SegA = ((memCounterX > 29)  && (memCounterX < 33) && (memCounterY > 5)  && (memCounterY < 12)); 
    wire Digit0_SegB = ((memCounterX == 32) &&                      (memCounterY > 11) && (memCounterY < 34));
    wire Digit0_SegC = ((memCounterX == 32) &&                      (memCounterY > 33) && (memCounterY < 54));
    wire Digit0_SegD = ((memCounterX > 29)  && (memCounterX < 33) && (memCounterY > 53) && (memCounterY < 60));
    wire Digit0_SegE = ((memCounterX > 29)  && (memCounterX < 31) && (memCounterY > 33) && (memCounterY < 54));
    wire Digit0_SegF = ((memCounterX == 30) &&                      (memCounterY > 11) && (memCounterY < 34));
    wire Digit0_SegG = ((memCounterX > 29)  && (memCounterX < 33) && (memCounterY > 30) && (memCounterY < 37));
    
    reg  Digit1_Active; 
    wire Digit1_SegA = ((memCounterX > 37)  && (memCounterX < 41) && (memCounterY > 5)  && (memCounterY < 12)); 
    wire Digit1_SegB = ((memCounterX == 40) &&                      (memCounterY > 11) && (memCounterY < 34));
    wire Digit1_SegC = ((memCounterX == 40) &&                      (memCounterY > 33) && (memCounterY < 54));
    wire Digit1_SegD = ((memCounterX > 37)  && (memCounterX < 41) && (memCounterY > 53) && (memCounterY < 60));
    wire Digit1_SegE = ((memCounterX >37)  && (memCounterX < 39) && (memCounterY > 33) && (memCounterY < 54));
    wire Digit1_SegF = ((memCounterX == 38) &&                      (memCounterY > 11) && (memCounterY < 34));
    wire Digit1_SegG = ((memCounterX > 37)  && (memCounterX < 41) && (memCounterY > 30) && (memCounterY < 37));
    
    reg  Digit2_Active; 
    wire Digit2_SegA = ((memCounterX > 42)  && (memCounterX < 46) && (memCounterY > 5)  && (memCounterY < 12)); 
    wire Digit2_SegB = ((memCounterX == 45) &&                      (memCounterY > 11) && (memCounterY < 34));
    wire Digit2_SegC = ((memCounterX == 45) &&                      (memCounterY > 33) && (memCounterY < 54));
    wire Digit2_SegD = ((memCounterX > 42)  && (memCounterX < 46) && (memCounterY > 53) && (memCounterY < 60));
    wire Digit2_SegE = ((memCounterX > 42)  && (memCounterX < 44) && (memCounterY > 33) && (memCounterY < 54));
    wire Digit2_SegF = ((memCounterX == 43) &&                      (memCounterY > 11) && (memCounterY < 34));
    wire Digit2_SegG = ((memCounterX > 42)  && (memCounterX < 46) && (memCounterY > 30) && (memCounterY < 37));

    reg  Live1_Active; 
    wire Live1_SegA = ((memCounterX == 639) &&                       (memCounterY > 5)  && (memCounterY < 24));  //OVERLAP
    wire Live1_SegB = ((memCounterX == 639) &&                       (memCounterY > 5)  && (memCounterY < 34)); 
    wire Live1_SegC = ((memCounterX == 639) &&                       (memCounterY > 33)  && (memCounterY < 60)); 
    wire Live1_SegD = ((memCounterX == 639) &&                       (memCounterY > 33)  && (memCounterY < 60)); //OVERLAP
    wire Live1_SegE = ((memCounterX == 639) &&                       (memCounterY > 33)  && (memCounterY < 60)); //OVERLAP
    wire Live1_SegF = ((memCounterX == 639) &&                       (memCounterY > 33)  && (memCounterY < 60)); //OVERLAP
    wire Live1_SegG = ((memCounterX == 639) &&                       (memCounterY > 33)  && (memCounterY < 60)); //OVERLAP

    reg  Live2_Active; 
    wire Live2_SegA = ((memCounterX > 631)  && (memCounterX < 635) && (memCounterY > 5)  && (memCounterY < 12)); 
    wire Live2_SegB = ((memCounterX == 634) &&                       (memCounterY > 11)  && (memCounterY < 34)); 
    wire Live2_SegC = ((memCounterX == 634) &&                       (memCounterY > 11)  && (memCounterY < 34)); //OVERLAP
    wire Live2_SegD = ((memCounterX > 631)  && (memCounterX < 635) && (memCounterY > 53) && (memCounterY < 60));
    wire Live2_SegE = ((memCounterX > 631)  && (memCounterX < 633) && (memCounterY > 42) && (memCounterY < 54)); 
    wire Live2_SegF = ((memCounterX > 631)  && (memCounterX < 633) && (memCounterY > 42) && (memCounterY < 54)); //OVERLAP
    wire Live2_SegG = ((memCounterX > 631)  && (memCounterX < 635) && (memCounterY > 30) && (memCounterY < 37)); 

    reg  Live3_Active; 
    wire Live3_SegA = ((memCounterX > 624)  && (memCounterX < 628) && (memCounterY > 5)  && (memCounterY < 12)); 
    wire Live3_SegB = ((memCounterX == 627) &&                      (memCounterY > 11) && (memCounterY < 34)); 
    wire Live3_SegC = ((memCounterX == 627) &&                      (memCounterY > 33) && (memCounterY < 54)); 
    wire Live3_SegD = ((memCounterX > 624)  && (memCounterX < 628) && (memCounterY > 53) && (memCounterY < 60));
    wire Live3_SegE = ((memCounterX == 627) &&                      (memCounterY > 33) && (memCounterY < 54)); //OVERLAP
    wire Live3_SegF = ((memCounterX == 627) &&                      (memCounterY > 33) && (memCounterY < 54)); //OVERLAP
    wire Live3_SegG = ((memCounterX > 624)  && (memCounterX < 628) && (memCounterY > 30) && (memCounterY < 37)); 
    
    reg [1:0] LivesCount;
// ===========================================================================
//                              Implementation    
// ===========================================================================
    
    // Synchronous Process for FSM_State transitions
    always@(posedge Clk) begin            
        if(Reset == 1'b1) begin         // *synchronous* active high reset
            FSM_State <= s0_INITIALIZE;
        end
        else begin
            FSM_State <= FSM_NextState;
        end
    end
    
    // Combinatorial Process for NextState transitions
    // See FSM diagram
    always@* begin
        case(FSM_State)   
            s0_INITIALIZE: begin
                FSM_NextState = s2_WRITE;   // The very first frame will be skipped by FrameGen, go straight to write
            end
          
            s1_IDLE: begin
                if((CounterY == 479) && (CounterX == 640))  
                    FSM_NextState = s2_WRITE;
                else
                    FSM_NextState = s1_IDLE;
            end
            
            s2_WRITE: begin
                if((memCounterY == 10'd479)&&(memCounterX == 10'd79))
                    FSM_NextState = s1_IDLE;
                else
                    FSM_NextState = s2_WRITE;
            end      
            default: begin
                FSM_NextState = s1_IDLE;
            end       
        endcase
    end
    
    //segment T
    
    always@(posedge Clk) begin
       DigitT_Active <= (DigitT_SegA || DigitT_SegD || DigitT_SegB || DigitT_SegC || DigitT_SegE || DigitT_SegF);
    end
    
    //segment I
    
    always@(posedge Clk) begin
         DigitI_Active <= (DigitI_SegA || DigitI_SegD || DigitI_SegB || DigitI_SegC || DigitI_SegE || DigitI_SegF);
    end
    
    //segment M
    
    always@(posedge Clk) begin
        DigitM_Active <= (DigitM_SegA || DigitM_SegB || DigitM_SegC || DigitM_SegE || DigitM_SegF);
    end
    
    //segment M1
    
    always@(posedge Clk) begin
       DigitM1_Active <= (DigitM1_SegA || DigitM1_SegB || DigitM1_SegC || DigitM1_SegE || DigitM1_SegF);
    end
    
    //segment E
    
    always@(posedge Clk) begin
        DigitE_Active <= (DigitE_SegA || DigitE_SegD || DigitE_SegE || DigitE_SegF || DigitE_SegG);
    end
   
    // Synchronous Process to sample the value of TimerDigit0 on rising edge clock
    //segment 1
    always@(posedge Clk) begin
        case(TimerDigit0)
            4'd0: begin
                Digit0_Active <= (Digit0_SegA || Digit0_SegB || Digit0_SegC || Digit0_SegD || Digit0_SegE || Digit0_SegF)&& (timer_en == 1);
            end
            4'd1: begin
                Digit0_Active <= (Digit0_SegB || Digit0_SegC)&& (timer_en == 1);
            end
            4'd2: begin
                Digit0_Active <= (Digit0_SegA || Digit0_SegB || Digit0_SegG || Digit0_SegE || Digit0_SegD)&& (timer_en == 1);
            end
            4'd3: begin
                Digit0_Active <= (Digit0_SegA || Digit0_SegB || Digit0_SegC || Digit0_SegD || Digit0_SegG)&& (timer_en == 1);
            end
            4'd4: begin
                Digit0_Active <= (Digit0_SegF || Digit0_SegG || Digit0_SegB || Digit0_SegC)&& (timer_en == 1);
            end
            4'd5: begin
                Digit0_Active <= (Digit0_SegA || Digit0_SegF || Digit0_SegG || Digit0_SegC || Digit0_SegD)&& (timer_en == 1);
            end
            4'd6: begin
                Digit0_Active <= (Digit0_SegA || Digit0_SegF || Digit0_SegE || Digit0_SegD || Digit0_SegC || Digit0_SegG)&& (timer_en == 1);
            end
            4'd7: begin
                Digit0_Active <= (Digit0_SegA || Digit0_SegB || Digit0_SegC)&& (timer_en == 1);
            end
            4'd8: begin
                Digit0_Active <= (Digit0_SegA || Digit0_SegB || Digit0_SegC || Digit0_SegD || Digit0_SegE || Digit0_SegF || Digit0_SegG)&& (timer_en == 1);
            end
            4'd9: begin
                Digit0_Active <= (Digit0_SegA || Digit0_SegF || Digit0_SegG || Digit0_SegB || Digit0_SegC)&& (timer_en == 1);
            end
            
            default: begin
                Digit0_Active = Digit0_Active && (timer_en == 1);
            end
        endcase
    end
    
    //segment SemiColon
    always@(posedge Clk) begin
       DigitSemiColon_Active <= (DigitSemiColon_SegA || DigitSemiColon_SegD);
    end
    
    //segment 2
    always@(posedge Clk) begin
        case(TimerDigit1)
            4'd0: begin
                Digit1_Active <= (Digit1_SegA || Digit1_SegB || Digit1_SegC || Digit1_SegD || Digit1_SegE || Digit1_SegF)&& (timer_en == 1);
            end
            4'd1: begin
                Digit1_Active <= (Digit1_SegB || Digit1_SegC)&& (timer_en == 1);
            end
            4'd2: begin
                Digit1_Active <= (Digit1_SegA || Digit1_SegB || Digit1_SegG || Digit1_SegE || Digit1_SegD)&& (timer_en == 1);
            end
            4'd3: begin
                Digit1_Active <= (Digit1_SegA || Digit1_SegB || Digit1_SegC || Digit1_SegD || Digit1_SegG)&& (timer_en == 1);
            end
            4'd4: begin
                Digit1_Active <= (Digit1_SegF || Digit1_SegG || Digit1_SegB || Digit1_SegC)&& (timer_en == 1);
            end
            4'd5: begin
                Digit1_Active <= (Digit1_SegA || Digit1_SegF || Digit1_SegG || Digit1_SegC || Digit1_SegD)&& (timer_en == 1);
            end
            4'd6: begin
                Digit1_Active <= (Digit1_SegA || Digit1_SegF || Digit1_SegE || Digit1_SegD || Digit1_SegC || Digit1_SegG)&& (timer_en == 1);
            end
            4'd7: begin
                Digit1_Active <= (Digit1_SegA || Digit1_SegB || Digit1_SegC)&& (timer_en == 1);
            end
            4'd8: begin
                Digit1_Active <= (Digit1_SegA || Digit1_SegB || Digit1_SegC || Digit1_SegD || Digit1_SegE || Digit1_SegF || Digit1_SegG)&& (timer_en == 1);
            end
            4'd9: begin
                Digit1_Active <= (Digit1_SegA || Digit1_SegF || Digit1_SegG || Digit1_SegB || Digit1_SegC)&& (timer_en == 1);
            end
            
            default: begin
                Digit1_Active = Digit1_Active && (timer_en == 1);
            end
        endcase
    end
    
    //segment 3
    
    always@(posedge Clk) begin
        case(TimerDigit2)
            4'd0: begin
                Digit2_Active <= (Digit2_SegA || Digit2_SegB || Digit2_SegC || Digit2_SegD || Digit2_SegE || Digit2_SegF)&& (timer_en == 1);
            end
            4'd1: begin
                Digit2_Active <= (Digit2_SegB || Digit2_SegC)&& (timer_en == 1);
            end
            4'd2: begin
                Digit2_Active <= (Digit2_SegA || Digit2_SegB || Digit2_SegG || Digit2_SegE || Digit2_SegD)&& (timer_en == 1);
            end
            4'd3: begin
                Digit2_Active <= (Digit2_SegA || Digit2_SegB || Digit2_SegC || Digit2_SegD || Digit2_SegG)&& (timer_en == 1);
            end
            4'd4: begin
                Digit2_Active <= (Digit2_SegF || Digit2_SegG || Digit2_SegB || Digit2_SegC)&& (timer_en == 1);
            end
            4'd5: begin
                Digit2_Active <= (Digit2_SegA || Digit2_SegF || Digit2_SegG || Digit2_SegC || Digit2_SegD)&& (timer_en == 1);
            end
            4'd6: begin
                Digit2_Active <= (Digit2_SegA || Digit2_SegF || Digit2_SegE || Digit2_SegD || Digit2_SegC || Digit2_SegG)&& (timer_en == 1);
            end
            4'd7: begin
                Digit2_Active <= (Digit2_SegA || Digit2_SegB || Digit2_SegC)&& (timer_en == 1);
            end
            4'd8: begin
                Digit2_Active <= (Digit2_SegA || Digit2_SegB || Digit2_SegC || Digit2_SegD || Digit2_SegE || Digit2_SegF || Digit2_SegG)&& (timer_en == 1);
            end
            4'd9: begin
                Digit2_Active <= (Digit2_SegA || Digit2_SegF || Digit2_SegG || Digit2_SegB || Digit2_SegC)&& (timer_en == 1);
            end
            
            default: begin
                Digit2_Active = Digit2_Active && (timer_en == 1);
            end
        endcase
    end
    
    // Live 1 
    
     always@(posedge Clk) begin
        case(LivesCount)
            2'd0: begin
                LivesCount <= (Live3_SegA || Live3_SegB || Live3_SegC || Live3_SegD || Live3_SegG);
            end
            2'd1: begin
                LivesCount <= (Live2_SegA || Live2_SegB || Live2_SegD || Live2_SegE || Live2_SegG);
            end
            2'd2: begin
                LivesCount <= (Live1_SegB || Live1_SegC);
            end
            default: begin
               LivesCount <= 0;
            end
        endcase
    end
    
    // Synchronous Process to drive outputs
    always@(posedge Clk) begin
        if(Reset == 1'b1) begin
            memTiming_en <= 0;
            BRAM_address <= 0;
            BRAM_data <= 0;
            BRAM_wr_en <= 0 && (game_en == 1);
            BRAM_en <= 0 && (game_en == 1);
        end
        else begin
            case(FSM_State)
                s0_INITIALIZE: begin
                    BRAM_en <= 1 && (game_en == 1);       // keep Port A enabled in all states 
                    memTiming_en <= 0;  // d
                    BRAM_wr_en <= 0;
                    BRAM_address <= 0;
                    BRAM_data <= 0 && (game_en == 1);
                end
            
                s1_IDLE: begin
                    BRAM_en <= 1 && (game_en == 1);
                    memTiming_en <= 0;
                    BRAM_address <= 0;
                    BRAM_data <= 0;
                    BRAM_wr_en <= 0 && (game_en == 1);
                end
                
                s2_WRITE: begin
                    BRAM_en <= 1 && (game_en == 1);
                    memTiming_en <= 1;
                    BRAM_address <= (memCounterX + memCounterY * 80);
//                    BRAM_data <= (Digit0_Active) ? 1:0;
                     BRAM_data <= (Digit0_Active || Digit1_Active || Digit2_Active || DigitT_Active || DigitI_Active || DigitM_Active || DigitM1_Active || DigitE_Active || DigitSemiColon_Active) ? 1:0;
                    
                    BRAM_wr_en <= 1 && (game_en == 1);
                end
            endcase
        end
    end
endmodule
