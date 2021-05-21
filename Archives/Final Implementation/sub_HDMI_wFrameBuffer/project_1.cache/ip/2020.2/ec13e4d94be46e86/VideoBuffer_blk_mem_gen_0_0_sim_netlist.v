// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Wed Apr 14 11:44:33 2021
// Host        : DESKTOP-MB5IJCE running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ VideoBuffer_blk_mem_gen_0_0_sim_netlist.v
// Design      : VideoBuffer_blk_mem_gen_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-3
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [14:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [0:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_WRITE_MODE READ_ONLY, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [14:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [0:0]doutb;

  wire [14:0]addra;
  wire [14:0]addrb;
  wire clka;
  wire clkb;
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
  wire [14:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [14:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "15" *) 
  (* C_ADDRB_WIDTH = "15" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     4.799125 mW" *) 
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
  (* C_READ_DEPTH_A = "19200" *) 
  (* C_READ_DEPTH_B = "19200" *) 
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
  (* C_WRITE_DEPTH_A = "19200" *) 
  (* C_WRITE_DEPTH_B = "19200" *) 
  (* C_WRITE_MODE_A = "READ_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "1" *) 
  (* C_WRITE_WIDTH_B = "1" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
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
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[14:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[14:0]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 27040)
`pragma protect data_block
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
s9/wY8+v8MqILtO9XYECOgPn9qj1hQ==
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
