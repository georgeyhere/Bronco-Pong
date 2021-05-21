-makelib ies_lib/xpm -sv \
  "G:/Vivado/2020.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "G:/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "G:/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../ETE4451_BroncoPong.gen/sources_1/ip/ila_0_SPI/sim/ila_0_SPI.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

