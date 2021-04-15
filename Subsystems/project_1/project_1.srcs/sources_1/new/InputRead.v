`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/13/2021 05:12:07 PM
// Design Name: 
// Module Name: InputRead
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

// this module is for testing
module InputRead(
    input           Clk,
    input           Reset,
    input [3:0]     Sw,
    
    output reg [3:0]  TimerDigit0,
    output reg [4:0]  Speed,
    output reg [11:0] Stretch
    );


    reg [3:0] Sw_Latch;
  

// ===========================================================================
//                              Implementation    
// ===========================================================================   
    initial begin
        TimerDigit0 <= 0;
    end
    
    
    
    always@(posedge Clk, posedge Reset) begin
        if(Reset == 1'b1) begin
            Sw_Latch <= 0;
            TimerDigit0 <= 0;
        end
        else begin
            Sw_Latch <= Sw;
            if(Sw_Latch != Sw) begin
                TimerDigit0 <= (TimerDigit0 == 4'd9) ? 0: TimerDigit0+1;
            end
        end
    end
    
    always@(posedge Clk, posedge Reset) begin
        if(Reset == 1'b1) begin
            Speed <= 4'd7;
            Stretch <= 12'd799;
        end
        else begin   
            Speed <= 4'd7;
            Stretch <= 12'd799;
            /*
            if(Sw[3] == 1'b1) begin
                Speed <= 5'd1;
            end    
            else if (Sw[2] == 1'b1) begin
                Speed <= 4'd7;
                Stretch <= 12'd1599;
            end    
            else if (Sw[1] == 1'b1) begin
                Speed <= 4'd7;
                Stretch <= 12'd99;
            end    
            else if (Sw[0] == 1'b1) begin
                Speed <= 4'd7;
                Stretch <= 12'd399;
            end    
            else begin
                Speed <= 4'd7;          // DEFAULT VALUES FOR HDMI_Timing
                Stretch <= 12'd799;
            end
            */
        end
    end
    
endmodule
