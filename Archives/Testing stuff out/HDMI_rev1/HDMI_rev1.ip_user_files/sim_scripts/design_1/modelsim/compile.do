vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/axi_lite_ipif_v3_0_4
vlib modelsim_lib/msim/v_tc_v6_2_1
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/v_tpg_v8_1_0
vlib modelsim_lib/msim/v_tc_v6_1_13
vlib modelsim_lib/msim/v_vid_in_axi4s_v4_0_9
vlib modelsim_lib/msim/v_axi4s_vid_out_v4_0_11
vlib modelsim_lib/msim/axi_infrastructure_v1_1_0
vlib modelsim_lib/msim/axi_vip_v1_1_8
vlib modelsim_lib/msim/processing_system7_vip_v1_0_10
vlib modelsim_lib/msim/generic_baseblocks_v2_1_0
vlib modelsim_lib/msim/axi_register_slice_v2_1_22
vlib modelsim_lib/msim/fifo_generator_v13_2_5
vlib modelsim_lib/msim/axi_data_fifo_v2_1_21
vlib modelsim_lib/msim/axi_crossbar_v2_1_23
vlib modelsim_lib/msim/lib_cdc_v1_0_2
vlib modelsim_lib/msim/proc_sys_reset_v5_0_13
vlib modelsim_lib/msim/axi_protocol_converter_v2_1_22

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap xpm modelsim_lib/msim/xpm
vmap axi_lite_ipif_v3_0_4 modelsim_lib/msim/axi_lite_ipif_v3_0_4
vmap v_tc_v6_2_1 modelsim_lib/msim/v_tc_v6_2_1
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap v_tpg_v8_1_0 modelsim_lib/msim/v_tpg_v8_1_0
vmap v_tc_v6_1_13 modelsim_lib/msim/v_tc_v6_1_13
vmap v_vid_in_axi4s_v4_0_9 modelsim_lib/msim/v_vid_in_axi4s_v4_0_9
vmap v_axi4s_vid_out_v4_0_11 modelsim_lib/msim/v_axi4s_vid_out_v4_0_11
vmap axi_infrastructure_v1_1_0 modelsim_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_8 modelsim_lib/msim/axi_vip_v1_1_8
vmap processing_system7_vip_v1_0_10 modelsim_lib/msim/processing_system7_vip_v1_0_10
vmap generic_baseblocks_v2_1_0 modelsim_lib/msim/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_22 modelsim_lib/msim/axi_register_slice_v2_1_22
vmap fifo_generator_v13_2_5 modelsim_lib/msim/fifo_generator_v13_2_5
vmap axi_data_fifo_v2_1_21 modelsim_lib/msim/axi_data_fifo_v2_1_21
vmap axi_crossbar_v2_1_23 modelsim_lib/msim/axi_crossbar_v2_1_23
vmap lib_cdc_v1_0_2 modelsim_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 modelsim_lib/msim/proc_sys_reset_v5_0_13
vmap axi_protocol_converter_v2_1_22 modelsim_lib/msim/axi_protocol_converter_v2_1_22

vlog -work xilinx_vip  -incr -sv -L axi_vip_v1_1_8 -L processing_system7_vip_v1_0_10 -L xilinx_vip "+incdir+G:/Vivado/2020.2/data/xilinx_vip/include" \
"G:/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"G:/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"G:/Vivado/2020.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"G:/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"G:/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"G:/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"G:/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"G:/Vivado/2020.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"G:/Vivado/2020.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr -sv -L axi_vip_v1_1_8 -L processing_system7_vip_v1_0_10 -L xilinx_vip "+incdir+../../../../HDMI_rev1.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../HDMI_rev1.srcs/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+G:/Vivado/2020.2/data/xilinx_vip/include" \
"G:/Vivado/2020.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"G:/Vivado/2020.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"G:/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93 \
"G:/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work axi_lite_ipif_v3_0_4  -93 \
"../../../../HDMI_rev1.srcs/sources_1/bd/design_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work v_tc_v6_2_1  -93 \
"../../../../HDMI_rev1.srcs/sources_1/bd/design_1/ipshared/cd2e/hdl/v_tc_v6_2_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../bd/design_1/ip/design_1_v_tc_0_0/sim/design_1_v_tc_0_0.vhd" \

vlog -work v_tpg_v8_1_0  -incr "+incdir+../../../../HDMI_rev1.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../HDMI_rev1.srcs/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+G:/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../HDMI_rev1.srcs/sources_1/bd/design_1/ip/design_1_v_tpg_0_0/hdl/v_tpg_v8_1_rfs.v" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../HDMI_rev1.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../HDMI_rev1.srcs/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+G:/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/sim/design_1_v_tpg_0_0.v" \

