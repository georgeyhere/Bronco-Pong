// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon May 10 16:25:31 2021
// Host        : DESKTOP-MB5IJCE running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {c:/Users/George/Desktop/Github/Bronco Pong/Final
//               Implementation/ETE4451_BroncoPong/ETE4451_BroncoPong.gen/sources_1/bd/VideoBuffer/ip/VideoBuffer_blk_mem_gen_0_0/VideoBuffer_blk_mem_gen_0_0_sim_netlist.v}
// Design      : VideoBuffer_blk_mem_gen_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "VideoBuffer_blk_mem_gen_0_0,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module VideoBuffer_blk_mem_gen_0_0
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
  VideoBuffer_blk_mem_gen_0_0_blk_mem_gen_v8_4_4 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 41408)
`pragma protect data_block
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
+il5r/ZC1/jUgxlqU6BWbhunHa/c+VICt2A=
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
