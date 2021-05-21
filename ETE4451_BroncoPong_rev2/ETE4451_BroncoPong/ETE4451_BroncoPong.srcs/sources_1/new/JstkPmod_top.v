`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/11/2021 08:59:18 PM
// Design Name: 
// Module Name: JstkPmod_top
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


module JstkPmod_top(
    input        Clk_100MHz, 
    input        Reset,
    
    input        Game_Enable,
    input        paddlePosReset,
    
    input        MISO,
    
    output       SS,
    output       MOSI,
    output       SCLK,
    
    output [9:0] paddlePosY
    );
    
    wire [39:0] DOUT;
    wire [7:0] DIN;
    wire       sndRec;
    wire [9:0] PMOD_Ydata;
    
    PmodJSTK UUT3a (
    .CLK(Clk_100MHz),
    .RST(Reset),
    .sndRec(sndRec),
    .DIN(8'b11000000),
    .MISO(MISO),
    .SS(SS),
    .SCLK(SCLK),
    .MOSI(MOSI),
    .DOUT(DOUT)
    );
    
    ClkDiv_5Hz UUT3b(
    .CLK(Clk_100MHz),
    .RST(Reset),
    .CLKOUT(sndRec)
    );
    
    PaddlePos UUT3c (
    .Clk_100MHz(Clk_100MHz),
    .Reset(Reset),
    .Game_Enable(Game_Enable),
    .paddlePosReset(paddlePosReset),
    .PosData(DOUT),
    .paddlePosY(paddlePosY),
    .PMOD_Ydata(PMOD_Ydata)
    );
    
    ila_0_SPI ILA_SPI(
    .clk(Clk_100MHz),
    .probe0(DOUT),
    .probe1(SS),
    .probe2(SCLK),
    .probe3(MOSI),
    .probe4(MISO),
    .probe5(Game_Enable),
    .probe6(DOUT[23:8]),
    .probe7(paddlePosY)
    );
    
endmodule
