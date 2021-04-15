`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/29/2021 10:55:39 AM
// Design Name: 
// Module Name: HDMI_PixelROM
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
// ROM that stores RGB values for each color of pixel 
//////////////////////////////////////////////////////////////////////////////////


module HDMI_PixelROM(
    input       clk_100MHz,
    input       Reset,
    input [3:0] PixelSel,
    
    output reg [7:0] ROM_Red,
    output reg [7:0] ROM_Green,
    output reg [7:0] ROM_Blue
    );
    

// ===========================================================================
//                              Implementation    
// =========================================================================== 
    initial begin
        ROM_Red <= 0;
        ROM_Green <= 0;
        ROM_Blue <= 0;
    end
    
    always@(posedge clk_100MHz, posedge Reset) begin
        if(Reset == 1'b1) begin
            ROM_Red <= 0;
            ROM_Green <= 0;
            ROM_Blue <= 0;
        end
        else begin
            case(PixelSel)
                
                4'b0000: begin             // PixelSel == 0000 | black pixel
                    ROM_Red <= 0;
                    ROM_Green <= 0;
                    ROM_Blue <= 0;
                end
                
                4'b0001: begin             // PixelSel == 0001 | white pixel
                    ROM_Red <= 8'hFF;
                    ROM_Green <= 8'hFF;
                    ROM_Blue <= 8'hFF;
                end
                
                default: begin              // Default: black pixel
                    ROM_Red <= 0;
                    ROM_Green <= 0;
                    ROM_Blue <= 0;
                end
                
            endcase
        end    
    end
   
endmodule
