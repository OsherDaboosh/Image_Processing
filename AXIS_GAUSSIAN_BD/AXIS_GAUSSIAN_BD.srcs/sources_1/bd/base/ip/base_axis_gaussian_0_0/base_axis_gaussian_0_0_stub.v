// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Mon May  5 13:58:23 2025
// Host        : Osher running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/osher/Vivado_Projects/AXIS_GAUSSIAN_BD/AXIS_GAUSSIAN_BD.srcs/sources_1/bd/base/ip/base_axis_gaussian_0_0/base_axis_gaussian_0_0_stub.v
// Design      : base_axis_gaussian_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "axis_gaussian,Vivado 2020.1" *)
module base_axis_gaussian_0_0(s_axi_aclk, s_axi_aresetn, s_axis_tdata, 
  s_axis_tvalid, s_axis_tlast, s_axis_tready, m_axis_tvalid, m_axis_tready, m_axis_tlast, 
  m_axis_tdata)
/* synthesis syn_black_box black_box_pad_pin="s_axi_aclk,s_axi_aresetn,s_axis_tdata[31:0],s_axis_tvalid,s_axis_tlast,s_axis_tready,m_axis_tvalid,m_axis_tready,m_axis_tlast,m_axis_tdata[7:0]" */;
  input s_axi_aclk;
  input s_axi_aresetn;
  input [31:0]s_axis_tdata;
  input s_axis_tvalid;
  input s_axis_tlast;
  output s_axis_tready;
  output m_axis_tvalid;
  input m_axis_tready;
  output m_axis_tlast;
  output [7:0]m_axis_tdata;
endmodule
