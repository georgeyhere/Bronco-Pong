//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
//Date        : Mon May 10 17:34:59 2021
//Host        : DESKTOP-MB5IJCE running 64-bit major release  (build 9200)
//Command     : generate_target DCM_wrapper.bd
//Design      : DCM_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module DCM_wrapper
   (Clk_100MHz_0,
    PClk_0,
    TMDS_Clk_0,
    clk_in1_0,
    reset_0);
  output Clk_100MHz_0;
  output PClk_0;
  output TMDS_Clk_0;
  input clk_in1_0;
  input reset_0;

  wire Clk_100MHz_0;
  wire PClk_0;
  wire TMDS_Clk_0;
  wire clk_in1_0;
  wire reset_0;

  DCM DCM_i
       (.Clk_100MHz_0(Clk_100MHz_0),
        .PClk_0(PClk_0),
        .TMDS_Clk_0(TMDS_Clk_0),
        .clk_in1_0(clk_in1_0),
        .reset_0(reset_0));
endmodule
