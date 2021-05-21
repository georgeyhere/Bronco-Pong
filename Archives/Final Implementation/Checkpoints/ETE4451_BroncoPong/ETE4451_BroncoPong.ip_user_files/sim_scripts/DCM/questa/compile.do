vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib  "+incdir+../../../../ETE4451_BroncoPong.gen/sources_1/bd/DCM/ipshared/d0f7" \
"../../../bd/DCM/sim/DCM.v" \
"../../../bd/DCM/ip/DCM_clk_wiz_0_1/DCM_clk_wiz_0_1_clk_wiz.v" \
"../../../bd/DCM/ip/DCM_clk_wiz_0_1/DCM_clk_wiz_0_1.v" \


vlog -work xil_defaultlib \
"glbl.v"

