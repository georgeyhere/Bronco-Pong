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


module BallCollision(XCord, YCord, PadTY, ColOut, Clk);//640x400 Res

input [9:0] XCord, YCord;//ball postion
input [9:0]PadTY;//paddle top and bottom y cordnit
input Clk;

output reg [2:0] ColOut;//output


reg [9:0] PadBY;//paddle extender value
reg [5:0] ColSel=1;//sellected output

parameter [9:0] Cieling = 73;//+, 65 is start
parameter [9:0] Floor = 392;//-
parameter [9:0] Wall = 8;//+
parameter [9:0] Net = 632;//-
parameter [9:0] PaddleFX = 592;//front of paddle
parameter [9:0] PaddleLX = 600;//back of paddle
parameter [9:0] PaddleEY = 100;//adjustment for paddle area if not given both top and bottom

parameter [5:0] BallCon = 6'b000001;//one hot sel
parameter [5:0] PadCol = 6'b000010;
parameter [5:0] NetCol = 6'b000100;
parameter [5:0] CelCol = 6'b001000;
parameter [5:0] FloCol = 6'b010000;
parameter [5:0] WalCol = 6'b100000;
reg A;//X cordnit check for paddle
reg B;//Y cordnit Check for paddle
reg C;// X & Y operator check for paddle

// Adding the extender to the paddle
always @ (Clk) begin
    PadBY= PadTY + PaddleEY;
end

//Xcord check for the paddle
always @ (Clk)
begin
    if (PaddleFX < XCord)
    begin
        if (XCord < PaddleLX)
        begin 
            A <= 1;
        end 
    end
    else
    begin
        A <= 0;
    end
end

//Ycord check for the paddlw
always @ (Clk)
begin
    if (PadTY < YCord)
    begin
        if (YCord < PadBY)
        begin 
            B <= 1;
        end 
    end
    else
    begin
        B <= 0;
    end
end

//checks for the rest of the collision and final comfermtion of the paddle check
always @ (Clk)
begin
    C = A & B;
end

//Collision Check
always @ (posedge Clk)
begin


	//Net Collision
  if (XCord > Net)
   begin
    ColSel <= NetCol;
   end
  
   
   //Cieling Collision
  else if (YCord < Cieling)
   begin
    ColSel <= CelCol;
   end

   
   //Floor Collision
  else if (YCord > Floor)
   begin
    ColSel <= FloCol;
   end
 
 
// Back Wall Collision 
 else if (XCord < Wall)
    begin
	 ColSel <= WalCol;
    end

	
	//Paddle Collision
 else if (C == 1)
     begin
	  ColSel <= PadCol;
	 end
	 
	  else
	   begin
	    ColSel <= ColSel;
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
        default: ColOut <= 3'b000;
    endcase
end

endmodule
