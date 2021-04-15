`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/11/2021 10:09:52 PM
// Design Name: 
// Module Name: a
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


module a(
    input           Clk,
    input           Reset,
    input           DispTimerEn,
    input [3:0]     TimerDigit,
    
    output reg          WriteEnable,
    output reg [13:0]   MemAddress,
    output reg [1:0]    MemData
    );
    
    parameter FrameBufferDepth = 64;
    
    
    reg [3:0] FSM_State;
    reg [3:0] FSM_NextState;
    localparam s0 = 4'd0;
    localparam s1_writeInit = 4'd1;
    localparam s2_writeData = 4'd2;
    localparam s3 = 4'd3;
    
    reg [15:0] RowCounter;
    reg        RowCounterEn;
    reg        RowCounterRst;

    always@(posedge Clk, posedge Reset) begin
        if(Reset == 1'b1) begin
            FSM_State <= s0;
        end
        else begin
            FSM_State <= FSM_NextState;
        end
    end
    
    always@(*) begin
        case(FSM_State)
            
            s0: begin
                FSM_NextState = (DispTimerEn) ? s1_writeInit : s0;
            end
            
            s1_writeInit: begin
                FSM_NextState = s2_writeData;
            end
            
            s2_writeData: begin
                FSM_NextState = (RowCounter == FrameBufferDepth) ? s0:s2_writeData;
            end       
        endcase
    end
    
    always@(posedge Clk) begin
        if(RowCounterRst == 1'b1) begin
            RowCounter <= 0;
        end
        else begin
            if(RowCounterEn == 1'b1) begin
                RowCounter <= RowCounter + 1;
            end
            else begin
                RowCounter <= RowCounter;
            end
        end
    end
    
    
    always@(posedge Clk) begin
        case(FSM_State)
            s0: begin
                WriteEnable <= 0;
                MemAddress <= 0;
                MemData <= 0;
                RowCounter <= 0;
            end
            
            s1_writeInit: begin
                WriteEnable <= 1;
                case(TimerDigit)
                    
                    4'd0: begin
                        MemAddress <= 202;
                        MemData <= 1;
                    end
                    4'd1: begin
                         
                    end
                    4'd2: begin
                        
                    end
                    4'd3: begin
                        
                    end
                    4'd4: begin
                        
                    end
                    4'd5: begin
                        
                    end
                    4'd6: begin
                        
                    end
                    4'd7: begin
                        
                    end
                    4'd8: begin
                        
                    end
                    4'd9: begin
                        
                    end
                    default: begin
                        
                    end
                endcase
            end
                
            s2_writeData: begin
                    
            end
            
        
        endcase
    end
    
    
endmodule
