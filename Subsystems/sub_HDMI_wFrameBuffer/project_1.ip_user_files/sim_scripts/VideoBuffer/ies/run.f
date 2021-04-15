-makelib ies_lib/xpm -sv \
  "G:/Vivado/2020.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "G:/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "G:/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/blk_mem_gen_v8_4_4 \
  "../../../../project_1.gen/sources_1/bd/VideoBuffer/ipshared/2985/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/VideoBuffer/ip/VideoBuffer_blk_mem_gen_0_0/sim/VideoBuffer_blk_mem_gen_0_0.v" \
  "../../../bd/VideoBuffer/sim/VideoBuffer.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

