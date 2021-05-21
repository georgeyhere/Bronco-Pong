`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/11/2021 09:25:42 PM
// Design Name: 
// Module Name: PaddlePos
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
/*
module Paddle_Pos(paddlePosY, PosData, Clk_100MHz,Reset, up, down, minY, maxY,Game_Enable,paddlePosReset);

input [39:0] PosData;
input Clk_100MHz;
input Reset;

input up;
input down;

input paddlePosReset;
input Game_Enable;


//output reg [9:0] minY;
output reg [9:0] minY,maxY;


parameter paddle_speed = 4;

always @ (posedge Clk_100MHz) begin
     if (Reset) begin
        minY <= 390;
        maxY <= 78;
        //Game_Enable <= paddlePosReset;
     end 
     else begin
        //Game_Enable <= paddlePosReset;
        if( paddlePosReset == 0 && Game_Enable == 1) begin
            if(minY > paddle_speed) begin
                minY <= minY - paddle_speed;
                maxY <= maxY - paddle_speed;
            end 
            else if (maxY <400 - paddle_speed) begin
                minY <= minY + paddle_speed;
                maxY <= maxY + paddle_speed;
            end 
            else begin
                minY <= minY;
                maxY <= maxY;
            end
        end
     end
end
    
endmodule
*/

module PaddlePos(
    input            Clk_100MHz,
    input            Reset,
    input            Game_Enable,
    input            paddlePosReset,
    
    input [39:0]     PosData,
    
    output reg [9:0] PMOD_Ydata,
    output reg [9:0] paddlePosY
    );
    
    reg [9:0] paddlePosY_R;
    //reg [7:0] PMOD_Ydata;
    
    parameter paddleUpperY = 78;
    parameter paddleLowerY = 390;


    initial begin
        paddlePosY <= 10'd200;
        paddlePosY_R <= 10'd200;
        PMOD_Ydata <= 512;
    end
    
    always@(posedge Clk_100MHz) begin
        if(Reset == 1'b1 || paddlePosReset == 1'b1) begin
            PMOD_Ydata <= 512;
            paddlePosY <= 10'd200;
        end
        else begin
            //PMOD_Ydata <= PosData[23:8];
            PMOD_Ydata <= {PosData[25:24], PosData[39:32]};
            //PMOD_Ydata <= 0;
            if(paddlePosY == 400) 
                paddlePosY <= 400;
            else if(paddlePosY == 73)
                paddlePosY <= 73;
            else
                paddlePosY <= paddlePosY_R;
        end
    end
    
    always@(posedge Clk_100MHz) begin
        if(Reset == 1'b1 || paddlePosReset == 1'b1) begin
            paddlePosY_R <= 10'd200;
        end
        else begin
            if(Game_Enable == 1'b1) begin           
                if((PMOD_Ydata < 562) && (PMOD_Ydata > 462)) begin
                    paddlePosY_R <= paddlePosY_R;
                end
                else if (PMOD_Ydata > 562) begin
                    paddlePosY_R <= (paddlePosY_R == paddleLowerY) ? paddlePosY : paddlePosY_R + 2;
                end
                else if (PMOD_Ydata < 462) begin
                    paddlePosY_R <= (paddlePosY_R == paddleUpperY) ? paddlePosY : paddlePosY_R - 2;
                end
                else begin
                    paddlePosY_R <= paddlePosY_R;
                end
            end
            else begin
                paddlePosY_R <= paddlePosY_R;
            end
        end
    end
endmodule
