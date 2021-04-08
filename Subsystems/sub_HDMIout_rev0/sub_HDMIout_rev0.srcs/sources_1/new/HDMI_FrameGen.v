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
// 
//////////////////////////////////////////////////////////////////////////////////


module HDMI_FrameGen(
    input            clk_100MHz,     // module clock
    input            PClk,      // module output clock
    input            Reset,
    input            testButton,
    
    input      [9:0] CounterX,       
    input      [9:0] CounterY,
    
    input            FIFO_dout,
    
    input      [7:0] ROM_Red,
    input      [7:0] ROM_Green,
    input      [7:0] ROM_Blue,
    
    output reg       FIFO_ReadEn,
    output reg [3:0] PixelSel,
    
    output reg [7:0] Red,
    output reg [7:0] Green,
    output reg [7:0] Blue         
    );
    
// ===========================================================================
//                    Parameters, Registers, and Wires    
// ==========================================================================   
    reg [3:0] FSM_State;
    
    localparam s0_Default = 4'b0000;  // d'0
    localparam s1_Read    = 4'b0010;  // d'2
    localparam s2_Decode  = 4'b0100;  // d'4
    localparam s3_Assign  = 4'b1000;  // d'8
    
    reg [9:0] CounterX_Latch;

// ===========================================================================
//                              Implementation    
// ===========================================================================    
    initial begin
        FSM_State <= s0_Default;
        CounterX_Latch <= 0;
    end
    
    always@(posedge clk_100MHz, posedge Reset) begin
        if(Reset == 1'b1) begin
            FSM_State <= s0_Default;
            CounterX_Latch <= 0;
        end
        else begin
            case(FSM_State)
            
                s0_Default: begin
                    FSM_State <= (CounterX == 0) ? s1_Read : s0_Default;
                end
                
                s1_Read: begin
                    FSM_State <= s2_Decode;
                end
                
                s2_Decode: begin
                    FSM_State <= (PClk==1'b0) ? s3_Assign:s2_Decode;   // assign pixel data to TMDS on falling edge of pclk
                    CounterX_Latch <= CounterX;
                end
                
                s3_Assign: begin
                    if( (CounterX >= 0) & (CounterX < 641) ) begin
                        FSM_State <= (CounterX - CounterX_Latch == 4) ? s1_Read:s3_Assign; // repeats the same pixel value four times
                    end
                    else begin
                        FSM_State <= s0_Default;
                    end
                end
                
            
            endcase
        end
    end
    
    always@(posedge clk_100MHz, posedge Reset) begin
        if(Reset == 1'b1) begin
            Red <= 0;
            Green <= 0;
            Blue <= 0;
            FIFO_ReadEn <= 0;
            PixelSel <= 0;
        end
        else begin
            case(FSM_State)
                    
                s0_Default: begin
                     Red <= 0;
                     Green <= 0;
                     Blue <= 0;
                     FIFO_ReadEn <= 0;
                     PixelSel <= 0;                    
                end
               
                s1_Read: begin
                     FIFO_ReadEn <= 1;
                end
                
                s2_Decode: begin
                    FIFO_ReadEn <= 0;
                    PixelSel <= FIFO_dout;
                end
                
                s3_Assign: begin
                    Red <= ROM_Red;
                    Green <= ROM_Green;
                    Blue <= ROM_Blue;
                end
                
        
            endcase
        end
    end
              
endmodule
