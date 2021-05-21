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
//  input [3:0]     Sw,
    
    output reg [3:0]  TimerDigit0 = 0,
    output reg [3:0]  TimerDigit1 = 0,
    output reg [3:0]  TimerDigit2 = 0,
    output reg [4:0]  Speed,
    output reg [11:0] Stretch,
    output reg cclk
    );
    reg segment_clk;
    reg [3:0] Sw_Latch;
    reg [25:0] count_limit = 49999999;
    reg [25:0] counter = 0;
// ===========================================================================
//                              Implementation    
// ===========================================================================   

   
    initial begin
        TimerDigit2 <= 0;
        TimerDigit1 <= 0;
        TimerDigit0 <= 0;
    end
    
    always@(posedge Clk)
    begin 
            if(Reset == 1'b1) begin
        //            Sw_Latch <= 0;
                    counter <= 0;
                    segment_clk <=0;
                end
            else 
            begin
            
            if (counter == count_limit)
           begin 
                segment_clk<=~segment_clk;
                counter<= 0;
               
            end
            else begin
            counter <= counter+1;
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
         
                if (TimerDigit2 == 9)
        begin 
//                TimerDigit1 <= (TimerDigit1 == 4'd5) ? 0: TimerDigit1+1; 
                TimerDigit1 <= TimerDigit1+1;
                end
//                else 
//                begin   TimerDigit1 <= TimerDigit1; end
                
                if (TimerDigit1 == 5 && TimerDigit2 == 9)
                begin TimerDigit0 <= (TimerDigit0 == 4'd5) ? 0: TimerDigit0+1;
                TimerDigit1 <= 0;
                 end
                else
                begin   TimerDigit0 <= TimerDigit0; end
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

        end
    end
    
endmodule
