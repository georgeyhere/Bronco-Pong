set_property SRC_FILE_INFO {cfile:{c:/Users/George/Desktop/Github/Bronco Pong/Testing stuff out/HDMI_rev3/HDMI_rev3.gen/sources_1/bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0.xdc} rfile:../HDMI_rev3.gen/sources_1/bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0.xdc id:1 order:EARLY scoped_inst:CLKGEN/design_1_i/clk_wiz_0/inst} [current_design]
current_instance CLKGEN/design_1_i/clk_wiz_0/inst
set_property src_info {type:SCOPED_XDC file:1 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.1
