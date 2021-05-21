// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module DCM_clk_wiz_0_1(Clk_100MHz, PClk, TMDS_Clk, reset, clk_in1);
  output Clk_100MHz;
  output PClk;
  output TMDS_Clk;
  input reset;
  input clk_in1;
endmodule
