// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.1 (lin64) Build 1215546 Mon Apr 27 19:07:21 MDT 2015
// Date        : Thu Jun 18 13:16:27 2015
// Host        : xsjapps50 running 64-bit Red Hat Enterprise Linux Workstation release 6.5 (Santiago)
// Command     : write_verilog -force -mode synth_stub
//               /home/kkaur/Test_cases_all/Working_ref_testcase/Vivado/xapp1247/Vivado/Update/Update.srcs/sources_1/ip/clk_200MHZ/clk_200MHZ_stub.v
// Design      : clk_200MHZ
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k325tffg900-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module clk_200MHZ(CLK_IN1_p, CLK_IN1_n, CLK_OUT1)
/* synthesis syn_black_box black_box_pad_pin="CLK_IN1_p,CLK_IN1_n,CLK_OUT1" */;
  input CLK_IN1_p;
  input CLK_IN1_n;
  output CLK_OUT1;
endmodule
