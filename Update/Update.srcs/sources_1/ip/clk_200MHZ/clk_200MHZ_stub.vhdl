-- Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2015.1 (lin64) Build 1215546 Mon Apr 27 19:07:21 MDT 2015
-- Date        : Thu Jun 18 13:16:27 2015
-- Host        : xsjapps50 running 64-bit Red Hat Enterprise Linux Workstation release 6.5 (Santiago)
-- Command     : write_vhdl -force -mode synth_stub
--               /home/kkaur/Test_cases_all/Working_ref_testcase/Vivado/xapp1247/Vivado/Update/Update.srcs/sources_1/ip/clk_200MHZ/clk_200MHZ_stub.vhdl
-- Design      : clk_200MHZ
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7k325tffg900-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity clk_200MHZ is
  Port ( 
    CLK_IN1_p : in STD_LOGIC;
    CLK_IN1_n : in STD_LOGIC;
    CLK_OUT1 : out STD_LOGIC
  );

end clk_200MHZ;

architecture stub of clk_200MHZ is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "CLK_IN1_p,CLK_IN1_n,CLK_OUT1";
begin
end;
