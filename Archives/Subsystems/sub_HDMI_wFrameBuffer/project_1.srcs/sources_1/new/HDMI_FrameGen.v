`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/29/2021 10:37:32 AM
// Design Name: 
// Module Name: HDMI_FrameGen
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
// outdated, don't use this one
//////////////////////////////////////////////////////////////////////////////////


module HDMI_FrameGen(
    input            clk_100MHz,     // module clock
    input            PClk,      // module output clock
    input            Reset,
    
    input            vsync,
    input            activeArea,
    input      [9:0] CounterX,       
    input      [9:0] CounterY,
    
    input            BRAM_Dout,
    input      [8:0] PaddlePosition,
    input      [9:0] ballX,
    input      [9:0] ballY,
    
    input      [7:0] ROM_Red,
    input      [7:0] ROM_Green,
    input      [7:0] ROM_Blue,
    
    output reg [11:0] BRAM_addr,
    output reg        BRAM_en,
    output reg [3:0]  PixelSel,
    
    output reg [7:0]  Red,
    output reg [7:0]  Green,
    output reg [7:0]  Blue         
    );
    
// ===========================================================================
//                    Parameters, Registers, and Wires    
// ==========================================================================   
    reg [4:0] FSM_State;
    reg [4:0] FSM_NextState;
    localparam s0_Init        = 5'd0;
    localparam s1_Default     = 5'd1;  // d'0
    localparam s2_Read        = 5'd2;  // d'2
    localparam s3_Decode      = 5'd3;  // d'4
    localparam s4_BRAMAssign  = 5'd4;  // d'8
    localparam s5_Delay       = 5'd5;
    
    reg [9:0] CounterX_Latch;
    
    reg [9:0] PixelTimer;
    reg       PixelTimer_en;
    reg       PixelTimer_rst;
// ===========================================================================
//                              Implementation    
// ===========================================================================    
    initial begin
        FSM_State <= s0_Init;
        
    end
    
    always@(posedge clk_100MHz) begin
        if(Reset == 1'b1) begin
            FSM_State <= s0_Init;
        end
        else begin
            FSM_State <= FSM_NextState;
        end
    end
    
    always@(posedge clk_100MHz) begin
        if((Reset == 1'b1) || (PixelTimer_rst == 1'b1)) begin
            PixelTimer <= 0;
        end
        else begin
            if(PixelTimer_en == 1'b1) begin
                PixelTimer <= (PixelTimer == 500) ? 0 : PixelTimer+1;
            end
            else begin
                PixelTimer <= 0;
            end
        end
    end
    
    always@(FSM_State, CounterX, CounterY, PClk, CounterX_Latch, PixelTimer) begin      
            case(FSM_State)    
                s0_Init: begin
                    FSM_NextState = (vsync == 1'b1) ? s1_Default : s0_Init;
                end
                    
                s1_Default: begin
                    PixelTimer_en = 0;
                    PixelTimer_rst = 1;
                    if((CounterY == 524) && (CounterX <= 639) )
                        FSM_NextState = s2_Read;
                    else
                        FSM_NextState = s1_Default;       
                end
                
                s2_Read: begin
                    PixelTimer_en = 0;
                    PixelTimer_rst = 1;
                    FSM_NextState = s3_Decode;
                end
                
                s3_Decode: begin      
                    PixelTimer_en = 0;     
                    PixelTimer_rst = 1;        
                    FSM_NextState = (PClk==1'b0) ? s4_BRAMAssign:s3_Decode;   // assign pixel data to TMDS on falling edge of pclk
                end
                
                s4_BRAMAssign: begin
                    PixelTimer_en = 1;
                    PixelTimer_rst = 0;
                    FSM_NextState = s5_Delay;
                end
                
                s5_Delay: begin
                    //if(PixelTimer == 15) begin
                    PixelTimer_en = 1;
                    PixelTimer_rst = 0;
                    if((CounterY <= 479) && (CounterX <= 640)) begin
                        if(PixelTimer == 64) begin
                        //if((CounterY <= 479) && (CounterX <= 639)) begin
                            FSM_NextState = s2_Read;
                        end
                        else begin
                            FSM_NextState = s5_Delay;
                        end   
                    end
                    else begin
                        FSM_NextState = s1_Default;
                    end
                end
                
                default: begin
                    FSM_NextState = FSM_State;
                end
            
            endcase
        
    end
    
    always@(posedge clk_100MHz, posedge Reset) begin
        if(Reset == 1'b1) begin
            Red <= 0;
            Green <= 0;
            Blue <= 0;
            BRAM_en <= 0;
            PixelSel <= 0;
            BRAM_addr <= 0;
        end
        else begin
            case(FSM_State)       
                s0_Init: begin
                    BRAM_en <= 0;
                    BRAM_addr <= 0;    
                end 
                            
                s1_Default: begin
                    Red <= 0;
                    Green <= 0;
                    Blue <= 0;
                    BRAM_en <= 0;
                    PixelSel <= 0;     
                    BRAM_addr <= (CounterY < 480) ? BRAM_addr : 0;                
                end
               
                s2_Read: begin
                    BRAM_en <= 1;
                    BRAM_addr <= (1 + CounterY*40);
                end
                
                s3_Decode: begin
                    PixelSel <= BRAM_Dout;
                end
                
                s4_BRAMAssign: begin
                    PixelSel <= BRAM_Dout;
                    CounterX_Latch <= CounterX;
                    Red <= ROM_Red;
                    Green <= ROM_Green;
                    Blue <= ROM_Blue;
                end
                
                s5_Delay: begin
                    PixelSel <= BRAM_Dout;
                    CounterX_Latch <= CounterX_Latch;
                    Red <= ROM_Red;
                    Green <= ROM_Green;
                    Blue <= ROM_Blue;
                end
                
                default: begin
                    Red <= 0;
                    Green <= 0;
                    Blue <= 0;
                    BRAM_en <= 0;
                    PixelSel <= 0;     
                end
        
            endcase
        end
    end
              
endmodule
