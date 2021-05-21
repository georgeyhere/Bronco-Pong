// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Wed Apr 14 13:05:33 2021
// Host        : DESKTOP-MB5IJCE running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ VideoBuffer_blk_mem_gen_0_1_sim_netlist.v
// Design      : VideoBuffer_blk_mem_gen_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "VideoBuffer_blk_mem_gen_0_1,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    wea,
    addra,
    dina,
    clkb,
    addrb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_WRITE_MODE WRITE_ONLY, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [13:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [0:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_WRITE_MODE READ_ONLY, READ_LATENCY 1" *) input clkb;
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
  (* C_INIT_FILE = "NONE" *) 
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18368)
`pragma protect data_block
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
SzuKQ8cMBHOZsYAUE4g=
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
