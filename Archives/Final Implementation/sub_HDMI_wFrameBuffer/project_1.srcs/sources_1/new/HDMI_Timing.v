`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/20/2021 07:31:03 PM
// Design Name: 
// Module Name: HDMI_Timing
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


module HDMI_Timing(
    input            PClk,
    input            Reset,
    
    input      [4:0] Speed,
    input     [11:0] Stretch,
    
    output reg       vsync,
    output reg       hsync,
    
    output reg       activeArea,
    output reg [9:0] CounterX,
    output reg [9:0] CounterY,
    
    output reg [9:0] ReadCounterX  // counts once for every 16 CounterX
    );
      
// ===========================================================================
//                    Parameters, Registers, and Wires    
// ===========================================================================     
    reg [4:0] localCounter;  
      
// ===========================================================================
//                              Implementation    
// ===========================================================================

    // horizonal counter
    always@(posedge PClk, posedge Reset) begin
        if(Reset == 1'b1) begin
            CounterX <= 0;
        end
        else begin
            CounterX <= (CounterX == 10'd799) ?  0:(CounterX + 1);
        end
    end
    
    // vertical counter
    always@(posedge PClk, posedge Reset) begin
        if(Reset == 1'b1) begin
            CounterY <= 0;
        end
        else begin
            if(CounterX==Stretch) 
                CounterY <= (CounterY == 524) ? 0:(CounterY + 1);
            else 
                CounterY <= CounterY;
        end
    end
    
    // activeArea, hsync, vsync
    always@(posedge PClk, posedge Reset) begin
        if(Reset == 1'b1) begin
            activeArea <= 0;
            hsync <= 0;
            vsync <= 0;
        end
        else begin
            activeArea <= (CounterX < 640 ) && (CounterY < 480);
            hsync <= (CounterX >= 656) && (CounterX < 752);
            vsync <= (CounterY >= 490) && (CounterY < 492);
        end
    end
    
    
///////////////////////////////////////////////////////////////////////////////////////////////////   
    // localCounter, doesn't do anything by itself, used to drive ReadCounter
    always@(posedge PClk, posedge Reset) begin
        if(Reset == 1'b1) begin
            localCounter <= 0;
        end
        else begin
            localCounter <= (localCounter == Speed) ? 0 : localCounter+1; 
        end
    end
    
    // counts every time localCounter counts
    always@(posedge PClk, posedge Reset) begin
        if(Reset == 1'b1) begin
            ReadCounterX <= 0;
        end
        else begin
            case(CounterX)
                10'd799: begin  // this could have been an if else instead
                    ReadCounterX <= 0;
                end
                default: begin
                    if(localCounter == Speed) begin // speed determines how many pixels are repeated in a row
                        ReadCounterX <= (ReadCounterX == 10'd79) ? 0:ReadCounterX + 1;
                    end
                    else begin
                        ReadCounterX <= ReadCounterX;
                    end
                end
            endcase
        end
    end
    
endmodule
