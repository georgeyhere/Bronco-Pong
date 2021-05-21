`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/10/2021 06:25:04 PM
// Design Name: 
// Module Name: GameControlTimer
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

module GameControlTimer(

    input           Clk,    // 100MHz clock
    input           Reset,
    input           ControlTimer_Enable,
    
    output reg      ControlTimer_Done
    );
    
    reg        Clk_Div;
    reg [63:0] Counter; // 64-bit counter
    
    reg [7:0]  SecondsCounter;
    
    parameter CLK_PERIOD = 4'd10;
    parameter OUTPUT_PERIOD = 32'd1000000000; // f = 1Hz, T = 1e-9 ns
    
    initial begin
        Clk_Div <= 0;
        ControlTimer_Done <= 0;
        Counter <= 0;
    end
    
    always@(posedge Clk, posedge Reset) begin
        if(Reset == 1'b1) begin
            Counter <= 0;
        end
        else begin
           if(Counter == ((OUTPUT_PERIOD/CLK_PERIOD)/2)) begin
               Clk_Div <= ~Clk_Div;
               Counter <= 0;
           end
           else begin
               Clk_Div <= Clk_Div;
               Counter <= Counter;
           end  
        end
    end
    
    always@(posedge Clk_Div, posedge Reset) begin
        if((Reset == 1'b1)||(ControlTimer_Enable == 1'b0)) begin
            SecondsCounter <= 0;
            ControlTimer_Done <= 0;
        end
        else begin
            if(ControlTimer_Enable == 1'b1) begin
                SecondsCounter <= SecondsCounter + 1;
                ControlTimer_Done <= (SecondsCounter == 10) ? 1:0;
            end
            else begin
                SecondsCounter <= 0;
                ControlTimer_Done <= 0;
            end
        end 
    end
endmodule
