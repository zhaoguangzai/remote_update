-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Thu Mar  9 11:16:35 2023
-- Host        : LAPTOP-3H7KH1IM running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               E:/work/12_FPGA/xapp1247-multiboot-spi/Vivado/Golden/Golden.srcs/sources_1/ip/clk_200MHZ/clk_200MHZ_stub.vhdl
-- Design      : clk_200MHZ
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7k325tffg900-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity clk_200MHZ is
  Port ( 
    CLK_OUT1 : out STD_LOGIC;
    clk_in1_p : in STD_LOGIC;
    clk_in1_n : in STD_LOGIC
  );

end clk_200MHZ;

architecture stub of clk_200MHZ is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "CLK_OUT1,clk_in1_p,clk_in1_n";
begin
end;
