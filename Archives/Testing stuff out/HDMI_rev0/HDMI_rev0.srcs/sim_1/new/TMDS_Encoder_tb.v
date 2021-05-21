/*
 *  SVO - Simple Video Out FPGA Core
 *
 *  Copyright (C) 2014  Clifford Wolf <clifford@clifford.at>
 *  
 *  Permission to use, copy, modify, and/or distribute this software for any
 *  purpose with or without fee is hereby granted, provided that the above
 *  copyright notice and this permission notice appear in all copies.
 *  
 *  THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
 *  WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
 *  MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
 *  ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
 *  WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
 *  ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
 *  OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
 *
 */
//////////////////////////////////////////////////////////////////////////////////
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
`timescale 1ns / 1ps


module testbench;

// ===========================================================================
// 				         Parameters, Regsiters, and Wires
// ===========================================================================
	reg PClk, Reset_n;
    reg activeArea;
    reg [7:0] Data;
    reg [1:0] Control;
    
    wire [9:0] Dout;
    
    parameter PCLK_PERIOD = 40;   // 25 Mhz clock
    parameter VSYNC_PERIOD = 16666667; // 60 frames per second

// ===========================================================================
//                               Unit Under Test    
// =========================================================================== 
    TMDS_Encoder UUT(
    .PClk(PClk),
    .Reset_n(Reset_n),
    .activeArea(activeArea),
    .Data(Data),
    .Control(Control)
    );

// ===========================================================================
//                              Tasks/Assignments  
// ===========================================================================    
    
    task sendData(input [7:0] Din);     // task to assign data so tb can be cleaner
		begin
			@(posedge PClk);
                Data <= Din;
		end
	endtask
	
	always#(PCLK_PERIOD/2) begin       // generate PCLK
        PClk= ~PClk;
    end
    
    always @(posedge PClk) begin        // display stuff
		$display("## %b %b %b %b", activeArea, Data, Control, Dout);
	end


// ===========================================================================
//                                  Stimulus 
// =========================================================================== 

		
	initial begin
	   Reset_n <= 0;
	   activeArea <= 0;
	   Data <= 0;
	   Control <= 0;
	   #100;
	   Reset_n <= 1;
	   
	   while (!Reset_n) @(posedge PClk);
	   sendData(8'b00);
	   sendData(8'b01);
	   sendData(8'b10);
	   sendData(8'b11);
	   
	   @(posedge PClk) activeArea <= 1;
	   sendData(8'b11111111);
	   sendData(8'b01010101);
	   sendData(8'b10101010);
	   sendData(8'b01010000);
	   sendData(8'b10101111);
	end

endmodule