`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: George Yu
// 
// Create Date: 02/20/2021 11:09:49 PM
// Design Name: 
// Module Name: PMOD_SampleGen
// Project Name: 
// Target Devices: Zybo Z7-20
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// mostly copy pasted from Digilent PmodJSTK_Demo
//////////////////////////////////////////////////////////////////////////////////


// ============================================================================== 
// 										  Define Module
// ==============================================================================
module PMOD_SampleGen(
    Clk,											// 100MHz onbaord clock
    reset_n,										// Reset
    sndRec										    // 100 Hz sample rate
    );

// ===========================================================================
// 										Port Declarations
// ===========================================================================
	input Clk;
	input reset_n;
	output sndRec;

// ===========================================================================
// 							  Parameters, Regsiters, and Wires
// ===========================================================================
	
	// Output register
	reg sndRec;
	
	// Value to toggle output clock at
	parameter cntEndVal = 24'hF4240; // 100 Hz       
	// Current count
	reg [23:0] clkCount = 24'h000000;
	

// ===========================================================================
// 										Implementation
// ===========================================================================

	//-------------------------------------------------
	//	5Hz Clock Divider Generates Send/Receive signal
	//-------------------------------------------------
	always @(posedge Clk) begin

			// Reset clock
			if(reset_n == 1'b0) begin
					sndRec <= 1'b0;
					clkCount <= 24'h000000;
			end
			else begin

					if(clkCount == cntEndVal) begin
							sndRec <= ~sndRec;
							clkCount <= 24'h000000;
					end
					else begin
							clkCount <= clkCount + 1'b1;
					end

			end

	end

endmodule
