vlib work
vlib riviera

vlib riviera/xil_defaultlib

vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../ETE4451_BroncoPong.gen/sources_1/bd/DCM/ipshared/d0f7" \
"../../../bd/DCM/sim/DCM.v" \
"../../../bd/DCM/ip/DCM_clk_wiz_0_1/DCM_clk_wiz_0_1_clk_wiz.v" \
"../../../bd/DCM/ip/DCM_clk_wiz_0_1/DCM_clk_wiz_0_1.v" \


vlog -work xil_defaultlib \
"glbl.v"

