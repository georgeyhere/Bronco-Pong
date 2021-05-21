vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xpm
vlib questa_lib/msim/xil_defaultlib

vmap xpm questa_lib/msim/xpm
vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xpm  -sv "+incdir+../../../../ETE4451_BroncoPong.gen/sources_1/ip/ila_0_SPI/hdl/verilog" \
"G:/Vivado/2020.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"G:/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93 \
"G:/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  "+incdir+../../../../ETE4451_BroncoPong.gen/sources_1/ip/ila_0_SPI/hdl/verilog" \
"../../../../ETE4451_BroncoPong.gen/sources_1/ip/ila_0_SPI/sim/ila_0_SPI.v" \

vlog -work xil_defaultlib \
"glbl.v"

