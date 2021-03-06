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


	reg clk, resetn;

	reg term_axis_tvalid;
	wire term_axis_tready;
	reg [7:0] term_axis_tdata;

	wire s1_axis_tvalid;
	wire s1_axis_tready;
	wire [17:0] s1_axis_tdata;
	wire [0:0] s1_axis_tuser;

	wire s2_axis_tvalid;
	wire s2_axis_tready;
	wire [17:0] s2_axis_tdata;
	wire [0:0] s2_axis_tuser;

	wire s3_axis_tvalid;
	wire s3_axis_tready;
	wire [1:0] s3_axis_tdata;
	wire [0:0] s3_axis_tuser;

	wire s4_axis_tvalid;
	wire s4_axis_tready;
	wire [17:0] s4_axis_tdata;
	wire [0:0] s4_axis_tuser;

	wire s5_axis_tvalid;
	wire s5_axis_tready = 1;
	wire [17:0] s5_axis_tdata;
	wire [3:0] s5_axis_tuser;

	integer i;

	

	initial begin
		#5 clk = 0;
		forever #5 clk = ~clk;
	end

	reg new_frame_start = 0;
	always @(posedge clk)
		new_frame_start <= resetn && s5_axis_tvalid && s5_axis_tuser[0];

	initial begin
		resetn <= 0;
		repeat (20) @(posedge clk);
		resetn <= 1;
		repeat (21) @(posedge new_frame_start);
		repeat (100) @(posedge clk);
		$finish;
	end


	task send_term_byte(input [7:0] Din);
		begin
			term_axis_tdata <= Din;
			@(posedge clk);

			while (!term_axis_tready)
				@(posedge clk);

			term_axis_tvalid <= 0;
		end
	endtask

	initial begin
		term_axis_tvalid <= 0;

		#100;
		while (!resetn) @(posedge clk);

		send_term_byte("S");
		send_term_byte("i");
		send_term_byte("m");
		send_term_byte("p");
		send_term_byte("l");
		send_term_byte("e");
		send_term_byte("V");
		send_term_byte("O");
		send_term_byte("\n");
		send_term_byte("\n");

		send_term_byte("H");
		send_term_byte("e");
		send_term_byte("l");
		send_term_byte("l");
		send_term_byte("o");
		send_term_byte(" ");
		send_term_byte("W");
		send_term_byte("o");
		send_term_byte("r");
		send_term_byte("l");
		send_term_byte("d");
		send_term_byte("!");
		send_term_byte("\n");

		send_term_byte("T");
		send_term_byte("h");
		send_term_byte("i");
		send_term_byte("s");
		send_term_byte(" ");
		send_term_byte("i");
		send_term_byte("s");
		send_term_byte(" ");
		send_term_byte("a");
		send_term_byte(" ");
		send_term_byte("t");
		send_term_byte("e");
		send_term_byte("s");
		send_term_byte("t");
		send_term_byte(".");
		send_term_byte("\n");

		send_term_byte("H");
		send_term_byte("a");
		send_term_byte("v");
		send_term_byte("e");
		send_term_byte(" ");
		send_term_byte("a");
		send_term_byte(" ");
		send_term_byte("n");
		send_term_byte("i");
		send_term_byte("c");
		send_term_byte("e");
		send_term_byte(" ");
		send_term_byte("d");
		send_term_byte("a");
		send_term_byte("y");
		send_term_byte(".");
		send_term_byte("\n");

		for (i = 33; i < 127; i = i+1)
			send_term_byte(i);
		send_term_byte("?");

		@(posedge new_frame_start);
		@(posedge new_frame_start);
		send_term_byte(8);
		send_term_byte("!");
		send_term_byte("\n");

		for (i = 0; i < 55; i = i+1) begin
			send_term_byte("#");
			send_term_byte("\n");
		end

		send_term_byte("L");
		send_term_byte("A");
		send_term_byte("S");
		send_term_byte("T");
		send_term_byte(" ");
		send_term_byte("L");
		send_term_byte("I");
		send_term_byte("N");
		send_term_byte("E");

		repeat (14) @(posedge new_frame_start);
		send_term_byte(4);

		repeat (2) @(posedge new_frame_start);
		send_term_byte("\n");
		send_term_byte(" ");
		send_term_byte("B");
		send_term_byte("y");
		send_term_byte("e");
		send_term_byte(".");
	end

	always @(posedge clk) begin
		if (s5_axis_tvalid) begin
			$display("## %b %d %d %d", s5_axis_tuser, s5_axis_tdata[0 +: 6], s5_axis_tdata[6 +: 6], s5_axis_tdata[12 +: 6]);
		end
	end
endmodule