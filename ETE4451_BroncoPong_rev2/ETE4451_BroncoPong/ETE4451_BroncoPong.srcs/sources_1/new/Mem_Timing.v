`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/13/2021 02:40:29 PM
// Design Name: 
// Module Name: Mem_Timing
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


module Mem_Timing(
    input            Clk_100MHz,    
    input            Reset,         // sync active high reset
    input            memTiming_en,  // module enable
    
    output reg [9:0] memCounterX,
    output reg [9:0] memCounterY
    );
    
    initial begin
        memCounterX <= 0;
        memCounterY <= 0;
    end
    
    // memCounterX Process
    // counts to 40 
    always@(posedge Clk_100MHz) begin
        if(Reset == 1'b1) begin
            memCounterX <= 0;
        end
        else begin
            if(memTiming_en == 1'b1) begin
                memCounterX <= (memCounterX == 640) ? 0:(memCounterX + 1);
            end
            else begin
                memCounterX <= 0;
            end
        end
    end
    
    // memCounterY Process 
    // counts each time memCounterX maxes out, maxes out at 479
    always@(posedge Clk_100MHz) begin
        if(Reset == 1'b1) begin
            memCounterY <= 0;
        end
        else begin
            if(memTiming_en == 1'b1) begin
                if(memCounterX == 640) begin
                    memCounterY <= (memCounterY == 480) ? 0:(memCounterY + 1);
                end
                else begin
                    memCounterY <= memCounterY;
                end
            end
            else begin
                memCounterY <= 0;
            end
        end
    end
   
endmodule
