-makelib xcelium_lib/xpm -sv \
  "G:/Vivado/2020.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "G:/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "G:/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/clockGen/ip/clockGen_clk_wiz_0_0/clockGen_clk_wiz_0_0_clk_wiz.v" \
  "../../../bd/clockGen/ip/clockGen_clk_wiz_0_0/clockGen_clk_wiz_0_0.v" \
  "../../../bd/clockGen/sim/clockGen.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib
