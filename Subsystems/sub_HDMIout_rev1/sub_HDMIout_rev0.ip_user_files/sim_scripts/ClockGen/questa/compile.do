vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib  "+incdir+../../../../sub_HDMIout_rev0.gen/sources_1/bd/ClockGen/ipshared/d0f7" \
"../../../bd/ClockGen/ip/ClockGen_clk_wiz_0_0/ClockGen_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/ClockGen/ip/ClockGen_clk_wiz_0_0/ClockGen_clk_wiz_0_0.v" \
"../../../bd/ClockGen/sim/ClockGen.v" \


vlog -work xil_defaultlib \
"glbl.v"

