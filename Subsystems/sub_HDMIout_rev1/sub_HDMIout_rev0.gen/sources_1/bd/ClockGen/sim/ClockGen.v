//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
//Date        : Thu Apr  8 11:19:00 2021
//Host        : DESKTOP-MB5IJCE running 64-bit major release  (build 9200)
//Command     : generate_target ClockGen.bd
//Design      : ClockGen
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "ClockGen,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=ClockGen,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "ClockGen.hwdef" *) 
module ClockGen
   (clk_250MHz_0,
    clk_25MHz_0,
    clk_in1_0,
    reset_0);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_250MHZ_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_250MHZ_0, CLK_DOMAIN /clk_wiz_0_clk_out1, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) output clk_250MHz_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_25MHZ_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_25MHZ_0, CLK_DOMAIN /clk_wiz_0_clk_out1, FREQ_HZ 25000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) output clk_25MHz_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_IN1_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_IN1_0, CLK_DOMAIN ClockGen_clk_in1_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input clk_in1_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET_0, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input reset_0;

  wire clk_in1_0_1;
  wire clk_wiz_0_clk_250MHz;
  wire clk_wiz_0_clk_25MHz;
  wire reset_0_1;

  assign clk_250MHz_0 = clk_wiz_0_clk_250MHz;
  assign clk_25MHz_0 = clk_wiz_0_clk_25MHz;
  assign clk_in1_0_1 = clk_in1_0;
  assign reset_0_1 = reset_0;
  ClockGen_clk_wiz_0_0 clk_wiz_0
       (.clk_250MHz(clk_wiz_0_clk_250MHz),
        .clk_25MHz(clk_wiz_0_clk_25MHz),
        .clk_in1(clk_in1_0_1),
        .reset(reset_0_1));
endmodule
