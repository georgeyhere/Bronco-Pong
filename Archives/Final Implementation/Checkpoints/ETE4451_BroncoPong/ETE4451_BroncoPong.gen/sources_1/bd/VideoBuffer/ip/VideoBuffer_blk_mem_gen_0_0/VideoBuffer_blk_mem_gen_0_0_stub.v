// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue May 11 09:13:20 2021
// Host        : DESKTOP-MB5IJCE running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub {c:/Users/George/Desktop/Github/Bronco Pong/Final
//               Implementation/Checkpoints/ETE4451_BroncoPong/ETE4451_BroncoPong.gen/sources_1/bd/VideoBuffer/ip/VideoBuffer_blk_mem_gen_0_0/VideoBuffer_blk_mem_gen_0_0_stub.v}
// Design      : VideoBuffer_blk_mem_gen_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *)
module VideoBuffer_blk_mem_gen_0_0(clka, ena, wea, addra, dina, clkb, enb, addrb, doutb)
/* synthesis syn_black_box black_box_pad_pin="clka,ena,wea[0:0],addra[18:0],dina[0:0],clkb,enb,addrb[18:0],doutb[0:0]" */;
  input clka;
  input ena;
  input [0:0]wea;
  input [18:0]addra;
  input [0:0]dina;
  input clkb;
  input enb;
  input [18:0]addrb;
  output [0:0]doutb;
endmodule
