// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Wed Apr 14 13:39:21 2021
// Host        : DESKTOP-MB5IJCE running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    wea,
    addra,
    dina,
    clkb,
    addrb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [13:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [0:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [13:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [0:0]doutb;

  wire [13:0]addra;
  wire [13:0]addrb;
  wire clka;
  wire [0:0]dina;
  wire [0:0]doutb;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [0:0]NLW_U0_douta_UNCONNECTED;
  wire [13:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [13:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "14" *) 
  (* C_ADDRB_WIDTH = "14" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "1" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.31545 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "1" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "9600" *) 
  (* C_READ_DEPTH_B = "9600" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "1" *) 
  (* C_READ_WIDTH_B = "1" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "9600" *) 
  (* C_WRITE_DEPTH_B = "9600" *) 
  (* C_WRITE_MODE_A = "NO_CHANGE" *) 
  (* C_WRITE_MODE_B = "READ_FIRST" *) 
  (* C_WRITE_WIDTH_A = "1" *) 
  (* C_WRITE_WIDTH_B = "1" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb(1'b0),
        .douta(NLW_U0_douta_UNCONNECTED[0]),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[13:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[13:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
QGLtnqZzRetDH6gCWT4Js6wuLlZfrNx/VJp3sfR2NF+cxypO5AxN0oDKLJJtmdrtE/ueNDg+Qf7Z
TqBNRojORA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
B6Ger3hRvfjHkaJ+W8639Kl3TzC9TogLuklOXEiMNdc4Im+DjEUzxb3DKlzu0VW3zxZqjJ3+wsW/
LnRmPCESi5Y9eRJaLFXg79EMfoj4X+nTdHAP6yCfltBADKegZ12gpnB/8ey5yn2KA74LUtPC7jna
iyjqSfsWLGnz6UdXzwk=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BX+DxgMPRyZbYojCUR9Sk8Lq+3ZigBz4yMFHQkmurfdfDzyTPJCE827eGiPyTenK1QPVhEtf9g06
0BFXq/0COPuU1BWJwdkz1c4dE6/exDwhvEh+hPx3vRY6z8fDEf6aGVIXrHDvrmddehe7yMSIpo+k
aXHR06EEdfHCFY4TggYwhcJVXjkE+ApsVuyfmEfPmYjo8hCWyQyBsUWIOY03q1+MvUjjsmTwgs9g
fh5MY9ToaLfoJxPKdCpsqrBX4LJ+VDGFlAqIcqHTE2jCmPiToZAFXB7fzf1wDjFCBlJyFVDBGi0i
m+CouLSb7X1mvVhdDZgNrZDJMV688Bu3o54vew==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DaIU/Ddc8USbZ2mURzujJDWDH1JbHl5tFVOOQ2aVaUPIA71yyE38OXVLEtF8rNmujYH30nEeQ+FV
LVJ16aaHw+iiuaqorTM3K5KLohVlN+WlcEtSXHuPNHjw8ddqtzpaX7pH1zqZH+YmfCL5oaNLqDH4
rkBnUl0/Gm/hzSwKjYhXGQFYQ+gGP99OjXakzrAqZzp/Iq4gt+Z5902/JV9thd/isHQImJ0QyK8M
EKM579iPAfXGes2mbiNYHcvDmSPYmW1zlhOE++N1EKeea7j/msnKeyhlC+hGE4Xfn4TVvqgQexCT
rp/wS/MosY6WH1aKFQlFH2hEppA7KXUaQlvG+w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
XmWoAt4X8hrCJ5yTyug4ajJW5UhfkLNibzjihWzZ4Cr9hQSvWZoTc8rjGsLPbz6Le+/9iI5KxecS
eR0wiAO+G2IkwhZgVBeZdKoFnlnTVAyLjk9wMAFXNyJZM6b1NDbfXlPcUsC6JePvPlwwdWknkSsC
r3KvgkWAS+O3xvRmaNw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Hw3Y+rShKrXiUViyNU1/O2qv6TgheLHBnFMj1i9MUGrHYqh9pLfLYUgWR7S2vj4jv4S+Ks0BpP4p
dKEqVAFmTCfQNEUHaVcFPkOHgig6L4mhLY6HUUKJoRgiQepgLi/W3V+ZZPQSQFkB3CU4MsJzhXvR
yLcpDriZy8cnAHD87Zi5DrNGBzj3kigJeM0du6lCQbxtF5aEdoaNP+YTnIFtcqYhoYnswQlYt0sV
HKgFA8VzqzL5WYnpH7+1IKmFkJBHkyqHCa9wPK0qCKnxkuDj70YzPVqQ+cocdKU+/gNdpCOdZlci
F2HTxrgfrXndJru3TiDqu4UavqAe0MNuFp3t0w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XPVggoWL6aXz+MpODTOZhEUQDa0vfEnUDaYeEHXm2vGyqKJujN2c/FFAFBeBYdJATLsIsQ+BqoPc
pBbcFYXDBfOtFIW2dH6Y1OoD65KyJ/hAq8coa21kFgq4hFat5vzZ2iIfkCpTUr4vDZO7Xne8cZO9
WsHffoTCt5rS59wWm2b8I5R8Eh2TUbQg3RCyrcnD66cvcEnlXe1CNMQ4/loVJpA4IBinBf820Wjc
vw2fZbGI0jXC+ACSHOviH63Xwmn+aRV5Ppkup7IYoon/ieKapRQeASu3TTY37xSBXiInSdtMTzJ6
+4GfO4eSHVriCk/sWbuTBzfRzoSShrnHjzz5LA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
L78XuiswVcgO2gtebzL7SA9BC/jJGAM0v6S9pzmyqL+QYzRneiYeGyDmsW33jEVVSTuNjTXkBLY7
yTOKQruatwe4V0OLi6174saSAmPgerSV1GyLP7KhmusLV/N61avC9TPam+tekhKeE0tds4EnJ3et
4JdLh+SE4Z4pcuqCjB5MFneIYKKWDx7siU6oesAQtoSJOesfMchX63MhOjOHFP/ch+1gHv3T45hg
IGF7V7TrdREVE4f9631tlVJ1o2Dypsmo/76Itz5WCGlTMjAnWXN8IXxKN+PZ3dyt1wjrZm2P/td+
xiGszFnSLrRvw/HferwtSmRx8q0fiHZ88roGTw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kDX5kq2QEe25429T6vQqBCFvV1McKTJRYfK99ymVNK2GGvGLXSzgwJHwB2fj9rM0wme3zYYY0vQR
x+9F4L7KLlOVY6qY3LB59uDzyXBI3mMZaS905HXHJkdZHWtQWpfHhl27LqL+8FSluaD6F+KFfYOV
CwIOVuCIp/XjxFXpNBik7YiPt4kHOlDA97IXNLnYUn/g1csGqeNWce4UTne50ggWvLYGbTFGmTjT
N67TpUiGRVRCSv8Tax72GWFIMFZk3Tlp68ZUSQEybZMWX1U9XdMdtxfvNGhf8mi5jQJ2SupSzKu4
T/+53IN9T8aLePAiGBKKG1ZBj4y1ZyYA7XYvjw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18384)
`pragma protect data_block
+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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
