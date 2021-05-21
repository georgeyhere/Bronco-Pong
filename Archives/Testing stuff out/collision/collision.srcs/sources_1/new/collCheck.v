`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/06/2021 10:41:23 AM
// Design Name: 
// Module Name: collCheck
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


module BallCollision(XCord, YCord, PadTY, ColSel, ColOut, Clk, calc_start);//640x400 Res

input [9:0] XCord, YCord; //ball postion
input [9:0] PadTY;         //paddle top and bottom y cordnit
input Clk;
input calc_start;
output reg [5:0] ColSel;  //sellected output
output reg [2:0] ColOut;  //output

parameter Cieling = 73;   //+, 65 is start
parameter Floor = 392;    //-
parameter Wall = 8;       //+
parameter Net = 632;      //-
parameter PaddleFX = 592; //front of paddle
parameter PaddleLX = 600; //back of paddle
parameter PaddleEY = 100; //adjustment for paddle area if not given both top and bottom

parameter reg BallCon = 6'b000001; //one hot sel
parameter reg PadCol = 6'b000010;
parameter reg NetCol = 6'b000100;
parameter reg CelCol = 6'b001000;
parameter reg FloCol = 6'b010000;
parameter reg WalCol = 6'b100000;
 
// pad boundary = pad top + pad offset 
wire [9:0]PadBY = PadTY + PaddleEY;

initial begin
    ColSel <= 0;
    ColOut <= 0;
end

//Collision Check
always@(posedge Clk) begin


	//Net Collision
    if (XCord >= Net) begin
  
        ColSel <= NetCol;
    end
    
    else if (YCord <= Cieling) begin
        ColSel <= ColSel;
    end
    
    else if (YCord >= Floor) begin
        ColSel <= FloCol;
    end  
    
    else if (XCord <= Wall) begin
        ColSel <= WalCol;
    end

	//Paddle Collision
    else if ((PaddleFX >= XCord)||( XCord >= PaddleLX)) begin
        if ((PadTY <= YCord)||(YCord <= PadBY)) begin
	       ColSel <= PadCol;
	   end
	   else begin
	       ColSel <= ColSel;
	   end
    end
    else begin
        ColSel <= ColSel;
    end
	
end

//output of the Module
always@(posedge Clk) begin
    if(calc_start == 1'b1) begin
        case(ColSel)
            BallCon: begin
                ColOut <= 3'b000;
            end
            PadCol: begin
                ColOut <= 3'b001;
            end
            NetCol: begin
                ColOut <= 3'b011;
            end
            CelCol: begin
                ColOut <= 3'b010;
            end
            FloCol: begin
                ColOut <= 3'b110;
            end
            WalCol: begin
                ColOut <= 3'b100;
            end
            default: begin
                ColOut <= 3'b000;
            end
        endcase
    end
    else begin
        ColOut <= ColOut;
    end
end

endmodule
