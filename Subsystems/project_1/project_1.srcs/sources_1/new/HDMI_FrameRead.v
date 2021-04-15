`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/14/2021 10:22:09 AM
// Design Name: 
// Module Name: HDMI_FrameRead
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


module HDMI_FrameRead(
    input            Clk_100MHz,     // module clock
    input            Reset,          // sync active high reset
    
    // from HDMI_Timing
    input      [9:0] CounterX,       
    input      [9:0] CounterY,
    input      [9:0] ReadCounterX,
    
    // from VideoBuffer
    input            BRAM_Dout,
    
    // from HDMI_PixelROM
    input      [7:0] ROM_Red,
    input      [7:0] ROM_Green,
    input      [7:0] ROM_Blue,
    
    // outputs to VideoBuffer
    output reg [15:0] BRAM_addr,
    output reg        BRAM_en,
    
    output reg [3:0]  PixelSel,    // HDMI_PixelROM lookup value
    
    // outputs to TMDS
    output reg [7:0]  Red,         
    output reg [7:0]  Green,
    output reg [7:0]  Blue         
    );
    
// ===========================================================================
//                    Parameters, Registers, and Wires    
// ==========================================================================   
    reg [1:0] FSM_State;
    reg [1:0] FSM_NextState;
    
    // FSM states with one-hot encoding
    localparam s0_INITIALIZE = 2'b01;
    localparam s1_IDLE       = 2'b00;  // default state
    localparam s2_ACTIVE     = 2'b10;  
   
// ===========================================================================
//                              Implementation    
// ===========================================================================     
    initial begin
        FSM_State <= s0_INITIALIZE;    
    end
    
    // Synchronous Process for FSM_State transitions
    always@(posedge Clk_100MHz) begin
        if(Reset == 1'b1) begin          // *synchronous* active high reset
            FSM_State <= s0_INITIALIZE;
        end
        else begin
            FSM_State <= FSM_NextState;
        end
    end
    
    // Combinatorial Process for FSM_NextState transitions
    always@* begin
        case(FSM_State)
            s0_INITIALIZE: begin
                if((CounterY == 524) && (CounterX == 799)) begin
                    FSM_NextState = s1_IDLE;
                end
                else begin
                    FSM_NextState = s0_INITIALIZE;
                end
            end
            
            s1_IDLE: begin
                if((CounterX==0) && (CounterY==0)) begin
                    FSM_NextState = s2_ACTIVE;
                end
                else begin
                    FSM_NextState = s1_IDLE;
                end
            end
            
            s2_ACTIVE: begin
                if((CounterY == 479) && (CounterX == 640)) // transition after CounterX goes to 640, 1 pixel past 639
                    FSM_NextState = s1_IDLE;                // not 100% sure if necessary
                else
                    FSM_NextState = s2_ACTIVE;
            end   
            
            default: begin
                FSM_NextState = s1_IDLE;
            end     
        endcase
    end
    
    // Synchronous Process to drive outputs
    always@(posedge Clk_100MHz) begin
        if(Reset == 1'b1) begin
            BRAM_addr <= 0;
            BRAM_en <= 0;
            PixelSel <= 0;
            Red <= 0;
            Green <= 0;
            Blue <= 0;
        end
        else begin
            case(FSM_State)
                s0_INITIALIZE: begin    // initialize state, skip first frame
                    BRAM_en <= 0;       
                    BRAM_addr <= 0;
                    PixelSel <= 0;
                    Red <= 0;
                    Green <= 0;
                    Blue <= 0;
                end
                
                s1_IDLE: begin
                    BRAM_en <= 0;
                    BRAM_addr <= 0;
                    PixelSel <= 0;
                end
                
                s2_ACTIVE: begin
                    BRAM_en <= 1;
                    BRAM_addr <= (CounterX > 639) ? BRAM_addr:(ReadCounterX + CounterY*80);
                    PixelSel <= BRAM_Dout;
                    Red <= ROM_Red;
                    Green <= ROM_Green;
                    Blue <= ROM_Blue;
                end
            endcase
        end
    
    end
        
endmodule
