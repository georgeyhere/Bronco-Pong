vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/blk_mem_gen_v8_4_4
vlib modelsim_lib/msim/xil_defaultlib

vmap blk_mem_gen_v8_4_4 modelsim_lib/msim/blk_mem_gen_v8_4_4
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work blk_mem_gen_v8_4_4  -incr \
"../../../../ETE4451_BroncoPong.gen/sources_1/bd/VideoBuffer/ipshared/2985/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -incr \
"../../../bd/VideoBuffer/ip/VideoBuffer_blk_mem_gen_0_0/sim/VideoBuffer_blk_mem_gen_0_0.v" \
"../../../bd/VideoBuffer/sim/VideoBuffer.v" \

vlog -work xil_defaultlib \
"glbl.v"

