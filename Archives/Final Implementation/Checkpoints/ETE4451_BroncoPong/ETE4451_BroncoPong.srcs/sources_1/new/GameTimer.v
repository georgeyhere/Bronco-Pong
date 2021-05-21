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
module GameTimer(

    input           Clk,    // 100 MHz clock
    input           Reset,  // active high reset
    input           Enable, // active high enable
    
    output reg [3:0]  TimerDigit0,
    output reg [3:0]  TimerDigit1,
    output reg [3:0]  TimerDigit2
    );
    
    reg segment_clk;
    reg [3:0] Sw_Latch;
    reg [25:0] count_limit = 49999999;
    reg [25:0] counter = 0;
// ===========================================================================
//                              Implementation    
// ===========================================================================   

   
    initial begin
        segment_clk <= 0;
        TimerDigit2 <= 0;
        TimerDigit1 <= 0;
        TimerDigit0 <= 0;
    end
    
    always@(posedge Clk) begin
        if(Reset == 1'b1) begin        
            counter <= 0;
            segment_clk <=0;
        end
        else begin
            if(Enable == 1'b1) begin  // if enabled, normal operation
                if (counter == count_limit) begin 
                    segment_clk <= ~segment_clk;
                    counter <= 0;  
                end
                else begin
                    counter <= counter+1;
                end
            end
            else begin // if disabled, pause operations
                segment_clk <= segment_clk;
                counter <= counter;
            end    
        end
    end
    
    always@(posedge segment_clk, posedge Reset) begin
        if(Reset == 1'b1) begin
            TimerDigit2 <= 0;
            TimerDigit1 <= 0;
            TimerDigit0 <= 0;
        end
        else begin
            TimerDigit2 <= (TimerDigit2 == 4'd9) ? 0: TimerDigit2+1;
            if (TimerDigit2 == 9) begin
                TimerDigit1 <= TimerDigit1+1;
            end   
            if (TimerDigit1 == 5 && TimerDigit2 == 9) begin
                TimerDigit0 <= (TimerDigit0 == 4'd5) ? 0: TimerDigit0+1;
                TimerDigit1 <= 0;
            end
            else begin 
                TimerDigit0 <= TimerDigit0; 
            end
        end
    end
    
    
endmodule
