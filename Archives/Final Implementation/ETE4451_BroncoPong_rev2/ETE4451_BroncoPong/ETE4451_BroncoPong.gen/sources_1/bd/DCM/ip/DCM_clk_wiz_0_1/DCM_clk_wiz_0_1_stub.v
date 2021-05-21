// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon May 10 17:35:48 2021
// Host        : DESKTOP-MB5IJCE running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub {c:/Users/George/Desktop/Github/Bronco Pong/Final
//               Implementation/ETE4451_BroncoPong/ETE4451_BroncoPong.gen/sources_1/bd/DCM/ip/DCM_clk_wiz_0_1/DCM_clk_wiz_0_1_stub.v}
// Design      : DCM_clk_wiz_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module DCM_clk_wiz_0_1(Clk_100MHz, PClk, TMDS_Clk, reset, clk_in1)
/* synthesis syn_black_box black_box_pad_pin="Clk_100MHz,PClk,TMDS_Clk,reset,clk_in1" */;
  output Clk_100MHz;
  output PClk;
  output TMDS_Clk;
  input reset;
  input clk_in1;
endmodule