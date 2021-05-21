vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib  -incr "+incdir+../../../../ETE4451_BroncoPong.gen/sources_1/bd/DCM/ipshared/d0f7" \
"../../../bd/DCM/sim/DCM.v" \
"../../../bd/DCM/ip/DCM_clk_wiz_0_1/DCM_clk_wiz_0_1_clk_wiz.v" \
"../../../bd/DCM/ip/DCM_clk_wiz_0_1/DCM_clk_wiz_0_1.v" \


vlog -work xil_defaultlib \
"glbl.v"

