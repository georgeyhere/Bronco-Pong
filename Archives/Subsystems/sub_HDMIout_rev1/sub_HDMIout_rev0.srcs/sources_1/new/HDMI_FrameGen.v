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
    
    input      [9:0] CounterX,       
    input      [9:0] CounterY,
    
    input            FIFO_Dout,
    input      [8:0] PaddlePosition,
    input      [9:0] ballX,
    input      [9:0] ballY,
    
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
    reg [4:0] FSM_State;
    reg [4:0] FSM_NextState;
    localparam s0_Default     = 5'd0;  // d'0
    localparam s1_Read        = 5'd1;  // d'2
    localparam s2_Decode      = 5'd2;  // d'4
    localparam s3_FIFOAssign  = 5'd3;  // d'8
    localparam s4_GameAssign  = 5'd4;
    
    reg [9:0] CounterX_Latch;
    reg ball_inX, ball_inY;
    
    wire BorderY = ((CounterX >= 0) && (CounterX <= 1)) || ((CounterX > 638) && (CounterX <= 639));
    wire BorderX = ((CounterY >= 63) && (CounterY <= 64)) || ((CounterY > 478) && (CounterY <= 479));  
    //wire Border = ((CounterX[9:3] == 0) || (CounterX[9:3] == 79) || (CounterY[8:3] == 0) || (CounterY[8:3] == 59));
    wire Paddle = (CounterY >= PaddlePosition+8) && (CounterY <= PaddlePosition+120) && (CounterX >= 623) && (CounterX < 637);
    wire Ball = ball_inX && ball_inY;
// ===========================================================================
//                              Implementation    
// ===========================================================================    
    initial begin
        FSM_State <= s0_Default;
        CounterX_Latch <= 0;
        ball_inX <= 0;
        ball_inY <= 0;
    end
    
    always@(posedge clk_100MHz) begin
        if(ball_inX == 0) 
            ball_inX <= (CounterX == ballX) & ball_inY;
        else 
            ball_inX <= !(CounterX == ballX + 15);
    end
    
    always@(posedge clk_100MHz) begin
        if(ball_inY == 0)
            ball_inY <= (CounterY == ballY);
        else 
            ball_inY <= !(CounterY == ballY + 16);
    end
    
    always@(posedge clk_100MHz, posedge Reset) begin
        if(Reset == 1'b1) begin
            FSM_State <= s0_Default;
        end
        else begin
            FSM_State <= FSM_NextState;
        end
    end
    
    always@(FSM_State, CounterX, CounterY, PClk) begin
        CounterX_Latch = CounterX;       
            case(FSM_State)            
                s0_Default: begin
                    if(CounterY > 63) begin
                        FSM_NextState = s4_GameAssign;
                    end
                    else begin
                        FSM_NextState = s1_Read;
                    end                  
                end
                
                s1_Read: begin
                    FSM_NextState = s2_Decode;
                end
                
                s2_Decode: begin                   
                    FSM_NextState = (PClk==1'b0) ? s3_FIFOAssign:s2_Decode;   // assign pixel data to TMDS on falling edge of pclk
                    CounterX_Latch = CounterX;
                end
                
                s3_FIFOAssign: begin
                    CounterX_Latch = CounterX_Latch;
                    if( (CounterX >= 0) & (CounterX < 640) ) begin
                        FSM_NextState = (CounterX - CounterX_Latch == 16) ? s1_Read:s3_FIFOAssign; // repeats the same pixel value sixteen times
                    end
                    else begin
                        FSM_NextState = s0_Default;
                    end  
                end
                
                s4_GameAssign: begin
                    if((CounterY == 524) | (CounterY < 64)) begin
                        FSM_NextState = s0_Default;
                    end
                    else begin
                        FSM_NextState = s4_GameAssign;
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
                    PixelSel <= FIFO_Dout;
                end
                
                s3_FIFOAssign: begin
                    Red <= ROM_Red;
                    Green <= ROM_Green;
                    Blue <= ROM_Blue;
                end
                
                s4_GameAssign: begin
                    FIFO_ReadEn <= 0;
                    PixelSel <= 0;
                    Red <= (Ball | Paddle | BorderX | BorderY) ? 8'hFF : 0;
                    Green <= (Ball | Paddle | BorderX | BorderY) ? 8'hFF : 0;
                    Blue <= (Ball | Paddle | BorderX | BorderY) ? 8'hFF : 0;
                end
                
                default: begin
                    Red <= 0;
                    Green <= 0;
                    Blue <= 0;
                    FIFO_ReadEn <= 0;
                    PixelSel <= 0;     
                end
        
            endcase
        end
    end
              
endmodule
