vlib work
vlib riviera

vlib riviera/xpm
vlib riviera/xil_defaultlib

vmap xpm riviera/xpm
vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xpm  -sv2k12 "+incdir+../../../../project_1.gen/sources_1/bd/clockGen/ipshared/d0f7" \
"G:/Vivado/2020.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"G:/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"G:/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/clockGen/ipshared/d0f7" \
"../../../bd/clockGen/ip/clockGen_clk_wiz_0_0/clockGen_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/clockGen/ip/clockGen_clk_wiz_0_0/clockGen_clk_wiz_0_0.v" \
"../../../bd/clockGen/sim/clockGen.v" \

vlog -work xil_defaultlib \
"glbl.v"

