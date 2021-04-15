# This file is automatically generated.
# It contains project source information necessary for synthesis and implementation.

# XDC: new/test-constr.xdc

# Block Designs: bd/VideoBuffer/VideoBuffer.bd
set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==VideoBuffer || ORIG_REF_NAME==VideoBuffer} -quiet] -quiet

# IP: bd/VideoBuffer/ip/VideoBuffer_blk_mem_gen_0_0/VideoBuffer_blk_mem_gen_0_0.xci
set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==VideoBuffer_blk_mem_gen_0_0 || ORIG_REF_NAME==VideoBuffer_blk_mem_gen_0_0} -quiet] -quiet

# Block Designs: bd/clockGen/clockGen.bd
set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==clockGen || ORIG_REF_NAME==clockGen} -quiet] -quiet

# IP: bd/clockGen/ip/clockGen_clk_wiz_0_0/clockGen_clk_wiz_0_0.xci
set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==clockGen_clk_wiz_0_0 || ORIG_REF_NAME==clockGen_clk_wiz_0_0} -quiet] -quiet

# XDC: c:/Users/George/Desktop/Github/Bronco Pong/Subsystems/project_1/project_1.gen/sources_1/bd/VideoBuffer/ip/VideoBuffer_blk_mem_gen_0_0/VideoBuffer_blk_mem_gen_0_0_ooc.xdc

# XDC: c:/Users/George/Desktop/Github/Bronco Pong/Subsystems/project_1/project_1.gen/sources_1/bd/VideoBuffer/VideoBuffer_ooc.xdc

# XDC: c:/Users/George/Desktop/Github/Bronco Pong/Subsystems/project_1/project_1.gen/sources_1/bd/clockGen/ip/clockGen_clk_wiz_0_0/clockGen_clk_wiz_0_0_board.xdc
set_property KEEP_HIERARCHY SOFT [get_cells [split [join [get_cells -hier -filter {REF_NAME==clockGen_clk_wiz_0_0 || ORIG_REF_NAME==clockGen_clk_wiz_0_0} -quiet] {/inst } ]/inst ] -quiet] -quiet

# XDC: c:/Users/George/Desktop/Github/Bronco Pong/Subsystems/project_1/project_1.gen/sources_1/bd/clockGen/ip/clockGen_clk_wiz_0_0/clockGen_clk_wiz_0_0.xdc
#dup# set_property KEEP_HIERARCHY SOFT [get_cells [split [join [get_cells -hier -filter {REF_NAME==clockGen_clk_wiz_0_0 || ORIG_REF_NAME==clockGen_clk_wiz_0_0} -quiet] {/inst } ]/inst ] -quiet] -quiet

# XDC: c:/Users/George/Desktop/Github/Bronco Pong/Subsystems/project_1/project_1.gen/sources_1/bd/clockGen/ip/clockGen_clk_wiz_0_0/clockGen_clk_wiz_0_0_ooc.xdc

# XDC: c:/Users/George/Desktop/Github/Bronco Pong/Subsystems/project_1/project_1.gen/sources_1/bd/clockGen/clockGen_ooc.xdc
