-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Mon May 10 17:35:48 2021
-- Host        : DESKTOP-MB5IJCE running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub {c:/Users/George/Desktop/Github/Bronco Pong/Final
--               Implementation/ETE4451_BroncoPong/ETE4451_BroncoPong.gen/sources_1/bd/DCM/ip/DCM_clk_wiz_0_1/DCM_clk_wiz_0_1_stub.vhdl}
-- Design      : DCM_clk_wiz_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DCM_clk_wiz_0_1 is
  Port ( 
    Clk_100MHz : out STD_LOGIC;
    PClk : out STD_LOGIC;
    TMDS_Clk : out STD_LOGIC;
    reset : in STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );

end DCM_clk_wiz_0_1;

architecture stub of DCM_clk_wiz_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "Clk_100MHz,PClk,TMDS_Clk,reset,clk_in1";
begin
end;
