vlib work
vlib riviera

vlib riviera/blk_mem_gen_v8_4_4
vlib riviera/xil_defaultlib

vmap blk_mem_gen_v8_4_4 riviera/blk_mem_gen_v8_4_4
vmap xil_defaultlib riviera/xil_defaultlib

vlog -work blk_mem_gen_v8_4_4  -v2k5 \
"../../../../ETE4451_BroncoPong.gen/sources_1/bd/VideoBuffer/ipshared/2985/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/VideoBuffer/ip/VideoBuffer_blk_mem_gen_0_0/sim/VideoBuffer_blk_mem_gen_0_0.v" \
"../../../bd/VideoBuffer/sim/VideoBuffer.v" \

vlog -work xil_defaultlib \
"glbl.v"
