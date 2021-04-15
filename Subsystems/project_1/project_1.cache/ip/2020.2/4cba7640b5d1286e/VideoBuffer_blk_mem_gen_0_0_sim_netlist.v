// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Wed Apr 14 11:52:22 2021
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     4.293625 mW" *) 
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
UZWlJypIe9pGNfBXTAq6xqveTasxKxQtd34bBxVKsXMUbu1tW6uBHVhzLJ74/z2jStat5JsaMEQY
N12IGFsXEp8nKcqJQXe/iRQZaoXDuo7jMhpjaHO1UKN8md/uo3Ur6CL//FzpSoORvv15FrVcP0Dy
HA842UBq29+xLtWOVopHlIgFMrTeM2vjui+xyZXmQYH2W+nqYqDbbrD6m4uQP3Jmlxsnwp5/lF58
kaC6T3P2avv+e4OIR5260VpzSk28Nz+8KhXWoYc9Inl8bNE1MQAjorOcFOas/BnmR15cuEP19QAz
J7GRkziu8YE5tu6vw86YfrT+RPiOiunq1F39/1rAmkhTMMWQMr3GAD+ardtbB9KGLsVVBqTZt+09
pofnh2sdga2N6ijdrCiKTy9zW35TsHiToDQwo3KxG5IZ/qrS6SpRWVpuAMOeHV0W7zA3RGkQPLnG
+LvmL+oUskeoasM412D91IDHMPwycSLRymFZJDyRamGZutF3AqBSbtzrpEPuNbqkwP0IFx9flfoK
K+CEK8QxEoao5kZ2nJVtVL4g8n3J95v6K5IPzJWLQChMpkEmu3CLmcqU9hN7aTjCcnEKrV3ycUAU
qVzhROhI90tIL43+7qDTecMwra2uxp5nBRU40lVVLRWJww4xh9M1FRySBq3F1KbZc3XmRvR9eqAR
fPbplDtN1UpnI6OdWyMXBm6lj6LINTdNvn91U7CtaXmBUbgVl78fXf9ZT5QKyCDDdyldF1nwEEeW
6AUTR9gbbiQd+nBFDyEkgJXY0LDFZSeplR1ZMdjv6mYxwK2Sqccxa7TSCo21RqKz5e7YzZ76dYn6
UCeyIbYOMd+wKWB+PQsvuyMpmqO8i76WXAkOikAnY4VArzvnT0a4veU5KkbNQoge39/IUxL2K9Pg
fY9fYRa0Yv7KUraBw+SHElMP3MnBg0AEZ/e1c70gZ6d3nkN/TQSkoWedkJdcKs6nsRIW+2MWWsgu
yWQoDLRiowk6nU3wQEqYVDs1Xb7gkULkrWlwbR8S57a5UnXmRFYpadelXUWQNihc03H3s48e+vWG
PyqLE+yYagceomlTm9YYnj9x+pVPGNoQcgcbP0fsw8XSAi1+PKYW3KP6aFplOHgbZVWYyYXyNQJj
4GWDZ5R4d6792EyybTdKEiV/zriETNphLvWx2IQkLB/iAhx55q1u4Tzaykyx2tapBoRmk8mE1cUH
vyh+SrSXnXSbrLNtUlx7yBfuP6WCA+w0zSsfmM3Fnk9YmSmIiNzfyWM99NgXdrWMGWx0xTNdoKVY
QId6hTkGZ3EVnuQJa0KueHlbpOxfixw2V3SWkr8CHv/ZHi4SpZ3CZ+ev+miB2DUVij/ZIYIGkqd7
qEK72UI83bqyNbUkSCECSU+XhH8uqnwbAwfKSnn79bfvVjscnv3AxaDsMaYuKgCIKj6Tl9s2ZU0L
8u5B+bgosgqZlFg56VdUUvWf9nm5pDo4IgUbLb5epAwbno7M0YcEAiqkpEG2onMtlyIQxd7bhj23
M2dvSGfNqgH24Tsbs5erPp+3FCoVss5MbXKgLbK6MVlrDFK7IUts4gArFvtkL80zmhkeKtdsZpeg
JcC6AJy0fW0rlUYS/D6B14SIKbnxDlILaa5GszZwR7LHxEymkUfnzbDMODv23T3HHyvfyFz8uWIs
Ec15JLy2QcmLXJTS3vDNS/pf8B/hDXdD2ObQDWI/9si4lk9LP1pcprqwOdUyEkUEKCAadIXRWHRA
VvFXdoFFU3gPHLoWXoeySllCmViYv+o7JpufvXDxlf4Q4TD0a3CREjDAyoRqnmTBm7eGSVAupxLs
H3f+TUITB1Jd27/MTC1RvfEknGz5uGBNm1Qx3qZUSBmYFLPQUHw8emhS7W0S1U3YDIYNx3pv3BUC
1L3D8afxly4RgrnRtpNICyQt8670D9m9Z7XFNEd1gDAwjZpKBaPTUyGP+lxA/qsdll6CUHOO2LFm
bNF1bBkJHkhah2F6Ph9Cb9+mQrbb/uj5i5LpaURIuPyHtV2mRJzRb+9lPpHbmTO4338DbrFYHcFV
nUUQq7bOZyS8jt7S5Zgq3tPS3HWOfSK/J2xwHbvGAIaRGbuVqw39a94mlJyUaLmgptXCNS4/3sBr
bn9nHAqhvrb8ukZD1Y5LsCSu8QjoeH57IcPJcyWHi8NTSLJPpB8dDDy/jxcOPo+v8EHRAaJ71wcU
5IUEUR3KBNsLywMa0A5amV3U/DM1GhAAHqqFJMMNOdpFGX5S7YeHEs0ZFRHXMh7y3X3IaI/FqMSx
d3SiWJ3ZRsNxc0o5l8QEWP9QnOO7Qo2i69JapYCEtfKowQ9kf6noArv4O2T2FihvOisJFPHMI7zK
9Dws5gT/Sk+7LmdaoasTLz60r0VGIMcbd8YMlyv+YdIBx7sc6dTCgxjjpAelKHqil521RKY6cnzd
VSa/C5A2+qZ1Xfpd7iJVjRR+moM+ST23sg3ClboxqeQSJTcrLjk4AlY0TiiahqC4JpI7cjbbeBnU
jp0egDm20fizgPW09U1+JdzKLZ+5pvUEfEWIeIZ8Je9Lz0T5n7XDXLaIZ7lhusQUWWVetwXewVS/
79P90kx2YyxKqB+L5WMk+LvCWo8AxuAHHk1rleEPxfJrQ1AsgMLeiHFVFKwGU9kMo/aBYOVhd0sd
K2uEw8kedD/R82MhH9w8KxUcU66Qc30Nh8M/krxghcYo3DFsyG4PLDnMjEt7hsj27MFaQI/wCA6f
wFiGYmHtlwUXipwzSfGCHNVnkPp/uXbflF7XhvcxdXeDXG4PwTrXv8r2ilS6FZnMneE2nhTcZtjj
Tb+yc5Qn1taZ+xT2A3ZaMwPJ0GuWVdAOxjvzzutqRTYzL3dN79QWlsC/rXgmNeGQH7JN3eXXd0wb
3AQwWmrw2QGIfuTne3WuC+EFuL5t0euG9CLRmdNx32J0HB6jGdtAFKQGUP2KRfSOX5rcrwc/snFs
g5mf6eLfVhVHYxLO2yRno9TqlhxqVqaSef6acsSIAnZKGQHA+EdqZYSgKqDxoB1nbZdDjGi62wX1
jBW6JqBdCpaSIk7hyHpevX6fJroIYW0FksdboAg3Ec0GBQOcjHSQVZJQOP4d4DRqthRy6Rm5jy0j
AS0CHdGMWFgcBHv0vEebxVyqoOS52D9wNist2Aw5oslvbwGaT5S2QBzCvHuyzt/mXo9KHyuTtKJ9
ANxbtwhFOsa5v7UIWrEe1bXfRG3Z5M203K2XgRMtr7O43UhIV2o8KJ2qhvZ6F6n7MeXrNYfEnoVC
aqhU6dnPvQxSyeIw0tubh7BEkbSB3q76jf1Je8mPJMG8bnWTXnrQWTXR4i15mozJWjRHKlvVGSzD
eCvS3JkOj9/qsQwv9/mhvVGpqAFxVwJkZKqCDS8+mwUuTEIo0SNdmIZYRuyMYU46sJltYpHTQVsM
qFYvKp9HlWe3IRouVmw+MP7bcmSPLUsGcofuLqajPxL3wYgecRHZPNg2Tik1McKSfp8F36kgiJU0
yvcQ53iSvIoL/FCWzJ6ZAUdOu7DN0/q65RQqU782dXdgr3mJFyck9nCXdyj724VkhchXFoPqaHgr
YeZF8OyO6hEN0bMNsAswI1746otl92UV/ZfvhxgkKAb5f9RAqRaBMzhRrXiFavph7g2PxYWUPUoa
8OUEaHGfd5nRkjAIuWo4MORHyVxTb4nHPUeNHzidTHnspzg5IPw7GniY8S56faiQBujGL3/5ecYS
O2nL7yeLc4+3o5WVeX2QOyoDvFa4Y2EO6hb+wF+u5t/DXh9bwN9qxsDW/9WUuVGLKoYsyMoOV935
GYJNs0+6Tg7Z+0KW8A+lcNQUFNPjOfn+Rg35Jv/Ii2Ln5RgjyGKp/grvqR09YpfqGdyRJ9MU05Wg
/kQG3fueeGfQWOYYJzkg86IaHRlKx7vsftpV9x5Ci+dfKyWg5EK2IggjhD4588HrDCUTfvLKwC9v
g8Y8XRoqXPWf1Rc0IaloyWvRaw6v3UMyWGtqWSU2+q/uL+QZZVEfb6C7DAZ4Awc5ZRyLqkFYGP1s
+1g7aRR5KxJH3inzSjVQUUMupMpRFxsWjJMP0DeG5A+lNkLC8hhIjJ+h5zrHcxNiBKr3KCsIpo4/
KDvfjDEnuUhUqQyy7mt9aycpWg5hPfhR+S92TWuQAY+eUbQc8tyv/zC93jFDTln5/9TsE2j1B2AV
xuY/lTptvVUDBvXlBa1vgoYhqaTrMuxXR0xAsJorkJNmfVHbLnwP7CaDPG3eRFGiwHScM1xXA8r0
q8dmZsShLpL3KUB0hWjWnFxmYJNbxiqoXt8dUwvZWZYz5J/64nFKVqk86nBJ6Zo/PmSgui06a86d
GFr//T90p2cvxmDgIcFtlrExIXR4qfjCtQN7CR1NpoQgPhXEDHOjfUxcbi6U4VR7ftYr8vsKYfAv
VyjCuYZd+wRqyOC+rhOlkaPHSUr38mP56+48GcA1kBx147Qrkm6ssMAGwRdUQMWp6zJ7p3majakK
WhBXcncddLO5ydu2vFtLZsYDGgbhtnc0ll4BxNrTxpwXAxDJVh6vWJhrMFhk/dXpzK/O88eS+5Oe
UCq+S9U2L/F+8eC+hWc5+HdEruFoGwSk1nd3PGOGQqLA4pD2aKUrcwbP6PZBzQ6MALepw8E8dCm2
P8XvnQHGlW+fqvHfuPgPKPqbYuAYciVVoq0rnB0I4HjVdwdKTgdTKAsQDgos9Wfxi8WvyOliK31w
WECU+FPcyst0DQj/utYWXSLrKuokziEW9YcgjkCWDJmAfFVEQyfzb5FY+rmPKT8cfvaM6AFUy0Og
uqaynmWovz2G5BmcIGlZOGBRRyQXS8/12DBcNsB5EQtrdZNIYMTX3EmMLywMrgt/x3b78Zi2yn8c
hJomTWgQ63m0oWgAhcnQFw9hplQvtKv05Vt7wUOxSY94G7J7HxZ2n8usTCqvddyhObxxRLPA4Zdh
oP17BAWt+ovcfgUbRyNG4quE4V+Pi4scY2/fOVWAYd/uSK+/mel4DfJSCUa044XL3o0N9/y815tY
KUu7YnKcMC50AZ5KhjGmGX6LS/TcWE8Ox4JvX+lf+bsDffIJzhTiUEaz3m3i5CFbh5cmBLmGewjx
DcSd6JlO42HIFgd56QcjbgWCqJ679Ioej+NUFs6npoYKC6Rc/vwgl/bSpPykWO5xklFCmFYCvgUg
WB9nqxze8qinvQPaQ8JKzMgqEgFIjPGqo86KagNEJL3QuT7YOPQUiGt/qubTmcYOwutcJjYTq6iC
Y8v7dK//k07YA/C+aGlPdUIviBFDXdGF3qm1rDVcPM26403awwwZAf0yr9XEuRXXwIUJGGAMr2Y5
DOuF2k0dL3tPNMSntujTBlWC0kn2zab/tlJ+MQkuHWZYRVSkg5PPAXVNI+rCYIvcSFXSowVgxEgq
M5mjvxhfmnbkNRQjG8a21/sKWV26cbWUutsUKX0NzhOvWRBIax3S5kYA4FjiMNZb+ijKXZKUcToi
zW21f6CXK7+IKs75LpXGZ/LsWTp0I0xVmK637d4pm+6lDmtFlyK5+wR5gsyjoHq4F+SKzj7/GcyP
/gAENXnfkRj+T9oXMndqRIrLJWbbeOq9AVmSC+5I1q5Kc0pNoLRvDxJq/7hUyjkgGfGmTNrn3x2S
qfC5juhQC0NL+2K3oqlfcTUiVDmNU2VxKau1GCTnXlkkE+RHAlor/tu8RJEt3WMvM/TZR9Niy6e8
NcQu70vT2Pwp/po/MqiuZbxzWi/x1Q8qe6MxUlHXXj663uUVmyx4g2PHnlNCBFbCO3LQ77pyze+D
Gur8XIgATyxB0BtHTmBV0/5IHzZgBf7o1zBaGbT7r9N71DvGzMmB/K14X92ZL3Pmm8EaRmW84QAU
Xlz7lJiPqq7AQF2WrRtL9dOYyc+qdCh/x6ZusfIc6EkiPHxva1qgwtWQykuNzHoXc6QjmoD7QRxu
Bm7vzK1jJvK5XMn/JHoj8mPJe0I5H0DZSb95klY9O5GMPeXpcrYyDAS7QtvGGVGoBwX3op6SB85K
3ien1OmY4LUdGn2p8LxhGK5zej6wZfjMJbQQ+OSnFa385/KuxOEdCIfIPVrCkjimMeK/nYX1WUab
jzm8DG6HgGHcTnoEKTX09HWf9n2ckHU6+guxlboePVY7Iafmoz34usv6Rka1JNxkEokj3aGers+u
6ldz2uzOUGt/nXLrr8g1qTWEt1qM5HtSem80JzN1011ETKdksjYk8TPilT8KRvSaRODgWHnAT4y0
3yeN2zbsSI+PLvMqYBbyHcHtMcVljf35qajSHOWat/epY0ewTzALCgoeyACjhSIa54uXR8tqA35g
6W3qRcdTHsDmlZDXudFdLhHV7z2fhv0brj1ouVETMpNbVrtgaB3eqowg1Bd1JZ3+gUtlpoKKFtip
KVmfg/cAVL/uVXjw8FZtViw8ji+hfEx9iK6C3NKMJ84BnGbIMAArbcG4xlXX70UGTgC4R7kX5FCU
vB8z9NaTpDrovnLv/RHTcxOLnoIupBC1tHsYH0TphuC7vEkVwLpCcDQHbVRZ0olkIjbRtyL8qu9Y
RKqygR/8cpmbQ1zJj6SDN7TC0x2lUGMBfLxLFGBQIr7F/JRN2rNuoQOPy4Wqq0km2h+jIa/+OHbO
EpA8tkFys51G2t3i8/9yjNS9qDyz76p3nxpFcthTLfUoWQOy9HdoV+wCWGoA/+mnSbEdY8XkxLyW
VMBldgWhTlAHnxpxXtZ8jOv7mTHkBpoekExlOja3ZqGv/fTfqaCkAYGT9j/E8sPAaJTqlc/8XtCD
RcCBTE1ZLro9elCskKWqXT3D5Rlam1iCavYcjfASatvNnJemQ6Z8uhntbaITau5fHjdWoPUPscRJ
fS/Auh+FsNp7L6MenWE+PTI9yexSh/HoUHIlbTmx6W812sHa/ZhBsoZaaGT7rlTodKgBC6o1+YD1
ykLv+ehBtP1jJjYkV6r/YMGqBV4BOAuayQEO6IIIqro7uEtEDEu7s0Cs5oGbIY4HTGAJ0mZi92y4
ZVpl3kxcva/KIbgHZBhPEkrqFl0v/qjz7IFOUi20sHgYp9BYdzlEy38F9VZ89C3l2uuLHMqyBIZe
FOuYxMU9DycTJdOl0PmWmkhW5OFrGvMLALVAXr+B8qAcHAh2UTdecaR+cfPrSsbVP2ZLPo/hIhwz
nfYhdUM1i3WFmho5tqCUCKPhrBNDIVN4S+4+GL0iZBhcUiD+BYavpipEAIe6c0+A0r3gsHXKDGG8
s4MziYkYIOgkL9sbd0IVGfv8UW5IZM1Ft9YV6Kqm9py7kGJ/xwzNiCaddL/6hTtvGlkUTi6Qzmdb
bP2T5bWbxiDU8XFRFs/tuKOBLJ+apt6aQVdnz9dp0rSd+ezuaOPZa4nOsnAiHEnTFopmQz3vn0Ir
/Fd2LG60KVvQJ0CN6hU7MVpP6DwAjtAOG47/QyUxBuzrKSXWahgl6z2LmPReG+OWa1TcY4Eor3cj
jmAR4QKcjT08sdaE3ZKYnjUlRXQxot06jgzM1VPaAVHUTpdDlDuOlenFIJCv3m+EkKM6maDWo+ZQ
nGOYGjPAA4akgCzO3h3MbhWAqZASRpvCwdDgjIBhgPhxhpxhnnN30eLd1u2Ok604+dJuoal4oxR1
MycS0P76lg3FpGla/gKeVqkKNJ9KgN6wSAgF5RbjmuhL1ofiQ7/vn7cs16UirupNdjBsldv42L/5
Zwrbuba8hlZ3z/fL58Pu+r0Xiod0MIZmlmbQdNZG5eZbQZVFuPx23FiAQdnYyg8EFUS5shaO9u3o
WwWX+aZztVDzkXlEinr0jCDYAiUGQ8PF/AcE82nvNGptpd9m/0iyvguFWQ4/th4i+CYANy+GQKIx
8/7j82N841XrnplsYZIMMYISM5HAKuYNF158XIo8VdQfBcXrVgDurkZUq2a7s/buhTQBenksAqlh
IJqnWsWmfSHkhLlmH4D2LIMS8sEYh/t395ZcPHT0VKaJx1WtVNd9LbCjJZClSuf8M0BrgtpZUIFv
VvZI1XPEj+vOMawgK/LGd/A/Fhov6xzll108ORNxiV/Efd/5JH4yLVRJvQaPQXDsxK05CzOF/4TF
hQ64ckPIYciXUXD83/wE5oSt3yDmr5+Sc1Bxn5OyFGNHSltyDdf6SSZWTfmSGMpeGZbbOFg0ECsB
zKbEnjnxpxfsUstjKuzGaJT+FGF+6uf3VNEFvURbeVn12WBsddw++wwjKOTvnVEPpn4WABw9aBRm
5a2+viERqOUwKnKJmLx4kok7ylZ3T1axEPhyOmTUNFeb3LlzAIoy28bjKwb9Pq/pZWk+dTNTBHbR
XDqU2lyKkqSCpOqKP7E0qj7EfqtjzBJZ22jvQO6hofPfNJXrldHlUN20F7g5ooWjslalw94e8zwB
W9mVVDVsJNTEcTtlnm6krs0SAvc9Ixq2kUSgqibWOGmeF2Scw62Lnb9pI5FReJkIfpNd/2zwo1ck
71+vVeVXHvy/z3jG+2VeGBh8JpuKIv2lQVTtQl9z5jnZEaGVY3Vm9f98J8CBgewQOLmB4A89Yrhx
9vpyQXh0QcVLvkpaV8WMhtFZAJfcZ1rYpQO/5epwjpKgbgEKgDfnAKJpSTHIKQD7wyUNekeUpHWI
oyuQa+9TJRfjLkEcZv0A/KDWRGeGRzgwNVViaCTdTjg5g9rnNixMMfBfZbJLhRpMzpetNZHUOz2G
2ch7BcGnOITdZpiw6Zalg7R8bAqO+GQ3oF43Qt7axs1wfth5ZYIYK2H5z7d4lJnBDJ/MAHyWh3gh
yYPP8fK3/F1Q5eZYbFfme+lpHG6Uy2bHiBOuxjcQfZbeKY9QF0NjZhMJ3CwNv48tOH6RjQmg+1pC
kinxYzGX830FL9eqh/eCyRWBJpXQvILnavtekjehoK0s2HP9OV9kPiFCmLiHS3dlkpB27Z/yN2X6
7ueoUYs76SFNJ196E9uFHYzwk40RAdwkawvM6mbCZspU6WMoS6crZseo4Wv76ra2MpI0Hg0WwNsx
dd+xk68f24FCAC7qU4t+xvBCJD+Mm8Fk+oXwEFCdz3AsYfrDWHbBBxubFDzEC9LpLhIufO9DjM/w
UC7TzRRuWOSN+rkv0BaaitJYoNQAJM+1bDy10c2ub05j1suCS2C3QyTl6gOSGoH96DARdgKUcCez
jhw0UvJLkDDDD2iNsKabeGXNp4Y8nAuQY8/aeO/F5oi0SC/KxoCxfRFdV1htVwjh37QLVwrCu6m/
c5pxi/8kj/b8QwJ6BSaimO0x/7ZHDUW7PUQ/cBrA1CrXlt20VhkvRUwGbSdwAGorTBY2DuZfxUCN
+KuIeNFxfs0rwYUhpK2/BEA+lLkWUv4KVX92GXFzHHlrUfZm78xNAjEh0fP7tJGFeXPk1k1NxMG1
/dO790kNJM62Cq1O9p+U3Sp/Rqcgp3+KvwZbeSEkMct8TTyNx6hMS22jl+4apVDXoanWLBfw0mtJ
AhmGjd/5873v61nxlof9NO9J6IZst3fN2qDgxLHl4LuNzgJqm9VmhuX1JSw6kkwMeCmz51hL4rRk
vGUAj5xI7QJn8T78g/2lWBItoXi0q8RQeUOu2yqrJmzyj64TUKJiy6KvxGX2wPsjecN7Nxck4iC5
ZE4Kr2qGirXHbR60Z4b/42uivv6e2gFIWm+mmUvCMGOloBScQUBBWxl+O0Cv+n4nxskU+RIhk4f/
JpJV48A2AdiUqhaglGRZWXBQvrfdxcs3V+tYgTseAl73PAIWQBbi/fiudC1VqLRWPB/Gve6LA/et
osF17RSL4cxWvwrcnnrwoVchFzC6wn+0Jt8hr2u4FBK8tby9LF+uvMJY8ZnX3jiqcSJ0BpaVjWNp
7pHflQIMee1DF8netciC6NFmIqHQRJX3arLHqoLLC4RSJOCabg1zkF5dcXb/XVsh5Xs5rdtRYOWq
AQdtEpbztWAya3WJjSi2hWm3F5W5DdBjL5H/myz+KcnZ/mRduyPeSazM0F2KrkBQgptGUW/b2mqL
9tYY8z1kQM0vUfZS7OZg88N3oYjTN85WqCeqHKdUXvqJusF9o4dGU81Iw7ofFP/dT8FK7swqGEyh
omgKeJ8ocr8MscAa2npPhhZvPncrlAdsT9MCVaBSAEy2xiSSsPPobbo1yxk+TixWUDSyrkUrBD/I
I5qkI1lVjWQMuRaKkUIcRxpiQPRAklubT3masuJXlMi40XrxIA8H9csXpZMioStdMKvx9f7m98yf
lsyDyVNV9wePawCPbABcWwhxtuP0a43YyF7LaoF12DY1WZkAHqd1MXX4eSovXPmrkEbU+hIprykd
Z3lCHIFhSjtv44N9oTyp0tdY3yoz0g+R82E+0Y2z6YPas1vLKqGVG8tJmRPk1c5IOFAqusgH4X0V
Vu8/JRm4rqzmmnmFIrN1TzOR20lYmQ4ewKM+N4TelcxkPKigyGW3KZV3zxV9wzBDHp7TgpsRoJpK
GT7sRvo/j9yGKtYw6mkX2lBsfXtPv0X/IA2Ws1DxBYEeqCrdiPaNl6Y9zTGK5rZQkA+7lcL8i88I
5KJFdIf6Ado5zPNd+vx+tlZhqIGK7uyyNaHcPJrHmWEaUD5jO8BgmSj+B8V7QJpf1n3zdIe65kk0
IAE+AA8AMCRJ3bNPjYZWywdpUiYATjo3CrTo7Z7mOZqhFt7Okt8HEol6kZQQcBKGQcRL/x0oT44O
zOeOCLDKi4UrVD/Z8t9gYE/MZczh1V7IyzK2+es9WdYe9U5YAZUYxwSE+rC37daYKJ2a3SO0Qw0D
7W3GqSFNpSPLachu4WuWaas/LboZiwObsCq4zEeIfrUA7sKYQ1lfDUy/1Sbo7TXjZWi74A/gkSNS
GsgnMjhMbTLpU0l527rrEucPPpKgz2IW41YabjaL8m62ivV+uXJ5vJTCGDmxWLYneC/DubBGQ3NP
oCxUshu9gCowFidDDkNTEqDrssiAtSVHFUvIpUSAhhhJmoc3aqiLZkwxmpVpgmE7OmqjnshiWTVP
aDzjcanp6vL6f3oXBeBpe0VXSbVCmoiad8Y0TQm58odLrSxOvhmRaHmxC/w3HYZpEbDeytmPBoUG
8OxnDBkbd/JoNC41z/qGM22b3NFd0pJVH+b/wObZAC12uV2jfnMGumiGAXpvC3CLw9HVCW5JqAaD
NxizaCK0Zyb4m8uGAN2gO4+bY9pXOfjjrHLfoMZeTYTjSHI2M+XLIVYxDTim+Xk2UeZquZOPqqr/
ZeFqbtW2mxzB01tidHLP1jF+DQn3hwUd6XmV1IvztDb360r5MQow81mCwhTpClLaP5PBVJovVJfI
tremOLw/PmfnR3H4DorlYH4zlU2tJRdRlg3jukmRrJ24N7ddq2wZZv9aPJXKuX/OOVkJ0wSTSIht
o3j2kn/X4XZ0auHPhbmGDFz1UdiQD+mEO+hp/WTGMw+JCRNQPpU8g8yDmYeD0HC8bSOWcyfqvgkm
RMRm189V6GA+k2s5VrPGlU9JAKBhRf2s76j/BQLflLNZ6OZYt3VdV4V7gqmIWvHpH9A+UI0YJNg0
/FTMlek9sspvaLc2N5wATblSBj+H4OH1jn29r2hQNzmGcEQyGMKA0Prg/IQocMQSiSh46IByK7eB
/9tkKp5y67EyyH8fMtlyuTCOWV0uQ9FshiUQoIDxazRgokxQpyQ+Mc+2EE0kpUpzaPKIDjPVtn5r
nxs/a2scCkfguUv3Zgjm4kyi3iYp9+3dmcGQYIlHhaJOaJtHFsHGTcxO4VpDLoPtR0rz6yLM4oAL
bHUwula/MVGMfbUGnlYX0H5Onv7ZMx9XYZf6zGq7uyzEkGWQU7n8+CxwR6qhPYCBP+K/4uOTPdDC
C0XVFltEpvj7+RQZVmgaO0UcJPVgIz+B41mkG9rTAvaIsE+4tcApK1cf6t6KMaX16hxmHtLjmqZv
L/NnDxxOdKFY3yJ0uqFgLDLcDq9Y3tMW6bW0BanOJQ6ELxCgPB+Ra7nFSKc5smppudVPt+OS7hTM
xjW2Ilk0wH/Nl6AN67dKkMxjMKa56Puv0a0C6GlH9gRv5W08EdajYhl8i66wNdMbm9ubkOHgfyd6
ZKCUACNoo8KbIlyEI7j7CfnlhCUTWIE4K3/x8lgB6GR8MRTo2VesYkDntxZzdEjc7A4vhMZXKxMn
nWRQExf0KgPkeHlj2dO/1ljNIJ16mL+SS8buqDlhQ/9Ixt1PXQ73odtTTjSqaCn+0/aOXrWy3MOO
7V8bXB0s66ZC1IcdXDZJu+BIuGIp3stQszJwiN7q2WseQosETPwB2yQ7X4/+OgibE8Do8j4IPkPp
jSpJ1O0UbQ2ChqHn913Tw23Bi3VCgzbwzhPBdqt859Q8efAKB4hGNsRBGBizXWK6aI7iXX1B3l2W
JXu3DSi6GM74yMsb9lB7U77HAnMj81naHNwTG8sy8zqvixvNsdChm5CqvNQxi54dTGm1JEgvKifb
19/9VafI8pgPpVhU4GKpjm91HlaRwkhXARv/i1jsZb2oPnAkTDsVN4+tLXHAQC3GwOWh+zVOkZro
gWGn2oPmiba12TgU2tcrTcoF1soeRaAdCXUtjQ/1TVBKjAWnxnS3rTVrosXnXs+6vqHaV1jedB5v
MTFZh3t//B/wnKJEd8GllM5BV1hnTSoZZ7X2GFhr1irekPwQmbikyZ7D8LMjYt+gZ68oW9c37iIm
oMJplPDQM+4zqorMqAw0jBtHBC+2VYehPAxGEa1XpnVv7X4j0frf3enDlBXsbBI8/7spzSpp9fa2
SNJuWFX8tT52Q0XQyZaQ7Aes32X6rwv3kaYSup4DWZ2kdLeWNYP/u1+ptx5vvuMv9Nh1VTQKl0Af
LwM8BjVYKoeKZ+P1iwqx35KJMSCCBYee/aZ/0sq5bJGPvxWu/k4HOpVaLVdlgQk9+E4IFnoUYsq+
YlmGk8l309SAIMBWWXLoQpLW12p5MNvz4AiFP6NZnlKVFlnXEZwjT4+nuW7nsyrSWZxftAesyCVN
vyuDfesbEpPwwV2Q5GZoFfXUTszPaA0Bn4qrO2XY/WeiYlBzmwMZNCa1JBUbS8xvFWnGdz1bFpHa
TTcA7b0wGG7002u5Pca/yhDqs410++F7Uv9OwoyBro9BOIepJHt2SPQ/dvOxdjQFN9KMRBSj7bEH
StOHsOB5XCnOcnaNgxj+XttcrRGCeZX1iZyxz1+BJGqirCb2IzIsqYFpkMEt7Lb7EWr+ok0O3dtp
uZ5Em0R79JtsE3BLMftbXNurrH0RUPd/p4AbwWLfvUqcKJRQiF1pL6oCMVqx9vheksFg/EnvVrZ8
KN54p9A0CCP/NChRJ9tyLPNFlV7x9jGmROwGvbUlnLKmrEh+52uLRcNTnjqCZ5GeqM1LcfmO92Fy
FQZqpxzaA81L+RIgU0X7bNhArfKa9eaZ3pGUY2VbyfRTUedEdZpS/pCrtoLNDFzv8Xxx+jt+5Cvh
PnZCHhiwO9d7NMNe4Oos/rB+5WD2+KF66CvB9oLim5kHOMly5uPZyQqzjJAtg60bhn5Oe9QcTnvq
0f8NHtml/ZLLVAA40uVpmMRJuuzcpA9IVmHPJrg8RvzkXMqUYxnMiMN6kD5T9UovinrPbAYM+pjH
aodJ85XbmESeR4nW0CyNBaeTLZObbBtTKZ821SusNLsTaaX0rLd0VwhnRKhtslWvMZ8ma6xWzihX
OIqTpe54lvwDq0btDnqbc1pXGwK5QOdgH+4LvToW4ttN0R2/TeNMQJwdRUsa6Z1ZsJK41a1UfumM
cKVsr0qy0XuMkeZ8CoRNHOnAs7lqjCb0SJHcxEMxJzdDN4OXW0vbNk9wXnI2bxZobjjBnUZFMJxj
ByZiVHmdtrUwXxbnCXksRGYmTZq1cb2UqK5EH64eG9oQlxx2sI2unKXcK7eyh26EJ572kgYM44kh
F9InwD+4Tw5926zibxFe+L+vcUu/nl5Bg5tavjlVSscd5LPjQ4LNY6rp3Wer15erXUkNVBizIEY0
vTdoQ69rTCRlv/GhRXQ81/FiYB/gcA0cYlkVv0pZxtL0eOuqPeUcig4HrPJckzmKbfKML09lvFyN
Red5Ki0vTmlqrfpz5R1Hqcrf+v5mmX8bd4SyD+1t1kkz9hHjImTXg2Rm8JrnlCY0MxB8YiKhP7EJ
X+hH9eTlHnjlAxx7SyNvtG6mOp4fCiRl7SRqU0Z3BdHuPIpNiyikNURMmTZASXNUy5BToHLUeiMH
UwUUw/TwaPf5JbMaTgoEzfQmcaO1NuSE6RAEv9xfC97ggFc/pY4it+lzbBD4kdO7Ow7z3x1Abxf5
VVnKwSap+dd+QJEcviDMk7WBHlBcMMDzQ45AoggbN4IY2oWDq7bBmxP1UO0RK3mEP7rT7HyrSIBf
0lTQR4bgkkRkoNtas1SRwh95gC/yJy/jP08Vv+Iy46HXLr8fspAZWKMD9SA8m/CvfKd+1G2ahMMz
BJDkzSAIV6ACxmanStrULGu/Z7/YOCfL3sSJ5BPFGI1B4/mNYOCKbk2Mm9UQaxrZa4dZKxhE5eS5
bMFSFLo5z1krAJopWDGYjlLGMl11rgWNi4cNqfj3XFx65d+aUHpbvHuonBIXh9eCRTRB7pUrRlB/
vIlhpVAt0u4j3eNOj8J+ufGUY6sTDPQH5TCi3cNVrY130b+Py+aol+RJE8xFyA0Ga9y4PN7l4n8V
DFq9RV6I7Jq5tdb+0WYuRHv+fuFqASF4+ylY3Oa8dlgMMIv/AqUdYjKL+rmE+dIcOs6WHZtUuI0H
FKkMMdwyZNXnkNRanPjJRZxihqOlo4sIAXiiBV/b9WFp/UQszynTAUZ6Lxf96Um5NP8pgE/iJARW
JkYGmrFzDcpmdfAssALrVsyOl34ZJ5yuJBbnYGko/JlK0OoJSY5GaOSHUmUYfIauNpC2sURAr9I+
YeRT3aKXufF+q9TA5nLqBT2qhfvxRUFawgUxzOp3IqGooh41gOBq7ENIGQnBhti9/qZLkIfs6CC7
K87Uo/gMT2RI71skqlPQxZUDcnaZRreWVUia32iF5JBPGklZHm0LmDRJ6etA5lIn+GDCvyFJvSbH
PJgswqzOgdKZM2RnvVDzQlc1Mj4Jl8g0rCeO1PeQM7Fo/A4qgUZUutPIfxtFG6zbC+84/sCT5U3r
pY5haxiLTzUocTahAgEixMYodfsWbxiJEqCZPfZ2j838cjiSeXV2uuk7H+HuimTUWmf/qQoHNSv7
uLHsJk+lkaBB+e6Z0Zr0okPylWTOCqcCpN44sdhS9V+0FGJRniO9VmDrFpPs/bDjmLFqtbSiTKSR
5gqbIbFGThNna8mojczaguaYN7EcmEkAFru1/l02aMt4AbXjy5Iql260rvr0UO9GLg3Wdr3BwYOJ
bOYGFxXbSg6bxbJh12RJHeYhZwtnr0hXbhRCxl77xYRoJrimwzkgOcDLIkkWegTuKgFC+XVTmas0
UaICWMY+p8ni/Io56v8LpNEle1a9tdeM2058x2XKlM+jJ+y6S6nkLPb1RwCE2pyHR28xa4ZYSpFN
YVektnrH3PPe96tM7WDY0BDwqaw7zSGuTklQ0YzZm+SnyxxEBo0YZLYtrBhRrsrXDuVzwmbXyh34
heZSqKVTISYd6kqakwJ/9r51nVGPuhhKbuSN7l6q1scVl8fqwi35mgu48v/DxjkYRPTy9/qmJdnQ
AzdArGHiCilU0t3OYK1JUqWhI8QGnls4Ovmn6T4nEmbKOKWE8ti9L92oxnzqS8RVK/eU1dspRng+
nt72cx4tBmPCqYhEm+7Is+MmZH9eAS2s6VxeBPIUvrH8Dr55kKEvdnoZXumHBb2g/a27EP/8iYcM
M/NoDMihNdJ4VwD9sm4bVKgPimYiHT34IVhJ6E5FR1cEckV6g/mH8+aK6Ut/mauVjwc8FR8uifhF
YUB+AOESGiXMNgP9rlUQ1A6+biRELmKmxtElx29eywtAPTlIO0K2pBYPeB3PtfvlPOq9a7F2Ewzn
r2k2kQLCZlLbl8PGz9ANhpc2b4XNVfQ3TGJS0O+uhjHJVqKRr6uBWPIPLSEbaW4+mtrDP8Qyqnzy
lQwwEjFQWuh7gKqmfxTHyluGb5UYpoNuAhGNS3zGYTxOjVQZaDx0tWGBQZkx214v9cw5ll5DYRKe
95QDt/88k8xHRJxtsZXw4ZEbfxtYE5hRHTRAEUgzXqqFoPMAXGFrPlxbXxcnr+j3nX6gGvQbwvic
QenufK1V1JzkVRjeoBpUSolvcCQ65uSl93PZKVj5v/ikgYPXqP7vfTx5l7jNuJKKPnWfsDBbyPB+
Ggv1UhBKQ4dHeY5odeZrOjtRLBJO8lQtZOj/unnk91H77CgBpsed5S8nxLFAj+9a4jwPNnHtoeol
xn1EtKzsm6j0TgCE+Dzv4TGDN/IfmYaNwa8brWVz+OpOF+AFDaZ5v2khE8iKjYvAXYM46rX0n+q7
5zy/6ivzmqrZpk3F1tZNLkb76TlXIdCcwj0jTZ2TQyJG3AFBvIVkdtPTo06HNkfR3pOIrl1+QF1N
V4bFDG/qySzB8wESEYm93ef/gDfODugl17d7DFmWOUUfhxj2V49NhYRlQ3zhOUjmLTJ/4d26y9lc
sARC78fWLKYJj7gPGMubc3AnMo5q7T8Gt1XcOZqSUs7R1EKou4mQ92ab9pR6TWDy/Pes7Yr33Nb7
YBomuPpEcRn1vKf8BLB27SQIPD0MWxOQhRAhdrJhYbZUl0zEKbXEwvNmA+fXukt8ce3TVyT/8+H4
nZ/A8rIYBVqyFY/DYCwXGAeNM3QYH4kI693KCod9F2QIzV6dU2bNX17oiExogbd7HVng5sasicw1
21nea2AHzEh+6hRM8jWkOpb7xEK4jrJ+/100UaUtEkQ1Oib2AQdEgeRohn98+M0kHjTSPcxaeajq
GRR1V4tcF7yA71HsVCk61OxivWzd5bmuoQWJn3MnzvMEn3TtfmD/7K+HaSCxtYljgETzplq0PAGf
ZTtu1gRFv/+NwLodHitYV150GdoSS0l0V8cwqwDlEXBqjlw6OGcPwtfIMRUhG6sNqOlVQxYpL4Jf
VNykaqVyUlcjSyrDmvUykuzMw0ei5d5gxq7pOK3diwb8b3aXNuywyuE6SJ7tq+OdXu9lBDFTRV3w
BtGnn4QOuQhuOwsvKhCuUjxGnhWUO6Ou0f7HxDByBnN7L23rT+q+fKm0IpVF9o0FTIiXSkVU534T
/IixjLRPqJvB6hcI35qKSD3QqKLj8UW2vbB8UU+kSWJBmGc+h5vK/Sw2hM/6icMaVyzzS+QVFASw
y93DVcMZoSCfiPx6TlBWzJDJzxT9qPgegDeNMV9wYM6VdZh8UFx7E2SAY3qK1iwQ+fBuvjwDZXsK
u1i4JA4oUmJry+SNW+pmIwfkVmaAJ7f3zmySYVeLWdbxl4fJyTFvJGC45Zf5/I1qp4H9aKFXl1JC
Ym8I5E/e7yjG2DXjI6NfuK1C730SGne27StVh4apXLMIp9zcHnUDSk7mXeuc1+3iZJl06iOZYqAt
zl3zlECdz8xTpIiS68hpjlTcqokAFDK/5waXsBzKJYVMRHaXmTNA00MimKqoRBhWofYHdDM/yOfk
XIm8EprgtU5Vq1lX4eoOnsan1MJvgozaSeYD+eEDK7GKiQwLyZl+5isKsvaNE5vv4rIwr3I+JYPU
9gDYNDHkchJiIIKlIQT8xI55V9fIxh542fvF3XZ9RKqre1MERfTr/zgJvE00DEbaEgNClFi9yhQA
gkLrj0zn8UlS2NoTUU6LdBFRSilgpjZmingfyLyFwsxSOV7R+qEB++QKIBgD/O2Za1thB6+u5x+i
THVAFl7Gv3lT6hnx6xnTC4gJma9yj8Euv2oXpy3jSoj9m0LOLQz4gqp/CMxlwh71Xwk8oPjsIL7/
QWlW6CI5QQWst7seYi/PA48ZYI7NGN1vY3QvHSS4JDLR73L93+M+dkg3fYpX24vbnLkuBsBzk3xr
RZ62XCkNTf/JrlxhrST03BUOM1hbn73vE33D0ZLyUHG6+5nNSWPPruSr/C1BW1vlBGcauz3aOrZO
jh1tkUzBRVMYkx+3sMffizYUOAOeJDsqdSI24OSbmy/e/xmAJIwj94RHI6IgxHEKH7kYZ260AXEl
cWjZOe9m3D86+JTrAoDmz0vM0qwYFSdbOaD0kU9oSMEet/vmSn05hsLMuaPC3K0xW5q71WDSFbwc
h8RVskjRPT4VBTXBEsN481aaOsYdl5IUWnd6NgqUimE73ANeCT8xtBiuXN+m/m+R7Qaaau//coeG
SdAtUSGKM+6gnvaNNREWzZLk6CIXapWWUcwV9PB9yPjDe7zGkx5H1AkEPQv/FuOvmTw3maSOA114
nAKFDpdlNOrYWZRdeJHnBMETvFm8+QlT5P54k7cEml6vtziRHkzAK66QpiY4hEWtMWT3bF9SsMfO
j1dBOYkOC1FfY+fx6K4OWe+A48Xc+BrNe4dcHqLXXq+C74hDKCbGwbigQGAc7025AMGwb2PM2Tl/
/nGdw5z+P+VkGis8uzBH4UV0D3epfEcHcdCofi/1SZtI1x+4WL3nWqqQVlI75N6s6NDnzXU7t57A
TFe2EL131ydHm2L0o06Ki+q5j0z79+1N0LAQd7+fK3faGbH7uOY8zWpY7SueysJN+Cd2jyQeVNLt
0Xf53vW+5qneal4A0vqkcYUdo5iezcHwK0eowjbyZTqYBzl26xICBlXmG3EKKY8aDV+Fj8ubmMrE
2p6l9ecB5WvZpPDUV1c5yBYJV6EiGCa0kcr6Xfx9sbgTcNluT8rh4iHu3DViFpPLZdGhyvRsLL3n
+x3NVRe/sO25GwScrR4oAst11q1MQhDVtVxp/NAX6Nx5qya77Geko0UMngvE+zoDn0/pezTuAsap
KpUvtEfUG4vzI4p/2BUbJnw94vvmfDvt+xDhJdQnGivGo1jM6VjjOG/wQnVx6dT8LUM/Yy7cTeFa
mstPZX6KYA4qD2rVcHyI2csgK/bFWIAG+zoNXP1QI7yE7ILzlMypYFxqIANfxqnLnSCZ4fMF41ht
lcBfNucORiPUcAV5IwDabOgn5Yrlba1+Sj/AbjJNRA1hfFXhJxEg0oGJECPEQBwXcnqhCCMSQ+ti
sInOnNwVoPU5WbsK4GFuKab70GurOzIoeE2ArYbjTU+P+Kw+EbDEIDl5eXfl83NHosppCGPaF4XM
exJek8ZtV+8tnWJkrmNbXztU1DhLLoG4pXgbARpzexEa9WozIwAy3SGKNECbAsn959rV4/RTRDdM
j9yLX+hfPSC3giSf5YScOGDzyTVpmC+DmI/Sagv7DGSsPLlUYOcc07movc4sIrx85IpYuw6BHHCg
KVp9FfF2RygXEnJe3jSdUiAY/3KaAcEDmOdUEKf0t7NhRa+buB4I7++Bi67gvD5tiXRAv38GaMC5
KbBeDFBypC+ylfSdHTsohglCFLHzQJKJJKCR5DTBR5l4hDMtuIxl4LIz3lmXBCxBptNBmga8fnXA
m4SZKWlcO9D4/FFU04fwqOGn1nSj9r+NdLhuCOlhNFJ43MCgIpweTpFTp4eLPIi6InC7G/7Q+Joj
h1jLPTc9Q0HkxSioJoFlV5feA08UPgfNhGhNJOJz/Y15uBWHdNKOi921taUQs+UCL35ToK9bfp0t
npRZq0YGurL+wRXc0nMWoJnuJ9HQ2M7mad+0tKAQ/2ORp+LtSpaU2OsJyVTqTDKQ1h5iAodd3aih
aFvkrvKn+ritSmepCslqXOeCkQFh48XosIxoSvz57j8dhaKZKvbcDrWxjAKd14lIcMROChBpmjDl
p9dj8vvdH7Sr1Vh3N5QoS8v48nmFfa2cqzStz/PCl7T/TS4KuKixzHFtGOHUF6sX5TD6P1Pcrw4i
oIyCdNbO8zwo/W0j2ML5RrIKl+sEfqGpP08AopO7+oUo6/zWtXYebOtFzmpoS97DQ5yNkHscu9ve
qr1dzzALXNgAV29aj/u/UXrLmJP8vTWDf7jZSgxhXNDOq/q+EoIPefrGEKb86kIEB/p226UEdYWM
Jv3QCqkWIjf/T4jEo5HMZQvmgFzfHsK7A1Bu7PIO5j2jK08gvtn8Yj15RwwURVy0UHaDaW4HanGr
BhZI3o9oyJqefblICSmV0Zgks2ou0DBaFYn7O9Jscu5nI7fYYRQbalXZQ6mMwitaXlQjwx+zGbnf
QJ9XqOYSwKPyCX/InrVkWsk4u2GRwAxp2P/BfcME5nYIzLcskx+mmaZmSyb3CHJaIHL2hYJxdyBr
8NXSXlODUoNTIergRwFZ/ZdEz0BSmoInpr2sV637diLtJmAYGHd+KTmLzH7Jq+WxPjHJO4zgS79J
6lfn7SEzMu9dyAl8RiR8ZeCxq5q9S6iYN9v6tj5Slfs+uMpIp/JT8RtxmnxfWPvmuBtPvgo1Opqz
FneKuGOpmZFPWm+8VXOIpQ/WIrvb8ixf7TC57DUFtAWuLQraT3gNWapz+ZwtFGWIZmuypfGr6quz
LK9Il9LLdNr85+VREw9UtSPWJ5NW/y/x0okvnVaKvx2E9AP5stST/bghNqskPDGLVk/Jhh/IOH8j
3lmuMjUvVhCY7pLwRcRdULJwpMrxQlWs7Xlc7W3l44+XGB1AdJ4vqORxP6HDJcvVeDd5kv3bNkQO
VyJlSgx/b3OMDrcPFD0W/U9nfammg0S7ksMpvG3zEXmH2QMkgKq1aam32dVCT8qMmH4JPRvCqx8j
23K2wuGFn5fZo9cvsIpi8GRxlv2sLd7WcrZUCZx1ShuB0kzEOGOxG8dci6pAo9zYDeJF2ca5Wo31
ivy6eKWKzv8RSU7pn/NWSRMyk9N99aKfsQKLRVAaaTR4qt706x4/2CFrvAUuXTBv7bwQjy7BP/X4
ZAzc5EufXFLBJv4/NptnPPUzgCqkDJF0xfqpBY7P+HqLHwIkgruN31PSkZkBjaLZu7Red/B3wABB
Xdwyy9ZkR0ZmIF9vcK4sEc/Sg+NZGalRvrECLxwpXm82hcBxoIiIewVpRoa1VoYBGKyMV0KJ11XP
oavw6NZv7L5pxf+Ti2hNc+JxOH8hb26X32ASe83Mh+hndQCBFPHGPqem5QunuvvhNgtIZ2X52erD
F/KfQEpSygaZkHvPhxuN8d1+7p0qEF8tP3+ZnGu7ihbar5MVHRBUXoIbEHSxjtaqT3KJ+DSPi1ZN
gOUYISvDf9OgXEF4JryQ9EFDyaGjBMv4GgJ2wnHNcXJ9bmMFD1VPRqIf+pxutTWEBkCXN4VXdzdR
M9eIgom3FHlWYS+5DoEkec20TOSilEHY4XV+mRpfPfhFkvP8QtduXmTqz/NYC6htCIbOhQsXd8IQ
i2OTOybqikJ0Hw/DnNWebBv/oXbNbh+/pxK5eO0XYVpNlYB269RM0bBn4asrmHuc6QULU2aatQVR
kibYBYTFxRHOZOupawmJjFgX+IGYEvQZMWQG0Ax2vQprLlwzb8XNReISpJIYB2qNr9m7GKr2ouZL
bejBGjihwHa7aQgtDUrttLtLjSqguhIc3rfTlL84aft+TxG7o1ENNv9dcOfs2zrYDqLjiMk5EfyZ
rsV9MvDDP/cwikbP/TU4ce6wYOFBAqYDng+1k5ayhHbHjq2nwKa+0ptCRax5QOV8aluqDYI+7Xxf
XH57mtrPSRAk3F4PU7YvzftP12vWGbOxO8uecdtDORpoJ4d3BU5BLF8CbuunSwlCI3TiiZ5kHaGA
gVwa633U+BQtwNip98gdv7Z0M2+tdUc+BjMEOtIztogB+Xr1TQu6Lcat4UiaxCL7h0EAxSt3NN88
W7oTecu4w3W8ki3xDaqqh6A0GkCn2GZztsRhRqIJXL3kM8TGi7ULHR8qE+7fI6TQK7q3CuuRz/xx
W2SkqFkXoTBx//KuNdWD2xzhN8ie1XIvx7sb0bDptCKbvCVNf06qMhFKDI3Dsv9sn2BiGRnBmzz4
QiqswDLJaXusB52ZmDX20sKS2HpH4d4+ZGRL05JP5D2VGAXPpbH1zyGKLkLu6GdOW8rlOISw/EIw
jJzv21ETu1RT7B09X3/cjKFRctEPfj/ajT+vuWSjlpi6jNNIjqcqsxJ4J+OsxE132nUiUfOgx1VU
tG9nPZsdqTznZGNDr6mYFOHH3w8vxrstDFoQmUtSh1SVd3rCW4cGKs+yoPbSsMC0ydZ8U2NnQdSA
qXfM6kZfGtj6wadTOUHKD5Xgji2FUWu6cGNDjVnuXbVcQplwQ3N6I14UMsevyVTyOtlQdmuSFuEm
wRr55sQrTsPnx45TQrnS+CcFil6aSEQx/FxZcsAKGryOhh+KI5XoCn3IEuJUs8/voY5xGlAWDK1Z
E8RzXqW1bez4dovKcohj8bmECuBLcoLNqNokIXoSG/TkQ+9+1kLw39ihNcRN5T8qe5Y+10V2N1gG
xiHcx11+00Bp6vrLbVrWAWGFKSPk0ybxZZcSoDoFwHobl64MZ0sZRIt8Sb2XDYAicKzT3p9z6sAH
cBtV4AA12YsMpJGX9EJFbdH+LALzuw1nOaTHAlqtO8LV4/110w5RFEJQKo4gpAWTSs7q0/WKloJH
CW+Gywj8nubYeEMNACV1bp986oOTbgs2KtZx//FzTlU2mh+bAtsjUK1EU9aDWUOKxSVA6x7f8mig
dm/Is0snUrGxYWNyq2nnKRJY77VlHFmwqtkq94VD758DMcLQFigB3hsMrh3zC3RRYdn5r5I0OlFZ
tx59nqMicYekhyvZioSp5QHnm04MKR2LrhyjDXcQDtX2+nvEN4jb2g5orUYVuxsQTIN8QrBQfvMn
LK8B2ZEszkIwR0GQpuP6MEwmzriR267L331FAQpCa4bydr9bdMxgRg5IS3F5VeRhdZl/4OMTZ32Q
+YlypI0qDvq8SZlKhqY7hbTJq4r/WVYoMB3gPwj0RBqMTnHwkL04pxx859dyxqkL+dFxGA0Y3ZO4
TGZBsP4Z64cHrO1mV5SfmRGPUeD8QgCAWq+iQXQJxpm4lxD78OwYD7Ft5xELD/+2MvKLYixc04Gn
/xorjN0X8F5U5Elk5uaLW+2p0jfSRl0ROy9GBWjS2bKlHx5yAFBmvNadWryWaRXKLEtdbZ8RNV9U
9AO7GAHgLOdax9gE3a/uSrwSJ28PhXpJV2wJ5hMNodOnjs80GjyzjSdsoS1SNgZ3k4GQMKuNJlQ5
FI2PgTvGHKdQ1kfj4z1rhsOSz/yUaqrZ7npsLKv0dI+Eb+hk4a4KdNW2XYhFA7cO8L1iHUDE+qYw
AknCapjbNHFCdOirgVgCgYFsu0e9T5F5k2OZvC0sVKWItsXmTNsgy/zlFoztqXGp6t46ot2VOS1a
6sv4q5o/FwJ9oSOIvIml8j1m1eB9Ro9xLT/yAQLBF9T13iNBEM6/DG1IALsr31ol54q4OU9tSE75
WZikLWEKaToP75AtHS7wNsRhWvje+AB6JAESCaNV20VFS3NKQMI+xnviQPQY6eG8Pi/TRe/q0A65
wfVW3h1ZGyiJkNToWbAka1RQHh1iwtFOkVCB3UGsmfQOPYQUhCdWd2tDemx5/XKYPloFEW6MMeY5
Zh+Go2ib0ixLUO5l+0K6gEvnusbzte9gpMzRJzYawfoztOMF+Fpx5riRR0uPcwgIL9wzCfamu3Wj
UqFDxjD2mfGSZlruzsKqVDkywRd6JAYWUDgV/YEoN+6H2LqQ2QwwTWrRPkJKc/nXIz1bUnJjnkSf
CSiWyVW8/4EPzpqd5v2X+LWHBN+P6+Mhj2pGi5+3lYpz5fca7UuZbjt+cEdItAA9rNGpOotWcSL/
eGNuujoZQYJSyxk6mzLpYBjQlXwM6iopwO8Rxsae6ylegi8JihMIlhlMSztZkrdbAinibrkWNYwB
oYn9ek7WRUPRvjCAdrmA+ghO01zphSjepE6CM0hk8Q5+3VSg8W1hmvrhQ8uJXT1PnuEJXTqotZNG
WZ5sBuGvHI+lm7IoPJX5hZErNL3YWASpeUX7Cv8kQzTEvORLPT3UdWVBGcxe1M91Ow4e7Es7n4D5
h1Kq87d0a+Xu69YYokzj5wwkhDWnfdji+thlfWkZyp0hd/TXsTzdV3tG5o6jB3k7qWa122EXud+i
xooZOO0hoZtBS1Lvg0mClBG7YRG31Pf0UdDe2vILqd00wYBkDPg3XSXnu9nS04FKBHEXDhgWuWrX
Nhjcg9bTjKfYLXU1tg96Ob6rDVoOt4WajX0uhPLvjeaJXmg0Qmyn+g8EeeZHzXBzZJ9BmjgnOPCN
bTm7MRsFW6yHnq2CeTYF/Tzvu7Mi7bklo8OZbLSBT6H6yd+XSZT7ayXwHUHDOT+D3tVnV82wYCcQ
vknlZZAwSsiDbe0qFFqck6aDTKD2GW7/ZAs57E9joMIs0dYq0B5xociUH+YeRJknOoova8/dGlMo
nO4ryp1k23uqBZl4sUKLeiePEfC8e6NYPu6E3QzstxSM08jZaRkd9doD6/ihCILMD9U1KGVx4XnK
LALYPprGusDe3xGnoaA1bsIQ6CNzOkMRaMkryi58VYFQtSwfuFdQOT5mYNT0SaqaIGy7HY7bKIjT
It3L8vh7RXz+I4QEWjdOkOqBSc+r9IPetTk0BDPZ7D9Pow9LIltVrzKEDRHGerPRQwPXRFbcMDIw
wZKroU5LP1ZvMPe7oY5DOz9dWB2qUKYNXEMMTVnAN/LMVIy8tvcYX4a8xftPEjxkrZhlsqlBoaFc
ljd+csBG59jVcJ3ufNGsdFwwtI/8tZhSplEVEb3LMK1Qdrk6Y7Mv7+acjob+GZAphCfc7+z9txet
4U5R9wPchXIMCYMzzioWPmVV+YHk/R1aoYAKahQjQ85o4jIJhtgaHBG2QHwifGO61hTw/V8r3ANF
KxJ+yTJHWJB2E7dIqpx7R6XBe7IzA8S5wT2InpNWY2dxR0dLytE9gmx4V+PUMrV5EZj2eXxvaghO
ZgaU2yK+rDsSH/WWmvpObxEC+aYSHwIJfOaw95du+FCpxaW7vTAEYUDp7kegK0DFutmd1yNBEoib
DboBU8WDrnuh801XXp/g58PjDOveqZkdDo0qNk+1huG/Xi3a0WcAJPUP2KEYlkdLIHm8/WdddU/f
ngdFeF+/wpi8AMPsqTjA95QlGL66YprPKknaq7gEqLLZvlqgdgjH7LM7CkO2nKhAl1zpiwdcsqr9
7aopSxKBFxyHx4YfsW7gfk9JVuZezTauDnIit3QmNXR7Sq2fpBwaB/90rzmnYQtuCoKGm5u4Xzjh
M2g7smHkCiqH8g/ygEpJszg/VjXKDEw8lgkZNVX8mbXwpfmINr78OreCKRqfhTyVcbO7Vv9lEg5U
3R6GKrIqqsQwoVOI6oQxy3IZrv/O+1hA9Th/HcHfT4n3K4GOP8x4ibLOa9/oL8i6+7XLd7e6FzRQ
qe3oStvgk3xcGCglCJai9tPmtw0Uy27nXZ2RK7LSDsdAdQChVQ+HKLjzlRy5j/Y+ecsZ8BYBZVu/
+1mpEVC10JMQ8Y1G0id3v7cYy1G7iXt4dre6GeKijlLPP7drcAFlNv9Yz4ufcY3gyGnXXniNjd7s
d3PCbpIA780kvTkMnGvtQy/tWavi2iT8Nj1h1qAzPoM9r286MwhDsukLcAa2z6+ZM6SByO8KtxPT
4h4PFfatbid6hLiFDQ4oAnrl8mgsVJCjfw//JnYD2MvQoggwA8DRuMcw1VNiRTKzuPIlX7Teyw9B
BYQBCk0no/6lMnzV6JmT89v6NQgI7gvdd+XJiUuxlJZoRSC5VQL276pNhZ5fh7DHEa7K9bPzCkEF
sTn3urpz2VMLO9bwuX/VXVcWyaI+92m6iGlOUlMqty7pV0qBeK2dNh5NTkLhTLyVlXvpS2gqQQjc
vnjXbppbHb8TScHz9nVI7MD51M08MA2XCCFY0vY+8rTULOxzZ9hvddEiLuQvukYtZ0EZ0+rKnLl/
TLLEA0oYx/UaYZF2xDPJaYql035L34YZQkiepuPTFVfv8tjEX5FhLlVbUt6vXz0mc1mveAmhaKBP
/h3gLcx0EJGOI/ve7wgneGoSeARR5ExIETaQn7NswSFNRhdLcnsSi/WePXgRpIyOeM5Lgl43iY1x
ytrh8Q3EiV3OFEyVFxpPI3xneXTD8Z/n9bGdjL8PPFVZvMn16tEQFGDwvfHCNXhh2ROEglgW4XmS
N1DccZCpOiFn0hTP46M0bIkQnzhsO3mr4JlxzHq7Uv1xy0sbfG9nNXJfwqUJaUSycZLCB/5C8dh3
jx34qB8FTovX2092pNurpIt3j/8zdnrhyJB1oWK6tN05BFiAi5BQfzeaxXY2hzC8OMjUqvwdYzLa
7TJPK9h3YqF8h5ReORlpIXIddw2dfel0o+mklD9GpPuCV2FQDqNhBno8uJXcdYnE0U7u4YCPoceA
9i5/YfumJjnsaeaO08udfzwP6YA9ciT11sqHwZZKdt9XDhPFCoyMYd5rGzDSkicWX6CRopBvOMnw
5XIB/pRmzsg4YCHiC4q8Xa0tX44gxLbQRa5Zww8Rcf9adOPPyapnuRGMred8GXUN04eLOhMRF/pr
w1B3tzqSH32od1RkrFLGwoX9Y1N7eh0x1hzMnwOqPikRDyl1l6LL663VDRSX46g51fW32PA/l0lA
5GpcYKX1bJ6+0odlMWrJY//nG9xI+/v7W5vMmZdtSCNN51SnuYEr06y1MVpZFMU6jFoSKMZQaYVk
LAoUXUSDTCxYefL4hPSu0ihApO6CK+GhsocMc5J4o5x6/pkyz/MfFcPLWo4vtIW2XkHS2X8cZnvA
c6BFetrbbnxPbJ0USWDDtn3LNa6D8/Ey6aBo1n4fVBHcCQcsSvXc7Ectn4//abI43/ztKjl583tO
PLkEMQCKrjzgj+LYqFFVedoGbCYY3akykY4xczSHoY7FRo9ZN4JUMc+Lz1W4HjKrP/n265sYCdAX
ciOwOrAhkXWh+Y321f2CNZxF2+63llHyoHk9x6a1TzumyzHiH10XGtA+innW8gS+WDGX3KS+qIhN
EOgSX7jfTW0oY+TNgv2ZLqGLwWd8GSLPqSSb1yXpIvNrmvFsm1dboRzW9jjbTkzjZQWv2Zg7CB4Q
tCBYwKzspzBa1n46StjyLq7FmYO06BttPShPzpTFyiIvJEi2wwMMXbwaFPisdEDbPmA+d1gQhEhi
nNU8RwfPORv9jp8EXAOXa1713YvXaYjd4L7UB6NvGNqnhZXBQpJCJRs4alexynMK/oomPYvfXmkq
PYX9uQkZ6JZO1VXVSKAa5wBavW6A+PKzLXJWAVpnLBu7n3lMkKgZ66m7UR9OpkBdpoRGno3NUKq3
oYcSr61dhZTWsLNgHdCx4Rlk8LcIPRk+lLFB/LwvrrC3vxQ85ZtBQIivsiAreJymabwbPCvYtVUF
7ktMUc/20CgnmrJEhx7MH8EtWjOVlyS0TfiGAvv5jr3NAw9VzVSrw8rV+XoE25Ft54QHcvk4uVr4
3VPxkq/ydWKF7LFhpw3f8VOAeP9ZcRQUXDSBPWip1SbewrvGDRTYT+YoX5tiFuPhGmkkV3pAc+Jr
wiyzFwC24Jr+SoRIhxKj+wa9LjSbG8cHFCPUqU6tsMBpzd/NLbJWazlPQ231cp5BjAmRfHJu/xkS
EWLMpGiZttu77fakvbZZ4VC57xGHlFrue5B/dQn0+J4EQhUOORfxk9J1r6Jjz45zFSi+FTeMQGQ9
XnDe+PD1SjB7rtw2b9F1UhMUoe2f6sNG4BH0pDIt1Uq+LJVhlun0DgeF7m/jTIcByQiBv7coqvmw
YDT25377/Ki6vYHprZ6coDzSmgJUCfkIdgwYYBV8o9HsLJIp3DSsAEqqrEW+vyUBLRW237BUAoF4
erfEreSzKzyen18R/X/HIuhxSjkDQel+2PMZ6BqG153hZwrVPlTBxAQzeELdwmYl1r2B3BRW4/uC
hea4bixgxnjc/MrFRXKjKiht4+NS0DAzIZk8BzQL7aphe6+sD2fS97PhEn4PSQqC4VXSJW/UAT/A
HR1XY0zRj0XNyZWu3tTOloaU+Bzy0nh8ka2cdbFg1JqZHIhELM8bHSntTrpYvFpP0HP9bvOilrhH
oT0deGEFIVdny/LbxKqR1Pnub14G5IGBfCuTVjBSc60u0JGDSZbO7mzuMCNjIrIS0oKQwOwNIwMK
qqSCpnS8GQv8yzs/fghXiCT8IDvoL1AOYyWekljgLggt+h895IhMgjyHHJDTGGC0qysc985jJljp
l2ByJcv2xgYC/dtn2spf5D7Jz8D4ONMPPsXmpIyI9nVUdFQZVMWwEVCIVxCDB2HvfdI6VdvZKdhD
DbnfRtO42KxnI6U9MZEXTYaKoBHlMNxFE6avJcSGFkjuym8+nxVtNhgYZ7QB0unm+PAhaRTaRsDo
9V9vqnZsiJoXqum0OF+QVOrfuH/a3XgkuKl/yY+Savw08i7BvoJ1QgJaingYr2MGKp8Mid9LtghU
jyMI+8Vzgcw+iaez6y8pVd5b9xEam9HiOYe5lQ+HtZNLkest+upS0XNv87ESDHQc7FIwEJeJc32R
TidEij6wA49RFHDrHDoKeJWsN1iRmQxsRYSKsERJLg+hXM4umg98zEWmITaDxPHesZaRICDVU7DC
LjtZlmKoFPU1BtkTG8iu8xfRXzbkSG2HgDRZXhr9zXP4vJlgTjInuDXancubvzkWui7SOk4O1a/j
/cEXMaoGOO77WuCY4jKJGq7l5EQFNy1mX/KtTMqHwpAd2mBrZB/IYd++ZG4IV/bYkUiDweyurge9
5QWNiAKmr2zK4LXvmHhAVzM6wvirFA8cKwRubMTRhS3fGtYaLPfy2Z7d0X29NxEuDpE6boEIBgf9
Mw9RXfjLIs20y3fSNLp0ZvJVd63mfQ8EITwMcLveH6aDcyWctdL1fJ8L/zJf9A13r4q6QkUday7g
lfZJnrXHL/TufDY/0RkgzoF+pVAiDu9bz8uH1HFT3d6AQUU7Drg6YaAfKa9XAYdFWdymmoL3uH0J
nUQuYQqiFayxhB70WNLK4bM5IHtUxBDS54ylkwk27lJoyQR7EqbGJSydTBOtJ0+yT0aF9qViJTq1
PO9QPZnU/rBc0g/1//Cr5FDeP03M2LKQ+HMvLj0pTpMbn4iAm5bf1SU1bouh67vg8DQvaHAPRwce
LuJ3rABo5gLrLVFY7ZjkPxGYcTyYlki0HZUnalcQ86+GHE2AcSAS50cjt13eA1Dv5q4k95k/ijbQ
mzGG29Wz3rSRLJM0wrUKaUoOFqV2Eds5d2QWU3icM616I8MPJ71CwSj3dOoBj1e7mIWFHgjTiGc5
zw2O0/4cXNmU93BwphDSqhmLTa8c2Dc4mnPb5tP7933g3y8k4qaHvw9aj/DcZDf+MS7O2JLYSdtY
leIRBEBzVaPPZmBm6IHKZ0KuBhQjFcEERl4zmisAuLKBniU6UxmpVn/TmdYvgVgJcVKUOe/WMsJ5
Vq/skgZfjWC92fmmA6aNdZ4g9y/z1GVkJYMFt5vIl4C4P+PFOZbxyJPf30YvTpLjni3GUX7T7Vsy
VFG4ZQsVNoke5WSKsMgFN9n8otP8LqvcrCBpKLqyQhRj5up+HDeeNaQIoK76XElIyyPmyLlXt1Bg
0ap+yn6ziIs/sw+lXARZP2nObbgXJuqU/Sau5KMSNNe3cgFbXebAndlCKmVEVln5ZjdBUTdz5cL3
ZwaRtqC0LXs8t3UTZ/b3X5/jeOiVzUQnHbKf/rd5pPS561bI3gX8H5H5rKfOcP2B4QkwmYt4oBoY
aiL1d2JWQMW7n8GnI4tIVhmMb9vXHJBQyfVyxiAxfJvCT6uAsdNB95rfPJ1YmuZ8gOSe2WwzHoKl
z8FsMQMZl7zQ9jGMlBg2RN5JOJD4VEx734kx6bpKEvCfne7DdfOZR4R4Y/XZig2oNsKtCajxC4uV
Dx9giBKAPmA8PDnZqppFWYZ3NuQJtXAsyi3OFfGrIGSSbbl7bKeegXfHiQLWf7OmdZi3xfx+FPgZ
GTRs+RuTzPgpnaRFVZCevr80TKEOe6xPzsV3BCqnlBx/2OA9vzOjPH5f6VQpJtV2nIExIpPNq1mn
DJJMi7xd+fl6llZBoHSHiF4EYShIVfiDtCmLjZ1/a5TfVsEyB2X7QntTEziKA9oCnkurPtZqgEhe
VSeUtK7tQBonK5j+BO7LneaoXW3BJDdlhQnzsbBigQzhWikC4WilXvpoSXipjzlvnVZ9D13YjspK
Mjy2kga4o4OaNqY9FOs7FLl5/+b77eRyomVwtoxmsk6RK2EHX5QJyLNMmE08W3InISMy2420BmbG
EH3yQ7g79WVgkYnUJFN6fPHf+hs3iwWKOEsZSS4tm4ix96P2/zgVTTPxMcy05rCRnsaLShpGgAeF
6x/kWmMFtZcNiQsFroGokgB8R4F6p6VCO4Ck/qU9HBVkBr5hokF1JiEq/W2gM/lAsOh4d6xzVT+X
bsPEZcDeiwnI0ULSqLhYRFxlEunuwy2EzoD8IuRR2HdlG5Y+R4dWZCLy9hKDNNpGLUmrpAJLKnyF
X/ZwzQjGudzEW01zKYpQaPjNkaSybAHwGDEm6bfNuUVYnzrXop1sE0IMOPyC5yBbk7bY9z3lGpen
gR86bEeSYbhE1rlzwq0460NuEZXxDPxv5EJILUKCcfYTzP55zYOuOaVfI94h/5EQnar50LHh5UaL
ueN0apgGMV3DQr4BV9maGNcevnJqXqkPee/0ad5Zruv8UlHDJUhB4WOaJ4czTVChV8b6UkltpT7f
kc9abOxvGiidzVvS2w9tws6nqf2Y3usXnLXhvFi8UNc9cukv+/c5nlWZgqpZYAhxTdDGhVdGT5Et
1tu8BSemVr2Pk4tMtIvWYUwFPReXnLiJXyhtybmLMMFByAIIFmF4ywI5NNj9KYj5ruezwQnLWYd9
rFUoaWGhR/nLbqkVLgX8J10X2Ky303BaMCBBurOeRwB4Vgwwv6uHCc5mZ07afKRNAMz6KChzIom1
uMnufp6Gr75MeDr+M1vo1xqyVBc9rhDZIfY1R3rdBPLcw7ezX1CSykomHRb7wxwatOhdvbaEWfRB
lvya/BcKDJg8q/4eQ1yIk3jBwtLYkcWzseOUJjCMmKpF0VeHgrYKodE2XrXdJW51GTRFN1L44OIn
UgwKtp6GH/fgyBQKia/gnwylLpr+UpJWljLzWT2zMHZtHc5Vz2o8mIRpJfgiilPlLv6PXzlmoMGo
64ARBX8NIrargPeAdz400av0gdrsTfCB4iIMpOhTCoGZ25U9uH1SYGjHhnVlegpTo1DWAqz7K+dt
RTnJi/ubR6lpiNrcHbm5BI4OhOAjAV59rqSlUzE3OjDbQiHe4pXcR6Est2EJjIT3FKVJl+TYKU8T
G1c4KXdijooxXRVgIg5ZcRQJeww6AH25d7R/heInTfeoDfWLxHmKYFWQ0DvzTk7NU6HkPY+7q9M0
D0xVgsgi5fvLUIRccMFs+lyi+X/dYPWk6nbqmvX2nWYMgDS15CF5zzoVcatHcThvELcEN3lA5DAt
P0NJ8vLtvNK7DxDDKBqN7vi7OhHryugIukjIF8kp6bL0bavYUu+Djrax16Ivof4mEzyVxvnCmIrJ
jLfc33hTvk6oIcBbnjJBLDmIURiZao7UwSksTkK9O5dAfR88Bb5O1mH+jKMHS9yCbec3L1vFLO8p
eNtGDGtlmYDo8Wo5TvEf4KhC83vMKByBIFRnhCFb3jjD8BttU0WSbmgUH6UTuiC9ZMK2IWjD0Crk
jEZlM5ywROv5pS9PN5QOF3dD8yXOGLLk+AgUlRdBdUukdUOd5VDG9/+cJrvSEZiKwiPaMkI6deVk
MZnONllHjFyNbpO8T/zZ2w9dicwIqXg08yk5dCqAeDTB3pVXSH3+l8DOYkM5+n63kUIPuP4KgzLa
g3MAeuHFFh5IYHYBTlK8EKoWaUUd20luKq7CCaM+3esH1Fdx9RKOsW6TzfwIFRcr+pfZEk8E1pLs
Ef9Pb+cwDPHD1GyuOGmeg8xcXiQ5/ck6Xxd0K6E2xJ5MkCgU369gRYqSCiOjOeLtz5aaV/k5vbI5
3mnWhBq4eIAeSeFNK5MFPyiE9cp7QL/vfRwrplP35FjqYwFjkYhXe+jB+v9qTn4LqK26VGFudHdQ
yRDgnSH96rAbMCszTsG02lP4C2KSGh8tBv11ED/23Fid53OphG9a8Vn6CnxsJHmKpf74gZQsJOot
H5zcfpvD4N4XtM0GaD3hyUF5lTdKkP5yeN8absCDMvcTWOXs01ZRoHN8G5c9oKgct+4kkmOqzT6n
3W/jNkBGYMypO2xXjaGckA2T0HkSp/1XY+HACRjbWbEn6t+qjSbNDg9mxhNXFkf/kTFERqOCNFjz
fcqdBluT+Fuzc5sgzB7Um8hAaU2tFtJQXJLhoMFvdU359WSv92A5csOBCIt4eT48XLzuQdN3ymyC
zCqdQnMGe7ojXyYPi5oDEopFjtSHKsUoGMaiz/c4nLsKycRiUjAYem4aJ5rMCyyn3a3G2ffVMRfA
0ak+Ept7UMbG5itQPcx2ekuhToxQjcL7uDtmScAjVuw7tRRCxdQ6l2w8VEOSK6KehJ7Xep9xazwD
UuMFowcNKf62OoK1fX+LvQuLRXJ1M3Z+SmkhVr4HvubJMslXdg3vBvOiwei2GL/Q8zbxap4heV0C
qpvNIqfZj0wQ7l/h3OMMPklL434PhF19LsvHuAEQuunAuh+q/wowVThVnBWiEqapWv5Q4PW14b3C
gnQPa0G8vzoeq0kd1FHCMeYHvr21CG8UphKY2BDW6/ybNcTtabBN4ChfEuvkE+grJgxu+sB5OUYv
OVHlqBywZ8SHejuOo+F9v/HU0k+B5KItLFy0a6ulZhn2H/QLk0kMSxcyLBDU0uZd7XhrtA3D5q3/
XCyFehw7BdIQQUHT3u/TeE2sK1gBGCy6GRPFT+lT6aBjoCLR1vBlbgwh5VfhMWbEul3SzosjkyRh
XDi93u2Sw5hyWdxX0l6TkL1rdrQFr+J2WXhWbtbTc7NOsa/hkv67XFENjLO4inzRBmsZy3bm3q+j
Pg+iZJGzr7JXv8EB4AIA4h9BVxzm/ZKFIGqlt9KxnyvG4rx+M80lv4HUAkKRpowSDexT4xQDpwAU
JuG+I8lCT//PCKvLIR3QPz7XncF+DpPrigBusMVRe91aHxpNFjhLpeVrmCETXC88ytT+RKKw0sS/
kHHSP8XYH7Ev28tvhWXfRRpR61ACxdEu5Nv9rpIsCEzAfVQ7QetH+KhafJlG5DF415X2yfqNBTvu
Q/EsmwUgRKJvminxz3qXxSxdnpGeA2JMmEi4aW9U529zJldZnjGZcDxqnKfH+SEc66Ic6N8P4+FY
pVJlfXvCZZmSCjFKWiLr0Uh7BltSMGdpmaL59ayji6UboDOtxhz/YEU8IMhF8hecZRYX4EfACymr
OEpHqRr87tBCwwQM9AY8fBu5O6IgUA+L0oijkinorDz2RwV4M6fXcub3BDiwUbFdNqEHlHRYQSlH
cxqGVlePiScRluepecdTTcEL34oCS6Mqw8ut41jcS6Y8k33FK39foRUfvvZZO8H26/fWEaXOZ996
RNFRZTxSw2C81GJkq2jCRLXw0F1o993GMjdWt+/dnChkfeDzn9aGw09WVCoWuovBchuORpc/joLc
Zyj6tBMdiRB88Y+mAPbVkFUNk2BW5P8jjAfKPETNrQs7raQ61ifej57kG4luhCG5vqw4IB4+s9jg
PsLZwh7eHQr5rV1u5yHazGDlK1U58mNFF8Q/T5xxfFQxRwD3KqTlceA/bnYH1ra/dXlJFyVWsjDA
v/TbhzckXRexub1xn1Xdt8cjhS7rzNDkX0D1j+gErVWCnWuoQyvqoftg5RjBGYc3L78Zr6CQccUi
nsLfHDpYsDNRBlyKP4oMLlW4vH8EYABmvuteQ6iOH6jQl0IK55OSwQpjBIZ0NsP4tslW2ibGDBcI
lMsxfOJo1DxPjNc6rEgq39X2X1iuW2G3vTRaasPOyQAEXR4IGbNY5EVccmdy4pHk93+eBfvhd3Kk
K6wypDGS9yVz396E+tAY/OcSOCsDTBIVdAsob5mWq8OB1ZkH0hKkfpapOhMUMlObVS6AfKYUEczd
nQb5NQZR/hNycALHySioGiP1IFwDJL2wAGbGTTnzgM6yMtaxovugO8OKvW3SABdR0MFtVuaN5Yzd
D/+kO+enWld55esCN0bjZLc4B7vA4C35Fpo1RX2AYBiczVRzRUcTfSdeVHHFkFSby2DFjQYHBTFo
7/EDIwKPPCUXebkk/oB+9ri1Jk7xbnDiNwttOntN/5oUZPldDAQIveL3UL0zPHjbhwOpcGlkSn5r
ZPDjEvpN//dLp5Hgwl46VulrHXEkHATcQnmL0MuDIH/fysQUbyWKVrXeSjHX0/E9bfinP/yKAWrl
4N/GTcVvG6HbOPpS6VKrv+Ybus2WMGHKd/qdyxCzeIDYwbpFjNTPGuSBQZAAiEcYg7n54dc/43Ab
I6JhyQq1mrjSrivsgH51t5mEgnvTAouZ1DWJcv513bMyU6gsy3htBTxF0NZwcnjKkvvxuCGm9fAg
3Ooyrru95nLf4BdOk5+XjnEVLXJ4ImiXc1GVTwFsTsjJHibDSptTpXUrqqhsZLLD8xnmZenphA+C
jbcsDA2mU6voEcMdloyi5krf6Ew5Y/dbQmFnlGGM3yYAaj14BeTTE77r5Q1qtnAwbtKp/IVMVs1d
Y9fdvcYCvlAF3kw386maFdzJ1p/F11Lm8Ibv0aTfxeIDZ0EUimcjiuWH+MJg8EpTJqylKvhILAvd
KReTIhcGgQ/YOIval6zDfL7gUoq27yF/Lw3KO184PuZ6NQto3Ss+saIg7Ic1+dsxxqg8dyEkNMhV
12csROdz7Tl7XFmtdU7r9i7AiZGQ9DmezKqoqD+Qo77mktw5/GY9VH6eRcyRnPKGCIYvl3fhwMv8
bAS3DGGjkssS2xKelRy/a9L5cFqQfNSqluGopwZ9dUc30CWd3TAb2UmDQI1A3FbR/M2a2hmzG9dy
wbbkHhYBLiQfOeYeCOMSuXk7Xkw6bJ/QYAlo0BWtrX7YP9FHjoV/+EQgMe+vFc6Cj7fDFFUs9fs4
kkOMBFbjb9eWdi6utV1mH33iThIXgS9QmKnHwVRHkil/Tn/qKwHG1ctPF1Z5gipOHvbIARY/ZRS4
bXYFyA8w3gde98miPUloVF5tT7A9cSc+yEL6Hf5uoXLiQFyAUIiEv2IRv9A8P9jLv7ufcfX5EFFw
7k/2QWNsnfSOBKh5G4E/Jsu+QvfnQClJWwYKu4i0jEbQD8ax+qqTXrU3p7BqK/wd2KR5IlKsS3pb
0SIuDhQGFsO+HNVulp37eC8Hg+2//olRi4D9tp1CnHJgDKC8lAoEv1k75LmTZVDrtHnTGlsGKYNM
CDMAsJKqQcQzBQv1CkFQtgOIClYTdezwR1i3vEnrjRpRQIq5hWQbOcAOSgok6bKA63DKbjSHe/+x
oN0rVv1tNWg7Kjtnqo/8Aa0dXUvp3mg6FkdAYzT0fjt+2+H8s6tV11jS9ep44Lj/V7orOt939rAQ
eWQKrfRRt3OTyr/GmgUEutARi2+R1GW5uVlfjSsKlY6dnYHu6uw2PXEU5rX17i8oJI0KmZ9SY6DB
a3QD33sO1eTxTU5TfCox671W0wM7vrS9QL/p3h1cwCNnACduYGc6vZXOZV8pJnHLHYyVl1EhBzEs
5KtxcxEMAqESzZshFy1pImfljpVopmBQPXg12WwLLxfG/li3ku7ODsPwVagiwyrgEUN3kasgKmWN
JTD+ukjLUsyNI+nNxkzdBYupcaD7mcctyQZ3CgaWvZeSfbetT7gyzYzgvcRIxrqpLO93dSrP/KB3
/XGoLcLCnBE0pVKGkzS/FZBnR13nNrYCTRXjRpl/WPdChT/3sanSrJ3BbMl/13n9hU+Yw3V6Cwkp
srGcScCeDW3hPzdl6INH000101+19miLcUEo+eKJSpgRPRuCg52Py8QSZQtlLKGRsE7LUnujWIZ9
sRRk1aUaT16nPoEVrtLiqb7PLVI3xHOcfe4rXXCS30ps2tQVzMzNFUZLPWLlODnCHP97NyPrseWw
JwLIrPaFX7Uf04LYDnluVzLCnzs4fUXA9okVn5gVsvB4b5wHuEzhIl6f5aSSsri9KczUny6LunA4
IYAzCBdC/B6L8oYiQC/hSw2oFzp6M8b3SZAw8TuM8CGeYEAd7vA2ZMUtpSNqWDGiUetK6UH5YZPW
Jdc17fTqkSD8mcgv02WbFOIIwl5YeA==
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
