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
    
    output reg       Clk_Div,
    output reg [7:0] SecondsCounter
    );
    
    reg [63:0] Counter; // 64-bit counter
    
    
    initial begin
        Clk_Div <= 0;
        Counter <= 0;
        SecondsCounter <= 0;
    end
    
    always@(posedge Clk, posedge Reset) begin
        if(Reset == 1'b1) begin
            Counter <= 0;
            Clk_Div <= 0;
        end
        else begin
           if(Counter == 33000000) begin    // arbitrary #, it looks good irl
               Clk_Div <= ~Clk_Div;
               Counter <= 0;
           end
           else begin
               Clk_Div <= Clk_Div;
               Counter <= Counter + 1;
           end  
        end
    end
    
    always@(posedge Clk_Div, posedge Reset) begin
        if((Reset == 1'b1)||(ControlTimer_Enable == 1'b0)) begin
            SecondsCounter <= 0;
        end
        else begin
            if(ControlTimer_Enable == 1'b1) begin
                SecondsCounter <= SecondsCounter + 1;   // secondscounter counts on slowed down clock, DOES NOT ACTUALLY COUNT SECONDS
            end
            else begin
                SecondsCounter <= 0;
            end
        end 
    end
endmodule
