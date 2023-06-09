// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu Mar  9 11:16:35 2023
// Host        : LAPTOP-3H7KH1IM running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               E:/work/12_FPGA/xapp1247-multiboot-spi/Vivado/Golden/Golden.srcs/sources_1/ip/clk_200MHZ/clk_200MHZ_stub.v
// Design      : clk_200MHZ
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k325tffg900-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module clk_200MHZ(CLK_OUT1, clk_in1_p, clk_in1_n)
/* synthesis syn_black_box black_box_pad_pin="CLK_OUT1,clk_in1_p,clk_in1_n" */;
  output CLK_OUT1;
  input clk_in1_p;
  input clk_in1_n;
endmodule
