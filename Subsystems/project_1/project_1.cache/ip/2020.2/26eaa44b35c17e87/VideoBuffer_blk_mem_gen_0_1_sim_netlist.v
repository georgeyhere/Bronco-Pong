// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Wed Apr 14 12:41:34 2021
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
    ena,
    wea,
    addra,
    dina,
    clkb,
    enb,
    addrb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_WRITE_MODE WRITE_ONLY, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [13:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [0:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_WRITE_MODE READ_ONLY, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [13:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [0:0]doutb;

  wire [13:0]addra;
  wire [13:0]addrb;
  wire clka;
  wire [0:0]dina;
  wire [0:0]doutb;
  wire ena;
  wire enb;
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
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "1" *) 
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
  (* C_USE_DEFAULT_DATA = "1" *) 
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
        .ena(ena),
        .enb(enb),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18928)
`pragma protect data_block
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
Hlsd9g==
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