vcom -work v_tc_v6_1_13  -93 \
"../../../../HDMI_rev1.srcs/sources_1/bd/design_1/ipshared/b92e/hdl/v_tc_v6_1_vh_rfs.vhd" \

vlog -work v_vid_in_axi4s_v4_0_9  -incr "+incdir+../../../../HDMI_rev1.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../HDMI_rev1.srcs/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+G:/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../HDMI_rev1.srcs/sources_1/bd/design_1/ipshared/b2aa/hdl/v_vid_in_axi4s_v4_0_vl_rfs.v" \

vlog -work v_axi4s_vid_out_v4_0_11  -incr "+incdir+../../../../HDMI_rev1.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../HDMI_rev1.srcs/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+G:/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../HDMI_rev1.srcs/sources_1/bd/design_1/ipshared/1a1e/hdl/v_axi4s_vid_out_v4_0_vl_rfs.v" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../HDMI_rev1.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../HDMI_rev1.srcs/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+G:/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_v_axi4s_vid_out_0_0/sim/design_1_v_axi4s_vid_out_0_0.v" \

vlog -work axi_infrastructure_v1_1_0  -incr "+incdir+../../../../HDMI_rev1.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../HDMI_rev1.srcs/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+G:/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../HDMI_rev1.srcs/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_8  -incr -sv -L axi_vip_v1_1_8 -L processing_system7_vip_v1_0_10 -L xilinx_vip "+incdir+../../../../HDMI_rev1.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../HDMI_rev1.srcs/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+G:/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../HDMI_rev1.srcs/sources_1/bd/design_1/ipshared/94c3/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_10  -incr -sv -L axi_vip_v1_1_8 -L processing_system7_vip_v1_0_10 -L xilinx_vip "+incdir+../../../../HDMI_rev1.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../HDMI_rev1.srcs/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+G:/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../HDMI_rev1.srcs/sources_1/bd/design_1/ipshared/34f8/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../HDMI_rev1.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../HDMI_rev1.srcs/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+G:/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_processing_system7_0_0/sim/design_1_processing_system7_0_0.v" \

vlog -work generic_baseblocks_v2_1_0  -incr "+incdir+../../../../HDMI_rev1.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../HDMI_rev1.srcs/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+G:/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../HDMI_rev1.srcs/sources_1/bd/design_1/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_22  -incr "+incdir+../../../../HDMI_rev1.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../HDMI_rev1.srcs/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+G:/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../HDMI_rev1.srcs/sources_1/bd/design_1/ipshared/af2c/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_5  -incr "+incdir+../../../../HDMI_rev1.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../HDMI_rev1.srcs/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+G:/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../HDMI_rev1.srcs/sources_1/bd/design_1/ipshared/276e/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_5  -93 \
"../../../../HDMI_rev1.srcs/sources_1/bd/design_1/ipshared/276e/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_5  -incr "+incdir+../../../../HDMI_rev1.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../HDMI_rev1.srcs/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+G:/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../HDMI_rev1.srcs/sources_1/bd/design_1/ipshared/276e/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_21  -incr "+incdir+../../../../HDMI_rev1.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../HDMI_rev1.srcs/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+G:/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../HDMI_rev1.srcs/sources_1/bd/design_1/ipshared/54c0/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_23  -incr "+incdir+../../../../HDMI_rev1.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../HDMI_rev1.srcs/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+G:/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../HDMI_rev1.srcs/sources_1/bd/design_1/ipshared/bc0a/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../HDMI_rev1.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../HDMI_rev1.srcs/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+G:/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_xbar_0/sim/design_1_xbar_0.v" \

vcom -work lib_cdc_v1_0_2  -93 \
"../../../../HDMI_rev1.srcs/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13  -93 \
"../../../../HDMI_rev1.srcs/sources_1/bd/design_1/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../bd/design_1/ip/design_1_rst_ps7_0_50M_0/sim/design_1_rst_ps7_0_50M_0.vhd" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../HDMI_rev1.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../HDMI_rev1.srcs/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+G:/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/design_1/sim/design_1.v" \

vlog -work axi_protocol_converter_v2_1_22  -incr "+incdir+../../../../HDMI_rev1.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../HDMI_rev1.srcs/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+G:/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../HDMI_rev1.srcs/sources_1/bd/design_1/ipshared/5cee/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../HDMI_rev1.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../HDMI_rev1.srcs/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+G:/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_auto_pc_0/sim/design_1_auto_pc_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

