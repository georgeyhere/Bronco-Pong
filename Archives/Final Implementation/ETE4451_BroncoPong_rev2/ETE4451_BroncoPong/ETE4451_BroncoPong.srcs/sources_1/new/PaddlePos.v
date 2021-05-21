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
                    paddlePosY_R <= (paddlePosY_R == paddleLowerY) ? paddlePosY : paddlePosY_R + 1;
                end
                else if (PMOD_Ydata < 462) begin
                    paddlePosY_R <= (paddlePosY_R == paddleUpperY) ? paddlePosY : paddlePosY_R - 1;
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
