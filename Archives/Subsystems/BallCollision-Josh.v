`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/19/2021 11:37:13 AM
// Design Name: 
// Module Name: BallCollision
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


module BallCollision(XCord, YCord, PadTY, PadBY, ColSel, ColOut, Clk);//640x400 Res

input [9:0] Xcord, YCord;
input PadTY, PadBY;
input Clk;
output reg ColSel;
output reg ColOut

parameter Cieling = 0;
parameter Floor = 400;
parameter Wall = 0;
parameter Net = 640
parameter PaddleFX = 620;
parameter PaddleLX = 630;
parameter PaddleEY = 40;
parameter reg BallCon = 6'b000001;
parameter reg PadCol = 6'b000010;
parameter reg NetCol = 6'000100;
parameter reg CelCol = 6'b001000;
parameter reg FloCol = 6'b010000;
parameter reg WalCol = 6'b100000;

//Collision Check
always @ (posedge Clk)
begin

//Defualt
Col <= BallCon;


	//Net Collision
  if (XCord>Net)
   begin
    ColSel <= NetCol;
   end
  else
   begin
    ColSel <= BallCon;
   end   
   
   //Cieling Collision
  if (YCord<Cieling)
   begin
    ColSel <= CelCol;
   end
  else
   begin
    ColSel <= BallCon;
   end
   
   //Floor Collision
  if (YCord>Floor)
   begin
    ColSel <= FloCol;
   end
  else
   begin
    ColSel <= BallCon;
   end   
 
// Back Wall Collision 
   if (XCord<Wall)
    begin
	 ColSel <= WalCol;
    end
   else
    begin
	 ColSel <= BallCon;
    end
	
	//Paddle Collision
  if (PaddleFX>XCord>PaddleLX)
  begin
    if (PadTY<YCord<PadBY)
	 begin
	  ColSel <= PadCol;
	 end
	  else
	   begin
	    ColSel <= BallCon;
	   end
  end
   else
    begin
     ColSel <= BallCon;
    end
	
end

//output of the Module
always @ (negedge Clk)
begin
case (ColSel)
BallCon: ColOut <= 3'b000;
PadCol: ColOut <= 3'b001;
NetCol: ColOut <= 3'b011;
CelCol: ColOut <= 3'b010;
FloCol: ColOut <= 3'b110;
WalCol: ColOut <= 3'b100;
defualt: ColOut <= 3'b000;
endcase
end

endmodule
