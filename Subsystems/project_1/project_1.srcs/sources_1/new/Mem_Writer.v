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
    
    
    
    input [3:0]       TimerDigit0,
    //input [3:0]       TimerDigit1,
    //input [3:0]       TimerDigit2,
    
    //input [1:0]       LivesCount
    
    //input [9:0]       BallPosX,
    //input [9:0]       BallPosY,
    //input [9:0]       PaddlePosY,
    
    //input [2:0]       GameState, 
    
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
    
    //output reg        Mem_Writer_Ready,
    //output reg        Mem_Writer_Done
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
    
    
    reg  Digit0_Active; 
    wire Digit0_SegA = ((memCounterX > 1)  && (memCounterX < 5) && (memCounterY > 5)  && (memCounterY < 12)); 
    wire Digit0_SegB = ((memCounterX == 4) &&                      (memCounterY > 11) && (memCounterY < 34));
    wire Digit0_SegC = ((memCounterX == 4) &&                      (memCounterY > 33) && (memCounterY < 54));
    wire Digit0_SegD = ((memCounterX > 1)  && (memCounterX < 5) && (memCounterY > 53) && (memCounterY < 60));
    wire Digit0_SegE = ((memCounterX > 1)  && (memCounterX < 3) && (memCounterY > 33) && (memCounterY < 54));
    wire Digit0_SegF = ((memCounterX == 2) &&                      (memCounterY > 11) && (memCounterY < 34));
    wire Digit0_SegG = ((memCounterX > 1)  && (memCounterX < 5) && (memCounterY > 30) && (memCounterY < 37));

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
     
    // Synchronous Process to sample the value of TimerDigit0 on rising edge clock
    always@(posedge Clk) begin
        case(TimerDigit0)
            4'd0: begin
                Digit0_Active <= (Digit0_SegA || Digit0_SegB || Digit0_SegC || Digit0_SegD || Digit0_SegE || Digit0_SegF);
            end
            4'd1: begin
                Digit0_Active <= (Digit0_SegB || Digit0_SegC);
            end
            4'd2: begin
                Digit0_Active <= (Digit0_SegA || Digit0_SegB || Digit0_SegG || Digit0_SegE || Digit0_SegD);
            end
            4'd3: begin
                Digit0_Active <= (Digit0_SegA || Digit0_SegB || Digit0_SegC || Digit0_SegD || Digit0_SegG);
            end
            4'd4: begin
                Digit0_Active <= (Digit0_SegF || Digit0_SegG || Digit0_SegB || Digit0_SegC);
            end
            4'd5: begin
                Digit0_Active <= (Digit0_SegA || Digit0_SegF || Digit0_SegG || Digit0_SegC || Digit0_SegD);
            end
            4'd6: begin
                Digit0_Active <= (Digit0_SegA || Digit0_SegF || Digit0_SegE || Digit0_SegD || Digit0_SegC || Digit0_SegG);
            end
            4'd7: begin
                Digit0_Active <= (Digit0_SegA || Digit0_SegB || Digit0_SegC);
            end
            4'd8: begin
                Digit0_Active <= (Digit0_SegA || Digit0_SegB || Digit0_SegC || Digit0_SegD || Digit0_SegE || Digit0_SegF || Digit0_SegG);
            end
            4'd9: begin
                Digit0_Active <= (Digit0_SegA || Digit0_SegF || Digit0_SegG || Digit0_SegB || Digit0_SegC);
            end
            
            default: begin
                Digit0_Active = Digit0_Active;
            end
        endcase
        //case(TimerDigit1)  
        //endcase
        //case(TimerDigit2)
        //endcase
    end
       
    // Synchronous Process to drive outputs
    always@(posedge Clk) begin
        if(Reset == 1'b1) begin
            memTiming_en <= 0;
            BRAM_address <= 0;
            BRAM_data <= 0;
            BRAM_wr_en <= 0;
            BRAM_en <= 0;
        end
        else begin
            case(FSM_State)
                s0_INITIALIZE: begin
                    BRAM_en <= 1;       // keep Port A enabled in all states 
                    memTiming_en <= 0;  // d
                    BRAM_wr_en <= 0;
                    BRAM_address <= 0;
                    BRAM_data <= 0;
                end
            
                s1_IDLE: begin
                    BRAM_en <= 1;
                    memTiming_en <= 0;
                    BRAM_address <= 0;
                    BRAM_data <= 0;
                    BRAM_wr_en <= 0;
                end
                
                s2_WRITE: begin
                    BRAM_en <= 1;
                    memTiming_en <= 1;
                    BRAM_address <= (memCounterX + memCounterY * 80);
                    BRAM_data <= (Digit0_Active) ? 1:0;
                    // BRAM_data <= (Digit0_Active || Digit1_Active || Digit2_Active) ? 1:0;
                    
                    /*
                    if(Digit0_Active || Digit1_Active || Digit2_Active) 
                        BRAM_data <= 1;        // draw Digit0, Digit1, Digit2 in white
                    else if (Ball_Active || Paddle_Active)
                        BRAM_data <= 4'b1010;  // draw ball and paddle in green
                    else
                        BRAM_data <= 0;        // fill everything else in black
                    */
                    
                    BRAM_wr_en <= 1;
                end
            endcase
        end
    end
endmodule
