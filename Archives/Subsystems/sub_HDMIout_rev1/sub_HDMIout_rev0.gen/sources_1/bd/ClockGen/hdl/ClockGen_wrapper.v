//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
//Date        : Thu Apr  8 11:19:00 2021
//Host        : DESKTOP-MB5IJCE running 64-bit major release  (build 9200)
//Command     : generate_target ClockGen_wrapper.bd
//Design      : ClockGen_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module ClockGen_wrapper
   (clk_250MHz_0,
    clk_25MHz_0,
    clk_in1_0,
    reset_0);
  output clk_250MHz_0;
  output clk_25MHz_0;
  input clk_in1_0;
  input reset_0;

  wire clk_250MHz_0;
  wire clk_25MHz_0;
  wire clk_in1_0;
  wire reset_0;

  ClockGen ClockGen_i
       (.clk_250MHz_0(clk_250MHz_0),
        .clk_25MHz_0(clk_25MHz_0),
        .clk_in1_0(clk_in1_0),
        .reset_0(reset_0));
endmodule
