// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *)
module VideoBuffer_blk_mem_gen_0_0(clka, ena, wea, addra, dina, clkb, enb, addrb, doutb);
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
