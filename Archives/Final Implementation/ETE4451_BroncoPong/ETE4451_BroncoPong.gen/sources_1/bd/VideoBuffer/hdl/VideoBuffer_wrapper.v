//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
//Date        : Mon May 10 16:24:22 2021
//Host        : DESKTOP-MB5IJCE running 64-bit major release  (build 9200)
//Command     : generate_target VideoBuffer_wrapper.bd
//Design      : VideoBuffer_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module VideoBuffer_wrapper
   (BRAM_PORTA_0_addr,
    BRAM_PORTA_0_clk,
    BRAM_PORTA_0_din,
    BRAM_PORTA_0_en,
    BRAM_PORTA_0_we,
    BRAM_PORTB_0_addr,
    BRAM_PORTB_0_clk,
    BRAM_PORTB_0_dout,
    BRAM_PORTB_0_en);
  input [15:0]BRAM_PORTA_0_addr;
  input BRAM_PORTA_0_clk;
  input [0:0]BRAM_PORTA_0_din;
  input BRAM_PORTA_0_en;
  input [0:0]BRAM_PORTA_0_we;
  input [15:0]BRAM_PORTB_0_addr;
  input BRAM_PORTB_0_clk;
  output [0:0]BRAM_PORTB_0_dout;
  input BRAM_PORTB_0_en;

  wire [15:0]BRAM_PORTA_0_addr;
  wire BRAM_PORTA_0_clk;
  wire [0:0]BRAM_PORTA_0_din;
  wire BRAM_PORTA_0_en;
  wire [0:0]BRAM_PORTA_0_we;
  wire [15:0]BRAM_PORTB_0_addr;
  wire BRAM_PORTB_0_clk;
  wire [0:0]BRAM_PORTB_0_dout;
  wire BRAM_PORTB_0_en;

  VideoBuffer VideoBuffer_i
       (.BRAM_PORTA_0_addr(BRAM_PORTA_0_addr),
        .BRAM_PORTA_0_clk(BRAM_PORTA_0_clk),
        .BRAM_PORTA_0_din(BRAM_PORTA_0_din),
        .BRAM_PORTA_0_en(BRAM_PORTA_0_en),
        .BRAM_PORTA_0_we(BRAM_PORTA_0_we),
        .BRAM_PORTB_0_addr(BRAM_PORTB_0_addr),
        .BRAM_PORTB_0_clk(BRAM_PORTB_0_clk),
        .BRAM_PORTB_0_dout(BRAM_PORTB_0_dout),
        .BRAM_PORTB_0_en(BRAM_PORTB_0_en));
endmodule
