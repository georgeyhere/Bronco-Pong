// Company: 
// Engineer: George Yu
// 
// Create Date: 03/05/2021 07:28:30 PM
// Design Name: 
// Module Name: TMDS_Encoder_tb
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
// 
// 
//////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 1ns


module TMDS_testbench;

// ===========================================================================
// 				         Parameters, Regsiters, and Wires
// ===========================================================================
	reg PClk;
	reg Reset_n;
    reg activeArea;
    reg [7:0] Data;
    reg [1:0] Control;
    
    wire [9:0] Dout;
    
    parameter PCLK_PERIOD = 40;   // 25 Mhz clock
    parameter VSYNC_PERIOD = 16666667; // 60 frames per second

// ===========================================================================
//                              Tasks/Assignments  
// ===========================================================================    
	
	always#(PCLK_PERIOD/2) begin       // generate PCLK
        PClk= ~PClk;
    end
    
    always @(posedge PClk) begin        // display stuff
		$display("## %b %b %b %b %b", Reset_n, activeArea, Data, Control, Dout);
	end
	
	task sendData(input [7:0] Din);     // task to assign data so tb can be cleaner
		begin
			@(posedge PClk);
                Data <= Din;
		end
	endtask
	
	task sendControl(input [1:0] Ctrl);     // task to assign data so tb can be cleaner
		begin
			@(posedge PClk);
                Control <= Ctrl;
		end
	endtask
	
// ===========================================================================
//                               Unit Under Test    
// =========================================================================== 
    TMDS_Encoder UUT(
    .PClk(PClk),
    .Reset_n(Reset_n),
    .activeArea(activeArea),
    .Data(Data),
    .Control(Control),
    .Dout(Dout)
    );

// ===========================================================================
//                                  Stimulus 
// =========================================================================== 

		
	initial begin
	   PClk = 0;
	   Reset_n <= 0;
	   activeArea <= 0;
	   Data <= 0;
	   Control <= 0;
	   #100;
	   Reset_n <= 1;
	   
	   while (!Reset_n) @(posedge PClk);
	   
	   sendControl(2'b00);
	   sendControl(2'b01);
	   sendControl(2'b10);
	   sendControl(2'b11);
	   sendControl(2'b00);
	   
	   @(posedge PClk) activeArea <= 1;
	   sendData(8'b11111111);
	   sendData(8'b01010101);
	   sendData(8'b10101010);
	   sendData(8'b01010000);
	   sendData(8'b10101111);
	end

endmodule