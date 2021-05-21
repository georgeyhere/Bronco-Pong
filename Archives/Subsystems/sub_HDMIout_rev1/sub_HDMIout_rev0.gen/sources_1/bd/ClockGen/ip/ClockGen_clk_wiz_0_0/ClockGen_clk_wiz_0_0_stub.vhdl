-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Thu Apr  8 11:19:48 2021
-- Host        : DESKTOP-MB5IJCE running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub {c:/Users/George/Desktop/Github/Bronco
--               Pong/Subsystems/sub_HDMIout_rev1/sub_HDMIout_rev0.gen/sources_1/bd/ClockGen/ip/ClockGen_clk_wiz_0_0/ClockGen_clk_wiz_0_0_stub.vhdl}
-- Design      : ClockGen_clk_wiz_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-3
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ClockGen_clk_wiz_0_0 is
  Port ( 
    clk_25MHz : out STD_LOGIC;
    clk_250MHz : out STD_LOGIC;
    reset : in STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );

end ClockGen_clk_wiz_0_0;

architecture stub of ClockGen_clk_wiz_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_25MHz,clk_250MHz,reset,clk_in1";
begin
end;
