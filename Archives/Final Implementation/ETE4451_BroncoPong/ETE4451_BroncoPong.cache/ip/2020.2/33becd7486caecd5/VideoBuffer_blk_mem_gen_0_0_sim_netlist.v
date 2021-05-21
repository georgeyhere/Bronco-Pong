// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon May 10 16:25:30 2021
// Host        : DESKTOP-MB5IJCE running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ VideoBuffer_blk_mem_gen_0_0_sim_netlist.v
// Design      : VideoBuffer_blk_mem_gen_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "VideoBuffer_blk_mem_gen_0_0,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [15:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [0:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_WRITE_MODE READ_ONLY, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [15:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [0:0]doutb;

  wire [15:0]addra;
  wire [15:0]addrb;
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
  wire [15:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [15:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "16" *) 
  (* C_ADDRB_WIDTH = "16" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "1" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "1" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     4.169483 mW" *) 
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
  (* C_READ_DEPTH_A = "38450" *) 
  (* C_READ_DEPTH_B = "38450" *) 
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
  (* C_WRITE_DEPTH_A = "38450" *) 
  (* C_WRITE_DEPTH_B = "38450" *) 
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
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[15:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[15:0]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 41392)
`pragma protect data_block
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
QxgNCrd21Z1iXA==
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
