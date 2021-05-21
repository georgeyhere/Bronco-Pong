`timescale 1ns / 1ps

module TB_BallCollision;
 // Inputs
 
 reg Clk;
 reg [9:0] XCord;
 reg [9:0] YCord;
 reg [9:0] PadTY;
 
 // Outputs
 
 wire [5:0] ColSel;
 wire [2:0] ColOut;
 wire [9:0] PadBY;
 
 // Instantiate the Unit Under Test (UUT)

 
 BallCollision uut (
  
  .XCord(XCord), 
  .YCord(YCord), 
  .PadTY(PadTY), 
  .ColSel(ColSel), 
  .ColOut(ColOut), 
  .PadBY(PadBY),
  .Clk(Clk)
  
 );
 initial begin
  // Initialize Inputs
  Clk = 0;
 
        forever #100 Clk = ~Clk;
 end
 
 initial 
begin 
//Start
#400
XCord = 610;//200
YCord = 135;//200
PadTY = 65;//65
//Cieling
#400
XCord = 200;//200
YCord = 60;//60
PadTY = 65;//65
//Floor
#400
XCord = 595;//200
YCord = 135;//400
PadTY = 65;
//Backwall
#400
XCord = 595;
YCord = 200;//200
PadTY = 65;//65
//paddle
#400
XCord = 595;//595
YCord = 135;//135
PadTY = 65;//65
//Net
#400
XCord = 640;//640
YCord = 200;//200
PadTY = 65;//65
// paddle Miss, Should be net
#400
XCord = 640;
YCord = 200;//200
PadTY = 65;//65
//Backwall corner, expected backwall detect
#400
XCord = 0;//0
YCord = 0;//0
PadTY = 65;//65

end
      
endmodule