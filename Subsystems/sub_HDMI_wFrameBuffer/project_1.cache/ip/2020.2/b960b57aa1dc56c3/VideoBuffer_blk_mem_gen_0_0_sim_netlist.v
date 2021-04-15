// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue Apr 13 14:55:09 2021
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [11:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [0:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_WRITE_MODE READ_ONLY, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [11:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [0:0]doutb;

  wire [11:0]addra;
  wire [11:0]addrb;
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
  wire [11:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [11:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "12" *) 
  (* C_ADDRB_WIDTH = "12" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.0694 mW" *) 
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
  (* C_READ_DEPTH_A = "2600" *) 
  (* C_READ_DEPTH_B = "2600" *) 
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
  (* C_WRITE_DEPTH_A = "2600" *) 
  (* C_WRITE_DEPTH_B = "2600" *) 
  (* C_WRITE_MODE_A = "NO_CHANGE" *) 
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
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[11:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[11:0]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19456)
`pragma protect data_block
bbMfVYKiXF9qMbPWwbYDdNtBLh3Z7ZRBx+ymEpVej2R+KaWJFqp+bcnKIPXIS+Rb2A83GK6+W5Py
SkKOh2FmCNhWULbtnZMiq+9IXHfUI3jYouEFc1zBCZys6dw26CUEH7jsgtnnL/vvKPY4pyUHi8Il
B+GwbHZEzf7w0R+0Zqv1CAQ6wlcbm68k+sAgrHznCuvb4Q89DEM5n56/xb8OC5vdOGSwfRPmycZE
5y5b9QWTNvbQKpTQWnqboviQZoEjs0677lBnhPFQmLVdUt8zrQfcNIhsTvct+J90mHnsg6Ajd/RQ
RChWpLYoUDOsA0N44Qpyds0hNBvC1de/smwb7NbLiMcqYblOKYW+8aww1c8SARMJcnDDIdnfbbSA
5fv2Y0EMBoHxfE4U08+/yCKm/HyTOf/Mge3vf2EsDa0zkAv/wnYs9178/ILpsOc1ZMEpWfgVkRXO
ZYWQpD5uraJA/zFNUlKEDD/eaYwQtrrUudL7XO9eS4co14FrzGPp/W2YiYJfF7Ol/mwuuNxDAQWk
nuwPICsjxk9VyhV/suF9hpX9KSdtmh5yZZHsiwNigr+bF7JyT3Mh7d6uq1Rx8yvSWOk0vHu7E0Hc
UWi/6ejkpm8e+eIqSbx0nzfYWzcWLHEJr8p1DflX/+Ls0obi6cpslaoUL910of5w+GyuCAxsOjmO
4ap4NFPvvPX3600rJfKLXyowp5h8hfteJOmOgFL2289tXabdrbplc7d7rhOwfUWhB67kE+6B74nz
iAXXW+71XAmXHYP8zLm5HyPeRlrEeCt1zeX+RZIJwO9f9p7ODJTgowM2yQLqUT20ubDzSgLSgdUH
ZVxhOad+iF0KkRIsEAW5ZdtplpWhMd/sAYz9hUMPP5qJXmMaavfbHwQhnM2OJn7fNfbgE5Xt+Shr
0X6UsdkwCeKc2PrG6JKjEytXcLl04Ywf9fVO7DtOq1YrIV5vOTKorP/keBv71G0+q0SDstf7KYe5
gMCXwhS1PDuqmjW+sYmF22Zu4f5zz8eZUvyr0nlgP6y9uCtmGyq6L2Jj7nK7fvJavFSVkOBENHQb
YKOld9lOgV7czMe/EknbMpUT7f3S8WI48fd13XJQQdVzAEP4qhCdGsYpF6KYXGA2nc7dpJ3wDfI6
gh4PAKzAGe/yASgvVUFdsZQiLG/CC0WgfwJip0VEYyg2p69JKqOYeCgZwXUuGyAlchS9+c3jmiaF
+dg1/CF/8zRGWJ+aeDQ1Bw7Raq8P5jqyG/yf/ZW9stcZ70hN3SXGiPM9/G8WYbHlrc8YeoLeAFQu
im24j4Mtc4VnRb3VbNNLQId5FobLhhGKQKFXNzLXM86sl7L9ECIA9jv3KUuMGKb6nbYVQ+pJvYsC
UOhJzJrAF0tpY8R4VX7LYEYDiQCRU7JJ++vonbevP8sWS8Dlk33OL9u7xcCb7mCCblx0AbuUAfqW
+N4XyYMQSAbq2wLiqF/oU19vud9khH+A7r3EvOGsn2EedwJNP1Bwcxko9A0BUKJ5izdLiaG5s/Vm
420qZxGKY42Jva0As/EfNj+/a4uuFTFQM/cazin/xpJ89IZx4AM/yo1tiFHD8TudUvaSAeNYDNmX
C67PdgfA/8dmYioXEbBZ9ICMnje/GoYYTCbavAESsaK+umpi/Z1kXAzRDvOYMLU/paRfMD+v/X4W
uST+Ago6yHnFqvdnr8ukvZBEyyb2qyr75qXlqzRSd1F6cFZQR1RnZHgr7wG2/L+W7y97cCUOFm3a
kq5CM8O8UJGBqCltOWDJhYMfAEHjOdck9mT+z4LluUA0PePXcK8HOMM/DbBGKDy/pwaED27/egcR
kGzYJBhy5Oo8pk578pfP3Wo9joTmc27Z8vVvjRSA579bpTPwwZF5kV22RMkhZJjKeXco2hzrUc1C
jwV3YbKKyyhsEfs0F4j5iXH8ztdAgPY9T8Fbh3VmjcLS42HUEF4ZrVRVN2t4+f/yODVUnmNZEygu
Qz5sbZAJdvssFo4GkCoRSnkKhe+ldxo2k/WaMmFxnWrjLioSJ/2d7gfBlt7NDe3TcGPJ5dDZhvQ7
UV8lWK2/vCps3Wl/MJxKfHbdelBsJgDu5htqV8WHfPTAj3uuoPn1Otekk+djt1uh2M5FBBWO2PpW
RoouFn16Py2DOBmboivEzf8Azyx4cd6mQkANwe5p4c+tWfrWDeIoAqc0VitWboWAENrIvjWJ+C7K
dnB1OYtWorJ6U5xo+PQBeDdWjUk0N5xd8fI7vyqazY7zfKIcHOIFjgMSW9Q8SvcqyqeAIN6zs+W4
zOO7WIOtiVsXBA7ZN7Lz0hF7/D9m1k9Tc5yeNdn6kZpailzb/b4Z44hDFIo4soDpvzoZIOYgETV0
w1HVTI01j5e5M6JMcxIjeb4TzwDvGowqg+j2AvLfcDnNCI99I0demjHo0afP0d8srQ5RLut6rYoE
9WigRJbmdSX4vclr8Kuu7hLdX2Mod0vC8r3xvUNSXD7BNVMKERxgHfm00dJWpSDbaPdEwDHuXvMV
atw/FXL1nuZkyrGtde5MrT55U5gw201CNsCkFOSNRjo7tDpx01PdCm2u1r0DgD3Q9Ov93Estrndv
WAR18qZhZeGK1ZoA5s48QZBfur+qpGV5p/fOz99N2mixBLU5ne/Xw7ie5ynTMDaq72cGQNlfpH9U
pZAtCmgoCgluT69/hvIHAbm8bf3S4rNceIWayRdZ5xOCCSTkZ4DrFB6AMJTdw7YyxAA0L0qww6uq
oJKCjlUPPQW/RMklohwlEiO7JtugQdpGqjor82xTejLyjP3lVbAGSf5mvvgRKuEr5toXqaq9gIwA
FV56S5s06UJK17iq/1Hhgmw1VNDTji6P2p5SHEgFSQZCWMeTj7Iji3WtZBEabCRHmKEU6ugfpRb+
+iBOWnv19P7gHV5cwPnkyyJ3Wc8nLe7ojVzV3TSaAvIaKqbEpr08V8uKn2Y1sQ8l1KJo70QeSLwz
hfhKsbLq38jyoTOapasgKayKBLvBX5yJpWQ+2Ggf7Hn39At71q3UmTr/Ke4Us34ZwWJT3cFV8+H0
0uqZ41y9T4oFqfAkxH1MsoISTFGuxZuDezEhNsSVOlbaShiwvTbdNS0ae8cKQ+T2UIH7sANHDmZn
mIRPmwzZceeGwpNJWdE53jxbNcpRPppp64GDlkVcvAdRhOCc5B38jE6bUIiDgwBR0Lj6IoPgbZ4A
iod/9gJGszCPb53NIV9ypyn1SfK4ovwy+Wa6TOTnQxuVat2NQHcHnfRY/z0zr598bzqEN0r+Cy4A
pKB2PSkLn1oLD8ZwvU5b3cOZTDXQM7V4agi2ZxQ1Mgnr/wNR9/spieOpIvagjFEapGwlNOULv93j
2fpeoXVv6D5fMfUsk8kGmvj3kKKjpGgkxUr9nmjEXwTl/IcJirnpiqFRtshwZrXGv94gc298KiO1
sSnW4yQZU33ssuIAGJg6blWbeMVLMiw+Vn46vDwwzmnZk7+eyr1lyU+A5kbk5FfeDifry8eHmqfW
ldLybmZCUeMAaXwFMtv+F35ht61iZre9yZ3l6CeftZxaBMNgPvVMZRhLVTcR2aFkUzcjzLtx1CrB
Gh8NczoPIC+ybRMyEJ7rchAN/ssL+CZtc85qa339ovLUF8bz8FVhTpCWyDy2K1MXNQqbN80Xp27g
7l2pzp8hb5Tg4qyq7FjEz2Fn+pyQfK2rcmqAqWMaYphJ1SvJtkQkgctDbw7PKHlaN7GbFcv1Y80w
rBWp7eOCiambSYhKiUsZQ8tYsI47qL0t5gkAZi4+jmzmV+10MggJ9lIvbidTlbM7bKVjMK+7LaKT
CNX3Gmy+Ttjl4H9CWryUTIIS9Xpcoe5A73lwHRAK3Hp4YyjzmVOUOWrg262jLjxXcomOaD2ikue6
farWL4nHkkCqzpmMX0XznqpfUxGiCuHuLK4sj4CoyuYn48eRcrBP2YM3vYJaeDiD5+abJu2eLAsZ
htEvrKvD/DitHc38c59vO+7oYGhD4rafb/IIov+q+2BbBG0qZsM013W0k5VZT4p8cY566pSRaz51
C6k6QXGLdl0ucJ3BFIQq/jIzW89ioK6MF/9tftbPX5ZSNvirmLWC8TfHQZvul44keH3zl+sLO4Ci
BcRBz+99ZCtT89iHh6ZxbrtesEgwLlJjLa3pivv3waPm6ZsWzmg8DAum82n+wdFrWw/aDuTv+wvL
ENL3QMo1wolLWj3QYLVyEzKUf/eRkclK7AH7z8PQ2IxoPLSahiOi94FEcWTAy0gk3J2hHzp3s0Dc
wh0tHS5hNwDos3lWQjQKbZfYNZUQbzB7wQ6/K3K3lYnln8fzOTk7QQyTj0B6yKKzUkjmlCfUfXB3
JNdQSET3CsozKpTCPUJqmQHkwl8zQdirfiOurpq3du9b2Kl5hByD+PLuoHQqd/WzC1MbpUjiV/4h
AxbTw3K3oM2fGYHGcJKGFarIZr2FAFvXuwJBxqaMG6NFyYBN3+5DJdTt7a5NU0tsJ3SuS5pX40vp
mOO/chgvLLSytq8LRCBDkl/P4LXAuYJjPLdn/Afuk9VA65dEeWLhDmlL0ucD76vh3mchDt16GH1z
UGTcC23Ku3F2nhZtzvRHNTeVhsU9eXOHpyNGDmg1JyVfRFgYGe2Cun0HoRG0HE1+yfbRYSkJ5zBk
nohh4gsaLSeP4gSLT71pFQFAcW85jDxzrNQ8plvsT7X2UsTSmns4dbO9+HSskMNYhjnEtTcD8TZV
7DWEz3PNn3NrMTK7a0I7smu89uH5loElivcrQw//lWIqdaJ04wRPodQA1zvr3qmhcNjwHwv+6WF+
D1ZQ7XFt25pJBb67twm+uAGrV7SqCHCKMRr+5TnJBDCs8GoDxyLUdb32T8Tku4w2ZHOCjLghMg2G
3pPtNow7yXD4z1gJaCofb86iot2/iRlFoNBsFNLflX37Vt3K1UY0pDeTCcFan/PYHzZ32I7JqayR
o1ZfjjehCafR6HVB4Hh+k7HGKotLt3pq5x79AM9mwtdSjWbONAzVqM4L54p2/YF5lcib+ze8QqQi
vafN1/uO270Eoejp/0YOx9v/rB6aVS3/zczPvwrBHISHfXr+c6eVbKJl/2EaQa5OuXmeSmwT4U0x
EGmhcqi5kfJt7V5fSeq4ZAZHv1wDEX8h0F6wIXxn6exh+7aMMnOe+oFIbiuaThBhTqF5qmTxGesS
Xhch7d+iCLa7ToO8dpQpLTDV91E7mYwDRJXQpvGGkwMcR5xx+3bowDrOqJrl9YDibTca7iTWwbWu
N6OzbD9w+gHO3Qdf8iXn6ZawUp2iey7MHICiHYOBkgdyll4FUYU0yEzYXDzbhTCJPJsL8xxxZHA/
ZVj+dI88BAV4X9V3M64RE1alpFtw4lHC7/R5stxCfgWeiHyajtrKanivVaSea7ZPaq+Q62bLu7kH
acCm5Rp8rs88gQ6bAZDm80XWeWE7v8e4Jtb64WD74ngrBAv4RS1lctK+GUINyLBTNQlST3pjq7ai
9o0R4rwbtmdndoJu77CEdxhLjCS+rtbYksJRzNbe0h6o9KmIu7auip7HbmuZ0Xwrs6v47U5IFru0
6Qxruozgk5P3Q4pG3QSsz1Sh212tBXgostgvH3a7kL8ArXduYJijbxIU+Vbr4MAUJ7OoGdhceX0v
68pjNsplMXX5nOu8rgLxI3aHPP0UTxFvKqcRIwyyXiHmEPmL/d58bTVnHmgB552f02Y9qmUnyAXh
qDJjuOHiDOXQKGYdx+2ghRvicEou4bEGkrB5sD36HEtlIphWX10OvPrS4p1Jp71uJKd1eB97AJLI
5gE6ySUy6g86MBIepufMrNovRpY919KqCjyXpoxEOhdgDIrgQcO+ZPX8T01DhS94aOoChUQ/3jfh
uJSPLIW2wHmRMHR8y5rw3bJAMqYNyqemvsGlUFcxryaX4civPI93gM778aEMH9DAP8ZIFIolPtHK
07iSsIQkBeuhaKMV9li2FQRujP5HkOCBq7/kHL4sfTi0iX6MvlJ9Y+Aro4lDEpmaB/KqLSlUDLtO
LVxSX++s9O//zq1aBpSY0fqUqzXBNRG05tiWwOTW6Bqy1Bgie+7bVST522kXSuOzz6EeOF3cqYCu
abJv4mJr1udSALHto4xlBmy8gbMG6M61VeQZPNsxjNFvjxnrLLcdwgw7t0twZkiZb1vxrbGxeSBy
joA/C2BheXVxvw1ZDlRnWJaYmAb2kndLGbgrdXQ/XTq1DoYdUVVWu6+EhAduvtilyv+mhOAJxd+R
4EReNRxGPLDwFtPMrZXJeNanVdnVTnXPafDRuzJGHF1Xv69qPjJUF6alIRlBvxv3YqfTqcP5octg
UWeNCfDSbW6CBOCXHGiBCoLB5Wv7uw9NBk8tJryKhGE/UHqy9sorX1M8PCvb/39nmmCNsIsoK83L
CDoxk4iC9UUcSIa18Uof21zHCtJcTxrxyhPb/ue7Ejn7X5bAvpEfe5smq1K55k0B2YCpt8CMD3FN
/HFDnKIXNbPSnRULP41lL2Px3s0lAax9v0/ICGEpkMif/xNVK+Bp+/9w9Txthg0MB0fs9a1ATFB6
rBjVduj1jfUxU4KBdZ/6j3qfcBIpegftVsXBgZcC198Uic+RB135rV8PscQRKduwTE6o4L1CX0J1
ZzWTCjVTJP1EAyrLEyqJZVMZwy7fZJsX/tpWYTqUI4v5lhqTjrznGw0fNMxxCqAtNNloTbjCNdRe
0faAIYxGzHSmHysc9yUgQIF5MW5aAKY0rp5ZlbmeIMzJyOOjHOlBG+rmUHk0NWodg9hhLjcBd6gG
6RTyXNRzRfdcyDelyVLFVXsShAthnPT67h21sDWtCakYU+Vu1WjK5gkK8+Jl5mZVIm2zlb71zmVR
v2HZD4lSNEOaIAFMU9h7iHP7fTFNDQhc6byjgnIebnQjKRY2G9F1O1Vkn2lablHM7d4F5rmQxV2B
nl57+admP4mgdackR1zXDyyc4rZegd2ojNroiH4qijbiNc6IdGwfbgRtfVaDOYE7s515tL9t6uzl
GBaPE4BluJ8QkvVp8w7lMA5B1wqpYLx13qrBDH8PkO1iNxUT8wojrF50zxfkX51DiZZflWR8dvnd
HpUzi6R8CD1G2Xbp8uAIL7CW08ZNiNwymcLO3ooQBzqdkml3AYz5Q9HcAIq3asw5WrUupHnprOJK
2BzCxPUmxqeiPQbcJ7bWK1J6A3FfofK3WhGNwont/zawxTPbsIGwfAbrRbTjm9/NyQgtASkfQF14
hnGC3ZGLi9S/26akN4Gsc8tugovf+YZ6yxAPcR2dTmrJ8StAmc4hcrSsT2saOskaVFUHfDQqWVhc
v4CQZaFlem7Xcv5gN9y4JQLP3eqvN4N1dUH8DyZTWinqt2xUahft+9ktYGv+9AZ24MjOdYjbztoF
iK4100KywJhNLJF/1TGvlxV8+4U3Ku7Ia/B0ZqVNPG/2zmJsRUHzpK+ooUSd/gguhCOKfFEHv+Qz
rFTMSXcQVaTs/64I0QV2Om+BE6BUYjy+OlsQzE6s2ZqhzEObim1DwnCn1Z4Cxxp3ZrK6gDxV5qti
hqYLk7t7ywcpOvvXSwJviGe4+KbS+aoUPs1rVDXfsaV9B6PkLiLxHzF2rpAi7C3WamBxOQ72Pw6Z
2gdjS8At2pA7UBmTwxoy6Mn8hPFu2tXz3pQpaHXPwBpvKUFLdpvP4pjzet8mOODurXnKCULWN+/j
B52aY/7rmz2xz1ZvVbbIxfo9+PddCQouXymp1XLBQxIcGWD6EORZvxvbre2aoHNqNp+iU8wKkuCJ
eMpr5tU1Mwdg6e2ZV3vjpZaDOQKozQhHMATQg6JqA+DlBIH4c5ZXe/cB03rHUg679JnUGfxD1DFW
3rrk8HBEClEcKZr72kUqSdGTb0zFeLespqTR620aTeJWgExhqnsaaBZNoX9jox0XuGoQKy9UyHG8
pgaRfbbJVLDdweBfOrkMmgoAKYffn8sIvBA0TgFiLRSwkjylegX+qQHkbnH4WeAIozFeIVP1tNpP
sMrqJajmtsbY+SjLhty8OPAVLsryGA7wVQy01i8/Wz9h3d/t6/NWj0b3rDAXW0H9UdtDAl00xa1w
Ah6xy1T/4JltUgM+N3KToIiPESJwwBDoRdz0CDwA7Excdh99PXtxorQBKV/r5FqJft4doytISihr
ZLs5Xk3kjOmJJbtC6Ic4T57MCFotUDO/NDqjA/IomX5idaR5peivYFuMw06yaAf3S2/f9UQCUm4o
DyMNFISn4CRMaWIYvo57tJbihqBE3/QgKq5gzMr5N35jyQjnlFxdtcqskOvC3BYWPG9bRxbqCN7H
a2ERit43eI5yCnzPBrEXd1dat2t2TenOYQLFSVFBQN9S8IGSNLz6BPLmqDDQN5gXnFY0jj9kYIX7
jhQQhpViVj7smmA8Wj4rTshAR63LjFfQ9fSsSbFNWuWhjL72Twz/b9t872fnzr4IuxJ1iUoDnuRg
3ZThiwZQLlODbiE8E9o7jxhv2rktJlajSmdwVzl+9pceAwTE5rPC3NHgPXSAFmVTAmqu/6RCtBnD
fJIobE4aC+mLnDQzq5d2C7GODDmxAIk/w0fv+1gjrhYVL4W3wdakIlGQCYrB+5yRjoeh90NAFX3u
GPljuj9NeX6Qe68V2tW8M1eGx+/i7xpkLnhm5MFroNM9N2T/K2gePA2v3fr3Vtsd8TzREQaZj7HX
9Jyuq30YkONLWdah720xgqOlb8xjmFPwDHcW7k2lD2PmnGJfbZql0I0yzIRq/nMDAhjBsx9Lto/5
8w5GgcFc7qfY8NbRL78KXfbrap671+vF8bs0c8j5JgU7HSu2b6pneUzFiiTgz05PLztM0HlM7Nqk
nrCR9SsgnNkS9+OC2wmnF6wsWYmdVyEX+nJIrP+sWDslVOJw570hG68xX/+HuyTzCv6lshXoOzWU
P7kWkyG7TI6qaP0I3H9m4bDo1eBUyWc8aKBwMKO1QWXxWcyvZRCo0f1KRu1uzsV/Fsxac8UKfkGo
97oMTBKkiZ9qYQxX4S3lSGKTwLsWLwWxo2KtRsYZxys8le33XFbqWX+yExNU037XtuIQvbMOV9MV
+kLu54OgoayYbWQSfFk1H4tW+j5AIcn1Py7IbqfCBXxdZcdygmm5tij4n7oV8w2Ptwrs6VUZvEJ6
91oioaRE7ZxaV+3MijoOP/xwGIxIIY7jH+Q7yDh2f1ay1yW5lESqC2MreK6JFhRlzVvMQqDtlG2i
NS0eXu5msF4CY/SX52jwmEWd2It5sLR6JMnZLTS2FKynJkRKnUn1X4MxuWKBUd5wwY4tQJEwbXpd
USc1/cRVUoNYcX+yeUh7c5Jn0igVjYNMY0W9OwVQ445/1t/AwxRBx0/yqov3xiZ/jB5h7AWtJUW6
xVOdbzgBd7US9LtCicO6snPMPmozHG0H/Xet121g+wUY9eCIzmYSNKGes+uBJtUIUyGtCeT8NAId
4y2SBQpNASoShqRdTg5hJWpyJBe4nil3fjFndtc5yK7Ha9OfM1t2IoMKA8Fv+1eqJmBn9ztj3Rj5
LC9fYFXTdAjmGcI0KJlQkQu0LGMZhi43DhiRfx3InDgb+j0p9qiBYiyPOrd6fVvQbny5/WbqZIxr
tfDOdvB5zxZJaPPaPAmGB37LZae3xQEmerg7dYSwXMDLv5b71sK+cfQoDoBAmOyVku2+V9CG0WrW
X9KSNk3tYrkV4yKT3bVH7LG8thuHTP/qludo8dqjl3uZ11U5rj5QVfCzs+WfYBKSbh+lkFcsrO0X
4QGPiX0dMPC9vnRXpewrpy0eSwRKCoWLRent2hwZtwt6Mlu7FjEKP0Cu2l/9RMOpUgUeT/fJ59bl
fbSeiDkDDAkUAWG9I/603axwHXyaZbZ6X+R/VEcTuLmqcrtMr2QpJ2ZAQSCP1H2vQkuYcjpjWCcv
f1liPhMeZR/u1s7qWZMRRJwDOC90hOinJCm5w6hBrcnHBAbLZHNVC1WaJBCQmUaUiGVNZbHWfdC1
bsHB0eF60ky8SVYNDkRithIRpUHJoJV3n4JBtGUtSbUzeEnrNOXdxUTzwG3Twu2ODxNahVKpzX+q
xfPYdiMjWcyw1fi6Ka0ObOXEMxrc1PhRhwocXcthVB9urTeCioTNKOPRpyrrp2Io5cB2WBl+gjT5
5k18UIauawAY4BpvqsWYESWWWGwraez9L4v+YUpmCiAsuZVRL1wuxwl4qDuAZj8ZKFOsueH0L1kC
IznAmyv51LUqMP2toIgoFcEoXTCHUiLnxkqChbVxdfVSUnMdwNovjSpSw23OS6+wseCjwv2WLM/R
LtPWO5Xx21IeCNFivxOU3ku4zq7YkNszZ7EuDhfw75LGSezcDWYm+m+tVE4tja3NV7wi1zSKdk86
cdyFzUSgQE+PJjpPJ7yLuEe+rY+oEy/nPoxCTTGDsSTsYeowMC4CkzMBDdQKqZMdrpuK4MFLzkzo
W8xclPlLKbsvE67D+B4uSHapUOOs54lGJ+tABnMvccbcrfKKVKCuZJCDmF0TYIhZ0y9LeGIgXmKr
RRntyvEB4vBGrLN5Dd8Z1RF9H9rPc1FlJ3EjgkkBq8y7TRYKdTASxK6003428PGzJTxLwJN7L1t0
JL6UxsXQHqoLFDES6BoxrpPh6USHhdxZ0VhvC7pi49fjvn+FFbm6nBDIs4jcWJa650Nd9DpE44qX
raXYy9wE+XAAoE1jbzhR5uX1KL/F1/fACtcM3PPczER0vW99uorWjkMj7MG1a/cbbhm6l17TJ1dM
rEO3kgBpg20/bnQ9Cx6LtCjHIrhzfmqrqEOVFgL9OHknWeAZ3AV51vZaGPK8BYQm/gdEjOQZFwnk
yWqKqRR3yiNp1S0fWdUfhul/FMxuLRjRsLp0gxzxsSiuyrg6Xm7xspL9v8roT59w3rNgBf/HT4Lv
hGAL/hpSgv3bSNh2IuKTLbLQ4z141YntE2rGwkbbKBnzvwqbBudNsZG0HyMaiGWSLyICz9RNCE2E
O7gq3xGw+LTPpCJecEulrXwHdokhtGVo/T3NZCZOktw5B2qu1PRAtFUZAyC80OJziOrnGJ9zpEu9
nK8aWO7Wgq9MEyUbs2iHAYOqHqvZeOYONpqIVMlZ4F7vDjYn27nHA50cwMyuxaV+Y2Pseh4uHYu8
xY9T7/6HR+xoMesP0LRa7Y6bkhZowE1kn885ExtGg2AfKFDuyGrK8b6YQ7fK/2cc/3+RVjqRjRrf
sF223dRp+ZS6Q6z//ErXp8mLJeHc5BPYa9CPLQKVTYllQmSfiJ/TbMj/xzfgJw3PTjQMKEMcKe2+
Q0DLYJhlBynr9DoKeCOFQqXAH0OhuSTtxzCu/JQ9NlybHjfsJGhka1bL81s8tjnvg7k9xFc0ku3j
aZ/M5DcOkcW+3VLrnG59qsuIRUa4oQknj+j7d01HREhmUls8NpECyGDaoh7KKatHS7R5klEniLdt
ZEfdnFZ+LEIeL7iInKJnfssgHW0cBR6skl80nD+L8BLZ2VL8JZoooxZO79jOcWOlONK7iVdO2UUo
9y+3E+R/iro23ukVFhNzqYupKP79pqRM8qXMVdxNyVAL0lQBc01907aM4yEEHmH0tgqg7k70uRRl
5EAV49wZxgpduyl/FPEy5/Ayj6g3sxjroTZ0OOeMtvrq2fPxacIweYDrr4E1KHlHxQhYphYYt5Aj
zx5ls+yy4iYchSTFaQM8KFYOb2ZyNklMtpII+SmeWX/xgydhVR/C+uLzAvy/vIsm96CY+J8J9MwM
By/GQl0M35+kv3jOcYa7fFDaSIj8Dibwf7KQLtQrkg8svRfCouDuDlvnImMBeR++99hphgKzAMxR
kCTYH8cxxOhrNl53afJGTx/f1mQC18EbM2gG/RujgUWPaqjV4QKJNn734L0vWdez0hhI2x/pRGbY
VP+PZNaAyN84zlPPns7ycct3HKgD9W73nUgIdJhPEwpvJfIkMGbTpV8r0VmihvEv4WnbNcN6NSzn
AfFqhk8d2VQkFmRimQcKktIKPcCoxDVe0tkuHHaaBb2KSIFTJ6CTyUWSBAB1qkIxq9EUvVXpiRFz
Cp/b65YECJy3N157J6lqww4+VgaDWngF23bB3xt50XUZ0ifUQEeJ5oqqMC0drBJDARopwvqTUo1D
KMewLTV+DdQv+ceTD4qCxUURhpCT7IorTjTm2GkLSsJjyI8/z/TfXayIfPAM6o8lzY3jXPlY/S16
zXTLbPKQ5Or8v0XdBTV4JuDKMmJc+U5Dh8Hfq0M8eEozAP+S+iCd+dyqH00WtP3/HDjqcBxN87lw
BHcALO+Dlj8qCmaEFIniBYRl9vQxiSogBTxgbFUs0os0FqKfQBBDHfc3LrroPrCApa1WjVk2Hje/
zG97SYGJWC11syfC8xVb4tThyunVukkUDaWs5YXhzG25UFQVhwWmlDsOPW7ECXxIoZJO2QkAob2z
C1Uurp/Fp6eakV21AO+1icKlUnIY0dF6xx0D2IVt95aq8mwYF85yX4A+6E7hKuoc4ClY3uieCjaN
UDhz+pTnxASa69GvpF4oIrARZmDq/jEAT186RDkXARdI/zRMlnT+5rXnPFwyzFktSqhLGCeRbXLn
Y/WnHvMkj8CX+kFGfRS7jRY7oDu7SIlVQlrcsdFQrKyRhhjyAKe35eUWrVvPVlmDZ4gactgm/0at
lILT+vSpg4nHtjXYo+pXBvsT8Z6Nq96t++lvANUmCCYmZk7YUTxOZ/gmmRET6YT3TXE9vdGqDX1c
TdkWdGREptrzFQCNNttRAECYLD3xTRPZMzJmw9Ye77GHBynP576cwz/M679TcFQlMb+CJNjAtJOK
5LZ5LX79dgoPBz1ztmA1GgCs9QGa9ryRt1zk3U78cJgguphX9a7EGEvgv4C7JdJWdCA6Pvd/d2qo
92J5AWclthYZHRRhtL1BwOzoTnSUzXiiCY1+q2ieHat/mkgvzOpzzB7H45Vds5amTExO+rEou2Bw
8xlivT+Ez3ZERh3Eju/tu+xdkEFrlvDUec5S8NTKcjACHDOx9ibyLZ5aZde4+z4F8FaYXBHF4w7S
e1YvUI10oTTfHU9FtSW/5jwM4UBH54657HTambmxz4i9843dOUT3Dm3CfL+w5+Zw8tGukG8pfwZE
UqVDy+EjauVjHtzE9TJwmnuziQTd/b6/9YRG1jpoHg2nBMhC0V0oVBukp52yDpnFjRJk1ak24Oq1
SZGHTGQo9J+Byoh32u2IW38Sz3SsaNPJ+pBGcXvtEIWM8p/SnO3mVJ+SvD3ooFJyKZYLzKuwd0su
mDov145g/kDyJHvi+WHM50BELekOmo50NmCaqDYOY3/M8NZHN6mr2roRJ0cmM6Tz6c6dT9a0WA3n
y2snpa2qQabRYWQeAQXS1J08CI7SMLGRmuAJv0YrcolmrDFjGnLNHahuWla8eVZ/bGSZ1Q8Xly/A
BUVQm1vim6KjMDGoNhoWe47t6SFg2EaB3J+p/+EuoqvUVOlRV1cev3QRdh3Rf7bXBi34c0xsTvXZ
qJ9PJ2y8pYtk0cGvRBm2qvKaMEyez7FsDQ8PFX9kzmOprLOqRMojxM1KH+ddgMoJ/byQlGmiYT48
mceGgMz5jwvCifchZLKZe1Us9Qgbll7X9xAofCuUcjM392/2cyIY/XAKOAFwBsHhjnuSRt1v6962
KiDNOdhOTp/NzNZ3ZMS1PJmb/ym0uYRmExJV1JPrZ0jqrwgQLGABo+v3axXnLQz+0WEpFN5EvBlL
t48FxVV8KklRjOSPzV3XfSPzj56DWbwWxGhU7C3l8IQmacTWLdAwVFdQjLoxLHq/zx5PyRCF36eo
scjKB/NMoDFgFvFZWVhaytl+9p+VS6s2x+flM5ZBx8SFwXTZxoJYlpJDPeOZnQuCrq8vwZl8fQ4+
2+R8q6W9eoDaBN/rl6agoi+poFY6qW/xNJ3IyOxQ3GGZcrC/KWLfhoWAEAgL7gdgRL0XzM21LQS4
kSgJGUx1aSItp5N4NpUYltUGidPsaWi30WHK8X++XJ5jlksJaAUr8BBpW6ZOORSfOGgsicyJE86d
oh32cRr6tySYn5vV7S8Bl3rKJXY4i5g27tX4G3ogi8Y2r2n5bxHC4ZH8vB7bq2oBZHN0ZCaus9zx
5oL9Y+txQfECqOIq2q4+Nnj2kjG0tsosS+ngunLix1bpulr+VMGbRFSNiKRr+B/q3YUlC7Mw9r8S
desl3r43oPY0wk604mF0MTwrHy/uyW4LsopIyqSF2EXKiIKnba8JUVI+kip9A1C76LGmBold6Z6f
+AxdDhcT4nOhHbTWOZzeemyhpfb7gcwW2ArMgqOvfBe/mZvpJGuqmEP6uIE3XjOSiccOvIPZh0C1
uqjoy+mHHxvTJACVZabLfOw66QADkO6InzF+99bhpu4DkF9DtiXFHZ5vzyHm7G8ihlM5ol6NNT0s
zx6VfuFZN9tucU1wy6PrsdZnwaU7y6QbHho/9+7qYLHqCNigmR6C/KrMu7K6UMQgAtS8J9b766/q
ecJIaNJsMjS5zC2lIwSgWlSD7xGU2ycf3urWSkXXwKwlXnDH/jABkKIhRuTVEJ/LNj80E3zLNOSa
VgLFv9atmKhZY+LRDT6L8QHlDEAPCTvR5Qty2JU/vrhTQsqU0IqFYrqTddP6A4t0pUCmYnlJeQoH
dHVxD8iG64yW1AqEXKBH021s9MxFwde5nI/LQDIUdve3bQN3+jKH4LQni/T9hpN4DNrtMQ7G7wMc
DClzyBuZ8bGuFhl0PTqahmoXKGdKuDBU2PgBbZw/nkmQHei0pfH9Il4S+UbNbE6gvUjZdYZNbVBk
IJXJRplOhMaEm0QxL8WivhsR8W8Wggbz6mYmDKQBbhOFvIxIZdT2Sw8FS3QFxx1QUz2rqMckDDjq
3x7+SVwPS1pLudrgUY2tbkACpVgSWAY1CZE26iB9zkCebJN9y0NzHd9zWkUrs1thIJgWPtkiy5TE
ykA2BA88rtHC167hrrs9+0ITvxsYpKnrlacBkyXO/INMtczdrhoNIXjDNxdiN5S2FqfbpvHyQXsB
I864VuJPZg5NQ731woZxOU5YEBpvRDfloaGnjyxsedTXZYZaBGFGjMY6Zl+517uOOfdIZR06ay36
ottqbj3V8x2on+ir9iFEPzVHGTFn4PcHzNsceWkyhW5VQe4IKs98XYRqQ+m3IXNw21ss7jqwukYK
bD6Rtijoe2xZpFGfS337gDqJmhJC7ICbGSGj3x5flj1QLywIarHNrbndI1385wBh/5amqJkfILAa
UN+dEIrvc+GW8hE0ICB8+ctACygxEBlgyLcUGiKrz+j5reN+HQVZl2hJrt1mW+6EM86/h4c+SzZ1
ZD4JxZR3NEjraUkqltHYm49fDhnC6lQvOxVCDo9XuSInrFUQAJjt6j4/FiXvQF5Q+d0rmj9gXC+F
1X1QL37g//ZVaE3iUIhdEBUPXM6nUY0D0HbdgjLImzPJNjiDHwmqp0v+gP0n9dbxKaAZYg0YNWcN
kpgHpUfatWVxSKsEZrNDN2+8RdnGaWJ27AfYHpWTuyaKnrH0j6dfav9XlGbT0TUCK0ZOqyUHxqqS
3ENhsbOtV+Kdp9H3o42SLTmPmHY5HQIrcsO9SN/XrcD5nxmGq/eMg7ZuBnxfVNjHs+rANbwkPXBc
QyvPgo0ldfbB5uOrrZb0l44J8m4O4nqdg/d45nGtudw+TV9ikGNUDtWF70kpW1eiBUuvO36UI5t5
sool5ETFmIVPzvY8nLkPcEYFOs0njjjANgZNrKmydcrF2ssX3TwWOHg+xiik8A21BIpX/AylNoBT
+rezGjVviXrkODjAL82SZ4WN8C94vx9YU+1XEFzHHYA2LtePJFcr2sISSQeTtx0HbSf1+5w7JLpv
0KMc1W4ZmbXV+cJRHQedYxy1KWwyPsCpK5mZ1cATXNLrFJTBG1NLybxI7LGKm/9bGTIsiUBk0e0y
ssmGkQ/+JTLiArrMDo+Qu816lijywnvXQr0ubHiWiZ1DdwMofThO4uRvu9LJ4ScC7ldphYKpmzdu
XAEIgB2UqZIKiiyxBd7ojKhsZLa53xFUoNvFNjeiBSRkKPDftSl9JmY2mXz0CWbE/WRxsEay7cdE
xA6kUBeRAPymUUgk1du3CUY5uugLSR+hqNIdzDF5hps75ELGGb2eE1+XirYWNeSHjgcIAkBvMi//
Cd68MolvEWJEs7x94msQWiZGxPW6B4pDzV72n+khp4T8dHrmPUs3tXJG6GU+Wc24relUyQQenwjr
w4WVvar2w464aPC7pEjI/6xYkywwb2RBN5IBNYE1veW1kQTpSlgRjdJhGRm7t0u23jgQEYm4DlPS
CCs/jAY0Pa3l+1dgAiJ4OsqDTmJIcuz8agDL7J8AFrbWXTlqCo6OtA2uxjHLMCAs7R0cEKzRLsqa
HymFAvrsh8eu0B1ppoVFb3RWlhINhN3VR5t/jcNjAd5ihn/Lj/xVvPqwTt9WdQcKEQbLD3xZyPod
YlUcSRCwAVw6/lNe2fiYP1yLUsb64MOjLhHLO01kr/72lcVzpvA2sXWdVXGKs5wigU5XoIhqLAgp
QvXK+WeRpcG2JQfuHeyeN+WaJJjXiXvhZL58gOSr/KRzE32iZazcUnTXsgEOTGz5eZdeqizkyY34
3ylmwYIELsMaxyPpPx4LRSsR+Xs7rE2IOw+tGdSXDYFgcQ6WFExv2usD0ZK8sO02rJjv4VZRZiYM
QHu/M9QsBdJekpbsH9s/4l04LhsTMNpp9/hBSyXzRv+x9jKp/cr+2/9h3QhnU+gogkSkrpNsbKWR
axy6poAIz4FZDGF0TJKzwfeSpYo25OoFdwJQPfm73BPEHtNWXuAvBHSxQ6GkbVer1vf0P7k4zhZc
G7NcVmAJuhpPvTvNS4oMgySM/364YkJhHzLGD0RHD2qn70stPHdrDVgK3FElGGJdOgyfaaAIQmE9
ZZ8Kn2ceKznnD8uSPrQFb8FVG9lZ9agNAnMzocwNAg8xgdt3DIjj1iORIHyhlLJ2p5GoSQvLdfNz
CUXyZIBsTaJzoGCv9pgoE+apGdKnd78aPTfJ9OlPuPe219n0uaKcpOeGInMquCLga6stzJXQaFrb
To9/tBrpniKY1SvGTNUOSwUZli3dsrqYjzrJiuI5utHlN/NFBRUh5TlXRVS0B9OesinyqqyO+9rq
w7qFt5pvJfzhoGbIPjC5BB9iA9P/uMmzjPmh24S7a+vcQEZayDfUfwY4JCil2yz/ID2/lZMRl81G
lp0lq3EvRPHVA4tpoKSXShTWDX85hfkGGtouByAfiEAK0jvNQOlbuVIAI/+2yg9/3j79UCfte+Qn
Xg5919hFKANVpuNtRp10DGiZTGM0KWW8JdNVMVrDuL898qSjVs3F5ZTFIWuGXToGpoUtYICT/+DL
hdU2Sf7qiKWiWQCI7V8md5ykTOvMxQX7HnQOBxAiOph999mbOxy7f3+LtGKW75Cv0V7kZM4Dc6UM
31X0FJT53cH1eGnybJRpSTRRFwfbfp6rp5J9OS+IR8RwYDgBnD7Vd5t89+OlLmI6hhUqKBj8ZKQV
8+m51YUgcXdJFasqYAATRuKRR0FpIx+w6qbVpLAdnaN4rt+d0/mWSi/fuVrMnc7q6itHvbqJRMon
Mr3K+OpZAOtbvZo9WAdZLMUKmkh2ikgiw0BDtdwedYJ+U1fVjF3mrZIMHMJbEukTsGBo/qH4j59M
ExdNPKVvrxj3OtjLfI4HNIIWMXgvU2NVlewguSTrbNZRqh1esEQ2WUNSKfAoyugG1C4GY1VZHHEg
A3vaLB3VOpBohukv2ihIl2yRPhGF65eqMFgGZntPQ6j8RAPjWZuO0ds0kNqRiotI9nn0OVOxqtsV
l1ZpB2gNiKUnKC9mc3+DLZxdyNDJNxsb/9/4+ptHwKQWlkmReCPlKaR7kbrdQ8yJ+mcJ4uN1wOQG
X22CPLAmwLQk6TqRWBBTHBxWsn5N3IA2rA6WnGqdjsCilt/IhKYQoMSlxNgSZ4kmlHnKpXXhZKfB
oqOluWQrTI44qEyCUlRu6fHPPTRVbszUPoXsoOS5WFzGHLCCEVa19pITGOS473jRXQxYLUAeQD9t
UxYSsRsF/weu29iDIgR4BeWlZNNpf1L3aytlh4nMOjnknCBB2PqwWKeb2xuJjx1CijDSKTLigden
s2VLmAmZGoSyAntUDcQjeqz6je34S9y4umKhxj8SY3NwqO8kRxGpL3Hg3Uw91JjCBmfPYvaAuM5Y
sH7Br9DAgdvN7Xo+9FTYvWOP+3Vs7RU14n/ADIPqmUzWWjKh7i+257LHWcmxMkkuWQpAY557gKYr
DDfHPa9J8jf3HXfwAcPBhL/ts0sanCCGWy3wQVrddGXiuL953KHASj1oHqM7t6Ruc5e+S9EZhkw1
yE3jP+EJDakf+0GEbZPeK8q6W00MMJFQofXuZgHr/Og9YzaLXtbbPmaWs8Zv+vp3AGIEN8MTc7jQ
e+AMNg6H9rWtBP77BqGgLXktl3BasWLPehaisoIbQIWknwRAgerTN4FYjMSCkHH+xANF6dw5t2LS
ZGO1sF0gTqASRs8RPfRXnzcdV3SAX0U2ByouNdtc0WVVXeIFI4I3F2QeldsuOvmzWj4UZqssMce4
qWNuXpUTXazCheVUBDZy5u7VEjE3LriwQe7hDXD/tp+jgq/jKmpqz4BI9/NpBqvkyAztojJRICbA
hk1d9laZObfEs4j/mPRyCM11w2dgwnfaMb8CzCAl0010kN+XMSlR+ytrDsDcwDh3C95oZ3zP/4/f
4ljhYUyZ/ACi22CCu6CVWDO0swUwtp3KmrjVKzHem4C3SehNSm8rxqLUjAsQBP/BWYINjDJzY4cH
4IJr18chU5ATtp4mtC4PGBiDH4XRzMz5F8nFG1Q+p2Z3BgHqEKFtFW+uo21q63Geg6ROMs02AYEu
cwPy21uR/HLkSpWOMV6O09jWCb11dMH1N10Xbe15/5R4cTHo0uF3xgLdlPLNijNCxtOwEIYrBNiZ
4sGcpaNQqPcZvgcNVurANJdBGgdcmoNN0wlq19HOX4RzvPRyHCFPk7jeF4M4wCGEzugylqCQpkR0
JMKnLAe9r76J8TqbqOfPBY+ve3V6YY1PP/hoIdmW+0E/1Ag+tAgldJZVFLkbUQnZPX3Rrv07ux/3
lXWGmpRj3uYFqIVKhskmjZjyviq5CGQw1EUQt7IE1XTJ0pbw0mmceYdMM2Yr7y4wKl9Uy7S85m/k
ayN09jrZfW1VjXLtULbVCb/DYA2/JbO0dkB6dVMlwHeIsakBgg5KD8dNM5nKAwKkPdQMfW/Ynlfl
CWhO8baL/82KlJb9HVqMZYJZBBJss/L3YIdzTLewvHvscsa1B25P/58v5eR8aTW0klzWZ3yTIkIL
HVD9K+PNviTqFuxcX6bMW11WfgUxJ3kUAnfV1xqQW8k5WccaQ2IrucV9bybLNgCmmOyQ3D20LRQy
aRfXPrtnGoj0D2XjaBB48T1Hahphdo5/3dO0fW7xTODfDhWBD5uEEoig6IBUHsWGvWEJfvJCyPaM
YquIi0UDZoShrv2kWrWXGUo0xuv4gfcT0vCiEqAs3UiSIITt3yDgnEfOk9ihCpPHFHnVk/zAmoPS
XexLQEXH/Co/yFyVrUchNbcWlC3oPhr8FKzmgzbFnE1nc1RlLsDXJUEoFcLG+hCqnus6rfbzwC91
JJ8z4638E6Zxqhn0atyN6We3ZY1VfAeq+ePD4t/kwuMxbmDUMoFjrugdxtxQcGrkTmKjgIHnQHCs
BkOGv6FaZuHZ5ZjqzbQGceS9TSIF+hmU2dNVwM+HMJ8xfHN4Hegc3VqkttfElOaBSFPWijGVwwej
toMB8Cs5GHkqqzlEm9seJ0K/pt0cmEs/CBNMHQqVRCl5pvUdMClp+ovOctsHkDyx76vS8bhyhUbY
uu1r4M9UnppAU0ElG9yEcOBs+znu6fOUPGu8ywsjHxbGoyyxJGQO8qQSd+MUjaBW5lZyynpQgOyg
Iu7uSatSAt+PvF1w9cY7L8bqMpaCQDxKXJOsfEJPfNzqkhzVq7xHf+ky+Tsfh2qSMPuxARz0sF2k
/P3VjeKLvaBdznekEEcVQMpsvvoTVE93oDJUb5uwatdZQcsGJs8RmkPWjlW7/dEFlSmYKme+EBpC
utbj/H0vBHrX821Uqeq1quKFNzvSk0G4fHVKpoymHZjWBzz6DbLACIp3FbuSPrkkRKefAXArWeha
UeN5e20A3V1ey+NvibK1C/kvUDi8k3h3JIHDXCgkL+qYtDpmX/zYE7H/bqsjtelSZAiyvzIR7o3N
EZYdMNWUFi7lioV+KEw3ESax7AlBwhVSPxsl0EzftHXanmsERqE4r0oBXwbCd+ZTcNRJ6QV++2gL
zBp6DSGjN6mu3kR7QJlVanOuxf9srGAN8m9jlqv3eXbke80Zj9e310N90VBjaMv6MsEhcJQVOnqj
hQv7DxqeITHjPIAxZfbEa+Ijcb6TE3ulElfvgHDXEwzcbr4Uy69Y+Jxp8epxtfrbcEIYrpE5EEbf
Ne2b9PLf2oE6ZtqnHe7yXcAJOElMWUzFTnBoBitDjQBBHfquF5OdAjVfzUB5ugJS+Wdkfuq+jIhk
rYf4pPf4nqj0MAmBBLrWpKDXdHs2+Up1ufaTXIGhU3JVC6cZriIEBUc3tzWccSKWWFmVmTmZ9puG
Bm+O13P+uwUCmD9MKOvbiOnzZqIxwpx5bYy7bDW5gbL68f6j9uZBU558iJQGPgxEkLzr+DpcgDPW
wPt6XPTx1ujFvogFC4wyyijjkeRnXruzhKRBvzkAwMvPCSEKqAyNxJcpGYlTzNsCzWSlmeZyN7Y5
w8U6ylL4rAczYrneCctdjPJDqEVoj7dDqlIyzrX8xN1GpUCORFIMIPOfkR8wD/S0Dnh25Stc2xBE
mXDFUoZqtg8nNtpLUakpaU/8cepqPnwjJqokmiEgHh5J5us1Vyik1zzelNTJB+xQp8EosYDO0wRm
Z6Lgvp05OwqjYqQ9XWIpE0cnkwVCOp3ronzDrf3WtmDKsoW/Ay9klkljnd9HlLFohjN2hm1+O5Tz
MboRBI8pgM3i/SeiVJgnLbaLF2vh6Kr7X2eXYSmOrv+pgRmKwj/jaLfiBOkSjvESIVPAH0Xlsaqp
v54RJJ93t28AftMX6OGcfH4SNGqpfhPwn7Yu83+9Fn7KVR2iWRniAlfMb1qXEO6VVh/MEM6eQcrU
SbXa2fcXZ7XpLbA8u3bIsKKBIBrVjFWgcf1fhdllylUNZf9c0b8Pwo0yf3cBoVF+Rnhlm9ZjTOrj
ngC67vYEW4EcqTeH1Bx0wSV7YH1WYyPLnZPrLK0ijl2ItyQ6AGc5OQ3pG4PSfiaQbGWg15F1X9JV
wsZWul6ANdnhcXoOapD7vMsTTMRvPJqwDfhkihFvhSLZfYeoREAysf8lTuhvMwjr0Y0nKltdNz44
MhkH9Q25mfLpG0oJG28rWIJyDv1IX0VvOfvGShpaZi1TwbFFa2EB2MsjPvOd1iXOc4q+DgFjl7Di
C/xwFyoZaOZQLVtgITkCLYOCB1jAWv4rn4kCojuHRlnmJCGcRacBZ+UNXtGUR2DGrzJas1Nuwbjv
vj6e8OuO4I8+bWajfll85C/iFcqOeke4HFFkigRbl4GZUY37PNfmb2cFFZap3TwxwlUlL/uvHbBJ
7Un3lX7sKejkGFJznH2nwVPb4zW9CmJB5jxdIC1ndk/YSESRNs35vv07V74V1qHwqpK9yuwugnce
NtZMK8wTsef25qWvOHDsq0SYgn7W2XUoBF0DN2d2HfcPSVZCtDWh4BYm1qf4CGf05anHcVdQ95l1
iiNoWvmfkVGDhjUGhOHw4kqeaP/ce/ZjEAB8ci6xpIwnRFRgUWWVPmVAaikYXxGnOc+U/SFIqC/l
62jze2h3f9qPhhUC0UiQCTkC7T+ge+cw43vMKHj44cll3kJK3eGDGrNyHaIvFNtSiP38hLX351HI
w0wLAO055gT8+VFEFS6U9gGzAt0X7JJzHKgjPslWXw6IcIwkDHQAEOkj4SjI0tD7SU3ORvBt6Zkb
fdvFT3J//EoQ7mnLpVGEyT8AGUmlJ2lITzGQa9qGLiNEwi+f+4EpZP5rY6+BDUj5gswFCoSxMwQX
LhI9HbJOIvONrRZzxOGvXSVUUhEZoNTnfqoOmKfgP/vS4LUeZy19XSaiPDXMwdfxxgYsqBM0RIsm
hy109qxP1o/5SdsPDYYg3hQpKrLrsfvDHVJVRixhn0DEDHfIVWZDhHan1OB9bPrxlA60aaQhD2/a
8d6Y9FmGaEYh4timAk+1PKkHDEPRT9MShZs1WbCX+dr4uQJ3WaI69CLd/5odrwBWMGcJQffB3ogp
ujrAZ/TsvspqCsUW2SHZGnNU/V9jciYFB0PlftaScolv23hRnBCPvZ8oHhIhbDrrKcCjh0l2Ttr0
O69iKJI693919k0kQCUd7b4DKJxmobGma7yxIYqLHituPMyktlfm1GA87E3V3PiAizRLqM293KOD
SEEGrCEH4DtS9pIEVOZTWwvGcvM/1KjOQ1a4xYv/U99Wz8uej8qTo4L0le43adqrfYUe0bT/zZPQ
bZfcn2BSrCZ15bwBHNaeqCSgiWmCFUgXFInzIzzesOPGgloMcEuF89E/p1Me7DwNy2u+BQ56+hN9
FAkNWHSZxUzvwm8utHrK9q20KhsZ65erwM76js6v6J4cp0ITTEX1KKyqTZ79qdU+V/NCY1P9zH/E
7X9p5xuEEUc/6EtDsW4pEjhoM6noV64QJu7Mkq//l1SW7UmlQfwXsjdRclwpzpnk26JhpNWzeoLk
5a717QOH6z9QTmbE7a8/qAPzZuTF/b3p7BIVHs4aCFGP2uKVKMsAdWLj6QyH0musANkR306xSibK
IoAXyYgXT6TFjVa8G5uafYfHun0f/Unl4N6oxQykOiIAmWZ5of/gqaDJ8cAQr5KeYoPIi/kUD3aH
4z82Hqf9BbZgHQAbk2Tk26qbwIGjey4GQ97tWbnzEKOWKuxfQ/PVXsryw/0gFDTsyWWNbI92XG6o
jYb39XFs8NbkC3strcEYw94lbGpo6mQKmEFZnEBaUgOlRF1dObo3olJAZsk4Nu7onPQIInNJJTNC
TYWUzMEVOwpW5xPZ4FfeORCyPXlZGB26EzU+lo65AG/gRNFaXeqk5ipvmO0D2ukt1PXBPkXVmkz+
K/YFks+1IyTAuMzGJigBioduHFPliAFgYCKwTaSjiaz2iWqwGEfMq63dzTokRkCOFgtkpbRaR9qs
OQ9FhsZok+31egt2qpCTiKHmE73Yq2VQJaW+kuXACgIAfIwKpHzOm1hVdUD/fq1tbTg8rrrsMxSq
ThvtUijyQq+KaA5Yx/8mT3eSC97WxaUOSTycq+i/jf/C+5TZBrdJzuEuCUDJd6njI777tvAvMJ98
USl7BDXgGJJ2aqCatMDX3PqoL+UIPQtsHnDgjyBoAOnYJmF1F1HJwiQs2+uN9Cel5XmqOTB+VJ+M
caqzCjaXN2hLIuuZgsIlhiTx4Qq8eewbx3CIRdaARwBjesLfqh1fl15p31qwpXtgUCNyZHpwAvIh
+rjWGn+oOY/tvR9H185bVA2xIEbwJ08R2x1sUUm8k193BBEn9nfaJQXZEa/OrmCJBmpQEgTJa/RK
b6mckRL1rdZhSoFtqlyRNyLhmCj10lAULN3ITdhZXXntDGEJtOJy+MAc/PdOQ+ROCk5BqXQZafPH
vvP8TRo5fdcPg4DZ5k3p8RN16RLyn8C7pPcatLYv4RBMEEM3GkTcKkbVpcXGIX2BVYk61lh825Jy
fXbDewG02U9ii9n2ZxsbZDWr1vVC3mW5EeswxHOMxF19tvexlgP2pBeVHC2hWDvvGcuXVhxELuhQ
5ro2xQvyFBhNnjUwI1Zm3ACP/fOLDdHyYJy4wSGBA1l12fsqLdnfb2d7zIDIWDqHWbMzuZs42z4Q
LPemKH0bBA6S/wEGeLmyQUpABWW+sNoEKFZw3Ym2lNtAgdrCUS0aeEXPzWLWyiW8H9abJ9/QLU9B
a4VQRDKPYhEQdighKY8je70avEqkrMg7ItX625vZiG4HYPPmmX6hCHE+ECnjtcQ8fHtNIaYfLlu4
JnyhK92Cp7XFZPZOvVxmTJOohpnn54Cc476KBveWRSM9rGiiVjoUl9mR8rSAn9HEXCIDJ1YaEyOv
vLe5zf57KVCG6MyoeqSE66hMozRaaKxlXrz1eeZgJMFg0SshQXu4zBUVlu9V1XVX2JrwWPnHRYTD
/prZh53AVB5tkGx0wdN068yHRt89vQGjNaO7YgHLu1wYQwiPLZxR+UeteK1AvsAMJ2AsqLFDrAkC
iIVbJozVnrcOEit6swlgKlsFKzJJHmceG3mMhbvUOvO8qhK4hITt44W7SUlE16QrB9J6oaldS9Qu
LHvDA91WNPiFee/fXuTVrG2LUrqkulbJzpa6gle/i0pl9Vu617dz/dyz7eCtftF+AnKtawirodGA
0O1ek8Y9xM7E8WHaD/rsGvRjEp4DWqpe2BxMWGjgRomQla3LuKLyuPs68h8efBWPR5kgKz1i1QRK
HkI5JVGgJIBHdT/9nU0TtQ4Na0U+dD/iz9U723VXT3XYy1GHEkpU2jzhNR967HtYT3ek355jj4qy
HnyU5by2jzNiDfAbhhEo1RflDo6SL0tb6mfKP5iWl5KQjIZESZBIPBTJMPaHVOf+0/8fBEeNgYIG
iOd3X4PmI6oiyjW8gUQ3KKHjlN9gI8OG8W7ARDP9cyqn0tC3xbTDdUWlnSGp45nj/KUMK6IZ63hp
GD1ULI9fpLIMZTa31suJX6pD2ClajFQlMD/mu+q3R9Mosso5wA2A8Y9HlMq1SVFYFipgcIqlxzHd
Tfr9HTB/vqbloQiTaBgCAAugm1sTt/zYtEprRd5P1kWgT+Zmi/wBx+MDrcYxTTP9CvayNnhmvyqP
Ql/or8lR56vdA25QTPYY6qfgx0r+e3PH6t9pZLvJD6a9vqgxG70XgX7A3b+eSvtd4+0DSQeU36WJ
torHmyK8BJ9oLHs7ULfojr8GqPpaAl1L2QsivqqPBZ46OQF8UusX8D36pznXYqRE+cfSeAcmEBhJ
vFWruPbTU82UJUvz0PZIDzZi6ZD6+X/ha69/3v3AhvEVEFLDSJexvx9IdEpqo7nxhxT++8EqwiT5
Jdkn/usN1op8kDlB4hymdd6F24ltS7pDg80uSbL6DGCQeN6zWTsDVqnMRXPQDlXy9+jGhV4Hp7dN
bYhO70q5O1ibqEm6EeKXYCbcRgnMIeDWcHSSXuNO4naBGtYzSq+0k4v0DW4BY29y+jl7aq00rshS
5N8snDSThSdJIxbDIXsbmxqX4+6yDvWGRHHsPlfZz40iCIyVdN4jd3NFQfNhtIQMo3TcG0+bk9NK
fsyTDK6aUvsHdWtNBH3tJ2reuUlsDlrK022Gcj9PQlKrBptd/4u5l7aZjkXngRyyL3wwc8b85LDl
2OZEhxGP9cX+buqe3wPz7FGIqE7VZfJhiCIMfI+kAHzrjZNZVK3SLbrzxHciA5oijX5dTwcwDojW
zTCtKQrN/8lddr6xauVINNPokEKRo6uYuD9QWYLqv/gwVwHQwpV9PFI9d4ES1GTJDaJb7hTdzPN8
jd4YceGCIlx6FE09tpYEawSZocSqs0MtSK0AO4Qm4qAS3iJxILjO9bcJppnnKfdLa9PmtxvGRr2r
bgf29StiBB5Ok1kX+57QSmBDz1nmWcfxomNL7N7r4rV1q5HK+uclOnMiV4Zb2sziue/jlIJKxrZ8
54m6/ZkU92UPngyDK+P7bNF0PiNN52CLWwNMqPh0PfO2PZQVuIlzdJKujzPmCkfREQmAMlybl4Xx
knfzbQbW2sJN0stMVqMaFDtasc+PG7IOgaa3O7/Abh//ZSsSbfEeM1iIkNEMMxQRofgF5Qz3FcGv
hvdhXkE/Plb0f5WktUE4Yl6b1fCkUiCkzoxawhcrH7SfbGN6EtnqbcZZT4HvXJVaDtVePP66YvIM
hvgmE1vA/1+8PEq4Nvd/KLPW3g==
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
