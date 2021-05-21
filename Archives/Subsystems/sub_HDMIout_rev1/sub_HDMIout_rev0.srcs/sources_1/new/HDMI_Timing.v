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
    
    output reg       vsync,
    output reg       hsync,
    
    output reg       activeArea,
    output reg [9:0] CounterX,
    output reg [9:0] CounterY
    );
      
// ===========================================================================
//                    Parameters, Registers, and Wires    
// ===========================================================================      
    wire [7:0] W;
    wire [7:0] A;  
      
      
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
            if(CounterX==799) 
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
    
endmodule
