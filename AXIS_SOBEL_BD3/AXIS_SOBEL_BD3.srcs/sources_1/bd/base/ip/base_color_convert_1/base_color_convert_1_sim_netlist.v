// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Thu May  1 13:47:27 2025
// Host        : Osher running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top base_color_convert_1 -prefix
//               base_color_convert_1_ base_color_convert_0_sim_netlist.v
// Design      : base_color_convert_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "base_color_convert_0,color_convert,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "HLS" *) 
(* x_core_info = "color_convert,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module base_color_convert_1
   (s_axi_AXILiteS_AWADDR,
    s_axi_AXILiteS_AWVALID,
    s_axi_AXILiteS_AWREADY,
    s_axi_AXILiteS_WDATA,
    s_axi_AXILiteS_WSTRB,
    s_axi_AXILiteS_WVALID,
    s_axi_AXILiteS_WREADY,
    s_axi_AXILiteS_BRESP,
    s_axi_AXILiteS_BVALID,
    s_axi_AXILiteS_BREADY,
    s_axi_AXILiteS_ARADDR,
    s_axi_AXILiteS_ARVALID,
    s_axi_AXILiteS_ARREADY,
    s_axi_AXILiteS_RDATA,
    s_axi_AXILiteS_RRESP,
    s_axi_AXILiteS_RVALID,
    s_axi_AXILiteS_RREADY,
    ap_clk,
    ap_rst_n,
    control,
    ap_rst_n_control,
    stream_in_24_TVALID,
    stream_in_24_TREADY,
    stream_in_24_TDATA,
    stream_in_24_TLAST,
    stream_in_24_TUSER,
    stream_out_24_TVALID,
    stream_out_24_TREADY,
    stream_out_24_TDATA,
    stream_out_24_TLAST,
    stream_out_24_TUSER);
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME s_axi_AXILiteS, ADDR_WIDTH 7, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, FREQ_HZ 142857132, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN base_ps7_0_0_FCLK_CLK1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [6:0]s_axi_AXILiteS_AWADDR;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS AWVALID" *) input s_axi_AXILiteS_AWVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS AWREADY" *) output s_axi_AXILiteS_AWREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS WDATA" *) input [31:0]s_axi_AXILiteS_WDATA;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS WSTRB" *) input [3:0]s_axi_AXILiteS_WSTRB;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS WVALID" *) input s_axi_AXILiteS_WVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS WREADY" *) output s_axi_AXILiteS_WREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS BRESP" *) output [1:0]s_axi_AXILiteS_BRESP;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS BVALID" *) output s_axi_AXILiteS_BVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS BREADY" *) input s_axi_AXILiteS_BREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS ARADDR" *) input [6:0]s_axi_AXILiteS_ARADDR;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS ARVALID" *) input s_axi_AXILiteS_ARVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS ARREADY" *) output s_axi_AXILiteS_ARREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS RDATA" *) output [31:0]s_axi_AXILiteS_RDATA;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS RRESP" *) output [1:0]s_axi_AXILiteS_RRESP;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS RVALID" *) output s_axi_AXILiteS_RVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS RREADY" *) input s_axi_AXILiteS_RREADY;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF stream_in_24:stream_out_24, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 142857132, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN base_ps7_0_0_FCLK_CLK1, INSERT_VIP 0" *) input ap_clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *) (* x_interface_parameter = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input ap_rst_n;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 control CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME control, ASSOCIATED_BUSIF s_axi_AXILiteS, ASSOCIATED_RESET ap_rst_n_control, FREQ_HZ 142857132, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN base_ps7_0_0_FCLK_CLK1, INSERT_VIP 0" *) input control;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 ap_rst_n_control RST" *) (* x_interface_parameter = "XIL_INTERFACENAME ap_rst_n_control, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input ap_rst_n_control;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 stream_in_24 TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME stream_in_24, TDATA_NUM_BYTES 3, TUSER_WIDTH 1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value xilinx.com:video:G_B_R_444:1.0} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 24} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} array_type {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value rows} size {attribs {resolve_type generated dependency active_rows format long minimum {} maximum {}} value 1} stride {attribs {resolve_type generated dependency active_rows_stride format long minimum {} maximum {}} value 24} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 24} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} array_type {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value cols} size {attribs {resolve_type generated dependency active_cols format long minimum {} maximum {}} value 1} stride {attribs {resolve_type generated dependency active_cols_stride format long minimum {} maximum {}} value 24} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 24} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} struct {field_G {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value G} enabled {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency video_data_width format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}} field_B {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value B} enabled {attribs {resolve_type generated dependency video_comp1_enabled format bool minimum {} maximum {}} value true} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency video_data_width format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type generated dependency video_comp1_offset format long minimum {} maximum {}} value 8} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}} field_R {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value R} enabled {attribs {resolve_type generated dependency video_comp2_enabled format bool minimum {} maximum {}} value true} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency video_data_width format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type generated dependency video_comp2_offset format long minimum {} maximum {}} value 16} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}}}}}} TDATA_WIDTH 24}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 142857132, PHASE 0.000, CLK_DOMAIN base_ps7_0_0_FCLK_CLK1, INSERT_VIP 0" *) input stream_in_24_TVALID;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 stream_in_24 TREADY" *) output stream_in_24_TREADY;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 stream_in_24 TDATA" *) input [23:0]stream_in_24_TDATA;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 stream_in_24 TLAST" *) input [0:0]stream_in_24_TLAST;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 stream_in_24 TUSER" *) input [0:0]stream_in_24_TUSER;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 stream_out_24 TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME stream_out_24, TDATA_NUM_BYTES 3, TUSER_WIDTH 1, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 142857132, PHASE 0.000, CLK_DOMAIN base_ps7_0_0_FCLK_CLK1, INSERT_VIP 0" *) output stream_out_24_TVALID;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 stream_out_24 TREADY" *) input stream_out_24_TREADY;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 stream_out_24 TDATA" *) output [23:0]stream_out_24_TDATA;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 stream_out_24 TLAST" *) output [0:0]stream_out_24_TLAST;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 stream_out_24 TUSER" *) output [0:0]stream_out_24_TUSER;

  wire ap_clk;
  wire ap_rst_n;
  wire ap_rst_n_control;
  wire control;
  wire [6:0]s_axi_AXILiteS_ARADDR;
  wire s_axi_AXILiteS_ARREADY;
  wire s_axi_AXILiteS_ARVALID;
  wire [6:0]s_axi_AXILiteS_AWADDR;
  wire s_axi_AXILiteS_AWREADY;
  wire s_axi_AXILiteS_AWVALID;
  wire s_axi_AXILiteS_BREADY;
  wire [1:0]s_axi_AXILiteS_BRESP;
  wire s_axi_AXILiteS_BVALID;
  wire [31:0]s_axi_AXILiteS_RDATA;
  wire s_axi_AXILiteS_RREADY;
  wire [1:0]s_axi_AXILiteS_RRESP;
  wire s_axi_AXILiteS_RVALID;
  wire [31:0]s_axi_AXILiteS_WDATA;
  wire s_axi_AXILiteS_WREADY;
  wire [3:0]s_axi_AXILiteS_WSTRB;
  wire s_axi_AXILiteS_WVALID;
  wire [23:0]stream_in_24_TDATA;
  wire [0:0]stream_in_24_TLAST;
  wire stream_in_24_TREADY;
  wire [0:0]stream_in_24_TUSER;
  wire stream_in_24_TVALID;
  wire [23:0]stream_out_24_TDATA;
  wire [0:0]stream_out_24_TLAST;
  wire stream_out_24_TREADY;
  wire [0:0]stream_out_24_TUSER;
  wire stream_out_24_TVALID;

  (* C_S_AXI_AXILITES_ADDR_WIDTH = "7" *) 
  (* C_S_AXI_AXILITES_DATA_WIDTH = "32" *) 
  base_color_convert_1_color_convert U0
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_control(ap_rst_n_control),
        .control(control),
        .s_axi_AXILiteS_ARADDR(s_axi_AXILiteS_ARADDR),
        .s_axi_AXILiteS_ARREADY(s_axi_AXILiteS_ARREADY),
        .s_axi_AXILiteS_ARVALID(s_axi_AXILiteS_ARVALID),
        .s_axi_AXILiteS_AWADDR(s_axi_AXILiteS_AWADDR),
        .s_axi_AXILiteS_AWREADY(s_axi_AXILiteS_AWREADY),
        .s_axi_AXILiteS_AWVALID(s_axi_AXILiteS_AWVALID),
        .s_axi_AXILiteS_BREADY(s_axi_AXILiteS_BREADY),
        .s_axi_AXILiteS_BRESP(s_axi_AXILiteS_BRESP),
        .s_axi_AXILiteS_BVALID(s_axi_AXILiteS_BVALID),
        .s_axi_AXILiteS_RDATA(s_axi_AXILiteS_RDATA),
        .s_axi_AXILiteS_RREADY(s_axi_AXILiteS_RREADY),
        .s_axi_AXILiteS_RRESP(s_axi_AXILiteS_RRESP),
        .s_axi_AXILiteS_RVALID(s_axi_AXILiteS_RVALID),
        .s_axi_AXILiteS_WDATA(s_axi_AXILiteS_WDATA),
        .s_axi_AXILiteS_WREADY(s_axi_AXILiteS_WREADY),
        .s_axi_AXILiteS_WSTRB(s_axi_AXILiteS_WSTRB),
        .s_axi_AXILiteS_WVALID(s_axi_AXILiteS_WVALID),
        .stream_in_24_TDATA(stream_in_24_TDATA),
        .stream_in_24_TLAST(stream_in_24_TLAST),
        .stream_in_24_TREADY(stream_in_24_TREADY),
        .stream_in_24_TUSER(stream_in_24_TUSER),
        .stream_in_24_TVALID(stream_in_24_TVALID),
        .stream_out_24_TDATA(stream_out_24_TDATA),
        .stream_out_24_TLAST(stream_out_24_TLAST),
        .stream_out_24_TREADY(stream_out_24_TREADY),
        .stream_out_24_TUSER(stream_out_24_TUSER),
        .stream_out_24_TVALID(stream_out_24_TVALID));
endmodule

(* C_S_AXI_AXILITES_ADDR_WIDTH = "7" *) (* C_S_AXI_AXILITES_DATA_WIDTH = "32" *) 
module base_color_convert_1_color_convert
   (ap_clk,
    ap_rst_n,
    stream_in_24_TDATA,
    stream_in_24_TVALID,
    stream_in_24_TREADY,
    stream_in_24_TUSER,
    stream_in_24_TLAST,
    stream_out_24_TDATA,
    stream_out_24_TVALID,
    stream_out_24_TREADY,
    stream_out_24_TUSER,
    stream_out_24_TLAST,
    s_axi_AXILiteS_AWVALID,
    s_axi_AXILiteS_AWREADY,
    s_axi_AXILiteS_AWADDR,
    s_axi_AXILiteS_WVALID,
    s_axi_AXILiteS_WREADY,
    s_axi_AXILiteS_WDATA,
    s_axi_AXILiteS_WSTRB,
    s_axi_AXILiteS_ARVALID,
    s_axi_AXILiteS_ARREADY,
    s_axi_AXILiteS_ARADDR,
    s_axi_AXILiteS_RVALID,
    s_axi_AXILiteS_RREADY,
    s_axi_AXILiteS_RDATA,
    s_axi_AXILiteS_RRESP,
    s_axi_AXILiteS_BVALID,
    s_axi_AXILiteS_BREADY,
    s_axi_AXILiteS_BRESP,
    control,
    ap_rst_n_control);
  input ap_clk;
  input ap_rst_n;
  input [23:0]stream_in_24_TDATA;
  input stream_in_24_TVALID;
  output stream_in_24_TREADY;
  input [0:0]stream_in_24_TUSER;
  input [0:0]stream_in_24_TLAST;
  output [23:0]stream_out_24_TDATA;
  output stream_out_24_TVALID;
  input stream_out_24_TREADY;
  output [0:0]stream_out_24_TUSER;
  output [0:0]stream_out_24_TLAST;
  input s_axi_AXILiteS_AWVALID;
  output s_axi_AXILiteS_AWREADY;
  input [6:0]s_axi_AXILiteS_AWADDR;
  input s_axi_AXILiteS_WVALID;
  output s_axi_AXILiteS_WREADY;
  input [31:0]s_axi_AXILiteS_WDATA;
  input [3:0]s_axi_AXILiteS_WSTRB;
  input s_axi_AXILiteS_ARVALID;
  output s_axi_AXILiteS_ARREADY;
  input [6:0]s_axi_AXILiteS_ARADDR;
  output s_axi_AXILiteS_RVALID;
  input s_axi_AXILiteS_RREADY;
  output [31:0]s_axi_AXILiteS_RDATA;
  output [1:0]s_axi_AXILiteS_RRESP;
  output s_axi_AXILiteS_BVALID;
  input s_axi_AXILiteS_BREADY;
  output [1:0]s_axi_AXILiteS_BRESP;
  input control;
  input ap_rst_n_control;

  wire \<const0> ;
  wire ARESET;
  wire RESIZE0;
  wire and_ln781_1_fu_546_p2;
  wire and_ln781_1_reg_1072;
  wire and_ln781_2_fu_668_p2;
  wire and_ln781_2_reg_1096;
  wire and_ln781_fu_424_p2;
  wire and_ln781_reg_1048;
  wire ap_block_pp0_stage0_11001;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter1;
  wire ap_enable_reg_pp0_iter2;
  wire ap_enable_reg_pp0_iter3;
  wire ap_enable_reg_pp0_iter4;
  wire ap_enable_reg_pp0_iter5;
  wire ap_enable_reg_pp0_iter6;
  wire ap_rst_n;
  wire [9:0]bias_c1_V;
  wire [9:0]bias_c1_V_0_data_reg;
  wire \bias_c1_V_read_reg_945_pp0_iter2_reg_reg[0]_srl2_n_0 ;
  wire \bias_c1_V_read_reg_945_pp0_iter2_reg_reg[1]_srl2_n_0 ;
  wire \bias_c1_V_read_reg_945_pp0_iter2_reg_reg[2]_srl2_n_0 ;
  wire \bias_c1_V_read_reg_945_pp0_iter2_reg_reg[3]_srl2_n_0 ;
  wire \bias_c1_V_read_reg_945_pp0_iter2_reg_reg[4]_srl2_n_0 ;
  wire \bias_c1_V_read_reg_945_pp0_iter2_reg_reg[5]_srl2_n_0 ;
  wire \bias_c1_V_read_reg_945_pp0_iter2_reg_reg[6]_srl2_n_0 ;
  wire \bias_c1_V_read_reg_945_pp0_iter2_reg_reg[7]_srl2_n_0 ;
  wire \bias_c1_V_read_reg_945_pp0_iter2_reg_reg[8]_srl2_n_0 ;
  wire \bias_c1_V_read_reg_945_pp0_iter2_reg_reg[9]_srl2_n_0 ;
  wire \bias_c1_V_read_reg_945_pp0_iter3_reg_reg_n_0_[0] ;
  wire \bias_c1_V_read_reg_945_pp0_iter3_reg_reg_n_0_[1] ;
  wire \bias_c1_V_read_reg_945_pp0_iter3_reg_reg_n_0_[2] ;
  wire \bias_c1_V_read_reg_945_pp0_iter3_reg_reg_n_0_[3] ;
  wire \bias_c1_V_read_reg_945_pp0_iter3_reg_reg_n_0_[4] ;
  wire \bias_c1_V_read_reg_945_pp0_iter3_reg_reg_n_0_[5] ;
  wire \bias_c1_V_read_reg_945_pp0_iter3_reg_reg_n_0_[6] ;
  wire \bias_c1_V_read_reg_945_pp0_iter3_reg_reg_n_0_[7] ;
  wire \bias_c1_V_read_reg_945_pp0_iter3_reg_reg_n_0_[8] ;
  wire [9:0]bias_c2_V;
  wire [9:0]bias_c2_V_0_data_reg;
  wire \bias_c2_V_read_reg_940_pp0_iter2_reg_reg[0]_srl2_n_0 ;
  wire \bias_c2_V_read_reg_940_pp0_iter2_reg_reg[1]_srl2_n_0 ;
  wire \bias_c2_V_read_reg_940_pp0_iter2_reg_reg[2]_srl2_n_0 ;
  wire \bias_c2_V_read_reg_940_pp0_iter2_reg_reg[3]_srl2_n_0 ;
  wire \bias_c2_V_read_reg_940_pp0_iter2_reg_reg[4]_srl2_n_0 ;
  wire \bias_c2_V_read_reg_940_pp0_iter2_reg_reg[5]_srl2_n_0 ;
  wire \bias_c2_V_read_reg_940_pp0_iter2_reg_reg[6]_srl2_n_0 ;
  wire \bias_c2_V_read_reg_940_pp0_iter2_reg_reg[7]_srl2_n_0 ;
  wire \bias_c2_V_read_reg_940_pp0_iter2_reg_reg[8]_srl2_n_0 ;
  wire \bias_c2_V_read_reg_940_pp0_iter2_reg_reg[9]_srl2_n_0 ;
  wire [9:0]bias_c2_V_read_reg_940_pp0_iter3_reg;
  wire [9:0]bias_c3_V;
  wire [9:0]bias_c3_V_0_data_reg;
  wire \bias_c3_V_read_reg_935_pp0_iter2_reg_reg[0]_srl2_n_0 ;
  wire \bias_c3_V_read_reg_935_pp0_iter2_reg_reg[1]_srl2_n_0 ;
  wire \bias_c3_V_read_reg_935_pp0_iter2_reg_reg[2]_srl2_n_0 ;
  wire \bias_c3_V_read_reg_935_pp0_iter2_reg_reg[3]_srl2_n_0 ;
  wire \bias_c3_V_read_reg_935_pp0_iter2_reg_reg[4]_srl2_n_0 ;
  wire \bias_c3_V_read_reg_935_pp0_iter2_reg_reg[5]_srl2_n_0 ;
  wire \bias_c3_V_read_reg_935_pp0_iter2_reg_reg[6]_srl2_n_0 ;
  wire \bias_c3_V_read_reg_935_pp0_iter2_reg_reg[7]_srl2_n_0 ;
  wire \bias_c3_V_read_reg_935_pp0_iter2_reg_reg[8]_srl2_n_0 ;
  wire \bias_c3_V_read_reg_935_pp0_iter2_reg_reg[9]_srl2_n_0 ;
  wire [9:0]bias_c3_V_read_reg_935_pp0_iter3_reg;
  wire [9:0]c1_c2_V;
  wire [9:0]c1_c3_V;
  wire [9:0]c1_c3_V_0_data_reg;
  wire [9:0]c2_c1_V;
  wire [9:0]c2_c3_V;
  wire [9:0]c2_c3_V_0_data_reg;
  wire [9:0]c3_c1_V;
  wire [9:0]c3_c3_V;
  wire [9:0]c3_c3_V_0_data_reg;
  wire control;
  wire int_c1_c1_V0;
  wire int_c2_c2_V0;
  wire int_c3_c2_V0;
  wire [9:0]or10_out;
  wire [9:0]or3_out;
  wire [9:0]or6_out;
  wire or_ln785_1_fu_552_p2;
  wire or_ln785_1_reg_1078;
  wire or_ln785_2_fu_674_p2;
  wire or_ln785_2_reg_1102;
  wire or_ln785_fu_430_p2;
  wire or_ln785_reg_1054;
  wire [7:0]p_0_in__0;
  wire [7:0]p_Repl2_2_reg_930;
  wire p_Result_2_fu_452_p3;
  wire p_Result_2_reg_1060;
  wire p_Result_4_fu_574_p3;
  wire p_Result_4_reg_1084;
  wire p_Result_s_fu_330_p3;
  wire p_Result_s_reg_1036;
  wire [7:7]p_Val2_15_fu_490_p2;
  wire [6:0]p_Val2_15_fu_490_p2__0;
  wire [7:0]p_Val2_15_reg_1066;
  wire \p_Val2_15_reg_1066[7]_i_9_n_0 ;
  wire [7:7]p_Val2_23_fu_612_p2;
  wire [6:0]p_Val2_23_fu_612_p2__0;
  wire [7:0]p_Val2_23_reg_1090;
  wire \p_Val2_23_reg_1090[7]_i_9_n_0 ;
  wire [7:7]p_Val2_7_fu_368_p2;
  wire [6:0]p_Val2_7_fu_368_p2__0;
  wire [7:0]p_Val2_7_reg_1042;
  wire \p_Val2_7_reg_1042[7]_i_9_n_0 ;
  wire r_V_12_reg_986_reg__0_n_0;
  wire r_V_12_reg_986_reg__1_n_0;
  wire r_V_12_reg_986_reg__2_n_0;
  wire r_V_12_reg_986_reg__3_n_0;
  wire r_V_12_reg_986_reg__4_n_0;
  wire r_V_12_reg_986_reg__5_n_0;
  wire r_V_12_reg_986_reg__6_n_0;
  wire r_V_12_reg_986_reg__7_n_0;
  wire r_V_12_reg_986_reg_n_100;
  wire r_V_12_reg_986_reg_n_101;
  wire r_V_12_reg_986_reg_n_102;
  wire r_V_12_reg_986_reg_n_103;
  wire r_V_12_reg_986_reg_n_104;
  wire r_V_12_reg_986_reg_n_105;
  wire r_V_12_reg_986_reg_n_88;
  wire r_V_12_reg_986_reg_n_89;
  wire r_V_12_reg_986_reg_n_90;
  wire r_V_12_reg_986_reg_n_91;
  wire r_V_12_reg_986_reg_n_92;
  wire r_V_12_reg_986_reg_n_93;
  wire r_V_12_reg_986_reg_n_94;
  wire r_V_12_reg_986_reg_n_95;
  wire r_V_12_reg_986_reg_n_96;
  wire r_V_12_reg_986_reg_n_97;
  wire r_V_12_reg_986_reg_n_98;
  wire r_V_12_reg_986_reg_n_99;
  wire r_V_16_reg_996_reg__0_n_0;
  wire r_V_16_reg_996_reg__1_n_0;
  wire r_V_16_reg_996_reg__2_n_0;
  wire r_V_16_reg_996_reg__3_n_0;
  wire r_V_16_reg_996_reg__4_n_0;
  wire r_V_16_reg_996_reg__5_n_0;
  wire r_V_16_reg_996_reg__6_n_0;
  wire r_V_16_reg_996_reg__7_n_0;
  wire r_V_16_reg_996_reg_n_100;
  wire r_V_16_reg_996_reg_n_101;
  wire r_V_16_reg_996_reg_n_102;
  wire r_V_16_reg_996_reg_n_103;
  wire r_V_16_reg_996_reg_n_104;
  wire r_V_16_reg_996_reg_n_105;
  wire r_V_16_reg_996_reg_n_88;
  wire r_V_16_reg_996_reg_n_89;
  wire r_V_16_reg_996_reg_n_90;
  wire r_V_16_reg_996_reg_n_91;
  wire r_V_16_reg_996_reg_n_92;
  wire r_V_16_reg_996_reg_n_93;
  wire r_V_16_reg_996_reg_n_94;
  wire r_V_16_reg_996_reg_n_95;
  wire r_V_16_reg_996_reg_n_96;
  wire r_V_16_reg_996_reg_n_97;
  wire r_V_16_reg_996_reg_n_98;
  wire r_V_16_reg_996_reg_n_99;
  wire r_V_19_reg_1001_reg_n_100;
  wire r_V_19_reg_1001_reg_n_101;
  wire r_V_19_reg_1001_reg_n_102;
  wire r_V_19_reg_1001_reg_n_103;
  wire r_V_19_reg_1001_reg_n_104;
  wire r_V_19_reg_1001_reg_n_105;
  wire r_V_19_reg_1001_reg_n_88;
  wire r_V_19_reg_1001_reg_n_89;
  wire r_V_19_reg_1001_reg_n_90;
  wire r_V_19_reg_1001_reg_n_91;
  wire r_V_19_reg_1001_reg_n_92;
  wire r_V_19_reg_1001_reg_n_93;
  wire r_V_19_reg_1001_reg_n_94;
  wire r_V_19_reg_1001_reg_n_95;
  wire r_V_19_reg_1001_reg_n_96;
  wire r_V_19_reg_1001_reg_n_97;
  wire r_V_19_reg_1001_reg_n_98;
  wire r_V_19_reg_1001_reg_n_99;
  wire regslice_both_stream_in_24_data_U_n_1;
  wire regslice_both_stream_in_24_data_U_n_10;
  wire regslice_both_stream_in_24_data_U_n_11;
  wire regslice_both_stream_in_24_data_U_n_12;
  wire regslice_both_stream_in_24_data_U_n_13;
  wire regslice_both_stream_in_24_data_U_n_14;
  wire regslice_both_stream_in_24_data_U_n_15;
  wire regslice_both_stream_in_24_data_U_n_16;
  wire regslice_both_stream_in_24_data_U_n_2;
  wire regslice_both_stream_in_24_data_U_n_3;
  wire regslice_both_stream_in_24_data_U_n_4;
  wire regslice_both_stream_in_24_data_U_n_5;
  wire regslice_both_stream_in_24_data_U_n_6;
  wire regslice_both_stream_in_24_data_U_n_7;
  wire regslice_both_stream_in_24_data_U_n_8;
  wire regslice_both_stream_in_24_data_U_n_9;
  wire regslice_both_stream_in_24_last_V_U_n_0;
  wire regslice_both_stream_in_24_last_V_U_n_1;
  wire regslice_both_stream_in_24_user_V_U_n_0;
  wire regslice_both_stream_in_24_user_V_U_n_1;
  wire regslice_both_stream_out_24_data_U_n_1;
  wire regslice_both_stream_out_24_data_U_n_2;
  wire regslice_both_stream_out_24_data_U_n_30;
  wire regslice_both_stream_out_24_data_U_n_31;
  wire regslice_both_stream_out_24_data_U_n_4;
  wire [18:0]ret_V_11_reg_1016;
  wire [18:0]ret_V_6_reg_1006;
  wire [18:0]ret_V_reg_1011;
  wire [6:0]s_axi_AXILiteS_ARADDR;
  wire s_axi_AXILiteS_ARREADY;
  wire s_axi_AXILiteS_ARVALID;
  wire [6:0]s_axi_AXILiteS_AWADDR;
  wire s_axi_AXILiteS_AWREADY;
  wire s_axi_AXILiteS_AWVALID;
  wire s_axi_AXILiteS_BREADY;
  wire s_axi_AXILiteS_BVALID;
  wire [9:0]\^s_axi_AXILiteS_RDATA ;
  wire s_axi_AXILiteS_RREADY;
  wire s_axi_AXILiteS_RVALID;
  wire [31:0]s_axi_AXILiteS_WDATA;
  wire s_axi_AXILiteS_WREADY;
  wire [3:0]s_axi_AXILiteS_WSTRB;
  wire s_axi_AXILiteS_WVALID;
  wire [23:0]stream_in_24_TDATA;
  wire [0:0]stream_in_24_TLAST;
  wire stream_in_24_TREADY;
  wire [0:0]stream_in_24_TUSER;
  wire stream_in_24_TVALID;
  wire \stream_in_24_last_V_s_reg_915_pp0_iter3_reg_reg[0]_srl4_n_0 ;
  wire stream_in_24_last_V_s_reg_915_pp0_iter4_reg;
  wire \stream_in_24_user_V_s_reg_910_pp0_iter3_reg_reg[0]_srl4_n_0 ;
  wire stream_in_24_user_V_s_reg_910_pp0_iter4_reg;
  wire [23:0]stream_out_24_TDATA;
  wire [0:0]stream_out_24_TLAST;
  wire stream_out_24_TREADY;
  wire [0:0]stream_out_24_TUSER;
  wire stream_out_24_TVALID;
  wire vld_out;
  wire NLW_r_V_12_reg_986_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_r_V_12_reg_986_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_r_V_12_reg_986_reg_OVERFLOW_UNCONNECTED;
  wire NLW_r_V_12_reg_986_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_r_V_12_reg_986_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_r_V_12_reg_986_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_r_V_12_reg_986_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_r_V_12_reg_986_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_r_V_12_reg_986_reg_CARRYOUT_UNCONNECTED;
  wire [47:18]NLW_r_V_12_reg_986_reg_P_UNCONNECTED;
  wire [47:0]NLW_r_V_12_reg_986_reg_PCOUT_UNCONNECTED;
  wire NLW_r_V_16_reg_996_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_r_V_16_reg_996_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_r_V_16_reg_996_reg_OVERFLOW_UNCONNECTED;
  wire NLW_r_V_16_reg_996_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_r_V_16_reg_996_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_r_V_16_reg_996_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_r_V_16_reg_996_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_r_V_16_reg_996_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_r_V_16_reg_996_reg_CARRYOUT_UNCONNECTED;
  wire [47:18]NLW_r_V_16_reg_996_reg_P_UNCONNECTED;
  wire [47:0]NLW_r_V_16_reg_996_reg_PCOUT_UNCONNECTED;
  wire NLW_r_V_19_reg_1001_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_r_V_19_reg_1001_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_r_V_19_reg_1001_reg_OVERFLOW_UNCONNECTED;
  wire NLW_r_V_19_reg_1001_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_r_V_19_reg_1001_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_r_V_19_reg_1001_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_r_V_19_reg_1001_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_r_V_19_reg_1001_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_r_V_19_reg_1001_reg_CARRYOUT_UNCONNECTED;
  wire [47:18]NLW_r_V_19_reg_1001_reg_P_UNCONNECTED;
  wire [47:0]NLW_r_V_19_reg_1001_reg_PCOUT_UNCONNECTED;

  assign s_axi_AXILiteS_BRESP[1] = \<const0> ;
  assign s_axi_AXILiteS_BRESP[0] = \<const0> ;
  assign s_axi_AXILiteS_RDATA[31] = \<const0> ;
  assign s_axi_AXILiteS_RDATA[30] = \<const0> ;
  assign s_axi_AXILiteS_RDATA[29] = \<const0> ;
  assign s_axi_AXILiteS_RDATA[28] = \<const0> ;
  assign s_axi_AXILiteS_RDATA[27] = \<const0> ;
  assign s_axi_AXILiteS_RDATA[26] = \<const0> ;
  assign s_axi_AXILiteS_RDATA[25] = \<const0> ;
  assign s_axi_AXILiteS_RDATA[24] = \<const0> ;
  assign s_axi_AXILiteS_RDATA[23] = \<const0> ;
  assign s_axi_AXILiteS_RDATA[22] = \<const0> ;
  assign s_axi_AXILiteS_RDATA[21] = \<const0> ;
  assign s_axi_AXILiteS_RDATA[20] = \<const0> ;
  assign s_axi_AXILiteS_RDATA[19] = \<const0> ;
  assign s_axi_AXILiteS_RDATA[18] = \<const0> ;
  assign s_axi_AXILiteS_RDATA[17] = \<const0> ;
  assign s_axi_AXILiteS_RDATA[16] = \<const0> ;
  assign s_axi_AXILiteS_RDATA[15] = \<const0> ;
  assign s_axi_AXILiteS_RDATA[14] = \<const0> ;
  assign s_axi_AXILiteS_RDATA[13] = \<const0> ;
  assign s_axi_AXILiteS_RDATA[12] = \<const0> ;
  assign s_axi_AXILiteS_RDATA[11] = \<const0> ;
  assign s_axi_AXILiteS_RDATA[10] = \<const0> ;
  assign s_axi_AXILiteS_RDATA[9:0] = \^s_axi_AXILiteS_RDATA [9:0];
  assign s_axi_AXILiteS_RRESP[1] = \<const0> ;
  assign s_axi_AXILiteS_RRESP[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  FDRE \and_ln781_1_reg_1072_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_11001),
        .D(and_ln781_1_fu_546_p2),
        .Q(and_ln781_1_reg_1072),
        .R(1'b0));
  FDRE \and_ln781_2_reg_1096_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_11001),
        .D(and_ln781_2_fu_668_p2),
        .Q(and_ln781_2_reg_1096),
        .R(1'b0));
  FDRE \and_ln781_reg_1048_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_11001),
        .D(and_ln781_fu_424_p2),
        .Q(and_ln781_reg_1048),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter1_reg
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_11001),
        .D(ap_block_pp0_stage0_11001),
        .Q(ap_enable_reg_pp0_iter1),
        .R(ARESET));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter2_reg
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_11001),
        .D(ap_enable_reg_pp0_iter1),
        .Q(ap_enable_reg_pp0_iter2),
        .R(ARESET));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter3_reg
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_11001),
        .D(ap_enable_reg_pp0_iter2),
        .Q(ap_enable_reg_pp0_iter3),
        .R(ARESET));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter4_reg
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_11001),
        .D(ap_enable_reg_pp0_iter3),
        .Q(ap_enable_reg_pp0_iter4),
        .R(ARESET));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter5_reg
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_11001),
        .D(ap_enable_reg_pp0_iter4),
        .Q(ap_enable_reg_pp0_iter5),
        .R(ARESET));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter6_reg
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_11001),
        .D(ap_enable_reg_pp0_iter5),
        .Q(ap_enable_reg_pp0_iter6),
        .R(ARESET));
  FDRE #(
    .INIT(1'b0)) 
    \bias_c1_V_0_data_reg_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(bias_c1_V[0]),
        .Q(bias_c1_V_0_data_reg[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bias_c1_V_0_data_reg_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(bias_c1_V[1]),
        .Q(bias_c1_V_0_data_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bias_c1_V_0_data_reg_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(bias_c1_V[2]),
        .Q(bias_c1_V_0_data_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bias_c1_V_0_data_reg_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(bias_c1_V[3]),
        .Q(bias_c1_V_0_data_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bias_c1_V_0_data_reg_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(bias_c1_V[4]),
        .Q(bias_c1_V_0_data_reg[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bias_c1_V_0_data_reg_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(bias_c1_V[5]),
        .Q(bias_c1_V_0_data_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bias_c1_V_0_data_reg_reg[6] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(bias_c1_V[6]),
        .Q(bias_c1_V_0_data_reg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bias_c1_V_0_data_reg_reg[7] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(bias_c1_V[7]),
        .Q(bias_c1_V_0_data_reg[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bias_c1_V_0_data_reg_reg[8] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(bias_c1_V[8]),
        .Q(bias_c1_V_0_data_reg[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bias_c1_V_0_data_reg_reg[9] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(bias_c1_V[9]),
        .Q(bias_c1_V_0_data_reg[9]),
        .R(1'b0));
  (* srl_bus_name = "U0/\bias_c1_V_read_reg_945_pp0_iter2_reg_reg " *) 
  (* srl_name = "U0/\bias_c1_V_read_reg_945_pp0_iter2_reg_reg[0]_srl2 " *) 
  SRL16E \bias_c1_V_read_reg_945_pp0_iter2_reg_reg[0]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(ap_block_pp0_stage0_11001),
        .CLK(ap_clk),
        .D(bias_c1_V_0_data_reg[0]),
        .Q(\bias_c1_V_read_reg_945_pp0_iter2_reg_reg[0]_srl2_n_0 ));
  (* srl_bus_name = "U0/\bias_c1_V_read_reg_945_pp0_iter2_reg_reg " *) 
  (* srl_name = "U0/\bias_c1_V_read_reg_945_pp0_iter2_reg_reg[1]_srl2 " *) 
  SRL16E \bias_c1_V_read_reg_945_pp0_iter2_reg_reg[1]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(ap_block_pp0_stage0_11001),
        .CLK(ap_clk),
        .D(bias_c1_V_0_data_reg[1]),
        .Q(\bias_c1_V_read_reg_945_pp0_iter2_reg_reg[1]_srl2_n_0 ));
  (* srl_bus_name = "U0/\bias_c1_V_read_reg_945_pp0_iter2_reg_reg " *) 
  (* srl_name = "U0/\bias_c1_V_read_reg_945_pp0_iter2_reg_reg[2]_srl2 " *) 
  SRL16E \bias_c1_V_read_reg_945_pp0_iter2_reg_reg[2]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(ap_block_pp0_stage0_11001),
        .CLK(ap_clk),
        .D(bias_c1_V_0_data_reg[2]),
        .Q(\bias_c1_V_read_reg_945_pp0_iter2_reg_reg[2]_srl2_n_0 ));
  (* srl_bus_name = "U0/\bias_c1_V_read_reg_945_pp0_iter2_reg_reg " *) 
  (* srl_name = "U0/\bias_c1_V_read_reg_945_pp0_iter2_reg_reg[3]_srl2 " *) 
  SRL16E \bias_c1_V_read_reg_945_pp0_iter2_reg_reg[3]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(ap_block_pp0_stage0_11001),
        .CLK(ap_clk),
        .D(bias_c1_V_0_data_reg[3]),
        .Q(\bias_c1_V_read_reg_945_pp0_iter2_reg_reg[3]_srl2_n_0 ));
  (* srl_bus_name = "U0/\bias_c1_V_read_reg_945_pp0_iter2_reg_reg " *) 
  (* srl_name = "U0/\bias_c1_V_read_reg_945_pp0_iter2_reg_reg[4]_srl2 " *) 
  SRL16E \bias_c1_V_read_reg_945_pp0_iter2_reg_reg[4]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(ap_block_pp0_stage0_11001),
        .CLK(ap_clk),
        .D(bias_c1_V_0_data_reg[4]),
        .Q(\bias_c1_V_read_reg_945_pp0_iter2_reg_reg[4]_srl2_n_0 ));
  (* srl_bus_name = "U0/\bias_c1_V_read_reg_945_pp0_iter2_reg_reg " *) 
  (* srl_name = "U0/\bias_c1_V_read_reg_945_pp0_iter2_reg_reg[5]_srl2 " *) 
  SRL16E \bias_c1_V_read_reg_945_pp0_iter2_reg_reg[5]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(ap_block_pp0_stage0_11001),
        .CLK(ap_clk),
        .D(bias_c1_V_0_data_reg[5]),
        .Q(\bias_c1_V_read_reg_945_pp0_iter2_reg_reg[5]_srl2_n_0 ));
  (* srl_bus_name = "U0/\bias_c1_V_read_reg_945_pp0_iter2_reg_reg " *) 
  (* srl_name = "U0/\bias_c1_V_read_reg_945_pp0_iter2_reg_reg[6]_srl2 " *) 
  SRL16E \bias_c1_V_read_reg_945_pp0_iter2_reg_reg[6]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(ap_block_pp0_stage0_11001),
        .CLK(ap_clk),
        .D(bias_c1_V_0_data_reg[6]),
        .Q(\bias_c1_V_read_reg_945_pp0_iter2_reg_reg[6]_srl2_n_0 ));
  (* srl_bus_name = "U0/\bias_c1_V_read_reg_945_pp0_iter2_reg_reg " *) 
  (* srl_name = "U0/\bias_c1_V_read_reg_945_pp0_iter2_reg_reg[7]_srl2 " *) 
  SRL16E \bias_c1_V_read_reg_945_pp0_iter2_reg_reg[7]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(ap_block_pp0_stage0_11001),
        .CLK(ap_clk),
        .D(bias_c1_V_0_data_reg[7]),
        .Q(\bias_c1_V_read_reg_945_pp0_iter2_reg_reg[7]_srl2_n_0 ));
  (* srl_bus_name = "U0/\bias_c1_V_read_reg_945_pp0_iter2_reg_reg " *) 
  (* srl_name = "U0/\bias_c1_V_read_reg_945_pp0_iter2_reg_reg[8]_srl2 " *) 
  SRL16E \bias_c1_V_read_reg_945_pp0_iter2_reg_reg[8]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(ap_block_pp0_stage0_11001),
        .CLK(ap_clk),
        .D(bias_c1_V_0_data_reg[8]),
        .Q(\bias_c1_V_read_reg_945_pp0_iter2_reg_reg[8]_srl2_n_0 ));
  (* srl_bus_name = "U0/\bias_c1_V_read_reg_945_pp0_iter2_reg_reg " *) 
  (* srl_name = "U0/\bias_c1_V_read_reg_945_pp0_iter2_reg_reg[9]_srl2 " *) 
  SRL16E \bias_c1_V_read_reg_945_pp0_iter2_reg_reg[9]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(ap_block_pp0_stage0_11001),
        .CLK(ap_clk),
        .D(bias_c1_V_0_data_reg[9]),
        .Q(\bias_c1_V_read_reg_945_pp0_iter2_reg_reg[9]_srl2_n_0 ));
  FDRE \bias_c1_V_read_reg_945_pp0_iter3_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_11001),
        .D(\bias_c1_V_read_reg_945_pp0_iter2_reg_reg[0]_srl2_n_0 ),
        .Q(\bias_c1_V_read_reg_945_pp0_iter3_reg_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \bias_c1_V_read_reg_945_pp0_iter3_reg_reg[1] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_11001),
        .D(\bias_c1_V_read_reg_945_pp0_iter2_reg_reg[1]_srl2_n_0 ),
        .Q(\bias_c1_V_read_reg_945_pp0_iter3_reg_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \bias_c1_V_read_reg_945_pp0_iter3_reg_reg[2] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_11001),
        .D(\bias_c1_V_read_reg_945_pp0_iter2_reg_reg[2]_srl2_n_0 ),
        .Q(\bias_c1_V_read_reg_945_pp0_iter3_reg_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \bias_c1_V_read_reg_945_pp0_iter3_reg_reg[3] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_11001),
        .D(\bias_c1_V_read_reg_945_pp0_iter2_reg_reg[3]_srl2_n_0 ),
        .Q(\bias_c1_V_read_reg_945_pp0_iter3_reg_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \bias_c1_V_read_reg_945_pp0_iter3_reg_reg[4] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_11001),
        .D(\bias_c1_V_read_reg_945_pp0_iter2_reg_reg[4]_srl2_n_0 ),
        .Q(\bias_c1_V_read_reg_945_pp0_iter3_reg_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \bias_c1_V_read_reg_945_pp0_iter3_reg_reg[5] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_11001),
        .D(\bias_c1_V_read_reg_945_pp0_iter2_reg_reg[5]_srl2_n_0 ),
        .Q(\bias_c1_V_read_reg_945_pp0_iter3_reg_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \bias_c1_V_read_reg_945_pp0_iter3_reg_reg[6] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_11001),
        .D(\bias_c1_V_read_reg_945_pp0_iter2_reg_reg[6]_srl2_n_0 ),
        .Q(\bias_c1_V_read_reg_945_pp0_iter3_reg_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \bias_c1_V_read_reg_945_pp0_iter3_reg_reg[7] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_11001),
        .D(\bias_c1_V_read_reg_945_pp0_iter2_reg_reg[7]_srl2_n_0 ),
        .Q(\bias_c1_V_read_reg_945_pp0_iter3_reg_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \bias_c1_V_read_reg_945_pp0_iter3_reg_reg[8] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_11001),
        .D(\bias_c1_V_read_reg_945_pp0_iter2_reg_reg[8]_srl2_n_0 ),
        .Q(\bias_c1_V_read_reg_945_pp0_iter3_reg_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \bias_c1_V_read_reg_945_pp0_iter3_reg_reg[9] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_11001),
        .D(\bias_c1_V_read_reg_945_pp0_iter2_reg_reg[9]_srl2_n_0 ),
        .Q(RESIZE0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bias_c2_V_0_data_reg_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(bias_c2_V[0]),
        .Q(bias_c2_V_0_data_reg[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bias_c2_V_0_data_reg_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(bias_c2_V[1]),
        .Q(bias_c2_V_0_data_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bias_c2_V_0_data_reg_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(bias_c2_V[2]),
        .Q(bias_c2_V_0_data_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bias_c2_V_0_data_reg_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(bias_c2_V[3]),
        .Q(bias_c2_V_0_data_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bias_c2_V_0_data_reg_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(bias_c2_V[4]),
        .Q(bias_c2_V_0_data_reg[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bias_c2_V_0_data_reg_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(bias_c2_V[5]),
        .Q(bias_c2_V_0_data_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bias_c2_V_0_data_reg_reg[6] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(bias_c2_V[6]),
        .Q(bias_c2_V_0_data_reg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bias_c2_V_0_data_reg_reg[7] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(bias_c2_V[7]),
        .Q(bias_c2_V_0_data_reg[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bias_c2_V_0_data_reg_reg[8] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(bias_c2_V[8]),
        .Q(bias_c2_V_0_data_reg[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bias_c2_V_0_data_reg_reg[9] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(bias_c2_V[9]),
        .Q(bias_c2_V_0_data_reg[9]),
        .R(1'b0));
  (* srl_bus_name = "U0/\bias_c2_V_read_reg_940_pp0_iter2_reg_reg " *) 
  (* srl_name = "U0/\bias_c2_V_read_reg_940_pp0_iter2_reg_reg[0]_srl2 " *) 
  SRL16E \bias_c2_V_read_reg_940_pp0_iter2_reg_reg[0]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(ap_block_pp0_stage0_11001),
        .CLK(ap_clk),
        .D(bias_c2_V_0_data_reg[0]),
        .Q(\bias_c2_V_read_reg_940_pp0_iter2_reg_reg[0]_srl2_n_0 ));
  (* srl_bus_name = "U0/\bias_c2_V_read_reg_940_pp0_iter2_reg_reg " *) 
  (* srl_name = "U0/\bias_c2_V_read_reg_940_pp0_iter2_reg_reg[1]_srl2 " *) 
  SRL16E \bias_c2_V_read_reg_940_pp0_iter2_reg_reg[1]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(ap_block_pp0_stage0_11001),
        .CLK(ap_clk),
        .D(bias_c2_V_0_data_reg[1]),
        .Q(\bias_c2_V_read_reg_940_pp0_iter2_reg_reg[1]_srl2_n_0 ));
  (* srl_bus_name = "U0/\bias_c2_V_read_reg_940_pp0_iter2_reg_reg " *) 
  (* srl_name = "U0/\bias_c2_V_read_reg_940_pp0_iter2_reg_reg[2]_srl2 " *) 
  SRL16E \bias_c2_V_read_reg_940_pp0_iter2_reg_reg[2]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(ap_block_pp0_stage0_11001),
        .CLK(ap_clk),
        .D(bias_c2_V_0_data_reg[2]),
        .Q(\bias_c2_V_read_reg_940_pp0_iter2_reg_reg[2]_srl2_n_0 ));
  (* srl_bus_name = "U0/\bias_c2_V_read_reg_940_pp0_iter2_reg_reg " *) 
  (* srl_name = "U0/\bias_c2_V_read_reg_940_pp0_iter2_reg_reg[3]_srl2 " *) 
  SRL16E \bias_c2_V_read_reg_940_pp0_iter2_reg_reg[3]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(ap_block_pp0_stage0_11001),
        .CLK(ap_clk),
        .D(bias_c2_V_0_data_reg[3]),
        .Q(\bias_c2_V_read_reg_940_pp0_iter2_reg_reg[3]_srl2_n_0 ));
  (* srl_bus_name = "U0/\bias_c2_V_read_reg_940_pp0_iter2_reg_reg " *) 
  (* srl_name = "U0/\bias_c2_V_read_reg_940_pp0_iter2_reg_reg[4]_srl2 " *) 
  SRL16E \bias_c2_V_read_reg_940_pp0_iter2_reg_reg[4]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(ap_block_pp0_stage0_11001),
        .CLK(ap_clk),
        .D(bias_c2_V_0_data_reg[4]),
        .Q(\bias_c2_V_read_reg_940_pp0_iter2_reg_reg[4]_srl2_n_0 ));
  (* srl_bus_name = "U0/\bias_c2_V_read_reg_940_pp0_iter2_reg_reg " *) 
  (* srl_name = "U0/\bias_c2_V_read_reg_940_pp0_iter2_reg_reg[5]_srl2 " *) 
  SRL16E \bias_c2_V_read_reg_940_pp0_iter2_reg_reg[5]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(ap_block_pp0_stage0_11001),
        .CLK(ap_clk),
        .D(bias_c2_V_0_data_reg[5]),
        .Q(\bias_c2_V_read_reg_940_pp0_iter2_reg_reg[5]_srl2_n_0 ));
  (* srl_bus_name = "U0/\bias_c2_V_read_reg_940_pp0_iter2_reg_reg " *) 
  (* srl_name = "U0/\bias_c2_V_read_reg_940_pp0_iter2_reg_reg[6]_srl2 " *) 
  SRL16E \bias_c2_V_read_reg_940_pp0_iter2_reg_reg[6]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(ap_block_pp0_stage0_11001),
        .CLK(ap_clk),
        .D(bias_c2_V_0_data_reg[6]),
        .Q(\bias_c2_V_read_reg_940_pp0_iter2_reg_reg[6]_srl2_n_0 ));
  (* srl_bus_name = "U0/\bias_c2_V_read_reg_940_pp0_iter2_reg_reg " *) 
  (* srl_name = "U0/\bias_c2_V_read_reg_940_pp0_iter2_reg_reg[7]_srl2 " *) 
  SRL16E \bias_c2_V_read_reg_940_pp0_iter2_reg_reg[7]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(ap_block_pp0_stage0_11001),
        .CLK(ap_clk),
        .D(bias_c2_V_0_data_reg[7]),
        .Q(\bias_c2_V_read_reg_940_pp0_iter2_reg_reg[7]_srl2_n_0 ));
  (* srl_bus_name = "U0/\bias_c2_V_read_reg_940_pp0_iter2_reg_reg " *) 
  (* srl_name = "U0/\bias_c2_V_read_reg_940_pp0_iter2_reg_reg[8]_srl2 " *) 
  SRL16E \bias_c2_V_read_reg_940_pp0_iter2_reg_reg[8]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(ap_block_pp0_stage0_11001),
        .CLK(ap_clk),
        .D(bias_c2_V_0_data_reg[8]),
        .Q(\bias_c2_V_read_reg_940_pp0_iter2_reg_reg[8]_srl2_n_0 ));
  (* srl_bus_name = "U0/\bias_c2_V_read_reg_940_pp0_iter2_reg_reg " *) 
  (* srl_name = "U0/\bias_c2_V_read_reg_940_pp0_iter2_reg_reg[9]_srl2 " *) 
  SRL16E \bias_c2_V_read_reg_940_pp0_iter2_reg_reg[9]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(ap_block_pp0_stage0_11001),
        .CLK(ap_clk),
        .D(bias_c2_V_0_data_reg[9]),
        .Q(\bias_c2_V_read_reg_940_pp0_iter2_reg_reg[9]_srl2_n_0 ));
  FDRE \bias_c2_V_read_reg_940_pp0_iter3_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_11001),
        .D(\bias_c2_V_read_reg_940_pp0_iter2_reg_reg[0]_srl2_n_0 ),
        .Q(bias_c2_V_read_reg_940_pp0_iter3_reg[0]),
        .R(1'b0));
  FDRE \bias_c2_V_read_reg_940_pp0_iter3_reg_reg[1] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_11001),
        .D(\bias_c2_V_read_reg_940_pp0_iter2_reg_reg[1]_srl2_n_0 ),
        .Q(bias_c2_V_read_reg_940_pp0_iter3_reg[1]),
        .R(1'b0));
  FDRE \bias_c2_V_read_reg_940_pp0_iter3_reg_reg[2] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_11001),
        .D(\bias_c2_V_read_reg_940_pp0_iter2_reg_reg[2]_srl2_n_0 ),
        .Q(bias_c2_V_read_reg_940_pp0_iter3_reg[2]),
        .R(1'b0));
  FDRE \bias_c2_V_read_reg_940_pp0_iter3_reg_reg[3] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_11001),
        .D(\bias_c2_V_read_reg_940_pp0_iter2_reg_reg[3]_srl2_n_0 ),
        .Q(bias_c2_V_read_reg_940_pp0_iter3_reg[3]),
        .R(1'b0));
  FDRE \bias_c2_V_read_reg_940_pp0_iter3_reg_reg[4] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_11001),
        .D(\bias_c2_V_read_reg_940_pp0_iter2_reg_reg[4]_srl2_n_0 ),
        .Q(bias_c2_V_read_reg_940_pp0_iter3_reg[4]),
        .R(1'b0));
  FDRE \bias_c2_V_read_reg_940_pp0_iter3_reg_reg[5] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_11001),
        .D(\bias_c2_V_read_reg_940_pp0_iter2_reg_reg[5]_srl2_n_0 ),
        .Q(bias_c2_V_read_reg_940_pp0_iter3_reg[5]),
        .R(1'b0));
  FDRE \bias_c2_V_read_reg_940_pp0_iter3_reg_reg[6] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_11001),
        .D(\bias_c2_V_read_reg_940_pp0_iter2_reg_reg[6]_srl2_n_0 ),
        .Q(bias_c2_V_read_reg_940_pp0_iter3_reg[6]),
        .R(1'b0));
  FDRE \bias_c2_V_read_reg_940_pp0_iter3_reg_reg[7] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_11001),
        .D(\bias_c2_V_read_reg_940_pp0_iter2_reg_reg[7]_srl2_n_0 ),
        .Q(bias_c2_V_read_reg_940_pp0_iter3_reg[7]),
        .R(1'b0));
  FDRE \bias_c2_V_read_reg_940_pp0_iter3_reg_reg[8] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_11001),
        .D(\bias_c2_V_read_reg_940_pp0_iter2_reg_reg[8]_srl2_n_0 ),
        .Q(bias_c2_V_read_reg_940_pp0_iter3_reg[8]),
        .R(1'b0));
  FDRE \bias_c2_V_read_reg_940_pp0_iter3_reg_reg[9] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_11001),
        .D(\bias_c2_V_read_reg_940_pp0_iter2_reg_reg[9]_srl2_n_0 ),
        .Q(bias_c2_V_read_reg_940_pp0_iter3_reg[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bias_c3_V_0_data_reg_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(bias_c3_V[0]),
        .Q(bias_c3_V_0_data_reg[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bias_c3_V_0_data_reg_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(bias_c3_V[1]),
        .Q(bias_c3_V_0_data_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bias_c3_V_0_data_reg_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(bias_c3_V[2]),
        .Q(bias_c3_V_0_data_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bias_c3_V_0_data_reg_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(bias_c3_V[3]),
        .Q(bias_c3_V_0_data_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bias_c3_V_0_data_reg_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(bias_c3_V[4]),
        .Q(bias_c3_V_0_data_reg[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bias_c3_V_0_data_reg_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(bias_c3_V[5]),
        .Q(bias_c3_V_0_data_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bias_c3_V_0_data_reg_reg[6] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(bias_c3_V[6]),
        .Q(bias_c3_V_0_data_reg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bias_c3_V_0_data_reg_reg[7] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(bias_c3_V[7]),
        .Q(bias_c3_V_0_data_reg[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bias_c3_V_0_data_reg_reg[8] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(bias_c3_V[8]),
        .Q(bias_c3_V_0_data_reg[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bias_c3_V_0_data_reg_reg[9] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(bias_c3_V[9]),
        .Q(bias_c3_V_0_data_reg[9]),
        .R(1'b0));
  (* srl_bus_name = "U0/\bias_c3_V_read_reg_935_pp0_iter2_reg_reg " *) 
  (* srl_name = "U0/\bias_c3_V_read_reg_935_pp0_iter2_reg_reg[0]_srl2 " *) 
  SRL16E \bias_c3_V_read_reg_935_pp0_iter2_reg_reg[0]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(ap_block_pp0_stage0_11001),
        .CLK(ap_clk),
        .D(bias_c3_V_0_data_reg[0]),
        .Q(\bias_c3_V_read_reg_935_pp0_iter2_reg_reg[0]_srl2_n_0 ));
  (* srl_bus_name = "U0/\bias_c3_V_read_reg_935_pp0_iter2_reg_reg " *) 
  (* srl_name = "U0/\bias_c3_V_read_reg_935_pp0_iter2_reg_reg[1]_srl2 " *) 
  SRL16E \bias_c3_V_read_reg_935_pp0_iter2_reg_reg[1]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(ap_block_pp0_stage0_11001),
        .CLK(ap_clk),
        .D(bias_c3_V_0_data_reg[1]),
        .Q(\bias_c3_V_read_reg_935_pp0_iter2_reg_reg[1]_srl2_n_0 ));
  (* srl_bus_name = "U0/\bias_c3_V_read_reg_935_pp0_iter2_reg_reg " *) 
  (* srl_name = "U0/\bias_c3_V_read_reg_935_pp0_iter2_reg_reg[2]_srl2 " *) 
  SRL16E \bias_c3_V_read_reg_935_pp0_iter2_reg_reg[2]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(ap_block_pp0_stage0_11001),
        .CLK(ap_clk),
        .D(bias_c3_V_0_data_reg[2]),
        .Q(\bias_c3_V_read_reg_935_pp0_iter2_reg_reg[2]_srl2_n_0 ));
  (* srl_bus_name = "U0/\bias_c3_V_read_reg_935_pp0_iter2_reg_reg " *) 
  (* srl_name = "U0/\bias_c3_V_read_reg_935_pp0_iter2_reg_reg[3]_srl2 " *) 
  SRL16E \bias_c3_V_read_reg_935_pp0_iter2_reg_reg[3]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(ap_block_pp0_stage0_11001),
        .CLK(ap_clk),
        .D(bias_c3_V_0_data_reg[3]),
        .Q(\bias_c3_V_read_reg_935_pp0_iter2_reg_reg[3]_srl2_n_0 ));
  (* srl_bus_name = "U0/\bias_c3_V_read_reg_935_pp0_iter2_reg_reg " *) 
  (* srl_name = "U0/\bias_c3_V_read_reg_935_pp0_iter2_reg_reg[4]_srl2 " *) 
  SRL16E \bias_c3_V_read_reg_935_pp0_iter2_reg_reg[4]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(ap_block_pp0_stage0_11001),
        .CLK(ap_clk),
        .D(bias_c3_V_0_data_reg[4]),
        .Q(\bias_c3_V_read_reg_935_pp0_iter2_reg_reg[4]_srl2_n_0 ));
  (* srl_bus_name = "U0/\bias_c3_V_read_reg_935_pp0_iter2_reg_reg " *) 
  (* srl_name = "U0/\bias_c3_V_read_reg_935_pp0_iter2_reg_reg[5]_srl2 " *) 
  SRL16E \bias_c3_V_read_reg_935_pp0_iter2_reg_reg[5]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(ap_block_pp0_stage0_11001),
        .CLK(ap_clk),
        .D(bias_c3_V_0_data_reg[5]),
        .Q(\bias_c3_V_read_reg_935_pp0_iter2_reg_reg[5]_srl2_n_0 ));
  (* srl_bus_name = "U0/\bias_c3_V_read_reg_935_pp0_iter2_reg_reg " *) 
  (* srl_name = "U0/\bias_c3_V_read_reg_935_pp0_iter2_reg_reg[6]_srl2 " *) 
  SRL16E \bias_c3_V_read_reg_935_pp0_iter2_reg_reg[6]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(ap_block_pp0_stage0_11001),
        .CLK(ap_clk),
        .D(bias_c3_V_0_data_reg[6]),
        .Q(\bias_c3_V_read_reg_935_pp0_iter2_reg_reg[6]_srl2_n_0 ));
  (* srl_bus_name = "U0/\bias_c3_V_read_reg_935_pp0_iter2_reg_reg " *) 
  (* srl_name = "U0/\bias_c3_V_read_reg_935_pp0_iter2_reg_reg[7]_srl2 " *) 
  SRL16E \bias_c3_V_read_reg_935_pp0_iter2_reg_reg[7]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(ap_block_pp0_stage0_11001),
        .CLK(ap_clk),
        .D(bias_c3_V_0_data_reg[7]),
        .Q(\bias_c3_V_read_reg_935_pp0_iter2_reg_reg[7]_srl2_n_0 ));
  (* srl_bus_name = "U0/\bias_c3_V_read_reg_935_pp0_iter2_reg_reg " *) 
  (* srl_name = "U0/\bias_c3_V_read_reg_935_pp0_iter2_reg_reg[8]_srl2 " *) 
  SRL16E \bias_c3_V_read_reg_935_pp0_iter2_reg_reg[8]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(ap_block_pp0_stage0_11001),
        .CLK(ap_clk),
        .D(bias_c3_V_0_data_reg[8]),
        .Q(\bias_c3_V_read_reg_935_pp0_iter2_reg_reg[8]_srl2_n_0 ));
  (* srl_bus_name = "U0/\bias_c3_V_read_reg_935_pp0_iter2_reg_reg " *) 
  (* srl_name = "U0/\bias_c3_V_read_reg_935_pp0_iter2_reg_reg[9]_srl2 " *) 
  SRL16E \bias_c3_V_read_reg_935_pp0_iter2_reg_reg[9]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(ap_block_pp0_stage0_11001),
        .CLK(ap_clk),
        .D(bias_c3_V_0_data_reg[9]),
        .Q(\bias_c3_V_read_reg_935_pp0_iter2_reg_reg[9]_srl2_n_0 ));
  FDRE \bias_c3_V_read_reg_935_pp0_iter3_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_11001),
        .D(\bias_c3_V_read_reg_935_pp0_iter2_reg_reg[0]_srl2_n_0 ),
        .Q(bias_c3_V_read_reg_935_pp0_iter3_reg[0]),
        .R(1'b0));
  FDRE \bias_c3_V_read_reg_935_pp0_iter3_reg_reg[1] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_11001),
        .D(\bias_c3_V_read_reg_935_pp0_iter2_reg_reg[1]_srl2_n_0 ),
        .Q(bias_c3_V_read_reg_935_pp0_iter3_reg[1]),
        .R(1'b0));
  FDRE \bias_c3_V_read_reg_935_pp0_iter3_reg_reg[2] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_11001),
        .D(\bias_c3_V_read_reg_935_pp0_iter2_reg_reg[2]_srl2_n_0 ),
        .Q(bias_c3_V_read_reg_935_pp0_iter3_reg[2]),
        .R(1'b0));
  FDRE \bias_c3_V_read_reg_935_pp0_iter3_reg_reg[3] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_11001),
        .D(\bias_c3_V_read_reg_935_pp0_iter2_reg_reg[3]_srl2_n_0 ),
        .Q(bias_c3_V_read_reg_935_pp0_iter3_reg[3]),
        .R(1'b0));
  FDRE \bias_c3_V_read_reg_935_pp0_iter3_reg_reg[4] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_11001),
        .D(\bias_c3_V_read_reg_935_pp0_iter2_reg_reg[4]_srl2_n_0 ),
        .Q(bias_c3_V_read_reg_935_pp0_iter3_reg[4]),
        .R(1'b0));
  FDRE \bias_c3_V_read_reg_935_pp0_iter3_reg_reg[5] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_11001),
        .D(\bias_c3_V_read_reg_935_pp0_iter2_reg_reg[5]_srl2_n_0 ),
        .Q(bias_c3_V_read_reg_935_pp0_iter3_reg[5]),
        .R(1'b0));
  FDRE \bias_c3_V_read_reg_935_pp0_iter3_reg_reg[6] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_11001),
        .D(\bias_c3_V_read_reg_935_pp0_iter2_reg_reg[6]_srl2_n_0 ),
        .Q(bias_c3_V_read_reg_935_pp0_iter3_reg[6]),
        .R(1'b0));
  FDRE \bias_c3_V_read_reg_935_pp0_iter3_reg_reg[7] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_11001),
        .D(\bias_c3_V_read_reg_935_pp0_iter2_reg_reg[7]_srl2_n_0 ),
        .Q(bias_c3_V_read_reg_935_pp0_iter3_reg[7]),
        .R(1'b0));
  FDRE \bias_c3_V_read_reg_935_pp0_iter3_reg_reg[8] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_11001),
        .D(\bias_c3_V_read_reg_935_pp0_iter2_reg_reg[8]_srl2_n_0 ),
        .Q(bias_c3_V_read_reg_935_pp0_iter3_reg[8]),
        .R(1'b0));
  FDRE \bias_c3_V_read_reg_935_pp0_iter3_reg_reg[9] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_11001),
        .D(\bias_c3_V_read_reg_935_pp0_iter2_reg_reg[9]_srl2_n_0 ),
        .Q(bias_c3_V_read_reg_935_pp0_iter3_reg[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \c1_c3_V_0_data_reg_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(c1_c3_V[0]),
        .Q(c1_c3_V_0_data_reg[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \c1_c3_V_0_data_reg_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(c1_c3_V[1]),
        .Q(c1_c3_V_0_data_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \c1_c3_V_0_data_reg_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(c1_c3_V[2]),
        .Q(c1_c3_V_0_data_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \c1_c3_V_0_data_reg_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(c1_c3_V[3]),
        .Q(c1_c3_V_0_data_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \c1_c3_V_0_data_reg_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(c1_c3_V[4]),
        .Q(c1_c3_V_0_data_reg[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \c1_c3_V_0_data_reg_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(c1_c3_V[5]),
        .Q(c1_c3_V_0_data_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \c1_c3_V_0_data_reg_reg[6] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(c1_c3_V[6]),
        .Q(c1_c3_V_0_data_reg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \c1_c3_V_0_data_reg_reg[7] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(c1_c3_V[7]),
        .Q(c1_c3_V_0_data_reg[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \c1_c3_V_0_data_reg_reg[8] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(c1_c3_V[8]),
        .Q(c1_c3_V_0_data_reg[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \c1_c3_V_0_data_reg_reg[9] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(c1_c3_V[9]),
        .Q(c1_c3_V_0_data_reg[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \c2_c3_V_0_data_reg_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(c2_c3_V[0]),
        .Q(c2_c3_V_0_data_reg[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \c2_c3_V_0_data_reg_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(c2_c3_V[1]),
        .Q(c2_c3_V_0_data_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \c2_c3_V_0_data_reg_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(c2_c3_V[2]),
        .Q(c2_c3_V_0_data_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \c2_c3_V_0_data_reg_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(c2_c3_V[3]),
        .Q(c2_c3_V_0_data_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \c2_c3_V_0_data_reg_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(c2_c3_V[4]),
        .Q(c2_c3_V_0_data_reg[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \c2_c3_V_0_data_reg_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(c2_c3_V[5]),
        .Q(c2_c3_V_0_data_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \c2_c3_V_0_data_reg_reg[6] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(c2_c3_V[6]),
        .Q(c2_c3_V_0_data_reg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \c2_c3_V_0_data_reg_reg[7] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(c2_c3_V[7]),
        .Q(c2_c3_V_0_data_reg[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \c2_c3_V_0_data_reg_reg[8] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(c2_c3_V[8]),
        .Q(c2_c3_V_0_data_reg[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \c2_c3_V_0_data_reg_reg[9] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(c2_c3_V[9]),
        .Q(c2_c3_V_0_data_reg[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \c3_c3_V_0_data_reg_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(c3_c3_V[0]),
        .Q(c3_c3_V_0_data_reg[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \c3_c3_V_0_data_reg_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(c3_c3_V[1]),
        .Q(c3_c3_V_0_data_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \c3_c3_V_0_data_reg_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(c3_c3_V[2]),
        .Q(c3_c3_V_0_data_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \c3_c3_V_0_data_reg_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(c3_c3_V[3]),
        .Q(c3_c3_V_0_data_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \c3_c3_V_0_data_reg_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(c3_c3_V[4]),
        .Q(c3_c3_V_0_data_reg[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \c3_c3_V_0_data_reg_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(c3_c3_V[5]),
        .Q(c3_c3_V_0_data_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \c3_c3_V_0_data_reg_reg[6] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(c3_c3_V[6]),
        .Q(c3_c3_V_0_data_reg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \c3_c3_V_0_data_reg_reg[7] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(c3_c3_V[7]),
        .Q(c3_c3_V_0_data_reg[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \c3_c3_V_0_data_reg_reg[8] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(c3_c3_V[8]),
        .Q(c3_c3_V_0_data_reg[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \c3_c3_V_0_data_reg_reg[9] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(c3_c3_V[9]),
        .Q(c3_c3_V_0_data_reg[9]),
        .R(1'b0));
  base_color_convert_1_color_convert_AXILiteS_s_axi color_convert_AXILiteS_s_axi_U
       (.A(or10_out),
        .ARESET(ARESET),
        .E(int_c1_c1_V0),
        .\FSM_onehot_rstate_reg[1]_0 (s_axi_AXILiteS_ARREADY),
        .\FSM_onehot_wstate_reg[1]_0 (s_axi_AXILiteS_AWREADY),
        .\FSM_onehot_wstate_reg[2]_0 (s_axi_AXILiteS_WREADY),
        .Q(c1_c2_V),
        .ap_clk(ap_clk),
        .control(control),
        .\int_bias_c1_V_reg[9]_0 (bias_c1_V),
        .\int_bias_c2_V_reg[9]_0 (bias_c2_V),
        .\int_bias_c3_V_reg[9]_0 (bias_c3_V),
        .\int_c1_c3_V_reg[9]_0 (c1_c3_V),
        .\int_c2_c1_V_reg[9]_0 (c2_c1_V),
        .\int_c2_c3_V_reg[9]_0 (c2_c3_V),
        .\int_c3_c1_V_reg[9]_0 (c3_c1_V),
        .\int_c3_c3_V_reg[9]_0 (c3_c3_V),
        .s_axi_AXILiteS_ARADDR(s_axi_AXILiteS_ARADDR),
        .s_axi_AXILiteS_ARVALID(s_axi_AXILiteS_ARVALID),
        .s_axi_AXILiteS_AWADDR(s_axi_AXILiteS_AWADDR),
        .s_axi_AXILiteS_AWVALID(s_axi_AXILiteS_AWVALID),
        .s_axi_AXILiteS_BREADY(s_axi_AXILiteS_BREADY),
        .s_axi_AXILiteS_BVALID(s_axi_AXILiteS_BVALID),
        .s_axi_AXILiteS_RDATA(\^s_axi_AXILiteS_RDATA ),
        .s_axi_AXILiteS_RREADY(s_axi_AXILiteS_RREADY),
        .s_axi_AXILiteS_RVALID(s_axi_AXILiteS_RVALID),
        .s_axi_AXILiteS_WDATA(s_axi_AXILiteS_WDATA[9:0]),
        .\s_axi_AXILiteS_WDATA[9] (or6_out),
        .\s_axi_AXILiteS_WDATA[9]_0 (or3_out),
        .s_axi_AXILiteS_WSTRB(s_axi_AXILiteS_WSTRB[1:0]),
        .s_axi_AXILiteS_WVALID(s_axi_AXILiteS_WVALID),
        .\waddr_reg[4]_0 (int_c2_c2_V0),
        .\waddr_reg[4]_1 (int_c3_c2_V0));
  base_color_convert_1_color_convert_macbkb color_convert_macbkb_U1
       (.B({r_V_16_reg_996_reg__0_n_0,r_V_16_reg_996_reg__1_n_0,r_V_16_reg_996_reg__2_n_0,r_V_16_reg_996_reg__3_n_0,r_V_16_reg_996_reg__4_n_0,r_V_16_reg_996_reg__5_n_0,r_V_16_reg_996_reg__6_n_0,r_V_16_reg_996_reg__7_n_0}),
        .P(ret_V_6_reg_1006),
        .Q(c1_c2_V),
        .ap_block_pp0_stage0_11001(ap_block_pp0_stage0_11001),
        .ap_clk(ap_clk),
        .p(regslice_both_stream_out_24_data_U_n_30),
        .p_0({r_V_12_reg_986_reg_n_88,r_V_12_reg_986_reg_n_89,r_V_12_reg_986_reg_n_90,r_V_12_reg_986_reg_n_91,r_V_12_reg_986_reg_n_92,r_V_12_reg_986_reg_n_93,r_V_12_reg_986_reg_n_94,r_V_12_reg_986_reg_n_95,r_V_12_reg_986_reg_n_96,r_V_12_reg_986_reg_n_97,r_V_12_reg_986_reg_n_98,r_V_12_reg_986_reg_n_99,r_V_12_reg_986_reg_n_100,r_V_12_reg_986_reg_n_101,r_V_12_reg_986_reg_n_102,r_V_12_reg_986_reg_n_103,r_V_12_reg_986_reg_n_104,r_V_12_reg_986_reg_n_105}));
  base_color_convert_1_color_convert_macbkb_0 color_convert_macbkb_U2
       (.B({r_V_12_reg_986_reg__0_n_0,r_V_12_reg_986_reg__1_n_0,r_V_12_reg_986_reg__2_n_0,r_V_12_reg_986_reg__3_n_0,r_V_12_reg_986_reg__4_n_0,r_V_12_reg_986_reg__5_n_0,r_V_12_reg_986_reg__6_n_0,r_V_12_reg_986_reg__7_n_0}),
        .P(ret_V_reg_1011),
        .ap_block_pp0_stage0_11001(ap_block_pp0_stage0_11001),
        .ap_clk(ap_clk),
        .p(regslice_both_stream_out_24_data_U_n_30),
        .p_0(c2_c1_V),
        .p_1({r_V_16_reg_996_reg_n_88,r_V_16_reg_996_reg_n_89,r_V_16_reg_996_reg_n_90,r_V_16_reg_996_reg_n_91,r_V_16_reg_996_reg_n_92,r_V_16_reg_996_reg_n_93,r_V_16_reg_996_reg_n_94,r_V_16_reg_996_reg_n_95,r_V_16_reg_996_reg_n_96,r_V_16_reg_996_reg_n_97,r_V_16_reg_996_reg_n_98,r_V_16_reg_996_reg_n_99,r_V_16_reg_996_reg_n_100,r_V_16_reg_996_reg_n_101,r_V_16_reg_996_reg_n_102,r_V_16_reg_996_reg_n_103,r_V_16_reg_996_reg_n_104,r_V_16_reg_996_reg_n_105}));
  base_color_convert_1_color_convert_macbkb_1 color_convert_macbkb_U3
       (.B({r_V_12_reg_986_reg__0_n_0,r_V_12_reg_986_reg__1_n_0,r_V_12_reg_986_reg__2_n_0,r_V_12_reg_986_reg__3_n_0,r_V_12_reg_986_reg__4_n_0,r_V_12_reg_986_reg__5_n_0,r_V_12_reg_986_reg__6_n_0,r_V_12_reg_986_reg__7_n_0}),
        .P(ret_V_11_reg_1016),
        .ap_block_pp0_stage0_11001(ap_block_pp0_stage0_11001),
        .ap_clk(ap_clk),
        .p(regslice_both_stream_out_24_data_U_n_30),
        .p_0(c3_c1_V),
        .p_1({r_V_19_reg_1001_reg_n_88,r_V_19_reg_1001_reg_n_89,r_V_19_reg_1001_reg_n_90,r_V_19_reg_1001_reg_n_91,r_V_19_reg_1001_reg_n_92,r_V_19_reg_1001_reg_n_93,r_V_19_reg_1001_reg_n_94,r_V_19_reg_1001_reg_n_95,r_V_19_reg_1001_reg_n_96,r_V_19_reg_1001_reg_n_97,r_V_19_reg_1001_reg_n_98,r_V_19_reg_1001_reg_n_99,r_V_19_reg_1001_reg_n_100,r_V_19_reg_1001_reg_n_101,r_V_19_reg_1001_reg_n_102,r_V_19_reg_1001_reg_n_103,r_V_19_reg_1001_reg_n_104,r_V_19_reg_1001_reg_n_105}));
  base_color_convert_1_color_convert_maccud color_convert_maccud_U4
       (.D({p_Val2_7_fu_368_p2,p_Val2_7_fu_368_p2__0}),
        .DI({\p_Val2_7_reg_1042[7]_i_9_n_0 ,RESIZE0}),
        .O(p_Result_s_fu_330_p3),
        .P(ret_V_6_reg_1006),
        .Q(p_Repl2_2_reg_930),
        .and_ln781_fu_424_p2(and_ln781_fu_424_p2),
        .ap_block_pp0_stage0_11001(ap_block_pp0_stage0_11001),
        .ap_clk(ap_clk),
        .or_ln785_fu_430_p2(or_ln785_fu_430_p2),
        .p(regslice_both_stream_out_24_data_U_n_31),
        .p_0(c1_c3_V_0_data_reg),
        .\p_Val2_7_reg_1042_reg[4]_i_2 (\bias_c1_V_read_reg_945_pp0_iter3_reg_reg_n_0_[0] ),
        .\p_Val2_7_reg_1042_reg[4]_i_2_0 (\bias_c1_V_read_reg_945_pp0_iter3_reg_reg_n_0_[1] ),
        .\p_Val2_7_reg_1042_reg[4]_i_2_1 (\bias_c1_V_read_reg_945_pp0_iter3_reg_reg_n_0_[2] ),
        .\p_Val2_7_reg_1042_reg[7]_i_2 (\bias_c1_V_read_reg_945_pp0_iter3_reg_reg_n_0_[3] ),
        .\p_Val2_7_reg_1042_reg[7]_i_2_0 (\bias_c1_V_read_reg_945_pp0_iter3_reg_reg_n_0_[4] ),
        .\p_Val2_7_reg_1042_reg[7]_i_2_1 (\bias_c1_V_read_reg_945_pp0_iter3_reg_reg_n_0_[5] ),
        .\p_Val2_7_reg_1042_reg[7]_i_2_2 (\bias_c1_V_read_reg_945_pp0_iter3_reg_reg_n_0_[6] ),
        .\p_Val2_7_reg_1042_reg[7]_i_4 (\bias_c1_V_read_reg_945_pp0_iter3_reg_reg_n_0_[7] ),
        .\p_Val2_7_reg_1042_reg[7]_i_4_0 (\bias_c1_V_read_reg_945_pp0_iter3_reg_reg_n_0_[8] ));
  base_color_convert_1_color_convert_maccud_2 color_convert_maccud_U5
       (.D({p_Val2_15_fu_490_p2,p_Val2_15_fu_490_p2__0}),
        .DI({\p_Val2_15_reg_1066[7]_i_9_n_0 ,bias_c2_V_read_reg_940_pp0_iter3_reg[9]}),
        .O(p_Result_2_fu_452_p3),
        .P(ret_V_reg_1011),
        .Q(p_Repl2_2_reg_930),
        .and_ln781_1_fu_546_p2(and_ln781_1_fu_546_p2),
        .ap_block_pp0_stage0_11001(ap_block_pp0_stage0_11001),
        .ap_clk(ap_clk),
        .bias_c2_V_read_reg_940_pp0_iter3_reg(bias_c2_V_read_reg_940_pp0_iter3_reg[8:0]),
        .or_ln785_1_fu_552_p2(or_ln785_1_fu_552_p2),
        .p(regslice_both_stream_out_24_data_U_n_31),
        .p_0(c2_c3_V_0_data_reg));
  base_color_convert_1_color_convert_maccud_3 color_convert_maccud_U6
       (.D({p_Val2_23_fu_612_p2,p_Val2_23_fu_612_p2__0}),
        .DI({\p_Val2_23_reg_1090[7]_i_9_n_0 ,bias_c3_V_read_reg_935_pp0_iter3_reg[9]}),
        .O(p_Result_4_fu_574_p3),
        .P(ret_V_11_reg_1016),
        .Q(p_Repl2_2_reg_930),
        .and_ln781_2_fu_668_p2(and_ln781_2_fu_668_p2),
        .ap_block_pp0_stage0_11001(ap_block_pp0_stage0_11001),
        .ap_clk(ap_clk),
        .bias_c3_V_read_reg_935_pp0_iter3_reg(bias_c3_V_read_reg_935_pp0_iter3_reg[8:0]),
        .or_ln785_2_fu_674_p2(or_ln785_2_fu_674_p2),
        .p(regslice_both_stream_out_24_data_U_n_31),
        .p_0(c3_c3_V_0_data_reg));
  FDRE \or_ln785_1_reg_1078_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_11001),
        .D(or_ln785_1_fu_552_p2),
        .Q(or_ln785_1_reg_1078),
        .R(1'b0));
  FDRE \or_ln785_2_reg_1102_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_11001),
        .D(or_ln785_2_fu_674_p2),
        .Q(or_ln785_2_reg_1102),
        .R(1'b0));
  FDRE \or_ln785_reg_1054_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_11001),
        .D(or_ln785_fu_430_p2),
        .Q(or_ln785_reg_1054),
        .R(1'b0));
  FDRE \p_Repl2_2_reg_930_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_11001),
        .D(p_0_in__0[0]),
        .Q(p_Repl2_2_reg_930[0]),
        .R(1'b0));
  FDRE \p_Repl2_2_reg_930_reg[1] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_11001),
        .D(p_0_in__0[1]),
        .Q(p_Repl2_2_reg_930[1]),
        .R(1'b0));
  FDRE \p_Repl2_2_reg_930_reg[2] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_11001),
        .D(p_0_in__0[2]),
        .Q(p_Repl2_2_reg_930[2]),
        .R(1'b0));
  FDRE \p_Repl2_2_reg_930_reg[3] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_11001),
        .D(p_0_in__0[3]),
        .Q(p_Repl2_2_reg_930[3]),
        .R(1'b0));
  FDRE \p_Repl2_2_reg_930_reg[4] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_11001),
        .D(p_0_in__0[4]),
        .Q(p_Repl2_2_reg_930[4]),
        .R(1'b0));
  FDRE \p_Repl2_2_reg_930_reg[5] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_11001),
        .D(p_0_in__0[5]),
        .Q(p_Repl2_2_reg_930[5]),
        .R(1'b0));
  FDRE \p_Repl2_2_reg_930_reg[6] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_11001),
        .D(p_0_in__0[6]),
        .Q(p_Repl2_2_reg_930[6]),
        .R(1'b0));
  FDRE \p_Repl2_2_reg_930_reg[7] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_11001),
        .D(p_0_in__0[7]),
        .Q(p_Repl2_2_reg_930[7]),
        .R(1'b0));
  FDRE \p_Result_2_reg_1060_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_11001),
        .D(p_Result_2_fu_452_p3),
        .Q(p_Result_2_reg_1060),
        .R(1'b0));
  FDRE \p_Result_4_reg_1084_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_11001),
        .D(p_Result_4_fu_574_p3),
        .Q(p_Result_4_reg_1084),
        .R(1'b0));
  FDRE \p_Result_s_reg_1036_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_11001),
        .D(p_Result_s_fu_330_p3),
        .Q(p_Result_s_reg_1036),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \p_Val2_15_reg_1066[7]_i_9 
       (.I0(bias_c2_V_read_reg_940_pp0_iter3_reg[9]),
        .O(\p_Val2_15_reg_1066[7]_i_9_n_0 ));
  FDRE \p_Val2_15_reg_1066_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_11001),
        .D(p_Val2_15_fu_490_p2__0[0]),
        .Q(p_Val2_15_reg_1066[0]),
        .R(1'b0));
  FDRE \p_Val2_15_reg_1066_reg[1] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_11001),
        .D(p_Val2_15_fu_490_p2__0[1]),
        .Q(p_Val2_15_reg_1066[1]),
        .R(1'b0));
  FDRE \p_Val2_15_reg_1066_reg[2] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_11001),
        .D(p_Val2_15_fu_490_p2__0[2]),
        .Q(p_Val2_15_reg_1066[2]),
        .R(1'b0));
  FDRE \p_Val2_15_reg_1066_reg[3] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_11001),
        .D(p_Val2_15_fu_490_p2__0[3]),
        .Q(p_Val2_15_reg_1066[3]),
        .R(1'b0));
  FDRE \p_Val2_15_reg_1066_reg[4] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_11001),
        .D(p_Val2_15_fu_490_p2__0[4]),
        .Q(p_Val2_15_reg_1066[4]),
        .R(1'b0));
  FDRE \p_Val2_15_reg_1066_reg[5] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_11001),
        .D(p_Val2_15_fu_490_p2__0[5]),
        .Q(p_Val2_15_reg_1066[5]),
        .R(1'b0));
  FDRE \p_Val2_15_reg_1066_reg[6] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_11001),
        .D(p_Val2_15_fu_490_p2__0[6]),
        .Q(p_Val2_15_reg_1066[6]),
        .R(1'b0));
  FDRE \p_Val2_15_reg_1066_reg[7] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_11001),
        .D(p_Val2_15_fu_490_p2),
        .Q(p_Val2_15_reg_1066[7]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \p_Val2_23_reg_1090[7]_i_9 
       (.I0(bias_c3_V_read_reg_935_pp0_iter3_reg[9]),
        .O(\p_Val2_23_reg_1090[7]_i_9_n_0 ));
  FDRE \p_Val2_23_reg_1090_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_11001),
        .D(p_Val2_23_fu_612_p2__0[0]),
        .Q(p_Val2_23_reg_1090[0]),
        .R(1'b0));
  FDRE \p_Val2_23_reg_1090_reg[1] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_11001),
        .D(p_Val2_23_fu_612_p2__0[1]),
        .Q(p_Val2_23_reg_1090[1]),
        .R(1'b0));
  FDRE \p_Val2_23_reg_1090_reg[2] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_11001),
        .D(p_Val2_23_fu_612_p2__0[2]),
        .Q(p_Val2_23_reg_1090[2]),
        .R(1'b0));
  FDRE \p_Val2_23_reg_1090_reg[3] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_11001),
        .D(p_Val2_23_fu_612_p2__0[3]),
        .Q(p_Val2_23_reg_1090[3]),
        .R(1'b0));
  FDRE \p_Val2_23_reg_1090_reg[4] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_11001),
        .D(p_Val2_23_fu_612_p2__0[4]),
        .Q(p_Val2_23_reg_1090[4]),
        .R(1'b0));
  FDRE \p_Val2_23_reg_1090_reg[5] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_11001),
        .D(p_Val2_23_fu_612_p2__0[5]),
        .Q(p_Val2_23_reg_1090[5]),
        .R(1'b0));
  FDRE \p_Val2_23_reg_1090_reg[6] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_11001),
        .D(p_Val2_23_fu_612_p2__0[6]),
        .Q(p_Val2_23_reg_1090[6]),
        .R(1'b0));
  FDRE \p_Val2_23_reg_1090_reg[7] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_11001),
        .D(p_Val2_23_fu_612_p2),
        .Q(p_Val2_23_reg_1090[7]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \p_Val2_7_reg_1042[7]_i_9 
       (.I0(RESIZE0),
        .O(\p_Val2_7_reg_1042[7]_i_9_n_0 ));
  FDRE \p_Val2_7_reg_1042_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_11001),
        .D(p_Val2_7_fu_368_p2__0[0]),
        .Q(p_Val2_7_reg_1042[0]),
        .R(1'b0));
  FDRE \p_Val2_7_reg_1042_reg[1] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_11001),
        .D(p_Val2_7_fu_368_p2__0[1]),
        .Q(p_Val2_7_reg_1042[1]),
        .R(1'b0));
  FDRE \p_Val2_7_reg_1042_reg[2] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_11001),
        .D(p_Val2_7_fu_368_p2__0[2]),
        .Q(p_Val2_7_reg_1042[2]),
        .R(1'b0));
  FDRE \p_Val2_7_reg_1042_reg[3] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_11001),
        .D(p_Val2_7_fu_368_p2__0[3]),
        .Q(p_Val2_7_reg_1042[3]),
        .R(1'b0));
  FDRE \p_Val2_7_reg_1042_reg[4] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_11001),
        .D(p_Val2_7_fu_368_p2__0[4]),
        .Q(p_Val2_7_reg_1042[4]),
        .R(1'b0));
  FDRE \p_Val2_7_reg_1042_reg[5] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_11001),
        .D(p_Val2_7_fu_368_p2__0[5]),
        .Q(p_Val2_7_reg_1042[5]),
        .R(1'b0));
  FDRE \p_Val2_7_reg_1042_reg[6] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_11001),
        .D(p_Val2_7_fu_368_p2__0[6]),
        .Q(p_Val2_7_reg_1042[6]),
        .R(1'b0));
  FDRE \p_Val2_7_reg_1042_reg[7] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_11001),
        .D(p_Val2_7_fu_368_p2),
        .Q(p_Val2_7_reg_1042[7]),
        .R(1'b0));
  DSP48E1 #(
    .ACASCREG(2),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(2),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    r_V_12_reg_986_reg
       (.A({or10_out[9],or10_out[9],or10_out[9],or10_out[9],or10_out[9],or10_out[9],or10_out[9],or10_out[9],or10_out[9],or10_out[9],or10_out[9],or10_out[9],or10_out[9],or10_out[9],or10_out[9],or10_out[9],or10_out[9],or10_out[9],or10_out[9],or10_out[9],or10_out}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_r_V_12_reg_986_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,r_V_12_reg_986_reg__0_n_0,r_V_12_reg_986_reg__1_n_0,r_V_12_reg_986_reg__2_n_0,r_V_12_reg_986_reg__3_n_0,r_V_12_reg_986_reg__4_n_0,r_V_12_reg_986_reg__5_n_0,r_V_12_reg_986_reg__6_n_0,r_V_12_reg_986_reg__7_n_0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_r_V_12_reg_986_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_r_V_12_reg_986_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_r_V_12_reg_986_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(int_c1_c1_V0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(ap_block_pp0_stage0_11001),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(ap_block_pp0_stage0_11001),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_r_V_12_reg_986_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_r_V_12_reg_986_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_r_V_12_reg_986_reg_P_UNCONNECTED[47:18],r_V_12_reg_986_reg_n_88,r_V_12_reg_986_reg_n_89,r_V_12_reg_986_reg_n_90,r_V_12_reg_986_reg_n_91,r_V_12_reg_986_reg_n_92,r_V_12_reg_986_reg_n_93,r_V_12_reg_986_reg_n_94,r_V_12_reg_986_reg_n_95,r_V_12_reg_986_reg_n_96,r_V_12_reg_986_reg_n_97,r_V_12_reg_986_reg_n_98,r_V_12_reg_986_reg_n_99,r_V_12_reg_986_reg_n_100,r_V_12_reg_986_reg_n_101,r_V_12_reg_986_reg_n_102,r_V_12_reg_986_reg_n_103,r_V_12_reg_986_reg_n_104,r_V_12_reg_986_reg_n_105}),
        .PATTERNBDETECT(NLW_r_V_12_reg_986_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_r_V_12_reg_986_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_r_V_12_reg_986_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_r_V_12_reg_986_reg_UNDERFLOW_UNCONNECTED));
  FDRE r_V_12_reg_986_reg__0
       (.C(ap_clk),
        .CE(regslice_both_stream_out_24_data_U_n_4),
        .D(regslice_both_stream_in_24_data_U_n_16),
        .Q(r_V_12_reg_986_reg__0_n_0),
        .R(ARESET));
  FDRE r_V_12_reg_986_reg__1
       (.C(ap_clk),
        .CE(regslice_both_stream_out_24_data_U_n_4),
        .D(regslice_both_stream_in_24_data_U_n_15),
        .Q(r_V_12_reg_986_reg__1_n_0),
        .R(ARESET));
  FDRE r_V_12_reg_986_reg__2
       (.C(ap_clk),
        .CE(regslice_both_stream_out_24_data_U_n_4),
        .D(regslice_both_stream_in_24_data_U_n_14),
        .Q(r_V_12_reg_986_reg__2_n_0),
        .R(ARESET));
  FDRE r_V_12_reg_986_reg__3
       (.C(ap_clk),
        .CE(regslice_both_stream_out_24_data_U_n_4),
        .D(regslice_both_stream_in_24_data_U_n_13),
        .Q(r_V_12_reg_986_reg__3_n_0),
        .R(ARESET));
  FDRE r_V_12_reg_986_reg__4
       (.C(ap_clk),
        .CE(regslice_both_stream_out_24_data_U_n_4),
        .D(regslice_both_stream_in_24_data_U_n_12),
        .Q(r_V_12_reg_986_reg__4_n_0),
        .R(ARESET));
  FDRE r_V_12_reg_986_reg__5
       (.C(ap_clk),
        .CE(regslice_both_stream_out_24_data_U_n_4),
        .D(regslice_both_stream_in_24_data_U_n_11),
        .Q(r_V_12_reg_986_reg__5_n_0),
        .R(ARESET));
  FDRE r_V_12_reg_986_reg__6
       (.C(ap_clk),
        .CE(regslice_both_stream_out_24_data_U_n_4),
        .D(regslice_both_stream_in_24_data_U_n_10),
        .Q(r_V_12_reg_986_reg__6_n_0),
        .R(ARESET));
  FDRE r_V_12_reg_986_reg__7
       (.C(ap_clk),
        .CE(regslice_both_stream_out_24_data_U_n_4),
        .D(regslice_both_stream_in_24_data_U_n_9),
        .Q(r_V_12_reg_986_reg__7_n_0),
        .R(ARESET));
  DSP48E1 #(
    .ACASCREG(2),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(2),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    r_V_16_reg_996_reg
       (.A({or6_out[9],or6_out[9],or6_out[9],or6_out[9],or6_out[9],or6_out[9],or6_out[9],or6_out[9],or6_out[9],or6_out[9],or6_out[9],or6_out[9],or6_out[9],or6_out[9],or6_out[9],or6_out[9],or6_out[9],or6_out[9],or6_out[9],or6_out[9],or6_out}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_r_V_16_reg_996_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,r_V_16_reg_996_reg__0_n_0,r_V_16_reg_996_reg__1_n_0,r_V_16_reg_996_reg__2_n_0,r_V_16_reg_996_reg__3_n_0,r_V_16_reg_996_reg__4_n_0,r_V_16_reg_996_reg__5_n_0,r_V_16_reg_996_reg__6_n_0,r_V_16_reg_996_reg__7_n_0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_r_V_16_reg_996_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_r_V_16_reg_996_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_r_V_16_reg_996_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(int_c2_c2_V0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(ap_block_pp0_stage0_11001),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(ap_block_pp0_stage0_11001),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_r_V_16_reg_996_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_r_V_16_reg_996_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_r_V_16_reg_996_reg_P_UNCONNECTED[47:18],r_V_16_reg_996_reg_n_88,r_V_16_reg_996_reg_n_89,r_V_16_reg_996_reg_n_90,r_V_16_reg_996_reg_n_91,r_V_16_reg_996_reg_n_92,r_V_16_reg_996_reg_n_93,r_V_16_reg_996_reg_n_94,r_V_16_reg_996_reg_n_95,r_V_16_reg_996_reg_n_96,r_V_16_reg_996_reg_n_97,r_V_16_reg_996_reg_n_98,r_V_16_reg_996_reg_n_99,r_V_16_reg_996_reg_n_100,r_V_16_reg_996_reg_n_101,r_V_16_reg_996_reg_n_102,r_V_16_reg_996_reg_n_103,r_V_16_reg_996_reg_n_104,r_V_16_reg_996_reg_n_105}),
        .PATTERNBDETECT(NLW_r_V_16_reg_996_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_r_V_16_reg_996_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_r_V_16_reg_996_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_r_V_16_reg_996_reg_UNDERFLOW_UNCONNECTED));
  FDRE r_V_16_reg_996_reg__0
       (.C(ap_clk),
        .CE(regslice_both_stream_out_24_data_U_n_4),
        .D(regslice_both_stream_in_24_data_U_n_8),
        .Q(r_V_16_reg_996_reg__0_n_0),
        .R(ARESET));
  FDRE r_V_16_reg_996_reg__1
       (.C(ap_clk),
        .CE(regslice_both_stream_out_24_data_U_n_4),
        .D(regslice_both_stream_in_24_data_U_n_7),
        .Q(r_V_16_reg_996_reg__1_n_0),
        .R(ARESET));
  FDRE r_V_16_reg_996_reg__2
       (.C(ap_clk),
        .CE(regslice_both_stream_out_24_data_U_n_4),
        .D(regslice_both_stream_in_24_data_U_n_6),
        .Q(r_V_16_reg_996_reg__2_n_0),
        .R(ARESET));
  FDRE r_V_16_reg_996_reg__3
       (.C(ap_clk),
        .CE(regslice_both_stream_out_24_data_U_n_4),
        .D(regslice_both_stream_in_24_data_U_n_5),
        .Q(r_V_16_reg_996_reg__3_n_0),
        .R(ARESET));
  FDRE r_V_16_reg_996_reg__4
       (.C(ap_clk),
        .CE(regslice_both_stream_out_24_data_U_n_4),
        .D(regslice_both_stream_in_24_data_U_n_4),
        .Q(r_V_16_reg_996_reg__4_n_0),
        .R(ARESET));
  FDRE r_V_16_reg_996_reg__5
       (.C(ap_clk),
        .CE(regslice_both_stream_out_24_data_U_n_4),
        .D(regslice_both_stream_in_24_data_U_n_3),
        .Q(r_V_16_reg_996_reg__5_n_0),
        .R(ARESET));
  FDRE r_V_16_reg_996_reg__6
       (.C(ap_clk),
        .CE(regslice_both_stream_out_24_data_U_n_4),
        .D(regslice_both_stream_in_24_data_U_n_2),
        .Q(r_V_16_reg_996_reg__6_n_0),
        .R(ARESET));
  FDRE r_V_16_reg_996_reg__7
       (.C(ap_clk),
        .CE(regslice_both_stream_out_24_data_U_n_4),
        .D(regslice_both_stream_in_24_data_U_n_1),
        .Q(r_V_16_reg_996_reg__7_n_0),
        .R(ARESET));
  DSP48E1 #(
    .ACASCREG(2),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(2),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    r_V_19_reg_1001_reg
       (.A({or3_out[9],or3_out[9],or3_out[9],or3_out[9],or3_out[9],or3_out[9],or3_out[9],or3_out[9],or3_out[9],or3_out[9],or3_out[9],or3_out[9],or3_out[9],or3_out[9],or3_out[9],or3_out[9],or3_out[9],or3_out[9],or3_out[9],or3_out[9],or3_out}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_r_V_19_reg_1001_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,r_V_16_reg_996_reg__0_n_0,r_V_16_reg_996_reg__1_n_0,r_V_16_reg_996_reg__2_n_0,r_V_16_reg_996_reg__3_n_0,r_V_16_reg_996_reg__4_n_0,r_V_16_reg_996_reg__5_n_0,r_V_16_reg_996_reg__6_n_0,r_V_16_reg_996_reg__7_n_0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_r_V_19_reg_1001_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_r_V_19_reg_1001_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_r_V_19_reg_1001_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(int_c3_c2_V0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(ap_block_pp0_stage0_11001),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(ap_block_pp0_stage0_11001),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_r_V_19_reg_1001_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_r_V_19_reg_1001_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_r_V_19_reg_1001_reg_P_UNCONNECTED[47:18],r_V_19_reg_1001_reg_n_88,r_V_19_reg_1001_reg_n_89,r_V_19_reg_1001_reg_n_90,r_V_19_reg_1001_reg_n_91,r_V_19_reg_1001_reg_n_92,r_V_19_reg_1001_reg_n_93,r_V_19_reg_1001_reg_n_94,r_V_19_reg_1001_reg_n_95,r_V_19_reg_1001_reg_n_96,r_V_19_reg_1001_reg_n_97,r_V_19_reg_1001_reg_n_98,r_V_19_reg_1001_reg_n_99,r_V_19_reg_1001_reg_n_100,r_V_19_reg_1001_reg_n_101,r_V_19_reg_1001_reg_n_102,r_V_19_reg_1001_reg_n_103,r_V_19_reg_1001_reg_n_104,r_V_19_reg_1001_reg_n_105}),
        .PATTERNBDETECT(NLW_r_V_19_reg_1001_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_r_V_19_reg_1001_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_r_V_19_reg_1001_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_r_V_19_reg_1001_reg_UNDERFLOW_UNCONNECTED));
  base_color_convert_1_regslice_both regslice_both_stream_in_24_data_U
       (.ARESET(ARESET),
        .Q({vld_out,p_0_in__0}),
        .ap_block_pp0_stage0_11001(ap_block_pp0_stage0_11001),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .\odata_int_reg[16] (regslice_both_stream_out_24_data_U_n_4),
        .stream_in_24_TDATA(stream_in_24_TDATA),
        .stream_in_24_TDATA_0_sp_1(regslice_both_stream_in_24_data_U_n_9),
        .stream_in_24_TDATA_10_sp_1(regslice_both_stream_in_24_data_U_n_3),
        .stream_in_24_TDATA_11_sp_1(regslice_both_stream_in_24_data_U_n_4),
        .stream_in_24_TDATA_12_sp_1(regslice_both_stream_in_24_data_U_n_5),
        .stream_in_24_TDATA_13_sp_1(regslice_both_stream_in_24_data_U_n_6),
        .stream_in_24_TDATA_14_sp_1(regslice_both_stream_in_24_data_U_n_7),
        .stream_in_24_TDATA_15_sp_1(regslice_both_stream_in_24_data_U_n_8),
        .stream_in_24_TDATA_1_sp_1(regslice_both_stream_in_24_data_U_n_10),
        .stream_in_24_TDATA_2_sp_1(regslice_both_stream_in_24_data_U_n_11),
        .stream_in_24_TDATA_3_sp_1(regslice_both_stream_in_24_data_U_n_12),
        .stream_in_24_TDATA_4_sp_1(regslice_both_stream_in_24_data_U_n_13),
        .stream_in_24_TDATA_5_sp_1(regslice_both_stream_in_24_data_U_n_14),
        .stream_in_24_TDATA_6_sp_1(regslice_both_stream_in_24_data_U_n_15),
        .stream_in_24_TDATA_7_sp_1(regslice_both_stream_in_24_data_U_n_16),
        .stream_in_24_TDATA_8_sp_1(regslice_both_stream_in_24_data_U_n_1),
        .stream_in_24_TDATA_9_sp_1(regslice_both_stream_in_24_data_U_n_2),
        .stream_in_24_TREADY(stream_in_24_TREADY),
        .stream_in_24_TVALID(stream_in_24_TVALID));
  base_color_convert_1_regslice_both__parameterized1 regslice_both_stream_in_24_last_V_U
       (.ARESET(ARESET),
        .ap_block_pp0_stage0_11001(ap_block_pp0_stage0_11001),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .\odata_int_reg[0] (regslice_both_stream_in_24_last_V_U_n_1),
        .\odata_int_reg[0]_0 (regslice_both_stream_out_24_data_U_n_2),
        .\odata_int_reg[1] (regslice_both_stream_in_24_last_V_U_n_0),
        .stream_in_24_TLAST(stream_in_24_TLAST),
        .stream_in_24_TVALID(stream_in_24_TVALID));
  base_color_convert_1_regslice_both__parameterized1_4 regslice_both_stream_in_24_user_V_U
       (.ARESET(ARESET),
        .ap_block_pp0_stage0_11001(ap_block_pp0_stage0_11001),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .\odata_int_reg[0] (regslice_both_stream_in_24_user_V_U_n_1),
        .\odata_int_reg[0]_0 (regslice_both_stream_out_24_data_U_n_1),
        .\odata_int_reg[1] (regslice_both_stream_in_24_user_V_U_n_0),
        .stream_in_24_TUSER(stream_in_24_TUSER),
        .stream_in_24_TVALID(stream_in_24_TVALID));
  base_color_convert_1_regslice_both_5 regslice_both_stream_out_24_data_U
       (.ARESET(ARESET),
        .Q(p_Val2_7_reg_1042),
        .and_ln781_1_reg_1072(and_ln781_1_reg_1072),
        .and_ln781_2_reg_1096(and_ln781_2_reg_1096),
        .and_ln781_reg_1048(and_ln781_reg_1048),
        .ap_block_pp0_stage0_11001(ap_block_pp0_stage0_11001),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter2(ap_enable_reg_pp0_iter2),
        .ap_enable_reg_pp0_iter2_reg(regslice_both_stream_out_24_data_U_n_30),
        .ap_enable_reg_pp0_iter3(ap_enable_reg_pp0_iter3),
        .ap_enable_reg_pp0_iter3_reg(regslice_both_stream_out_24_data_U_n_31),
        .ap_enable_reg_pp0_iter5(ap_enable_reg_pp0_iter5),
        .ap_enable_reg_pp0_iter6(ap_enable_reg_pp0_iter6),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_0(regslice_both_stream_out_24_data_U_n_1),
        .ap_rst_n_1(regslice_both_stream_out_24_data_U_n_2),
        .\ireg_reg[15] (p_Val2_15_reg_1066),
        .\ireg_reg[23] (p_Val2_23_reg_1090),
        .\odata_int_reg[0] (regslice_both_stream_in_24_user_V_U_n_0),
        .\odata_int_reg[0]_0 (regslice_both_stream_in_24_last_V_U_n_0),
        .\odata_int_reg[16] (vld_out),
        .\odata_int_reg[24] (regslice_both_stream_out_24_data_U_n_4),
        .\odata_int_reg[24]_0 ({stream_out_24_TVALID,stream_out_24_TDATA}),
        .or_ln785_1_reg_1078(or_ln785_1_reg_1078),
        .or_ln785_2_reg_1102(or_ln785_2_reg_1102),
        .or_ln785_reg_1054(or_ln785_reg_1054),
        .p_Result_2_reg_1060(p_Result_2_reg_1060),
        .p_Result_4_reg_1084(p_Result_4_reg_1084),
        .p_Result_s_reg_1036(p_Result_s_reg_1036),
        .stream_out_24_TREADY(stream_out_24_TREADY));
  base_color_convert_1_regslice_both__parameterized1_6 regslice_both_stream_out_24_last_V_U
       (.ARESET(ARESET),
        .ap_block_pp0_stage0_11001(ap_block_pp0_stage0_11001),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter5(ap_enable_reg_pp0_iter5),
        .ap_rst_n(ap_rst_n),
        .stream_in_24_last_V_s_reg_915_pp0_iter4_reg(stream_in_24_last_V_s_reg_915_pp0_iter4_reg),
        .stream_out_24_TLAST(stream_out_24_TLAST),
        .stream_out_24_TREADY(stream_out_24_TREADY));
  base_color_convert_1_regslice_both__parameterized1_7 regslice_both_stream_out_24_user_V_U
       (.ARESET(ARESET),
        .ap_block_pp0_stage0_11001(ap_block_pp0_stage0_11001),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter5(ap_enable_reg_pp0_iter5),
        .ap_rst_n(ap_rst_n),
        .stream_in_24_user_V_s_reg_910_pp0_iter4_reg(stream_in_24_user_V_s_reg_910_pp0_iter4_reg),
        .stream_out_24_TREADY(stream_out_24_TREADY),
        .stream_out_24_TUSER(stream_out_24_TUSER));
  (* srl_bus_name = "U0/\stream_in_24_last_V_s_reg_915_pp0_iter3_reg_reg " *) 
  (* srl_name = "U0/\stream_in_24_last_V_s_reg_915_pp0_iter3_reg_reg[0]_srl4 " *) 
  SRL16E \stream_in_24_last_V_s_reg_915_pp0_iter3_reg_reg[0]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(ap_block_pp0_stage0_11001),
        .CLK(ap_clk),
        .D(regslice_both_stream_in_24_last_V_U_n_1),
        .Q(\stream_in_24_last_V_s_reg_915_pp0_iter3_reg_reg[0]_srl4_n_0 ));
  FDRE \stream_in_24_last_V_s_reg_915_pp0_iter4_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_11001),
        .D(\stream_in_24_last_V_s_reg_915_pp0_iter3_reg_reg[0]_srl4_n_0 ),
        .Q(stream_in_24_last_V_s_reg_915_pp0_iter4_reg),
        .R(1'b0));
  (* srl_bus_name = "U0/\stream_in_24_user_V_s_reg_910_pp0_iter3_reg_reg " *) 
  (* srl_name = "U0/\stream_in_24_user_V_s_reg_910_pp0_iter3_reg_reg[0]_srl4 " *) 
  SRL16E \stream_in_24_user_V_s_reg_910_pp0_iter3_reg_reg[0]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(ap_block_pp0_stage0_11001),
        .CLK(ap_clk),
        .D(regslice_both_stream_in_24_user_V_U_n_1),
        .Q(\stream_in_24_user_V_s_reg_910_pp0_iter3_reg_reg[0]_srl4_n_0 ));
  FDRE \stream_in_24_user_V_s_reg_910_pp0_iter4_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_11001),
        .D(\stream_in_24_user_V_s_reg_910_pp0_iter3_reg_reg[0]_srl4_n_0 ),
        .Q(stream_in_24_user_V_s_reg_910_pp0_iter4_reg),
        .R(1'b0));
endmodule

module base_color_convert_1_color_convert_AXILiteS_s_axi
   (s_axi_AXILiteS_BVALID,
    \FSM_onehot_wstate_reg[2]_0 ,
    \FSM_onehot_wstate_reg[1]_0 ,
    s_axi_AXILiteS_RVALID,
    \FSM_onehot_rstate_reg[1]_0 ,
    E,
    A,
    Q,
    \int_c1_c3_V_reg[9]_0 ,
    \int_c2_c1_V_reg[9]_0 ,
    \waddr_reg[4]_0 ,
    \s_axi_AXILiteS_WDATA[9] ,
    \int_c2_c3_V_reg[9]_0 ,
    \int_c3_c1_V_reg[9]_0 ,
    \waddr_reg[4]_1 ,
    \s_axi_AXILiteS_WDATA[9]_0 ,
    \int_c3_c3_V_reg[9]_0 ,
    \int_bias_c1_V_reg[9]_0 ,
    \int_bias_c2_V_reg[9]_0 ,
    \int_bias_c3_V_reg[9]_0 ,
    s_axi_AXILiteS_RDATA,
    s_axi_AXILiteS_ARADDR,
    ARESET,
    control,
    s_axi_AXILiteS_AWADDR,
    ap_clk,
    s_axi_AXILiteS_ARVALID,
    s_axi_AXILiteS_WVALID,
    s_axi_AXILiteS_BREADY,
    s_axi_AXILiteS_AWVALID,
    s_axi_AXILiteS_RREADY,
    s_axi_AXILiteS_WDATA,
    s_axi_AXILiteS_WSTRB);
  output s_axi_AXILiteS_BVALID;
  output \FSM_onehot_wstate_reg[2]_0 ;
  output \FSM_onehot_wstate_reg[1]_0 ;
  output s_axi_AXILiteS_RVALID;
  output \FSM_onehot_rstate_reg[1]_0 ;
  output [0:0]E;
  output [9:0]A;
  output [9:0]Q;
  output [9:0]\int_c1_c3_V_reg[9]_0 ;
  output [9:0]\int_c2_c1_V_reg[9]_0 ;
  output [0:0]\waddr_reg[4]_0 ;
  output [9:0]\s_axi_AXILiteS_WDATA[9] ;
  output [9:0]\int_c2_c3_V_reg[9]_0 ;
  output [9:0]\int_c3_c1_V_reg[9]_0 ;
  output [0:0]\waddr_reg[4]_1 ;
  output [9:0]\s_axi_AXILiteS_WDATA[9]_0 ;
  output [9:0]\int_c3_c3_V_reg[9]_0 ;
  output [9:0]\int_bias_c1_V_reg[9]_0 ;
  output [9:0]\int_bias_c2_V_reg[9]_0 ;
  output [9:0]\int_bias_c3_V_reg[9]_0 ;
  output [9:0]s_axi_AXILiteS_RDATA;
  input [6:0]s_axi_AXILiteS_ARADDR;
  input ARESET;
  input control;
  input [6:0]s_axi_AXILiteS_AWADDR;
  input ap_clk;
  input s_axi_AXILiteS_ARVALID;
  input s_axi_AXILiteS_WVALID;
  input s_axi_AXILiteS_BREADY;
  input s_axi_AXILiteS_AWVALID;
  input s_axi_AXILiteS_RREADY;
  input [9:0]s_axi_AXILiteS_WDATA;
  input [1:0]s_axi_AXILiteS_WSTRB;

  wire [9:0]A;
  wire ARESET;
  wire [0:0]E;
  wire \FSM_onehot_rstate_reg[1]_0 ;
  wire \FSM_onehot_wstate[1]_i_1_n_0 ;
  wire \FSM_onehot_wstate[2]_i_1_n_0 ;
  wire \FSM_onehot_wstate[3]_i_1_n_0 ;
  wire \FSM_onehot_wstate_reg[1]_0 ;
  wire \FSM_onehot_wstate_reg[2]_0 ;
  wire [9:0]Q;
  wire ap_clk;
  wire [9:0]c1_c1_V;
  wire [9:0]c2_c2_V;
  wire [9:0]c3_c2_V;
  wire control;
  wire int_bias_c1_V0;
  wire [9:0]\int_bias_c1_V_reg[9]_0 ;
  wire int_bias_c2_V0;
  wire [9:0]\int_bias_c2_V_reg[9]_0 ;
  wire int_bias_c3_V0;
  wire [9:0]\int_bias_c3_V_reg[9]_0 ;
  wire \int_c1_c1_V[9]_i_3_n_0 ;
  wire int_c1_c2_V0;
  wire \int_c1_c2_V[9]_i_3_n_0 ;
  wire int_c1_c3_V0;
  wire [9:0]\int_c1_c3_V_reg[9]_0 ;
  wire int_c2_c1_V0;
  wire [9:0]\int_c2_c1_V_reg[9]_0 ;
  wire int_c2_c3_V0;
  wire [9:0]\int_c2_c3_V_reg[9]_0 ;
  wire int_c3_c1_V0;
  wire [9:0]\int_c3_c1_V_reg[9]_0 ;
  wire int_c3_c3_V0;
  wire [9:0]\int_c3_c3_V_reg[9]_0 ;
  wire [9:0]\or ;
  wire [9:0]or0_out;
  wire [9:0]or1_out;
  wire [9:0]or2_out;
  wire [9:0]or4_out;
  wire [9:0]or5_out;
  wire [9:0]or7_out;
  wire [9:0]or8_out;
  wire [9:0]or9_out;
  wire \rdata_data[0]_i_1_n_0 ;
  wire \rdata_data[0]_i_2_n_0 ;
  wire \rdata_data[0]_i_3_n_0 ;
  wire \rdata_data[0]_i_4_n_0 ;
  wire \rdata_data[0]_i_5_n_0 ;
  wire \rdata_data[1]_i_1_n_0 ;
  wire \rdata_data[1]_i_2_n_0 ;
  wire \rdata_data[1]_i_3_n_0 ;
  wire \rdata_data[1]_i_4_n_0 ;
  wire \rdata_data[1]_i_5_n_0 ;
  wire \rdata_data[2]_i_1_n_0 ;
  wire \rdata_data[2]_i_2_n_0 ;
  wire \rdata_data[2]_i_3_n_0 ;
  wire \rdata_data[2]_i_4_n_0 ;
  wire \rdata_data[2]_i_5_n_0 ;
  wire \rdata_data[3]_i_1_n_0 ;
  wire \rdata_data[3]_i_2_n_0 ;
  wire \rdata_data[3]_i_3_n_0 ;
  wire \rdata_data[3]_i_4_n_0 ;
  wire \rdata_data[3]_i_5_n_0 ;
  wire \rdata_data[4]_i_1_n_0 ;
  wire \rdata_data[4]_i_2_n_0 ;
  wire \rdata_data[4]_i_3_n_0 ;
  wire \rdata_data[4]_i_4_n_0 ;
  wire \rdata_data[4]_i_5_n_0 ;
  wire \rdata_data[5]_i_1_n_0 ;
  wire \rdata_data[5]_i_2_n_0 ;
  wire \rdata_data[5]_i_3_n_0 ;
  wire \rdata_data[5]_i_4_n_0 ;
  wire \rdata_data[5]_i_5_n_0 ;
  wire \rdata_data[6]_i_1_n_0 ;
  wire \rdata_data[6]_i_2_n_0 ;
  wire \rdata_data[6]_i_3_n_0 ;
  wire \rdata_data[6]_i_4_n_0 ;
  wire \rdata_data[6]_i_5_n_0 ;
  wire \rdata_data[7]_i_1_n_0 ;
  wire \rdata_data[7]_i_2_n_0 ;
  wire \rdata_data[7]_i_3_n_0 ;
  wire \rdata_data[7]_i_4_n_0 ;
  wire \rdata_data[7]_i_5_n_0 ;
  wire \rdata_data[8]_i_1_n_0 ;
  wire \rdata_data[8]_i_2_n_0 ;
  wire \rdata_data[8]_i_3_n_0 ;
  wire \rdata_data[8]_i_4_n_0 ;
  wire \rdata_data[8]_i_5_n_0 ;
  wire \rdata_data[9]_i_1_n_0 ;
  wire \rdata_data[9]_i_2_n_0 ;
  wire \rdata_data[9]_i_3_n_0 ;
  wire \rdata_data[9]_i_4_n_0 ;
  wire \rdata_data[9]_i_5_n_0 ;
  wire \rdata_data[9]_i_6_n_0 ;
  wire \rdata_data[9]_i_7_n_0 ;
  wire [2:1]rnext;
  wire [6:0]s_axi_AXILiteS_ARADDR;
  wire s_axi_AXILiteS_ARVALID;
  wire [6:0]s_axi_AXILiteS_AWADDR;
  wire s_axi_AXILiteS_AWVALID;
  wire s_axi_AXILiteS_BREADY;
  wire s_axi_AXILiteS_BVALID;
  wire [9:0]s_axi_AXILiteS_RDATA;
  wire s_axi_AXILiteS_RREADY;
  wire s_axi_AXILiteS_RVALID;
  wire [9:0]s_axi_AXILiteS_WDATA;
  wire [9:0]\s_axi_AXILiteS_WDATA[9] ;
  wire [9:0]\s_axi_AXILiteS_WDATA[9]_0 ;
  wire [1:0]s_axi_AXILiteS_WSTRB;
  wire s_axi_AXILiteS_WVALID;
  wire waddr;
  wire [0:0]\waddr_reg[4]_0 ;
  wire [0:0]\waddr_reg[4]_1 ;
  wire \waddr_reg_n_0_[0] ;
  wire \waddr_reg_n_0_[1] ;
  wire \waddr_reg_n_0_[2] ;
  wire \waddr_reg_n_0_[3] ;
  wire \waddr_reg_n_0_[4] ;
  wire \waddr_reg_n_0_[5] ;
  wire \waddr_reg_n_0_[6] ;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hF747)) 
    \FSM_onehot_rstate[1]_i_1 
       (.I0(s_axi_AXILiteS_ARVALID),
        .I1(\FSM_onehot_rstate_reg[1]_0 ),
        .I2(s_axi_AXILiteS_RVALID),
        .I3(s_axi_AXILiteS_RREADY),
        .O(rnext[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_rstate[2]_i_1 
       (.I0(s_axi_AXILiteS_ARVALID),
        .I1(\FSM_onehot_rstate_reg[1]_0 ),
        .I2(s_axi_AXILiteS_RREADY),
        .I3(s_axi_AXILiteS_RVALID),
        .O(rnext[2]));
  (* FSM_ENCODED_STATES = "rddata:100,rdidle:010,iSTATE:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rstate_reg[1] 
       (.C(control),
        .CE(1'b1),
        .D(rnext[1]),
        .Q(\FSM_onehot_rstate_reg[1]_0 ),
        .R(ARESET));
  (* FSM_ENCODED_STATES = "rddata:100,rdidle:010,iSTATE:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rstate_reg[2] 
       (.C(control),
        .CE(1'b1),
        .D(rnext[2]),
        .Q(s_axi_AXILiteS_RVALID),
        .R(ARESET));
  LUT5 #(
    .INIT(32'hC0FFD1D1)) 
    \FSM_onehot_wstate[1]_i_1 
       (.I0(\FSM_onehot_wstate_reg[2]_0 ),
        .I1(s_axi_AXILiteS_BVALID),
        .I2(s_axi_AXILiteS_BREADY),
        .I3(s_axi_AXILiteS_AWVALID),
        .I4(\FSM_onehot_wstate_reg[1]_0 ),
        .O(\FSM_onehot_wstate[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_wstate[2]_i_1 
       (.I0(\FSM_onehot_wstate_reg[1]_0 ),
        .I1(s_axi_AXILiteS_AWVALID),
        .I2(s_axi_AXILiteS_WVALID),
        .I3(\FSM_onehot_wstate_reg[2]_0 ),
        .O(\FSM_onehot_wstate[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF444)) 
    \FSM_onehot_wstate[3]_i_1 
       (.I0(s_axi_AXILiteS_BREADY),
        .I1(s_axi_AXILiteS_BVALID),
        .I2(\FSM_onehot_wstate_reg[2]_0 ),
        .I3(s_axi_AXILiteS_WVALID),
        .O(\FSM_onehot_wstate[3]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "wrdata:0100,wrresp:1000,wridle:0010,iSTATE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[1] 
       (.C(control),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[1]_i_1_n_0 ),
        .Q(\FSM_onehot_wstate_reg[1]_0 ),
        .R(ARESET));
  (* FSM_ENCODED_STATES = "wrdata:0100,wrresp:1000,wridle:0010,iSTATE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[2] 
       (.C(control),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[2]_i_1_n_0 ),
        .Q(\FSM_onehot_wstate_reg[2]_0 ),
        .R(ARESET));
  (* FSM_ENCODED_STATES = "wrdata:0100,wrresp:1000,wridle:0010,iSTATE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[3] 
       (.C(control),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[3]_i_1_n_0 ),
        .Q(s_axi_AXILiteS_BVALID),
        .R(ARESET));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_bias_c1_V[0]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[0]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(\int_bias_c1_V_reg[9]_0 [0]),
        .O(or1_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_bias_c1_V[1]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[1]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(\int_bias_c1_V_reg[9]_0 [1]),
        .O(or1_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_bias_c1_V[2]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[2]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(\int_bias_c1_V_reg[9]_0 [2]),
        .O(or1_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_bias_c1_V[3]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[3]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(\int_bias_c1_V_reg[9]_0 [3]),
        .O(or1_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_bias_c1_V[4]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[4]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(\int_bias_c1_V_reg[9]_0 [4]),
        .O(or1_out[4]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_bias_c1_V[5]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[5]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(\int_bias_c1_V_reg[9]_0 [5]),
        .O(or1_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_bias_c1_V[6]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[6]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(\int_bias_c1_V_reg[9]_0 [6]),
        .O(or1_out[6]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_bias_c1_V[7]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[7]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(\int_bias_c1_V_reg[9]_0 [7]),
        .O(or1_out[7]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_bias_c1_V[8]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[8]),
        .I1(s_axi_AXILiteS_WSTRB[1]),
        .I2(\int_bias_c1_V_reg[9]_0 [8]),
        .O(or1_out[8]));
  LUT4 #(
    .INIT(16'h0800)) 
    \int_bias_c1_V[9]_i_1 
       (.I0(\waddr_reg_n_0_[6] ),
        .I1(\waddr_reg_n_0_[4] ),
        .I2(\waddr_reg_n_0_[5] ),
        .I3(\int_c1_c2_V[9]_i_3_n_0 ),
        .O(int_bias_c1_V0));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_bias_c1_V[9]_i_2 
       (.I0(s_axi_AXILiteS_WDATA[9]),
        .I1(s_axi_AXILiteS_WSTRB[1]),
        .I2(\int_bias_c1_V_reg[9]_0 [9]),
        .O(or1_out[9]));
  FDRE #(
    .INIT(1'b0)) 
    \int_bias_c1_V_reg[0] 
       (.C(ap_clk),
        .CE(int_bias_c1_V0),
        .D(or1_out[0]),
        .Q(\int_bias_c1_V_reg[9]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_bias_c1_V_reg[1] 
       (.C(ap_clk),
        .CE(int_bias_c1_V0),
        .D(or1_out[1]),
        .Q(\int_bias_c1_V_reg[9]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_bias_c1_V_reg[2] 
       (.C(ap_clk),
        .CE(int_bias_c1_V0),
        .D(or1_out[2]),
        .Q(\int_bias_c1_V_reg[9]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_bias_c1_V_reg[3] 
       (.C(ap_clk),
        .CE(int_bias_c1_V0),
        .D(or1_out[3]),
        .Q(\int_bias_c1_V_reg[9]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_bias_c1_V_reg[4] 
       (.C(ap_clk),
        .CE(int_bias_c1_V0),
        .D(or1_out[4]),
        .Q(\int_bias_c1_V_reg[9]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_bias_c1_V_reg[5] 
       (.C(ap_clk),
        .CE(int_bias_c1_V0),
        .D(or1_out[5]),
        .Q(\int_bias_c1_V_reg[9]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_bias_c1_V_reg[6] 
       (.C(ap_clk),
        .CE(int_bias_c1_V0),
        .D(or1_out[6]),
        .Q(\int_bias_c1_V_reg[9]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_bias_c1_V_reg[7] 
       (.C(ap_clk),
        .CE(int_bias_c1_V0),
        .D(or1_out[7]),
        .Q(\int_bias_c1_V_reg[9]_0 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_bias_c1_V_reg[8] 
       (.C(ap_clk),
        .CE(int_bias_c1_V0),
        .D(or1_out[8]),
        .Q(\int_bias_c1_V_reg[9]_0 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_bias_c1_V_reg[9] 
       (.C(ap_clk),
        .CE(int_bias_c1_V0),
        .D(or1_out[9]),
        .Q(\int_bias_c1_V_reg[9]_0 [9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_bias_c2_V[0]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[0]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(\int_bias_c2_V_reg[9]_0 [0]),
        .O(or0_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_bias_c2_V[1]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[1]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(\int_bias_c2_V_reg[9]_0 [1]),
        .O(or0_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_bias_c2_V[2]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[2]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(\int_bias_c2_V_reg[9]_0 [2]),
        .O(or0_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_bias_c2_V[3]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[3]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(\int_bias_c2_V_reg[9]_0 [3]),
        .O(or0_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_bias_c2_V[4]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[4]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(\int_bias_c2_V_reg[9]_0 [4]),
        .O(or0_out[4]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_bias_c2_V[5]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[5]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(\int_bias_c2_V_reg[9]_0 [5]),
        .O(or0_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_bias_c2_V[6]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[6]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(\int_bias_c2_V_reg[9]_0 [6]),
        .O(or0_out[6]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_bias_c2_V[7]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[7]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(\int_bias_c2_V_reg[9]_0 [7]),
        .O(or0_out[7]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_bias_c2_V[8]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[8]),
        .I1(s_axi_AXILiteS_WSTRB[1]),
        .I2(\int_bias_c2_V_reg[9]_0 [8]),
        .O(or0_out[8]));
  LUT4 #(
    .INIT(16'h0800)) 
    \int_bias_c2_V[9]_i_1 
       (.I0(\waddr_reg_n_0_[6] ),
        .I1(\waddr_reg_n_0_[5] ),
        .I2(\waddr_reg_n_0_[4] ),
        .I3(\int_c1_c1_V[9]_i_3_n_0 ),
        .O(int_bias_c2_V0));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_bias_c2_V[9]_i_2 
       (.I0(s_axi_AXILiteS_WDATA[9]),
        .I1(s_axi_AXILiteS_WSTRB[1]),
        .I2(\int_bias_c2_V_reg[9]_0 [9]),
        .O(or0_out[9]));
  FDRE #(
    .INIT(1'b0)) 
    \int_bias_c2_V_reg[0] 
       (.C(ap_clk),
        .CE(int_bias_c2_V0),
        .D(or0_out[0]),
        .Q(\int_bias_c2_V_reg[9]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_bias_c2_V_reg[1] 
       (.C(ap_clk),
        .CE(int_bias_c2_V0),
        .D(or0_out[1]),
        .Q(\int_bias_c2_V_reg[9]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_bias_c2_V_reg[2] 
       (.C(ap_clk),
        .CE(int_bias_c2_V0),
        .D(or0_out[2]),
        .Q(\int_bias_c2_V_reg[9]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_bias_c2_V_reg[3] 
       (.C(ap_clk),
        .CE(int_bias_c2_V0),
        .D(or0_out[3]),
        .Q(\int_bias_c2_V_reg[9]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_bias_c2_V_reg[4] 
       (.C(ap_clk),
        .CE(int_bias_c2_V0),
        .D(or0_out[4]),
        .Q(\int_bias_c2_V_reg[9]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_bias_c2_V_reg[5] 
       (.C(ap_clk),
        .CE(int_bias_c2_V0),
        .D(or0_out[5]),
        .Q(\int_bias_c2_V_reg[9]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_bias_c2_V_reg[6] 
       (.C(ap_clk),
        .CE(int_bias_c2_V0),
        .D(or0_out[6]),
        .Q(\int_bias_c2_V_reg[9]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_bias_c2_V_reg[7] 
       (.C(ap_clk),
        .CE(int_bias_c2_V0),
        .D(or0_out[7]),
        .Q(\int_bias_c2_V_reg[9]_0 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_bias_c2_V_reg[8] 
       (.C(ap_clk),
        .CE(int_bias_c2_V0),
        .D(or0_out[8]),
        .Q(\int_bias_c2_V_reg[9]_0 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_bias_c2_V_reg[9] 
       (.C(ap_clk),
        .CE(int_bias_c2_V0),
        .D(or0_out[9]),
        .Q(\int_bias_c2_V_reg[9]_0 [9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_bias_c3_V[0]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[0]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(\int_bias_c3_V_reg[9]_0 [0]),
        .O(\or [0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_bias_c3_V[1]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[1]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(\int_bias_c3_V_reg[9]_0 [1]),
        .O(\or [1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_bias_c3_V[2]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[2]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(\int_bias_c3_V_reg[9]_0 [2]),
        .O(\or [2]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_bias_c3_V[3]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[3]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(\int_bias_c3_V_reg[9]_0 [3]),
        .O(\or [3]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_bias_c3_V[4]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[4]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(\int_bias_c3_V_reg[9]_0 [4]),
        .O(\or [4]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_bias_c3_V[5]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[5]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(\int_bias_c3_V_reg[9]_0 [5]),
        .O(\or [5]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_bias_c3_V[6]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[6]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(\int_bias_c3_V_reg[9]_0 [6]),
        .O(\or [6]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_bias_c3_V[7]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[7]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(\int_bias_c3_V_reg[9]_0 [7]),
        .O(\or [7]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_bias_c3_V[8]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[8]),
        .I1(s_axi_AXILiteS_WSTRB[1]),
        .I2(\int_bias_c3_V_reg[9]_0 [8]),
        .O(\or [8]));
  LUT4 #(
    .INIT(16'h0800)) 
    \int_bias_c3_V[9]_i_1 
       (.I0(\waddr_reg_n_0_[6] ),
        .I1(\waddr_reg_n_0_[5] ),
        .I2(\waddr_reg_n_0_[4] ),
        .I3(\int_c1_c2_V[9]_i_3_n_0 ),
        .O(int_bias_c3_V0));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_bias_c3_V[9]_i_2 
       (.I0(s_axi_AXILiteS_WDATA[9]),
        .I1(s_axi_AXILiteS_WSTRB[1]),
        .I2(\int_bias_c3_V_reg[9]_0 [9]),
        .O(\or [9]));
  FDRE #(
    .INIT(1'b0)) 
    \int_bias_c3_V_reg[0] 
       (.C(ap_clk),
        .CE(int_bias_c3_V0),
        .D(\or [0]),
        .Q(\int_bias_c3_V_reg[9]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_bias_c3_V_reg[1] 
       (.C(ap_clk),
        .CE(int_bias_c3_V0),
        .D(\or [1]),
        .Q(\int_bias_c3_V_reg[9]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_bias_c3_V_reg[2] 
       (.C(ap_clk),
        .CE(int_bias_c3_V0),
        .D(\or [2]),
        .Q(\int_bias_c3_V_reg[9]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_bias_c3_V_reg[3] 
       (.C(ap_clk),
        .CE(int_bias_c3_V0),
        .D(\or [3]),
        .Q(\int_bias_c3_V_reg[9]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_bias_c3_V_reg[4] 
       (.C(ap_clk),
        .CE(int_bias_c3_V0),
        .D(\or [4]),
        .Q(\int_bias_c3_V_reg[9]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_bias_c3_V_reg[5] 
       (.C(ap_clk),
        .CE(int_bias_c3_V0),
        .D(\or [5]),
        .Q(\int_bias_c3_V_reg[9]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_bias_c3_V_reg[6] 
       (.C(ap_clk),
        .CE(int_bias_c3_V0),
        .D(\or [6]),
        .Q(\int_bias_c3_V_reg[9]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_bias_c3_V_reg[7] 
       (.C(ap_clk),
        .CE(int_bias_c3_V0),
        .D(\or [7]),
        .Q(\int_bias_c3_V_reg[9]_0 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_bias_c3_V_reg[8] 
       (.C(ap_clk),
        .CE(int_bias_c3_V0),
        .D(\or [8]),
        .Q(\int_bias_c3_V_reg[9]_0 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_bias_c3_V_reg[9] 
       (.C(ap_clk),
        .CE(int_bias_c3_V0),
        .D(\or [9]),
        .Q(\int_bias_c3_V_reg[9]_0 [9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c1_c1_V[0]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[0]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(c1_c1_V[0]),
        .O(A[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c1_c1_V[1]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[1]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(c1_c1_V[1]),
        .O(A[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c1_c1_V[2]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[2]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(c1_c1_V[2]),
        .O(A[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c1_c1_V[3]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[3]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(c1_c1_V[3]),
        .O(A[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c1_c1_V[4]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[4]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(c1_c1_V[4]),
        .O(A[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c1_c1_V[5]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[5]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(c1_c1_V[5]),
        .O(A[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c1_c1_V[6]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[6]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(c1_c1_V[6]),
        .O(A[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c1_c1_V[7]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[7]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(c1_c1_V[7]),
        .O(A[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c1_c1_V[8]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[8]),
        .I1(s_axi_AXILiteS_WSTRB[1]),
        .I2(c1_c1_V[8]),
        .O(A[8]));
  LUT4 #(
    .INIT(16'h0400)) 
    \int_c1_c1_V[9]_i_1 
       (.I0(\waddr_reg_n_0_[6] ),
        .I1(\waddr_reg_n_0_[4] ),
        .I2(\waddr_reg_n_0_[5] ),
        .I3(\int_c1_c1_V[9]_i_3_n_0 ),
        .O(E));
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c1_c1_V[9]_i_2 
       (.I0(s_axi_AXILiteS_WDATA[9]),
        .I1(s_axi_AXILiteS_WSTRB[1]),
        .I2(c1_c1_V[9]),
        .O(A[9]));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \int_c1_c1_V[9]_i_3 
       (.I0(\waddr_reg_n_0_[0] ),
        .I1(\waddr_reg_n_0_[1] ),
        .I2(\FSM_onehot_wstate_reg[2]_0 ),
        .I3(s_axi_AXILiteS_WVALID),
        .I4(\waddr_reg_n_0_[2] ),
        .I5(\waddr_reg_n_0_[3] ),
        .O(\int_c1_c1_V[9]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_c1_c1_V_reg[0] 
       (.C(ap_clk),
        .CE(E),
        .D(A[0]),
        .Q(c1_c1_V[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_c1_c1_V_reg[1] 
       (.C(ap_clk),
        .CE(E),
        .D(A[1]),
        .Q(c1_c1_V[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_c1_c1_V_reg[2] 
       (.C(ap_clk),
        .CE(E),
        .D(A[2]),
        .Q(c1_c1_V[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_c1_c1_V_reg[3] 
       (.C(ap_clk),
        .CE(E),
        .D(A[3]),
        .Q(c1_c1_V[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_c1_c1_V_reg[4] 
       (.C(ap_clk),
        .CE(E),
        .D(A[4]),
        .Q(c1_c1_V[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_c1_c1_V_reg[5] 
       (.C(ap_clk),
        .CE(E),
        .D(A[5]),
        .Q(c1_c1_V[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_c1_c1_V_reg[6] 
       (.C(ap_clk),
        .CE(E),
        .D(A[6]),
        .Q(c1_c1_V[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_c1_c1_V_reg[7] 
       (.C(ap_clk),
        .CE(E),
        .D(A[7]),
        .Q(c1_c1_V[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_c1_c1_V_reg[8] 
       (.C(ap_clk),
        .CE(E),
        .D(A[8]),
        .Q(c1_c1_V[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_c1_c1_V_reg[9] 
       (.C(ap_clk),
        .CE(E),
        .D(A[9]),
        .Q(c1_c1_V[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c1_c2_V[0]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[0]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(Q[0]),
        .O(or9_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c1_c2_V[1]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[1]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(Q[1]),
        .O(or9_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c1_c2_V[2]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[2]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(Q[2]),
        .O(or9_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c1_c2_V[3]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[3]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(Q[3]),
        .O(or9_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c1_c2_V[4]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[4]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(Q[4]),
        .O(or9_out[4]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c1_c2_V[5]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[5]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(Q[5]),
        .O(or9_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c1_c2_V[6]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[6]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(Q[6]),
        .O(or9_out[6]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c1_c2_V[7]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[7]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(Q[7]),
        .O(or9_out[7]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c1_c2_V[8]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[8]),
        .I1(s_axi_AXILiteS_WSTRB[1]),
        .I2(Q[8]),
        .O(or9_out[8]));
  LUT4 #(
    .INIT(16'h0400)) 
    \int_c1_c2_V[9]_i_1 
       (.I0(\waddr_reg_n_0_[6] ),
        .I1(\waddr_reg_n_0_[4] ),
        .I2(\waddr_reg_n_0_[5] ),
        .I3(\int_c1_c2_V[9]_i_3_n_0 ),
        .O(int_c1_c2_V0));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c1_c2_V[9]_i_2 
       (.I0(s_axi_AXILiteS_WDATA[9]),
        .I1(s_axi_AXILiteS_WSTRB[1]),
        .I2(Q[9]),
        .O(or9_out[9]));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    \int_c1_c2_V[9]_i_3 
       (.I0(\waddr_reg_n_0_[0] ),
        .I1(\waddr_reg_n_0_[1] ),
        .I2(\FSM_onehot_wstate_reg[2]_0 ),
        .I3(s_axi_AXILiteS_WVALID),
        .I4(\waddr_reg_n_0_[2] ),
        .I5(\waddr_reg_n_0_[3] ),
        .O(\int_c1_c2_V[9]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_c1_c2_V_reg[0] 
       (.C(ap_clk),
        .CE(int_c1_c2_V0),
        .D(or9_out[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_c1_c2_V_reg[1] 
       (.C(ap_clk),
        .CE(int_c1_c2_V0),
        .D(or9_out[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_c1_c2_V_reg[2] 
       (.C(ap_clk),
        .CE(int_c1_c2_V0),
        .D(or9_out[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_c1_c2_V_reg[3] 
       (.C(ap_clk),
        .CE(int_c1_c2_V0),
        .D(or9_out[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_c1_c2_V_reg[4] 
       (.C(ap_clk),
        .CE(int_c1_c2_V0),
        .D(or9_out[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_c1_c2_V_reg[5] 
       (.C(ap_clk),
        .CE(int_c1_c2_V0),
        .D(or9_out[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_c1_c2_V_reg[6] 
       (.C(ap_clk),
        .CE(int_c1_c2_V0),
        .D(or9_out[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_c1_c2_V_reg[7] 
       (.C(ap_clk),
        .CE(int_c1_c2_V0),
        .D(or9_out[7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_c1_c2_V_reg[8] 
       (.C(ap_clk),
        .CE(int_c1_c2_V0),
        .D(or9_out[8]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_c1_c2_V_reg[9] 
       (.C(ap_clk),
        .CE(int_c1_c2_V0),
        .D(or9_out[9]),
        .Q(Q[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c1_c3_V[0]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[0]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(\int_c1_c3_V_reg[9]_0 [0]),
        .O(or8_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c1_c3_V[1]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[1]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(\int_c1_c3_V_reg[9]_0 [1]),
        .O(or8_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c1_c3_V[2]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[2]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(\int_c1_c3_V_reg[9]_0 [2]),
        .O(or8_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c1_c3_V[3]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[3]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(\int_c1_c3_V_reg[9]_0 [3]),
        .O(or8_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c1_c3_V[4]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[4]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(\int_c1_c3_V_reg[9]_0 [4]),
        .O(or8_out[4]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c1_c3_V[5]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[5]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(\int_c1_c3_V_reg[9]_0 [5]),
        .O(or8_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c1_c3_V[6]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[6]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(\int_c1_c3_V_reg[9]_0 [6]),
        .O(or8_out[6]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c1_c3_V[7]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[7]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(\int_c1_c3_V_reg[9]_0 [7]),
        .O(or8_out[7]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c1_c3_V[8]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[8]),
        .I1(s_axi_AXILiteS_WSTRB[1]),
        .I2(\int_c1_c3_V_reg[9]_0 [8]),
        .O(or8_out[8]));
  LUT4 #(
    .INIT(16'h0400)) 
    \int_c1_c3_V[9]_i_1 
       (.I0(\waddr_reg_n_0_[6] ),
        .I1(\waddr_reg_n_0_[5] ),
        .I2(\waddr_reg_n_0_[4] ),
        .I3(\int_c1_c1_V[9]_i_3_n_0 ),
        .O(int_c1_c3_V0));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c1_c3_V[9]_i_2 
       (.I0(s_axi_AXILiteS_WDATA[9]),
        .I1(s_axi_AXILiteS_WSTRB[1]),
        .I2(\int_c1_c3_V_reg[9]_0 [9]),
        .O(or8_out[9]));
  FDRE #(
    .INIT(1'b0)) 
    \int_c1_c3_V_reg[0] 
       (.C(ap_clk),
        .CE(int_c1_c3_V0),
        .D(or8_out[0]),
        .Q(\int_c1_c3_V_reg[9]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_c1_c3_V_reg[1] 
       (.C(ap_clk),
        .CE(int_c1_c3_V0),
        .D(or8_out[1]),
        .Q(\int_c1_c3_V_reg[9]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_c1_c3_V_reg[2] 
       (.C(ap_clk),
        .CE(int_c1_c3_V0),
        .D(or8_out[2]),
        .Q(\int_c1_c3_V_reg[9]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_c1_c3_V_reg[3] 
       (.C(ap_clk),
        .CE(int_c1_c3_V0),
        .D(or8_out[3]),
        .Q(\int_c1_c3_V_reg[9]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_c1_c3_V_reg[4] 
       (.C(ap_clk),
        .CE(int_c1_c3_V0),
        .D(or8_out[4]),
        .Q(\int_c1_c3_V_reg[9]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_c1_c3_V_reg[5] 
       (.C(ap_clk),
        .CE(int_c1_c3_V0),
        .D(or8_out[5]),
        .Q(\int_c1_c3_V_reg[9]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_c1_c3_V_reg[6] 
       (.C(ap_clk),
        .CE(int_c1_c3_V0),
        .D(or8_out[6]),
        .Q(\int_c1_c3_V_reg[9]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_c1_c3_V_reg[7] 
       (.C(ap_clk),
        .CE(int_c1_c3_V0),
        .D(or8_out[7]),
        .Q(\int_c1_c3_V_reg[9]_0 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_c1_c3_V_reg[8] 
       (.C(ap_clk),
        .CE(int_c1_c3_V0),
        .D(or8_out[8]),
        .Q(\int_c1_c3_V_reg[9]_0 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_c1_c3_V_reg[9] 
       (.C(ap_clk),
        .CE(int_c1_c3_V0),
        .D(or8_out[9]),
        .Q(\int_c1_c3_V_reg[9]_0 [9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c2_c1_V[0]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[0]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(\int_c2_c1_V_reg[9]_0 [0]),
        .O(or7_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c2_c1_V[1]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[1]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(\int_c2_c1_V_reg[9]_0 [1]),
        .O(or7_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c2_c1_V[2]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[2]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(\int_c2_c1_V_reg[9]_0 [2]),
        .O(or7_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c2_c1_V[3]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[3]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(\int_c2_c1_V_reg[9]_0 [3]),
        .O(or7_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c2_c1_V[4]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[4]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(\int_c2_c1_V_reg[9]_0 [4]),
        .O(or7_out[4]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c2_c1_V[5]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[5]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(\int_c2_c1_V_reg[9]_0 [5]),
        .O(or7_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c2_c1_V[6]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[6]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(\int_c2_c1_V_reg[9]_0 [6]),
        .O(or7_out[6]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c2_c1_V[7]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[7]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(\int_c2_c1_V_reg[9]_0 [7]),
        .O(or7_out[7]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c2_c1_V[8]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[8]),
        .I1(s_axi_AXILiteS_WSTRB[1]),
        .I2(\int_c2_c1_V_reg[9]_0 [8]),
        .O(or7_out[8]));
  LUT4 #(
    .INIT(16'h0400)) 
    \int_c2_c1_V[9]_i_1 
       (.I0(\waddr_reg_n_0_[6] ),
        .I1(\waddr_reg_n_0_[5] ),
        .I2(\waddr_reg_n_0_[4] ),
        .I3(\int_c1_c2_V[9]_i_3_n_0 ),
        .O(int_c2_c1_V0));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c2_c1_V[9]_i_2 
       (.I0(s_axi_AXILiteS_WDATA[9]),
        .I1(s_axi_AXILiteS_WSTRB[1]),
        .I2(\int_c2_c1_V_reg[9]_0 [9]),
        .O(or7_out[9]));
  FDRE #(
    .INIT(1'b0)) 
    \int_c2_c1_V_reg[0] 
       (.C(ap_clk),
        .CE(int_c2_c1_V0),
        .D(or7_out[0]),
        .Q(\int_c2_c1_V_reg[9]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_c2_c1_V_reg[1] 
       (.C(ap_clk),
        .CE(int_c2_c1_V0),
        .D(or7_out[1]),
        .Q(\int_c2_c1_V_reg[9]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_c2_c1_V_reg[2] 
       (.C(ap_clk),
        .CE(int_c2_c1_V0),
        .D(or7_out[2]),
        .Q(\int_c2_c1_V_reg[9]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_c2_c1_V_reg[3] 
       (.C(ap_clk),
        .CE(int_c2_c1_V0),
        .D(or7_out[3]),
        .Q(\int_c2_c1_V_reg[9]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_c2_c1_V_reg[4] 
       (.C(ap_clk),
        .CE(int_c2_c1_V0),
        .D(or7_out[4]),
        .Q(\int_c2_c1_V_reg[9]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_c2_c1_V_reg[5] 
       (.C(ap_clk),
        .CE(int_c2_c1_V0),
        .D(or7_out[5]),
        .Q(\int_c2_c1_V_reg[9]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_c2_c1_V_reg[6] 
       (.C(ap_clk),
        .CE(int_c2_c1_V0),
        .D(or7_out[6]),
        .Q(\int_c2_c1_V_reg[9]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_c2_c1_V_reg[7] 
       (.C(ap_clk),
        .CE(int_c2_c1_V0),
        .D(or7_out[7]),
        .Q(\int_c2_c1_V_reg[9]_0 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_c2_c1_V_reg[8] 
       (.C(ap_clk),
        .CE(int_c2_c1_V0),
        .D(or7_out[8]),
        .Q(\int_c2_c1_V_reg[9]_0 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_c2_c1_V_reg[9] 
       (.C(ap_clk),
        .CE(int_c2_c1_V0),
        .D(or7_out[9]),
        .Q(\int_c2_c1_V_reg[9]_0 [9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c2_c2_V[0]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[0]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(c2_c2_V[0]),
        .O(\s_axi_AXILiteS_WDATA[9] [0]));
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c2_c2_V[1]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[1]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(c2_c2_V[1]),
        .O(\s_axi_AXILiteS_WDATA[9] [1]));
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c2_c2_V[2]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[2]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(c2_c2_V[2]),
        .O(\s_axi_AXILiteS_WDATA[9] [2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c2_c2_V[3]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[3]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(c2_c2_V[3]),
        .O(\s_axi_AXILiteS_WDATA[9] [3]));
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c2_c2_V[4]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[4]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(c2_c2_V[4]),
        .O(\s_axi_AXILiteS_WDATA[9] [4]));
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c2_c2_V[5]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[5]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(c2_c2_V[5]),
        .O(\s_axi_AXILiteS_WDATA[9] [5]));
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c2_c2_V[6]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[6]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(c2_c2_V[6]),
        .O(\s_axi_AXILiteS_WDATA[9] [6]));
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c2_c2_V[7]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[7]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(c2_c2_V[7]),
        .O(\s_axi_AXILiteS_WDATA[9] [7]));
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c2_c2_V[8]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[8]),
        .I1(s_axi_AXILiteS_WSTRB[1]),
        .I2(c2_c2_V[8]),
        .O(\s_axi_AXILiteS_WDATA[9] [8]));
  LUT4 #(
    .INIT(16'h0800)) 
    \int_c2_c2_V[9]_i_1 
       (.I0(\waddr_reg_n_0_[4] ),
        .I1(\waddr_reg_n_0_[5] ),
        .I2(\waddr_reg_n_0_[6] ),
        .I3(\int_c1_c1_V[9]_i_3_n_0 ),
        .O(\waddr_reg[4]_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c2_c2_V[9]_i_2 
       (.I0(s_axi_AXILiteS_WDATA[9]),
        .I1(s_axi_AXILiteS_WSTRB[1]),
        .I2(c2_c2_V[9]),
        .O(\s_axi_AXILiteS_WDATA[9] [9]));
  FDRE #(
    .INIT(1'b0)) 
    \int_c2_c2_V_reg[0] 
       (.C(ap_clk),
        .CE(\waddr_reg[4]_0 ),
        .D(\s_axi_AXILiteS_WDATA[9] [0]),
        .Q(c2_c2_V[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_c2_c2_V_reg[1] 
       (.C(ap_clk),
        .CE(\waddr_reg[4]_0 ),
        .D(\s_axi_AXILiteS_WDATA[9] [1]),
        .Q(c2_c2_V[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_c2_c2_V_reg[2] 
       (.C(ap_clk),
        .CE(\waddr_reg[4]_0 ),
        .D(\s_axi_AXILiteS_WDATA[9] [2]),
        .Q(c2_c2_V[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_c2_c2_V_reg[3] 
       (.C(ap_clk),
        .CE(\waddr_reg[4]_0 ),
        .D(\s_axi_AXILiteS_WDATA[9] [3]),
        .Q(c2_c2_V[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_c2_c2_V_reg[4] 
       (.C(ap_clk),
        .CE(\waddr_reg[4]_0 ),
        .D(\s_axi_AXILiteS_WDATA[9] [4]),
        .Q(c2_c2_V[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_c2_c2_V_reg[5] 
       (.C(ap_clk),
        .CE(\waddr_reg[4]_0 ),
        .D(\s_axi_AXILiteS_WDATA[9] [5]),
        .Q(c2_c2_V[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_c2_c2_V_reg[6] 
       (.C(ap_clk),
        .CE(\waddr_reg[4]_0 ),
        .D(\s_axi_AXILiteS_WDATA[9] [6]),
        .Q(c2_c2_V[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_c2_c2_V_reg[7] 
       (.C(ap_clk),
        .CE(\waddr_reg[4]_0 ),
        .D(\s_axi_AXILiteS_WDATA[9] [7]),
        .Q(c2_c2_V[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_c2_c2_V_reg[8] 
       (.C(ap_clk),
        .CE(\waddr_reg[4]_0 ),
        .D(\s_axi_AXILiteS_WDATA[9] [8]),
        .Q(c2_c2_V[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_c2_c2_V_reg[9] 
       (.C(ap_clk),
        .CE(\waddr_reg[4]_0 ),
        .D(\s_axi_AXILiteS_WDATA[9] [9]),
        .Q(c2_c2_V[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c2_c3_V[0]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[0]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(\int_c2_c3_V_reg[9]_0 [0]),
        .O(or5_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c2_c3_V[1]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[1]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(\int_c2_c3_V_reg[9]_0 [1]),
        .O(or5_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c2_c3_V[2]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[2]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(\int_c2_c3_V_reg[9]_0 [2]),
        .O(or5_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c2_c3_V[3]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[3]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(\int_c2_c3_V_reg[9]_0 [3]),
        .O(or5_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c2_c3_V[4]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[4]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(\int_c2_c3_V_reg[9]_0 [4]),
        .O(or5_out[4]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c2_c3_V[5]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[5]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(\int_c2_c3_V_reg[9]_0 [5]),
        .O(or5_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c2_c3_V[6]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[6]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(\int_c2_c3_V_reg[9]_0 [6]),
        .O(or5_out[6]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c2_c3_V[7]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[7]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(\int_c2_c3_V_reg[9]_0 [7]),
        .O(or5_out[7]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c2_c3_V[8]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[8]),
        .I1(s_axi_AXILiteS_WSTRB[1]),
        .I2(\int_c2_c3_V_reg[9]_0 [8]),
        .O(or5_out[8]));
  LUT4 #(
    .INIT(16'h0800)) 
    \int_c2_c3_V[9]_i_1 
       (.I0(\waddr_reg_n_0_[4] ),
        .I1(\waddr_reg_n_0_[5] ),
        .I2(\waddr_reg_n_0_[6] ),
        .I3(\int_c1_c2_V[9]_i_3_n_0 ),
        .O(int_c2_c3_V0));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c2_c3_V[9]_i_2 
       (.I0(s_axi_AXILiteS_WDATA[9]),
        .I1(s_axi_AXILiteS_WSTRB[1]),
        .I2(\int_c2_c3_V_reg[9]_0 [9]),
        .O(or5_out[9]));
  FDRE #(
    .INIT(1'b0)) 
    \int_c2_c3_V_reg[0] 
       (.C(ap_clk),
        .CE(int_c2_c3_V0),
        .D(or5_out[0]),
        .Q(\int_c2_c3_V_reg[9]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_c2_c3_V_reg[1] 
       (.C(ap_clk),
        .CE(int_c2_c3_V0),
        .D(or5_out[1]),
        .Q(\int_c2_c3_V_reg[9]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_c2_c3_V_reg[2] 
       (.C(ap_clk),
        .CE(int_c2_c3_V0),
        .D(or5_out[2]),
        .Q(\int_c2_c3_V_reg[9]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_c2_c3_V_reg[3] 
       (.C(ap_clk),
        .CE(int_c2_c3_V0),
        .D(or5_out[3]),
        .Q(\int_c2_c3_V_reg[9]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_c2_c3_V_reg[4] 
       (.C(ap_clk),
        .CE(int_c2_c3_V0),
        .D(or5_out[4]),
        .Q(\int_c2_c3_V_reg[9]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_c2_c3_V_reg[5] 
       (.C(ap_clk),
        .CE(int_c2_c3_V0),
        .D(or5_out[5]),
        .Q(\int_c2_c3_V_reg[9]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_c2_c3_V_reg[6] 
       (.C(ap_clk),
        .CE(int_c2_c3_V0),
        .D(or5_out[6]),
        .Q(\int_c2_c3_V_reg[9]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_c2_c3_V_reg[7] 
       (.C(ap_clk),
        .CE(int_c2_c3_V0),
        .D(or5_out[7]),
        .Q(\int_c2_c3_V_reg[9]_0 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_c2_c3_V_reg[8] 
       (.C(ap_clk),
        .CE(int_c2_c3_V0),
        .D(or5_out[8]),
        .Q(\int_c2_c3_V_reg[9]_0 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_c2_c3_V_reg[9] 
       (.C(ap_clk),
        .CE(int_c2_c3_V0),
        .D(or5_out[9]),
        .Q(\int_c2_c3_V_reg[9]_0 [9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c3_c1_V[0]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[0]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(\int_c3_c1_V_reg[9]_0 [0]),
        .O(or4_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c3_c1_V[1]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[1]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(\int_c3_c1_V_reg[9]_0 [1]),
        .O(or4_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c3_c1_V[2]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[2]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(\int_c3_c1_V_reg[9]_0 [2]),
        .O(or4_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c3_c1_V[3]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[3]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(\int_c3_c1_V_reg[9]_0 [3]),
        .O(or4_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c3_c1_V[4]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[4]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(\int_c3_c1_V_reg[9]_0 [4]),
        .O(or4_out[4]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c3_c1_V[5]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[5]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(\int_c3_c1_V_reg[9]_0 [5]),
        .O(or4_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c3_c1_V[6]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[6]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(\int_c3_c1_V_reg[9]_0 [6]),
        .O(or4_out[6]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c3_c1_V[7]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[7]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(\int_c3_c1_V_reg[9]_0 [7]),
        .O(or4_out[7]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c3_c1_V[8]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[8]),
        .I1(s_axi_AXILiteS_WSTRB[1]),
        .I2(\int_c3_c1_V_reg[9]_0 [8]),
        .O(or4_out[8]));
  LUT4 #(
    .INIT(16'h0400)) 
    \int_c3_c1_V[9]_i_1 
       (.I0(\waddr_reg_n_0_[4] ),
        .I1(\waddr_reg_n_0_[6] ),
        .I2(\waddr_reg_n_0_[5] ),
        .I3(\int_c1_c1_V[9]_i_3_n_0 ),
        .O(int_c3_c1_V0));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c3_c1_V[9]_i_2 
       (.I0(s_axi_AXILiteS_WDATA[9]),
        .I1(s_axi_AXILiteS_WSTRB[1]),
        .I2(\int_c3_c1_V_reg[9]_0 [9]),
        .O(or4_out[9]));
  FDRE #(
    .INIT(1'b0)) 
    \int_c3_c1_V_reg[0] 
       (.C(ap_clk),
        .CE(int_c3_c1_V0),
        .D(or4_out[0]),
        .Q(\int_c3_c1_V_reg[9]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_c3_c1_V_reg[1] 
       (.C(ap_clk),
        .CE(int_c3_c1_V0),
        .D(or4_out[1]),
        .Q(\int_c3_c1_V_reg[9]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_c3_c1_V_reg[2] 
       (.C(ap_clk),
        .CE(int_c3_c1_V0),
        .D(or4_out[2]),
        .Q(\int_c3_c1_V_reg[9]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_c3_c1_V_reg[3] 
       (.C(ap_clk),
        .CE(int_c3_c1_V0),
        .D(or4_out[3]),
        .Q(\int_c3_c1_V_reg[9]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_c3_c1_V_reg[4] 
       (.C(ap_clk),
        .CE(int_c3_c1_V0),
        .D(or4_out[4]),
        .Q(\int_c3_c1_V_reg[9]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_c3_c1_V_reg[5] 
       (.C(ap_clk),
        .CE(int_c3_c1_V0),
        .D(or4_out[5]),
        .Q(\int_c3_c1_V_reg[9]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_c3_c1_V_reg[6] 
       (.C(ap_clk),
        .CE(int_c3_c1_V0),
        .D(or4_out[6]),
        .Q(\int_c3_c1_V_reg[9]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_c3_c1_V_reg[7] 
       (.C(ap_clk),
        .CE(int_c3_c1_V0),
        .D(or4_out[7]),
        .Q(\int_c3_c1_V_reg[9]_0 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_c3_c1_V_reg[8] 
       (.C(ap_clk),
        .CE(int_c3_c1_V0),
        .D(or4_out[8]),
        .Q(\int_c3_c1_V_reg[9]_0 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_c3_c1_V_reg[9] 
       (.C(ap_clk),
        .CE(int_c3_c1_V0),
        .D(or4_out[9]),
        .Q(\int_c3_c1_V_reg[9]_0 [9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c3_c2_V[0]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[0]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(c3_c2_V[0]),
        .O(\s_axi_AXILiteS_WDATA[9]_0 [0]));
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c3_c2_V[1]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[1]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(c3_c2_V[1]),
        .O(\s_axi_AXILiteS_WDATA[9]_0 [1]));
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c3_c2_V[2]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[2]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(c3_c2_V[2]),
        .O(\s_axi_AXILiteS_WDATA[9]_0 [2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c3_c2_V[3]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[3]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(c3_c2_V[3]),
        .O(\s_axi_AXILiteS_WDATA[9]_0 [3]));
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c3_c2_V[4]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[4]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(c3_c2_V[4]),
        .O(\s_axi_AXILiteS_WDATA[9]_0 [4]));
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c3_c2_V[5]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[5]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(c3_c2_V[5]),
        .O(\s_axi_AXILiteS_WDATA[9]_0 [5]));
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c3_c2_V[6]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[6]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(c3_c2_V[6]),
        .O(\s_axi_AXILiteS_WDATA[9]_0 [6]));
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c3_c2_V[7]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[7]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(c3_c2_V[7]),
        .O(\s_axi_AXILiteS_WDATA[9]_0 [7]));
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c3_c2_V[8]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[8]),
        .I1(s_axi_AXILiteS_WSTRB[1]),
        .I2(c3_c2_V[8]),
        .O(\s_axi_AXILiteS_WDATA[9]_0 [8]));
  LUT4 #(
    .INIT(16'h0400)) 
    \int_c3_c2_V[9]_i_1 
       (.I0(\waddr_reg_n_0_[4] ),
        .I1(\waddr_reg_n_0_[6] ),
        .I2(\waddr_reg_n_0_[5] ),
        .I3(\int_c1_c2_V[9]_i_3_n_0 ),
        .O(\waddr_reg[4]_1 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c3_c2_V[9]_i_2 
       (.I0(s_axi_AXILiteS_WDATA[9]),
        .I1(s_axi_AXILiteS_WSTRB[1]),
        .I2(c3_c2_V[9]),
        .O(\s_axi_AXILiteS_WDATA[9]_0 [9]));
  FDRE #(
    .INIT(1'b0)) 
    \int_c3_c2_V_reg[0] 
       (.C(ap_clk),
        .CE(\waddr_reg[4]_1 ),
        .D(\s_axi_AXILiteS_WDATA[9]_0 [0]),
        .Q(c3_c2_V[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_c3_c2_V_reg[1] 
       (.C(ap_clk),
        .CE(\waddr_reg[4]_1 ),
        .D(\s_axi_AXILiteS_WDATA[9]_0 [1]),
        .Q(c3_c2_V[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_c3_c2_V_reg[2] 
       (.C(ap_clk),
        .CE(\waddr_reg[4]_1 ),
        .D(\s_axi_AXILiteS_WDATA[9]_0 [2]),
        .Q(c3_c2_V[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_c3_c2_V_reg[3] 
       (.C(ap_clk),
        .CE(\waddr_reg[4]_1 ),
        .D(\s_axi_AXILiteS_WDATA[9]_0 [3]),
        .Q(c3_c2_V[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_c3_c2_V_reg[4] 
       (.C(ap_clk),
        .CE(\waddr_reg[4]_1 ),
        .D(\s_axi_AXILiteS_WDATA[9]_0 [4]),
        .Q(c3_c2_V[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_c3_c2_V_reg[5] 
       (.C(ap_clk),
        .CE(\waddr_reg[4]_1 ),
        .D(\s_axi_AXILiteS_WDATA[9]_0 [5]),
        .Q(c3_c2_V[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_c3_c2_V_reg[6] 
       (.C(ap_clk),
        .CE(\waddr_reg[4]_1 ),
        .D(\s_axi_AXILiteS_WDATA[9]_0 [6]),
        .Q(c3_c2_V[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_c3_c2_V_reg[7] 
       (.C(ap_clk),
        .CE(\waddr_reg[4]_1 ),
        .D(\s_axi_AXILiteS_WDATA[9]_0 [7]),
        .Q(c3_c2_V[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_c3_c2_V_reg[8] 
       (.C(ap_clk),
        .CE(\waddr_reg[4]_1 ),
        .D(\s_axi_AXILiteS_WDATA[9]_0 [8]),
        .Q(c3_c2_V[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_c3_c2_V_reg[9] 
       (.C(ap_clk),
        .CE(\waddr_reg[4]_1 ),
        .D(\s_axi_AXILiteS_WDATA[9]_0 [9]),
        .Q(c3_c2_V[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c3_c3_V[0]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[0]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(\int_c3_c3_V_reg[9]_0 [0]),
        .O(or2_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c3_c3_V[1]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[1]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(\int_c3_c3_V_reg[9]_0 [1]),
        .O(or2_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c3_c3_V[2]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[2]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(\int_c3_c3_V_reg[9]_0 [2]),
        .O(or2_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c3_c3_V[3]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[3]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(\int_c3_c3_V_reg[9]_0 [3]),
        .O(or2_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c3_c3_V[4]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[4]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(\int_c3_c3_V_reg[9]_0 [4]),
        .O(or2_out[4]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c3_c3_V[5]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[5]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(\int_c3_c3_V_reg[9]_0 [5]),
        .O(or2_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c3_c3_V[6]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[6]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(\int_c3_c3_V_reg[9]_0 [6]),
        .O(or2_out[6]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c3_c3_V[7]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[7]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(\int_c3_c3_V_reg[9]_0 [7]),
        .O(or2_out[7]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c3_c3_V[8]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[8]),
        .I1(s_axi_AXILiteS_WSTRB[1]),
        .I2(\int_c3_c3_V_reg[9]_0 [8]),
        .O(or2_out[8]));
  LUT4 #(
    .INIT(16'h0800)) 
    \int_c3_c3_V[9]_i_1 
       (.I0(\waddr_reg_n_0_[6] ),
        .I1(\waddr_reg_n_0_[4] ),
        .I2(\waddr_reg_n_0_[5] ),
        .I3(\int_c1_c1_V[9]_i_3_n_0 ),
        .O(int_c3_c3_V0));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c3_c3_V[9]_i_2 
       (.I0(s_axi_AXILiteS_WDATA[9]),
        .I1(s_axi_AXILiteS_WSTRB[1]),
        .I2(\int_c3_c3_V_reg[9]_0 [9]),
        .O(or2_out[9]));
  FDRE #(
    .INIT(1'b0)) 
    \int_c3_c3_V_reg[0] 
       (.C(ap_clk),
        .CE(int_c3_c3_V0),
        .D(or2_out[0]),
        .Q(\int_c3_c3_V_reg[9]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_c3_c3_V_reg[1] 
       (.C(ap_clk),
        .CE(int_c3_c3_V0),
        .D(or2_out[1]),
        .Q(\int_c3_c3_V_reg[9]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_c3_c3_V_reg[2] 
       (.C(ap_clk),
        .CE(int_c3_c3_V0),
        .D(or2_out[2]),
        .Q(\int_c3_c3_V_reg[9]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_c3_c3_V_reg[3] 
       (.C(ap_clk),
        .CE(int_c3_c3_V0),
        .D(or2_out[3]),
        .Q(\int_c3_c3_V_reg[9]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_c3_c3_V_reg[4] 
       (.C(ap_clk),
        .CE(int_c3_c3_V0),
        .D(or2_out[4]),
        .Q(\int_c3_c3_V_reg[9]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_c3_c3_V_reg[5] 
       (.C(ap_clk),
        .CE(int_c3_c3_V0),
        .D(or2_out[5]),
        .Q(\int_c3_c3_V_reg[9]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_c3_c3_V_reg[6] 
       (.C(ap_clk),
        .CE(int_c3_c3_V0),
        .D(or2_out[6]),
        .Q(\int_c3_c3_V_reg[9]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_c3_c3_V_reg[7] 
       (.C(ap_clk),
        .CE(int_c3_c3_V0),
        .D(or2_out[7]),
        .Q(\int_c3_c3_V_reg[9]_0 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_c3_c3_V_reg[8] 
       (.C(ap_clk),
        .CE(int_c3_c3_V0),
        .D(or2_out[8]),
        .Q(\int_c3_c3_V_reg[9]_0 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_c3_c3_V_reg[9] 
       (.C(ap_clk),
        .CE(int_c3_c3_V0),
        .D(or2_out[9]),
        .Q(\int_c3_c3_V_reg[9]_0 [9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \rdata_data[0]_i_1 
       (.I0(\rdata_data[0]_i_2_n_0 ),
        .I1(s_axi_AXILiteS_ARADDR[6]),
        .I2(\rdata_data[0]_i_3_n_0 ),
        .I3(s_axi_AXILiteS_ARADDR[1]),
        .I4(s_axi_AXILiteS_ARADDR[0]),
        .O(\rdata_data[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB888B8B8B8888888)) 
    \rdata_data[0]_i_2 
       (.I0(\rdata_data[0]_i_4_n_0 ),
        .I1(s_axi_AXILiteS_ARADDR[5]),
        .I2(s_axi_AXILiteS_ARADDR[4]),
        .I3(Q[0]),
        .I4(s_axi_AXILiteS_ARADDR[3]),
        .I5(c1_c1_V[0]),
        .O(\rdata_data[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h3A0A3A3A3A0A0A0A)) 
    \rdata_data[0]_i_3 
       (.I0(\rdata_data[0]_i_5_n_0 ),
        .I1(s_axi_AXILiteS_ARADDR[4]),
        .I2(s_axi_AXILiteS_ARADDR[5]),
        .I3(\int_bias_c3_V_reg[9]_0 [0]),
        .I4(s_axi_AXILiteS_ARADDR[3]),
        .I5(\int_bias_c2_V_reg[9]_0 [0]),
        .O(\rdata_data[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata_data[0]_i_4 
       (.I0(\int_c2_c3_V_reg[9]_0 [0]),
        .I1(c2_c2_V[0]),
        .I2(s_axi_AXILiteS_ARADDR[4]),
        .I3(\int_c2_c1_V_reg[9]_0 [0]),
        .I4(s_axi_AXILiteS_ARADDR[3]),
        .I5(\int_c1_c3_V_reg[9]_0 [0]),
        .O(\rdata_data[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata_data[0]_i_5 
       (.I0(\int_bias_c1_V_reg[9]_0 [0]),
        .I1(\int_c3_c3_V_reg[9]_0 [0]),
        .I2(s_axi_AXILiteS_ARADDR[4]),
        .I3(c3_c2_V[0]),
        .I4(s_axi_AXILiteS_ARADDR[3]),
        .I5(\int_c3_c1_V_reg[9]_0 [0]),
        .O(\rdata_data[0]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \rdata_data[1]_i_1 
       (.I0(\rdata_data[1]_i_2_n_0 ),
        .I1(s_axi_AXILiteS_ARADDR[6]),
        .I2(\rdata_data[1]_i_3_n_0 ),
        .I3(s_axi_AXILiteS_ARADDR[1]),
        .I4(s_axi_AXILiteS_ARADDR[0]),
        .O(\rdata_data[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB888B8B8B8888888)) 
    \rdata_data[1]_i_2 
       (.I0(\rdata_data[1]_i_4_n_0 ),
        .I1(s_axi_AXILiteS_ARADDR[5]),
        .I2(s_axi_AXILiteS_ARADDR[4]),
        .I3(Q[1]),
        .I4(s_axi_AXILiteS_ARADDR[3]),
        .I5(c1_c1_V[1]),
        .O(\rdata_data[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h3A0A3A3A3A0A0A0A)) 
    \rdata_data[1]_i_3 
       (.I0(\rdata_data[1]_i_5_n_0 ),
        .I1(s_axi_AXILiteS_ARADDR[4]),
        .I2(s_axi_AXILiteS_ARADDR[5]),
        .I3(\int_bias_c3_V_reg[9]_0 [1]),
        .I4(s_axi_AXILiteS_ARADDR[3]),
        .I5(\int_bias_c2_V_reg[9]_0 [1]),
        .O(\rdata_data[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata_data[1]_i_4 
       (.I0(\int_c2_c3_V_reg[9]_0 [1]),
        .I1(c2_c2_V[1]),
        .I2(s_axi_AXILiteS_ARADDR[4]),
        .I3(\int_c2_c1_V_reg[9]_0 [1]),
        .I4(s_axi_AXILiteS_ARADDR[3]),
        .I5(\int_c1_c3_V_reg[9]_0 [1]),
        .O(\rdata_data[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata_data[1]_i_5 
       (.I0(\int_bias_c1_V_reg[9]_0 [1]),
        .I1(\int_c3_c3_V_reg[9]_0 [1]),
        .I2(s_axi_AXILiteS_ARADDR[4]),
        .I3(c3_c2_V[1]),
        .I4(s_axi_AXILiteS_ARADDR[3]),
        .I5(\int_c3_c1_V_reg[9]_0 [1]),
        .O(\rdata_data[1]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \rdata_data[2]_i_1 
       (.I0(\rdata_data[2]_i_2_n_0 ),
        .I1(s_axi_AXILiteS_ARADDR[6]),
        .I2(\rdata_data[2]_i_3_n_0 ),
        .I3(s_axi_AXILiteS_ARADDR[1]),
        .I4(s_axi_AXILiteS_ARADDR[0]),
        .O(\rdata_data[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB888B8B8B8888888)) 
    \rdata_data[2]_i_2 
       (.I0(\rdata_data[2]_i_4_n_0 ),
        .I1(s_axi_AXILiteS_ARADDR[5]),
        .I2(s_axi_AXILiteS_ARADDR[4]),
        .I3(Q[2]),
        .I4(s_axi_AXILiteS_ARADDR[3]),
        .I5(c1_c1_V[2]),
        .O(\rdata_data[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h3A0A3A3A3A0A0A0A)) 
    \rdata_data[2]_i_3 
       (.I0(\rdata_data[2]_i_5_n_0 ),
        .I1(s_axi_AXILiteS_ARADDR[4]),
        .I2(s_axi_AXILiteS_ARADDR[5]),
        .I3(\int_bias_c3_V_reg[9]_0 [2]),
        .I4(s_axi_AXILiteS_ARADDR[3]),
        .I5(\int_bias_c2_V_reg[9]_0 [2]),
        .O(\rdata_data[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata_data[2]_i_4 
       (.I0(\int_c2_c3_V_reg[9]_0 [2]),
        .I1(c2_c2_V[2]),
        .I2(s_axi_AXILiteS_ARADDR[4]),
        .I3(\int_c2_c1_V_reg[9]_0 [2]),
        .I4(s_axi_AXILiteS_ARADDR[3]),
        .I5(\int_c1_c3_V_reg[9]_0 [2]),
        .O(\rdata_data[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata_data[2]_i_5 
       (.I0(\int_bias_c1_V_reg[9]_0 [2]),
        .I1(\int_c3_c3_V_reg[9]_0 [2]),
        .I2(s_axi_AXILiteS_ARADDR[4]),
        .I3(c3_c2_V[2]),
        .I4(s_axi_AXILiteS_ARADDR[3]),
        .I5(\int_c3_c1_V_reg[9]_0 [2]),
        .O(\rdata_data[2]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \rdata_data[3]_i_1 
       (.I0(\rdata_data[3]_i_2_n_0 ),
        .I1(s_axi_AXILiteS_ARADDR[6]),
        .I2(\rdata_data[3]_i_3_n_0 ),
        .I3(s_axi_AXILiteS_ARADDR[1]),
        .I4(s_axi_AXILiteS_ARADDR[0]),
        .O(\rdata_data[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB888B8B8B8888888)) 
    \rdata_data[3]_i_2 
       (.I0(\rdata_data[3]_i_4_n_0 ),
        .I1(s_axi_AXILiteS_ARADDR[5]),
        .I2(s_axi_AXILiteS_ARADDR[4]),
        .I3(Q[3]),
        .I4(s_axi_AXILiteS_ARADDR[3]),
        .I5(c1_c1_V[3]),
        .O(\rdata_data[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h3A0A3A3A3A0A0A0A)) 
    \rdata_data[3]_i_3 
       (.I0(\rdata_data[3]_i_5_n_0 ),
        .I1(s_axi_AXILiteS_ARADDR[4]),
        .I2(s_axi_AXILiteS_ARADDR[5]),
        .I3(\int_bias_c3_V_reg[9]_0 [3]),
        .I4(s_axi_AXILiteS_ARADDR[3]),
        .I5(\int_bias_c2_V_reg[9]_0 [3]),
        .O(\rdata_data[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata_data[3]_i_4 
       (.I0(\int_c2_c3_V_reg[9]_0 [3]),
        .I1(c2_c2_V[3]),
        .I2(s_axi_AXILiteS_ARADDR[4]),
        .I3(\int_c2_c1_V_reg[9]_0 [3]),
        .I4(s_axi_AXILiteS_ARADDR[3]),
        .I5(\int_c1_c3_V_reg[9]_0 [3]),
        .O(\rdata_data[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata_data[3]_i_5 
       (.I0(\int_bias_c1_V_reg[9]_0 [3]),
        .I1(\int_c3_c3_V_reg[9]_0 [3]),
        .I2(s_axi_AXILiteS_ARADDR[4]),
        .I3(c3_c2_V[3]),
        .I4(s_axi_AXILiteS_ARADDR[3]),
        .I5(\int_c3_c1_V_reg[9]_0 [3]),
        .O(\rdata_data[3]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \rdata_data[4]_i_1 
       (.I0(\rdata_data[4]_i_2_n_0 ),
        .I1(s_axi_AXILiteS_ARADDR[6]),
        .I2(\rdata_data[4]_i_3_n_0 ),
        .I3(s_axi_AXILiteS_ARADDR[1]),
        .I4(s_axi_AXILiteS_ARADDR[0]),
        .O(\rdata_data[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB888B8B8B8888888)) 
    \rdata_data[4]_i_2 
       (.I0(\rdata_data[4]_i_4_n_0 ),
        .I1(s_axi_AXILiteS_ARADDR[5]),
        .I2(s_axi_AXILiteS_ARADDR[4]),
        .I3(Q[4]),
        .I4(s_axi_AXILiteS_ARADDR[3]),
        .I5(c1_c1_V[4]),
        .O(\rdata_data[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h3A0A3A3A3A0A0A0A)) 
    \rdata_data[4]_i_3 
       (.I0(\rdata_data[4]_i_5_n_0 ),
        .I1(s_axi_AXILiteS_ARADDR[4]),
        .I2(s_axi_AXILiteS_ARADDR[5]),
        .I3(\int_bias_c3_V_reg[9]_0 [4]),
        .I4(s_axi_AXILiteS_ARADDR[3]),
        .I5(\int_bias_c2_V_reg[9]_0 [4]),
        .O(\rdata_data[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata_data[4]_i_4 
       (.I0(\int_c2_c3_V_reg[9]_0 [4]),
        .I1(c2_c2_V[4]),
        .I2(s_axi_AXILiteS_ARADDR[4]),
        .I3(\int_c2_c1_V_reg[9]_0 [4]),
        .I4(s_axi_AXILiteS_ARADDR[3]),
        .I5(\int_c1_c3_V_reg[9]_0 [4]),
        .O(\rdata_data[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata_data[4]_i_5 
       (.I0(\int_bias_c1_V_reg[9]_0 [4]),
        .I1(\int_c3_c3_V_reg[9]_0 [4]),
        .I2(s_axi_AXILiteS_ARADDR[4]),
        .I3(c3_c2_V[4]),
        .I4(s_axi_AXILiteS_ARADDR[3]),
        .I5(\int_c3_c1_V_reg[9]_0 [4]),
        .O(\rdata_data[4]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \rdata_data[5]_i_1 
       (.I0(\rdata_data[5]_i_2_n_0 ),
        .I1(s_axi_AXILiteS_ARADDR[6]),
        .I2(\rdata_data[5]_i_3_n_0 ),
        .I3(s_axi_AXILiteS_ARADDR[1]),
        .I4(s_axi_AXILiteS_ARADDR[0]),
        .O(\rdata_data[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB888B8B8B8888888)) 
    \rdata_data[5]_i_2 
       (.I0(\rdata_data[5]_i_4_n_0 ),
        .I1(s_axi_AXILiteS_ARADDR[5]),
        .I2(s_axi_AXILiteS_ARADDR[4]),
        .I3(Q[5]),
        .I4(s_axi_AXILiteS_ARADDR[3]),
        .I5(c1_c1_V[5]),
        .O(\rdata_data[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h3A0A3A3A3A0A0A0A)) 
    \rdata_data[5]_i_3 
       (.I0(\rdata_data[5]_i_5_n_0 ),
        .I1(s_axi_AXILiteS_ARADDR[4]),
        .I2(s_axi_AXILiteS_ARADDR[5]),
        .I3(\int_bias_c3_V_reg[9]_0 [5]),
        .I4(s_axi_AXILiteS_ARADDR[3]),
        .I5(\int_bias_c2_V_reg[9]_0 [5]),
        .O(\rdata_data[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata_data[5]_i_4 
       (.I0(\int_c2_c3_V_reg[9]_0 [5]),
        .I1(c2_c2_V[5]),
        .I2(s_axi_AXILiteS_ARADDR[4]),
        .I3(\int_c2_c1_V_reg[9]_0 [5]),
        .I4(s_axi_AXILiteS_ARADDR[3]),
        .I5(\int_c1_c3_V_reg[9]_0 [5]),
        .O(\rdata_data[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata_data[5]_i_5 
       (.I0(\int_bias_c1_V_reg[9]_0 [5]),
        .I1(\int_c3_c3_V_reg[9]_0 [5]),
        .I2(s_axi_AXILiteS_ARADDR[4]),
        .I3(c3_c2_V[5]),
        .I4(s_axi_AXILiteS_ARADDR[3]),
        .I5(\int_c3_c1_V_reg[9]_0 [5]),
        .O(\rdata_data[5]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \rdata_data[6]_i_1 
       (.I0(\rdata_data[6]_i_2_n_0 ),
        .I1(s_axi_AXILiteS_ARADDR[6]),
        .I2(\rdata_data[6]_i_3_n_0 ),
        .I3(s_axi_AXILiteS_ARADDR[1]),
        .I4(s_axi_AXILiteS_ARADDR[0]),
        .O(\rdata_data[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB888B8B8B8888888)) 
    \rdata_data[6]_i_2 
       (.I0(\rdata_data[6]_i_4_n_0 ),
        .I1(s_axi_AXILiteS_ARADDR[5]),
        .I2(s_axi_AXILiteS_ARADDR[4]),
        .I3(Q[6]),
        .I4(s_axi_AXILiteS_ARADDR[3]),
        .I5(c1_c1_V[6]),
        .O(\rdata_data[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h3A0A3A3A3A0A0A0A)) 
    \rdata_data[6]_i_3 
       (.I0(\rdata_data[6]_i_5_n_0 ),
        .I1(s_axi_AXILiteS_ARADDR[4]),
        .I2(s_axi_AXILiteS_ARADDR[5]),
        .I3(\int_bias_c3_V_reg[9]_0 [6]),
        .I4(s_axi_AXILiteS_ARADDR[3]),
        .I5(\int_bias_c2_V_reg[9]_0 [6]),
        .O(\rdata_data[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata_data[6]_i_4 
       (.I0(\int_c2_c3_V_reg[9]_0 [6]),
        .I1(c2_c2_V[6]),
        .I2(s_axi_AXILiteS_ARADDR[4]),
        .I3(\int_c2_c1_V_reg[9]_0 [6]),
        .I4(s_axi_AXILiteS_ARADDR[3]),
        .I5(\int_c1_c3_V_reg[9]_0 [6]),
        .O(\rdata_data[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata_data[6]_i_5 
       (.I0(\int_bias_c1_V_reg[9]_0 [6]),
        .I1(\int_c3_c3_V_reg[9]_0 [6]),
        .I2(s_axi_AXILiteS_ARADDR[4]),
        .I3(c3_c2_V[6]),
        .I4(s_axi_AXILiteS_ARADDR[3]),
        .I5(\int_c3_c1_V_reg[9]_0 [6]),
        .O(\rdata_data[6]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \rdata_data[7]_i_1 
       (.I0(\rdata_data[7]_i_2_n_0 ),
        .I1(s_axi_AXILiteS_ARADDR[6]),
        .I2(\rdata_data[7]_i_3_n_0 ),
        .I3(s_axi_AXILiteS_ARADDR[1]),
        .I4(s_axi_AXILiteS_ARADDR[0]),
        .O(\rdata_data[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB888B8B8B8888888)) 
    \rdata_data[7]_i_2 
       (.I0(\rdata_data[7]_i_4_n_0 ),
        .I1(s_axi_AXILiteS_ARADDR[5]),
        .I2(s_axi_AXILiteS_ARADDR[4]),
        .I3(Q[7]),
        .I4(s_axi_AXILiteS_ARADDR[3]),
        .I5(c1_c1_V[7]),
        .O(\rdata_data[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h3A0A3A3A3A0A0A0A)) 
    \rdata_data[7]_i_3 
       (.I0(\rdata_data[7]_i_5_n_0 ),
        .I1(s_axi_AXILiteS_ARADDR[4]),
        .I2(s_axi_AXILiteS_ARADDR[5]),
        .I3(\int_bias_c3_V_reg[9]_0 [7]),
        .I4(s_axi_AXILiteS_ARADDR[3]),
        .I5(\int_bias_c2_V_reg[9]_0 [7]),
        .O(\rdata_data[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata_data[7]_i_4 
       (.I0(\int_c2_c3_V_reg[9]_0 [7]),
        .I1(c2_c2_V[7]),
        .I2(s_axi_AXILiteS_ARADDR[4]),
        .I3(\int_c2_c1_V_reg[9]_0 [7]),
        .I4(s_axi_AXILiteS_ARADDR[3]),
        .I5(\int_c1_c3_V_reg[9]_0 [7]),
        .O(\rdata_data[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata_data[7]_i_5 
       (.I0(\int_bias_c1_V_reg[9]_0 [7]),
        .I1(\int_c3_c3_V_reg[9]_0 [7]),
        .I2(s_axi_AXILiteS_ARADDR[4]),
        .I3(c3_c2_V[7]),
        .I4(s_axi_AXILiteS_ARADDR[3]),
        .I5(\int_c3_c1_V_reg[9]_0 [7]),
        .O(\rdata_data[7]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \rdata_data[8]_i_1 
       (.I0(\rdata_data[8]_i_2_n_0 ),
        .I1(s_axi_AXILiteS_ARADDR[6]),
        .I2(\rdata_data[8]_i_3_n_0 ),
        .I3(s_axi_AXILiteS_ARADDR[1]),
        .I4(s_axi_AXILiteS_ARADDR[0]),
        .O(\rdata_data[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB888B8B8B8888888)) 
    \rdata_data[8]_i_2 
       (.I0(\rdata_data[8]_i_4_n_0 ),
        .I1(s_axi_AXILiteS_ARADDR[5]),
        .I2(s_axi_AXILiteS_ARADDR[4]),
        .I3(Q[8]),
        .I4(s_axi_AXILiteS_ARADDR[3]),
        .I5(c1_c1_V[8]),
        .O(\rdata_data[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h3A0A3A3A3A0A0A0A)) 
    \rdata_data[8]_i_3 
       (.I0(\rdata_data[8]_i_5_n_0 ),
        .I1(s_axi_AXILiteS_ARADDR[4]),
        .I2(s_axi_AXILiteS_ARADDR[5]),
        .I3(\int_bias_c3_V_reg[9]_0 [8]),
        .I4(s_axi_AXILiteS_ARADDR[3]),
        .I5(\int_bias_c2_V_reg[9]_0 [8]),
        .O(\rdata_data[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata_data[8]_i_4 
       (.I0(\int_c2_c3_V_reg[9]_0 [8]),
        .I1(c2_c2_V[8]),
        .I2(s_axi_AXILiteS_ARADDR[4]),
        .I3(\int_c2_c1_V_reg[9]_0 [8]),
        .I4(s_axi_AXILiteS_ARADDR[3]),
        .I5(\int_c1_c3_V_reg[9]_0 [8]),
        .O(\rdata_data[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata_data[8]_i_5 
       (.I0(\int_bias_c1_V_reg[9]_0 [8]),
        .I1(\int_c3_c3_V_reg[9]_0 [8]),
        .I2(s_axi_AXILiteS_ARADDR[4]),
        .I3(c3_c2_V[8]),
        .I4(s_axi_AXILiteS_ARADDR[3]),
        .I5(\int_c3_c1_V_reg[9]_0 [8]),
        .O(\rdata_data[8]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \rdata_data[9]_i_1 
       (.I0(s_axi_AXILiteS_ARADDR[2]),
        .I1(\FSM_onehot_rstate_reg[1]_0 ),
        .I2(s_axi_AXILiteS_ARVALID),
        .O(\rdata_data[9]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \rdata_data[9]_i_2 
       (.I0(s_axi_AXILiteS_ARVALID),
        .I1(\FSM_onehot_rstate_reg[1]_0 ),
        .O(\rdata_data[9]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \rdata_data[9]_i_3 
       (.I0(\rdata_data[9]_i_4_n_0 ),
        .I1(s_axi_AXILiteS_ARADDR[6]),
        .I2(\rdata_data[9]_i_5_n_0 ),
        .I3(s_axi_AXILiteS_ARADDR[1]),
        .I4(s_axi_AXILiteS_ARADDR[0]),
        .O(\rdata_data[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hB888B8B8B8888888)) 
    \rdata_data[9]_i_4 
       (.I0(\rdata_data[9]_i_6_n_0 ),
        .I1(s_axi_AXILiteS_ARADDR[5]),
        .I2(s_axi_AXILiteS_ARADDR[4]),
        .I3(Q[9]),
        .I4(s_axi_AXILiteS_ARADDR[3]),
        .I5(c1_c1_V[9]),
        .O(\rdata_data[9]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h3A0A3A3A3A0A0A0A)) 
    \rdata_data[9]_i_5 
       (.I0(\rdata_data[9]_i_7_n_0 ),
        .I1(s_axi_AXILiteS_ARADDR[4]),
        .I2(s_axi_AXILiteS_ARADDR[5]),
        .I3(\int_bias_c3_V_reg[9]_0 [9]),
        .I4(s_axi_AXILiteS_ARADDR[3]),
        .I5(\int_bias_c2_V_reg[9]_0 [9]),
        .O(\rdata_data[9]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata_data[9]_i_6 
       (.I0(\int_c2_c3_V_reg[9]_0 [9]),
        .I1(c2_c2_V[9]),
        .I2(s_axi_AXILiteS_ARADDR[4]),
        .I3(\int_c2_c1_V_reg[9]_0 [9]),
        .I4(s_axi_AXILiteS_ARADDR[3]),
        .I5(\int_c1_c3_V_reg[9]_0 [9]),
        .O(\rdata_data[9]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata_data[9]_i_7 
       (.I0(\int_bias_c1_V_reg[9]_0 [9]),
        .I1(\int_c3_c3_V_reg[9]_0 [9]),
        .I2(s_axi_AXILiteS_ARADDR[4]),
        .I3(c3_c2_V[9]),
        .I4(s_axi_AXILiteS_ARADDR[3]),
        .I5(\int_c3_c1_V_reg[9]_0 [9]),
        .O(\rdata_data[9]_i_7_n_0 ));
  FDRE \rdata_data_reg[0] 
       (.C(control),
        .CE(\rdata_data[9]_i_2_n_0 ),
        .D(\rdata_data[0]_i_1_n_0 ),
        .Q(s_axi_AXILiteS_RDATA[0]),
        .R(\rdata_data[9]_i_1_n_0 ));
  FDRE \rdata_data_reg[1] 
       (.C(control),
        .CE(\rdata_data[9]_i_2_n_0 ),
        .D(\rdata_data[1]_i_1_n_0 ),
        .Q(s_axi_AXILiteS_RDATA[1]),
        .R(\rdata_data[9]_i_1_n_0 ));
  FDRE \rdata_data_reg[2] 
       (.C(control),
        .CE(\rdata_data[9]_i_2_n_0 ),
        .D(\rdata_data[2]_i_1_n_0 ),
        .Q(s_axi_AXILiteS_RDATA[2]),
        .R(\rdata_data[9]_i_1_n_0 ));
  FDRE \rdata_data_reg[3] 
       (.C(control),
        .CE(\rdata_data[9]_i_2_n_0 ),
        .D(\rdata_data[3]_i_1_n_0 ),
        .Q(s_axi_AXILiteS_RDATA[3]),
        .R(\rdata_data[9]_i_1_n_0 ));
  FDRE \rdata_data_reg[4] 
       (.C(control),
        .CE(\rdata_data[9]_i_2_n_0 ),
        .D(\rdata_data[4]_i_1_n_0 ),
        .Q(s_axi_AXILiteS_RDATA[4]),
        .R(\rdata_data[9]_i_1_n_0 ));
  FDRE \rdata_data_reg[5] 
       (.C(control),
        .CE(\rdata_data[9]_i_2_n_0 ),
        .D(\rdata_data[5]_i_1_n_0 ),
        .Q(s_axi_AXILiteS_RDATA[5]),
        .R(\rdata_data[9]_i_1_n_0 ));
  FDRE \rdata_data_reg[6] 
       (.C(control),
        .CE(\rdata_data[9]_i_2_n_0 ),
        .D(\rdata_data[6]_i_1_n_0 ),
        .Q(s_axi_AXILiteS_RDATA[6]),
        .R(\rdata_data[9]_i_1_n_0 ));
  FDRE \rdata_data_reg[7] 
       (.C(control),
        .CE(\rdata_data[9]_i_2_n_0 ),
        .D(\rdata_data[7]_i_1_n_0 ),
        .Q(s_axi_AXILiteS_RDATA[7]),
        .R(\rdata_data[9]_i_1_n_0 ));
  FDRE \rdata_data_reg[8] 
       (.C(control),
        .CE(\rdata_data[9]_i_2_n_0 ),
        .D(\rdata_data[8]_i_1_n_0 ),
        .Q(s_axi_AXILiteS_RDATA[8]),
        .R(\rdata_data[9]_i_1_n_0 ));
  FDRE \rdata_data_reg[9] 
       (.C(control),
        .CE(\rdata_data[9]_i_2_n_0 ),
        .D(\rdata_data[9]_i_3_n_0 ),
        .Q(s_axi_AXILiteS_RDATA[9]),
        .R(\rdata_data[9]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \waddr[6]_i_1 
       (.I0(s_axi_AXILiteS_AWVALID),
        .I1(\FSM_onehot_wstate_reg[1]_0 ),
        .O(waddr));
  FDRE \waddr_reg[0] 
       (.C(control),
        .CE(waddr),
        .D(s_axi_AXILiteS_AWADDR[0]),
        .Q(\waddr_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \waddr_reg[1] 
       (.C(control),
        .CE(waddr),
        .D(s_axi_AXILiteS_AWADDR[1]),
        .Q(\waddr_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \waddr_reg[2] 
       (.C(control),
        .CE(waddr),
        .D(s_axi_AXILiteS_AWADDR[2]),
        .Q(\waddr_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \waddr_reg[3] 
       (.C(control),
        .CE(waddr),
        .D(s_axi_AXILiteS_AWADDR[3]),
        .Q(\waddr_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \waddr_reg[4] 
       (.C(control),
        .CE(waddr),
        .D(s_axi_AXILiteS_AWADDR[4]),
        .Q(\waddr_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \waddr_reg[5] 
       (.C(control),
        .CE(waddr),
        .D(s_axi_AXILiteS_AWADDR[5]),
        .Q(\waddr_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \waddr_reg[6] 
       (.C(control),
        .CE(waddr),
        .D(s_axi_AXILiteS_AWADDR[6]),
        .Q(\waddr_reg_n_0_[6] ),
        .R(1'b0));
endmodule

module base_color_convert_1_color_convert_macbkb
   (P,
    ap_block_pp0_stage0_11001,
    p,
    ap_clk,
    B,
    Q,
    p_0);
  output [18:0]P;
  input ap_block_pp0_stage0_11001;
  input p;
  input ap_clk;
  input [7:0]B;
  input [9:0]Q;
  input [17:0]p_0;

  wire [7:0]B;
  wire [18:0]P;
  wire [9:0]Q;
  wire ap_block_pp0_stage0_11001;
  wire ap_clk;
  wire p;
  wire [17:0]p_0;

  base_color_convert_1_color_convert_macbkb_DSP48_0_19 color_convert_macbkb_DSP48_0_U
       (.B(B),
        .P(P),
        .Q(Q),
        .ap_block_pp0_stage0_11001(ap_block_pp0_stage0_11001),
        .ap_clk(ap_clk),
        .p_0(p),
        .p_1(p_0));
endmodule

(* ORIG_REF_NAME = "color_convert_macbkb" *) 
module base_color_convert_1_color_convert_macbkb_0
   (P,
    ap_block_pp0_stage0_11001,
    p,
    ap_clk,
    B,
    p_0,
    p_1);
  output [18:0]P;
  input ap_block_pp0_stage0_11001;
  input p;
  input ap_clk;
  input [7:0]B;
  input [9:0]p_0;
  input [17:0]p_1;

  wire [7:0]B;
  wire [18:0]P;
  wire ap_block_pp0_stage0_11001;
  wire ap_clk;
  wire p;
  wire [9:0]p_0;
  wire [17:0]p_1;

  base_color_convert_1_color_convert_macbkb_DSP48_0_18 color_convert_macbkb_DSP48_0_U
       (.B(B),
        .P(P),
        .ap_block_pp0_stage0_11001(ap_block_pp0_stage0_11001),
        .ap_clk(ap_clk),
        .p_0(p),
        .p_1(p_0),
        .p_2(p_1));
endmodule

(* ORIG_REF_NAME = "color_convert_macbkb" *) 
module base_color_convert_1_color_convert_macbkb_1
   (P,
    ap_block_pp0_stage0_11001,
    p,
    ap_clk,
    B,
    p_0,
    p_1);
  output [18:0]P;
  input ap_block_pp0_stage0_11001;
  input p;
  input ap_clk;
  input [7:0]B;
  input [9:0]p_0;
  input [17:0]p_1;

  wire [7:0]B;
  wire [18:0]P;
  wire ap_block_pp0_stage0_11001;
  wire ap_clk;
  wire p;
  wire [9:0]p_0;
  wire [17:0]p_1;

  base_color_convert_1_color_convert_macbkb_DSP48_0 color_convert_macbkb_DSP48_0_U
       (.B(B),
        .P(P),
        .ap_block_pp0_stage0_11001(ap_block_pp0_stage0_11001),
        .ap_clk(ap_clk),
        .p_0(p),
        .p_1(p_0),
        .p_2(p_1));
endmodule

module base_color_convert_1_color_convert_macbkb_DSP48_0
   (P,
    ap_block_pp0_stage0_11001,
    p_0,
    ap_clk,
    B,
    p_1,
    p_2);
  output [18:0]P;
  input ap_block_pp0_stage0_11001;
  input p_0;
  input ap_clk;
  input [7:0]B;
  input [9:0]p_1;
  input [17:0]p_2;

  wire [7:0]B;
  wire [18:0]P;
  wire ap_block_pp0_stage0_11001;
  wire ap_clk;
  wire p_0;
  wire [9:0]p_1;
  wire [17:0]p_2;
  wire NLW_p_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p_OVERFLOW_UNCONNECTED;
  wire NLW_p_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p_PATTERNDETECT_UNCONNECTED;
  wire NLW_p_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p_CARRYOUT_UNCONNECTED;
  wire [47:19]NLW_p_P_UNCONNECTED;
  wire [47:0]NLW_p_PCOUT_UNCONNECTED;

  DSP48E1 #(
    .ACASCREG(2),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(2),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(2),
    .BREG(2),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    p
       (.A({p_1[9],p_1[9],p_1[9],p_1[9],p_1[9],p_1[9],p_1[9],p_1[9],p_1[9],p_1[9],p_1[9],p_1[9],p_1[9],p_1[9],p_1[9],p_1[9],p_1[9],p_1[9],p_1[9],p_1[9],p_1}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,B}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p_BCOUT_UNCONNECTED[17:0]),
        .C({p_2[17],p_2[17],p_2[17],p_2[17],p_2[17],p_2[17],p_2[17],p_2[17],p_2[17],p_2[17],p_2[17],p_2[17],p_2[17],p_2[17],p_2[17],p_2[17],p_2[17],p_2[17],p_2[17],p_2[17],p_2[17],p_2[17],p_2[17],p_2[17],p_2[17],p_2[17],p_2[17],p_2[17],p_2[17],p_2[17],p_2}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b1),
        .CEA2(ap_block_pp0_stage0_11001),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(ap_block_pp0_stage0_11001),
        .CEB2(ap_block_pp0_stage0_11001),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(p_0),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p_OVERFLOW_UNCONNECTED),
        .P({NLW_p_P_UNCONNECTED[47:19],P}),
        .PATTERNBDETECT(NLW_p_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_p_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p_UNDERFLOW_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "color_convert_macbkb_DSP48_0" *) 
module base_color_convert_1_color_convert_macbkb_DSP48_0_18
   (P,
    ap_block_pp0_stage0_11001,
    p_0,
    ap_clk,
    B,
    p_1,
    p_2);
  output [18:0]P;
  input ap_block_pp0_stage0_11001;
  input p_0;
  input ap_clk;
  input [7:0]B;
  input [9:0]p_1;
  input [17:0]p_2;

  wire [7:0]B;
  wire [18:0]P;
  wire ap_block_pp0_stage0_11001;
  wire ap_clk;
  wire p_0;
  wire [9:0]p_1;
  wire [17:0]p_2;
  wire NLW_p_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p_OVERFLOW_UNCONNECTED;
  wire NLW_p_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p_PATTERNDETECT_UNCONNECTED;
  wire NLW_p_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p_CARRYOUT_UNCONNECTED;
  wire [47:19]NLW_p_P_UNCONNECTED;
  wire [47:0]NLW_p_PCOUT_UNCONNECTED;

  DSP48E1 #(
    .ACASCREG(2),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(2),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(2),
    .BREG(2),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    p
       (.A({p_1[9],p_1[9],p_1[9],p_1[9],p_1[9],p_1[9],p_1[9],p_1[9],p_1[9],p_1[9],p_1[9],p_1[9],p_1[9],p_1[9],p_1[9],p_1[9],p_1[9],p_1[9],p_1[9],p_1[9],p_1}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,B}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p_BCOUT_UNCONNECTED[17:0]),
        .C({p_2[17],p_2[17],p_2[17],p_2[17],p_2[17],p_2[17],p_2[17],p_2[17],p_2[17],p_2[17],p_2[17],p_2[17],p_2[17],p_2[17],p_2[17],p_2[17],p_2[17],p_2[17],p_2[17],p_2[17],p_2[17],p_2[17],p_2[17],p_2[17],p_2[17],p_2[17],p_2[17],p_2[17],p_2[17],p_2[17],p_2}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b1),
        .CEA2(ap_block_pp0_stage0_11001),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(ap_block_pp0_stage0_11001),
        .CEB2(ap_block_pp0_stage0_11001),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(p_0),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p_OVERFLOW_UNCONNECTED),
        .P({NLW_p_P_UNCONNECTED[47:19],P}),
        .PATTERNBDETECT(NLW_p_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_p_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p_UNDERFLOW_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "color_convert_macbkb_DSP48_0" *) 
module base_color_convert_1_color_convert_macbkb_DSP48_0_19
   (P,
    ap_block_pp0_stage0_11001,
    p_0,
    ap_clk,
    B,
    Q,
    p_1);
  output [18:0]P;
  input ap_block_pp0_stage0_11001;
  input p_0;
  input ap_clk;
  input [7:0]B;
  input [9:0]Q;
  input [17:0]p_1;

  wire [7:0]B;
  wire [18:0]P;
  wire [9:0]Q;
  wire ap_block_pp0_stage0_11001;
  wire ap_clk;
  wire p_0;
  wire [17:0]p_1;
  wire NLW_p_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p_OVERFLOW_UNCONNECTED;
  wire NLW_p_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p_PATTERNDETECT_UNCONNECTED;
  wire NLW_p_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p_CARRYOUT_UNCONNECTED;
  wire [47:19]NLW_p_P_UNCONNECTED;
  wire [47:0]NLW_p_PCOUT_UNCONNECTED;

  DSP48E1 #(
    .ACASCREG(2),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(2),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(2),
    .BREG(2),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    p
       (.A({Q[9],Q[9],Q[9],Q[9],Q[9],Q[9],Q[9],Q[9],Q[9],Q[9],Q[9],Q[9],Q[9],Q[9],Q[9],Q[9],Q[9],Q[9],Q[9],Q[9],Q}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,B}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p_BCOUT_UNCONNECTED[17:0]),
        .C({p_1[17],p_1[17],p_1[17],p_1[17],p_1[17],p_1[17],p_1[17],p_1[17],p_1[17],p_1[17],p_1[17],p_1[17],p_1[17],p_1[17],p_1[17],p_1[17],p_1[17],p_1[17],p_1[17],p_1[17],p_1[17],p_1[17],p_1[17],p_1[17],p_1[17],p_1[17],p_1[17],p_1[17],p_1[17],p_1[17],p_1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b1),
        .CEA2(ap_block_pp0_stage0_11001),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(ap_block_pp0_stage0_11001),
        .CEB2(ap_block_pp0_stage0_11001),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(p_0),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p_OVERFLOW_UNCONNECTED),
        .P({NLW_p_P_UNCONNECTED[47:19],P}),
        .PATTERNBDETECT(NLW_p_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_p_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p_UNDERFLOW_UNCONNECTED));
endmodule

module base_color_convert_1_color_convert_maccud
   (D,
    or_ln785_fu_430_p2,
    O,
    and_ln781_fu_424_p2,
    ap_block_pp0_stage0_11001,
    p,
    ap_clk,
    Q,
    p_0,
    P,
    DI,
    \p_Val2_7_reg_1042_reg[4]_i_2 ,
    \p_Val2_7_reg_1042_reg[4]_i_2_0 ,
    \p_Val2_7_reg_1042_reg[4]_i_2_1 ,
    \p_Val2_7_reg_1042_reg[7]_i_2 ,
    \p_Val2_7_reg_1042_reg[7]_i_2_0 ,
    \p_Val2_7_reg_1042_reg[7]_i_2_1 ,
    \p_Val2_7_reg_1042_reg[7]_i_2_2 ,
    \p_Val2_7_reg_1042_reg[7]_i_4 ,
    \p_Val2_7_reg_1042_reg[7]_i_4_0 );
  output [7:0]D;
  output or_ln785_fu_430_p2;
  output [0:0]O;
  output and_ln781_fu_424_p2;
  input ap_block_pp0_stage0_11001;
  input p;
  input ap_clk;
  input [7:0]Q;
  input [9:0]p_0;
  input [18:0]P;
  input [1:0]DI;
  input \p_Val2_7_reg_1042_reg[4]_i_2 ;
  input \p_Val2_7_reg_1042_reg[4]_i_2_0 ;
  input \p_Val2_7_reg_1042_reg[4]_i_2_1 ;
  input \p_Val2_7_reg_1042_reg[7]_i_2 ;
  input \p_Val2_7_reg_1042_reg[7]_i_2_0 ;
  input \p_Val2_7_reg_1042_reg[7]_i_2_1 ;
  input \p_Val2_7_reg_1042_reg[7]_i_2_2 ;
  input \p_Val2_7_reg_1042_reg[7]_i_4 ;
  input \p_Val2_7_reg_1042_reg[7]_i_4_0 ;

  wire [7:0]D;
  wire [1:0]DI;
  wire [0:0]O;
  wire [18:0]P;
  wire [7:0]Q;
  wire and_ln781_fu_424_p2;
  wire ap_block_pp0_stage0_11001;
  wire ap_clk;
  wire or_ln785_fu_430_p2;
  wire p;
  wire [9:0]p_0;
  wire \p_Val2_7_reg_1042_reg[4]_i_2 ;
  wire \p_Val2_7_reg_1042_reg[4]_i_2_0 ;
  wire \p_Val2_7_reg_1042_reg[4]_i_2_1 ;
  wire \p_Val2_7_reg_1042_reg[7]_i_2 ;
  wire \p_Val2_7_reg_1042_reg[7]_i_2_0 ;
  wire \p_Val2_7_reg_1042_reg[7]_i_2_1 ;
  wire \p_Val2_7_reg_1042_reg[7]_i_2_2 ;
  wire \p_Val2_7_reg_1042_reg[7]_i_4 ;
  wire \p_Val2_7_reg_1042_reg[7]_i_4_0 ;

  base_color_convert_1_color_convert_maccud_DSP48_1_17 color_convert_maccud_DSP48_1_U
       (.D(D),
        .DI(DI),
        .O(O),
        .P(P),
        .Q(Q),
        .and_ln781_fu_424_p2(and_ln781_fu_424_p2),
        .ap_block_pp0_stage0_11001(ap_block_pp0_stage0_11001),
        .ap_clk(ap_clk),
        .or_ln785_fu_430_p2(or_ln785_fu_430_p2),
        .p_0(p),
        .p_1(p_0),
        .\p_Val2_7_reg_1042_reg[4]_i_2_0 (\p_Val2_7_reg_1042_reg[4]_i_2 ),
        .\p_Val2_7_reg_1042_reg[4]_i_2_1 (\p_Val2_7_reg_1042_reg[4]_i_2_0 ),
        .\p_Val2_7_reg_1042_reg[4]_i_2_2 (\p_Val2_7_reg_1042_reg[4]_i_2_1 ),
        .\p_Val2_7_reg_1042_reg[7]_i_2_0 (\p_Val2_7_reg_1042_reg[7]_i_2 ),
        .\p_Val2_7_reg_1042_reg[7]_i_2_1 (\p_Val2_7_reg_1042_reg[7]_i_2_0 ),
        .\p_Val2_7_reg_1042_reg[7]_i_2_2 (\p_Val2_7_reg_1042_reg[7]_i_2_1 ),
        .\p_Val2_7_reg_1042_reg[7]_i_2_3 (\p_Val2_7_reg_1042_reg[7]_i_2_2 ),
        .\p_Val2_7_reg_1042_reg[7]_i_4_0 (\p_Val2_7_reg_1042_reg[7]_i_4 ),
        .\p_Val2_7_reg_1042_reg[7]_i_4_1 (\p_Val2_7_reg_1042_reg[7]_i_4_0 ));
endmodule

(* ORIG_REF_NAME = "color_convert_maccud" *) 
module base_color_convert_1_color_convert_maccud_2
   (D,
    or_ln785_1_fu_552_p2,
    O,
    and_ln781_1_fu_546_p2,
    ap_block_pp0_stage0_11001,
    p,
    ap_clk,
    Q,
    p_0,
    P,
    DI,
    bias_c2_V_read_reg_940_pp0_iter3_reg);
  output [7:0]D;
  output or_ln785_1_fu_552_p2;
  output [0:0]O;
  output and_ln781_1_fu_546_p2;
  input ap_block_pp0_stage0_11001;
  input p;
  input ap_clk;
  input [7:0]Q;
  input [9:0]p_0;
  input [18:0]P;
  input [1:0]DI;
  input [8:0]bias_c2_V_read_reg_940_pp0_iter3_reg;

  wire [7:0]D;
  wire [1:0]DI;
  wire [0:0]O;
  wire [18:0]P;
  wire [7:0]Q;
  wire and_ln781_1_fu_546_p2;
  wire ap_block_pp0_stage0_11001;
  wire ap_clk;
  wire [8:0]bias_c2_V_read_reg_940_pp0_iter3_reg;
  wire or_ln785_1_fu_552_p2;
  wire p;
  wire [9:0]p_0;

  base_color_convert_1_color_convert_maccud_DSP48_1_16 color_convert_maccud_DSP48_1_U
       (.D(D),
        .DI(DI),
        .O(O),
        .P(P),
        .Q(Q),
        .and_ln781_1_fu_546_p2(and_ln781_1_fu_546_p2),
        .ap_block_pp0_stage0_11001(ap_block_pp0_stage0_11001),
        .ap_clk(ap_clk),
        .bias_c2_V_read_reg_940_pp0_iter3_reg(bias_c2_V_read_reg_940_pp0_iter3_reg),
        .or_ln785_1_fu_552_p2(or_ln785_1_fu_552_p2),
        .p_0(p),
        .p_1(p_0));
endmodule

(* ORIG_REF_NAME = "color_convert_maccud" *) 
module base_color_convert_1_color_convert_maccud_3
   (D,
    or_ln785_2_fu_674_p2,
    O,
    and_ln781_2_fu_668_p2,
    ap_block_pp0_stage0_11001,
    p,
    ap_clk,
    Q,
    p_0,
    P,
    DI,
    bias_c3_V_read_reg_935_pp0_iter3_reg);
  output [7:0]D;
  output or_ln785_2_fu_674_p2;
  output [0:0]O;
  output and_ln781_2_fu_668_p2;
  input ap_block_pp0_stage0_11001;
  input p;
  input ap_clk;
  input [7:0]Q;
  input [9:0]p_0;
  input [18:0]P;
  input [1:0]DI;
  input [8:0]bias_c3_V_read_reg_935_pp0_iter3_reg;

  wire [7:0]D;
  wire [1:0]DI;
  wire [0:0]O;
  wire [18:0]P;
  wire [7:0]Q;
  wire and_ln781_2_fu_668_p2;
  wire ap_block_pp0_stage0_11001;
  wire ap_clk;
  wire [8:0]bias_c3_V_read_reg_935_pp0_iter3_reg;
  wire or_ln785_2_fu_674_p2;
  wire p;
  wire [9:0]p_0;

  base_color_convert_1_color_convert_maccud_DSP48_1 color_convert_maccud_DSP48_1_U
       (.D(D),
        .DI(DI),
        .O(O),
        .P(P),
        .Q(Q),
        .and_ln781_2_fu_668_p2(and_ln781_2_fu_668_p2),
        .ap_block_pp0_stage0_11001(ap_block_pp0_stage0_11001),
        .ap_clk(ap_clk),
        .bias_c3_V_read_reg_935_pp0_iter3_reg(bias_c3_V_read_reg_935_pp0_iter3_reg),
        .or_ln785_2_fu_674_p2(or_ln785_2_fu_674_p2),
        .p_0(p),
        .p_1(p_0));
endmodule

module base_color_convert_1_color_convert_maccud_DSP48_1
   (D,
    or_ln785_2_fu_674_p2,
    O,
    and_ln781_2_fu_668_p2,
    ap_block_pp0_stage0_11001,
    p_0,
    ap_clk,
    Q,
    p_1,
    P,
    DI,
    bias_c3_V_read_reg_935_pp0_iter3_reg);
  output [7:0]D;
  output or_ln785_2_fu_674_p2;
  output [0:0]O;
  output and_ln781_2_fu_668_p2;
  input ap_block_pp0_stage0_11001;
  input p_0;
  input ap_clk;
  input [7:0]Q;
  input [9:0]p_1;
  input [18:0]P;
  input [1:0]DI;
  input [8:0]bias_c3_V_read_reg_935_pp0_iter3_reg;

  wire [7:0]D;
  wire [1:0]DI;
  wire [0:0]O;
  wire [18:0]P;
  wire [7:0]Q;
  wire and_ln781_2_fu_668_p2;
  wire \and_ln781_2_reg_1096[0]_i_2_n_0 ;
  wire ap_block_pp0_stage0_11001;
  wire ap_clk;
  wire [8:0]bias_c3_V_read_reg_935_pp0_iter3_reg;
  wire or_ln785_2_fu_674_p2;
  wire \or_ln785_2_reg_1102[0]_i_2_n_0 ;
  wire p_0;
  wire [9:0]p_1;
  wire \p_Result_4_reg_1084[0]_i_2_n_0 ;
  wire [7:7]p_Val2_22_fu_582_p4;
  wire [6:0]p_Val2_22_fu_582_p4__0;
  wire \p_Val2_23_reg_1090[4]_i_3_n_0 ;
  wire \p_Val2_23_reg_1090[4]_i_4_n_0 ;
  wire \p_Val2_23_reg_1090[4]_i_5_n_0 ;
  wire \p_Val2_23_reg_1090[7]_i_10_n_0 ;
  wire \p_Val2_23_reg_1090[7]_i_11_n_0 ;
  wire \p_Val2_23_reg_1090[7]_i_12_n_0 ;
  wire \p_Val2_23_reg_1090[7]_i_13_n_0 ;
  wire \p_Val2_23_reg_1090[7]_i_3_n_0 ;
  wire \p_Val2_23_reg_1090[7]_i_5_n_0 ;
  wire \p_Val2_23_reg_1090[7]_i_6_n_0 ;
  wire \p_Val2_23_reg_1090[7]_i_7_n_0 ;
  wire \p_Val2_23_reg_1090[7]_i_8_n_0 ;
  wire \p_Val2_23_reg_1090_reg[4]_i_2_n_0 ;
  wire \p_Val2_23_reg_1090_reg[4]_i_2_n_1 ;
  wire \p_Val2_23_reg_1090_reg[4]_i_2_n_2 ;
  wire \p_Val2_23_reg_1090_reg[4]_i_2_n_3 ;
  wire \p_Val2_23_reg_1090_reg[7]_i_2_n_0 ;
  wire \p_Val2_23_reg_1090_reg[7]_i_2_n_1 ;
  wire \p_Val2_23_reg_1090_reg[7]_i_2_n_2 ;
  wire \p_Val2_23_reg_1090_reg[7]_i_2_n_3 ;
  wire \p_Val2_23_reg_1090_reg[7]_i_4_n_0 ;
  wire \p_Val2_23_reg_1090_reg[7]_i_4_n_1 ;
  wire \p_Val2_23_reg_1090_reg[7]_i_4_n_2 ;
  wire \p_Val2_23_reg_1090_reg[7]_i_4_n_3 ;
  wire p_n_100;
  wire p_n_101;
  wire p_n_102;
  wire p_n_103;
  wire p_n_104;
  wire p_n_105;
  wire p_n_99;
  wire [19:7]ret_V_12_reg_1031;
  wire tmp_13_fu_600_p3;
  wire [2:0]tmp_2_fu_638_p4;
  wire NLW_p_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p_OVERFLOW_UNCONNECTED;
  wire NLW_p_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p_PATTERNDETECT_UNCONNECTED;
  wire NLW_p_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p_CARRYOUT_UNCONNECTED;
  wire [47:20]NLW_p_P_UNCONNECTED;
  wire [47:0]NLW_p_PCOUT_UNCONNECTED;
  wire [3:0]\NLW_p_Result_4_reg_1084_reg[0]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_p_Result_4_reg_1084_reg[0]_i_1_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    \and_ln781_2_reg_1096[0]_i_1 
       (.I0(\and_ln781_2_reg_1096[0]_i_2_n_0 ),
        .I1(p_Val2_22_fu_582_p4),
        .I2(p_Val2_22_fu_582_p4__0[5]),
        .I3(\p_Val2_23_reg_1090[7]_i_3_n_0 ),
        .I4(p_Val2_22_fu_582_p4__0[6]),
        .O(and_ln781_2_fu_668_p2));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \and_ln781_2_reg_1096[0]_i_2 
       (.I0(tmp_2_fu_638_p4[1]),
        .I1(tmp_2_fu_638_p4[0]),
        .I2(O),
        .I3(tmp_2_fu_638_p4[2]),
        .O(\and_ln781_2_reg_1096[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFDFFF0000)) 
    \or_ln785_2_reg_1102[0]_i_1 
       (.I0(p_Val2_22_fu_582_p4__0[6]),
        .I1(\p_Val2_23_reg_1090[7]_i_3_n_0 ),
        .I2(p_Val2_22_fu_582_p4__0[5]),
        .I3(p_Val2_22_fu_582_p4),
        .I4(\or_ln785_2_reg_1102[0]_i_2_n_0 ),
        .I5(O),
        .O(or_ln785_2_fu_674_p2));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \or_ln785_2_reg_1102[0]_i_2 
       (.I0(tmp_2_fu_638_p4[2]),
        .I1(tmp_2_fu_638_p4[1]),
        .I2(tmp_2_fu_638_p4[0]),
        .O(\or_ln785_2_reg_1102[0]_i_2_n_0 ));
  DSP48E1 #(
    .ACASCREG(2),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(2),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(2),
    .BREG(2),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    p
       (.A({p_1[9],p_1[9],p_1[9],p_1[9],p_1[9],p_1[9],p_1[9],p_1[9],p_1[9],p_1[9],p_1[9],p_1[9],p_1[9],p_1[9],p_1[9],p_1[9],p_1[9],p_1[9],p_1[9],p_1[9],p_1}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,Q}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p_BCOUT_UNCONNECTED[17:0]),
        .C({P[18],P[18],P[18],P[18],P[18],P[18],P[18],P[18],P[18],P[18],P[18],P[18],P[18],P[18],P[18],P[18],P[18],P[18],P[18],P[18],P[18],P[18],P[18],P[18],P[18],P[18],P[18],P[18],P[18],P}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(ap_block_pp0_stage0_11001),
        .CEA2(ap_block_pp0_stage0_11001),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(ap_block_pp0_stage0_11001),
        .CEB2(ap_block_pp0_stage0_11001),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(p_0),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p_OVERFLOW_UNCONNECTED),
        .P({NLW_p_P_UNCONNECTED[47:20],ret_V_12_reg_1031,p_n_99,p_n_100,p_n_101,p_n_102,p_n_103,p_n_104,p_n_105}),
        .PATTERNBDETECT(NLW_p_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_p_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p_UNDERFLOW_UNCONNECTED));
  LUT2 #(
    .INIT(4'h9)) 
    \p_Result_4_reg_1084[0]_i_2 
       (.I0(ret_V_12_reg_1031[18]),
        .I1(ret_V_12_reg_1031[19]),
        .O(\p_Result_4_reg_1084[0]_i_2_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \p_Result_4_reg_1084_reg[0]_i_1 
       (.CI(\p_Val2_23_reg_1090_reg[7]_i_4_n_0 ),
        .CO(\NLW_p_Result_4_reg_1084_reg[0]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_p_Result_4_reg_1084_reg[0]_i_1_O_UNCONNECTED [3:1],O}),
        .S({1'b0,1'b0,1'b0,\p_Result_4_reg_1084[0]_i_2_n_0 }));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \p_Val2_23_reg_1090[0]_i_1 
       (.I0(tmp_13_fu_600_p3),
        .I1(p_Val2_22_fu_582_p4__0[0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \p_Val2_23_reg_1090[1]_i_1 
       (.I0(p_Val2_22_fu_582_p4__0[0]),
        .I1(tmp_13_fu_600_p3),
        .I2(p_Val2_22_fu_582_p4__0[1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \p_Val2_23_reg_1090[2]_i_1 
       (.I0(p_Val2_22_fu_582_p4__0[1]),
        .I1(tmp_13_fu_600_p3),
        .I2(p_Val2_22_fu_582_p4__0[0]),
        .I3(p_Val2_22_fu_582_p4__0[2]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \p_Val2_23_reg_1090[3]_i_1 
       (.I0(p_Val2_22_fu_582_p4__0[2]),
        .I1(p_Val2_22_fu_582_p4__0[0]),
        .I2(tmp_13_fu_600_p3),
        .I3(p_Val2_22_fu_582_p4__0[1]),
        .I4(p_Val2_22_fu_582_p4__0[3]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \p_Val2_23_reg_1090[4]_i_1 
       (.I0(p_Val2_22_fu_582_p4__0[3]),
        .I1(p_Val2_22_fu_582_p4__0[1]),
        .I2(tmp_13_fu_600_p3),
        .I3(p_Val2_22_fu_582_p4__0[0]),
        .I4(p_Val2_22_fu_582_p4__0[2]),
        .I5(p_Val2_22_fu_582_p4__0[4]),
        .O(D[4]));
  LUT2 #(
    .INIT(4'h6)) 
    \p_Val2_23_reg_1090[4]_i_3 
       (.I0(ret_V_12_reg_1031[10]),
        .I1(bias_c3_V_read_reg_935_pp0_iter3_reg[2]),
        .O(\p_Val2_23_reg_1090[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p_Val2_23_reg_1090[4]_i_4 
       (.I0(ret_V_12_reg_1031[9]),
        .I1(bias_c3_V_read_reg_935_pp0_iter3_reg[1]),
        .O(\p_Val2_23_reg_1090[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p_Val2_23_reg_1090[4]_i_5 
       (.I0(ret_V_12_reg_1031[8]),
        .I1(bias_c3_V_read_reg_935_pp0_iter3_reg[0]),
        .O(\p_Val2_23_reg_1090[4]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \p_Val2_23_reg_1090[5]_i_1 
       (.I0(\p_Val2_23_reg_1090[7]_i_3_n_0 ),
        .I1(p_Val2_22_fu_582_p4__0[5]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \p_Val2_23_reg_1090[6]_i_1 
       (.I0(p_Val2_22_fu_582_p4__0[5]),
        .I1(\p_Val2_23_reg_1090[7]_i_3_n_0 ),
        .I2(p_Val2_22_fu_582_p4__0[6]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \p_Val2_23_reg_1090[7]_i_1 
       (.I0(p_Val2_22_fu_582_p4__0[6]),
        .I1(\p_Val2_23_reg_1090[7]_i_3_n_0 ),
        .I2(p_Val2_22_fu_582_p4__0[5]),
        .I3(p_Val2_22_fu_582_p4),
        .O(D[7]));
  LUT2 #(
    .INIT(4'h6)) 
    \p_Val2_23_reg_1090[7]_i_10 
       (.I0(DI[0]),
        .I1(ret_V_12_reg_1031[18]),
        .O(\p_Val2_23_reg_1090[7]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p_Val2_23_reg_1090[7]_i_11 
       (.I0(DI[0]),
        .I1(ret_V_12_reg_1031[17]),
        .O(\p_Val2_23_reg_1090[7]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p_Val2_23_reg_1090[7]_i_12 
       (.I0(ret_V_12_reg_1031[16]),
        .I1(bias_c3_V_read_reg_935_pp0_iter3_reg[8]),
        .O(\p_Val2_23_reg_1090[7]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p_Val2_23_reg_1090[7]_i_13 
       (.I0(ret_V_12_reg_1031[15]),
        .I1(bias_c3_V_read_reg_935_pp0_iter3_reg[7]),
        .O(\p_Val2_23_reg_1090[7]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \p_Val2_23_reg_1090[7]_i_3 
       (.I0(p_Val2_22_fu_582_p4__0[3]),
        .I1(p_Val2_22_fu_582_p4__0[1]),
        .I2(tmp_13_fu_600_p3),
        .I3(p_Val2_22_fu_582_p4__0[0]),
        .I4(p_Val2_22_fu_582_p4__0[2]),
        .I5(p_Val2_22_fu_582_p4__0[4]),
        .O(\p_Val2_23_reg_1090[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p_Val2_23_reg_1090[7]_i_5 
       (.I0(ret_V_12_reg_1031[14]),
        .I1(bias_c3_V_read_reg_935_pp0_iter3_reg[6]),
        .O(\p_Val2_23_reg_1090[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p_Val2_23_reg_1090[7]_i_6 
       (.I0(ret_V_12_reg_1031[13]),
        .I1(bias_c3_V_read_reg_935_pp0_iter3_reg[5]),
        .O(\p_Val2_23_reg_1090[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p_Val2_23_reg_1090[7]_i_7 
       (.I0(ret_V_12_reg_1031[12]),
        .I1(bias_c3_V_read_reg_935_pp0_iter3_reg[4]),
        .O(\p_Val2_23_reg_1090[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p_Val2_23_reg_1090[7]_i_8 
       (.I0(ret_V_12_reg_1031[11]),
        .I1(bias_c3_V_read_reg_935_pp0_iter3_reg[3]),
        .O(\p_Val2_23_reg_1090[7]_i_8_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \p_Val2_23_reg_1090_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\p_Val2_23_reg_1090_reg[4]_i_2_n_0 ,\p_Val2_23_reg_1090_reg[4]_i_2_n_1 ,\p_Val2_23_reg_1090_reg[4]_i_2_n_2 ,\p_Val2_23_reg_1090_reg[4]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({ret_V_12_reg_1031[10:8],1'b0}),
        .O({p_Val2_22_fu_582_p4__0[2:0],tmp_13_fu_600_p3}),
        .S({\p_Val2_23_reg_1090[4]_i_3_n_0 ,\p_Val2_23_reg_1090[4]_i_4_n_0 ,\p_Val2_23_reg_1090[4]_i_5_n_0 ,ret_V_12_reg_1031[7]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \p_Val2_23_reg_1090_reg[7]_i_2 
       (.CI(\p_Val2_23_reg_1090_reg[4]_i_2_n_0 ),
        .CO({\p_Val2_23_reg_1090_reg[7]_i_2_n_0 ,\p_Val2_23_reg_1090_reg[7]_i_2_n_1 ,\p_Val2_23_reg_1090_reg[7]_i_2_n_2 ,\p_Val2_23_reg_1090_reg[7]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(ret_V_12_reg_1031[14:11]),
        .O(p_Val2_22_fu_582_p4__0[6:3]),
        .S({\p_Val2_23_reg_1090[7]_i_5_n_0 ,\p_Val2_23_reg_1090[7]_i_6_n_0 ,\p_Val2_23_reg_1090[7]_i_7_n_0 ,\p_Val2_23_reg_1090[7]_i_8_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \p_Val2_23_reg_1090_reg[7]_i_4 
       (.CI(\p_Val2_23_reg_1090_reg[7]_i_2_n_0 ),
        .CO({\p_Val2_23_reg_1090_reg[7]_i_4_n_0 ,\p_Val2_23_reg_1090_reg[7]_i_4_n_1 ,\p_Val2_23_reg_1090_reg[7]_i_4_n_2 ,\p_Val2_23_reg_1090_reg[7]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({DI,ret_V_12_reg_1031[16:15]}),
        .O({tmp_2_fu_638_p4,p_Val2_22_fu_582_p4}),
        .S({\p_Val2_23_reg_1090[7]_i_10_n_0 ,\p_Val2_23_reg_1090[7]_i_11_n_0 ,\p_Val2_23_reg_1090[7]_i_12_n_0 ,\p_Val2_23_reg_1090[7]_i_13_n_0 }));
endmodule

(* ORIG_REF_NAME = "color_convert_maccud_DSP48_1" *) 
module base_color_convert_1_color_convert_maccud_DSP48_1_16
   (D,
    or_ln785_1_fu_552_p2,
    O,
    and_ln781_1_fu_546_p2,
    ap_block_pp0_stage0_11001,
    p_0,
    ap_clk,
    Q,
    p_1,
    P,
    DI,
    bias_c2_V_read_reg_940_pp0_iter3_reg);
  output [7:0]D;
  output or_ln785_1_fu_552_p2;
  output [0:0]O;
  output and_ln781_1_fu_546_p2;
  input ap_block_pp0_stage0_11001;
  input p_0;
  input ap_clk;
  input [7:0]Q;
  input [9:0]p_1;
  input [18:0]P;
  input [1:0]DI;
  input [8:0]bias_c2_V_read_reg_940_pp0_iter3_reg;

  wire [7:0]D;
  wire [1:0]DI;
  wire [0:0]O;
  wire [18:0]P;
  wire [7:0]Q;
  wire and_ln781_1_fu_546_p2;
  wire \and_ln781_1_reg_1072[0]_i_2_n_0 ;
  wire ap_block_pp0_stage0_11001;
  wire ap_clk;
  wire [8:0]bias_c2_V_read_reg_940_pp0_iter3_reg;
  wire or_ln785_1_fu_552_p2;
  wire \or_ln785_1_reg_1078[0]_i_2_n_0 ;
  wire p_0;
  wire [9:0]p_1;
  wire \p_Result_2_reg_1060[0]_i_2_n_0 ;
  wire [7:7]p_Val2_14_fu_460_p4;
  wire [6:0]p_Val2_14_fu_460_p4__0;
  wire \p_Val2_15_reg_1066[4]_i_3_n_0 ;
  wire \p_Val2_15_reg_1066[4]_i_4_n_0 ;
  wire \p_Val2_15_reg_1066[4]_i_5_n_0 ;
  wire \p_Val2_15_reg_1066[7]_i_10_n_0 ;
  wire \p_Val2_15_reg_1066[7]_i_11_n_0 ;
  wire \p_Val2_15_reg_1066[7]_i_12_n_0 ;
  wire \p_Val2_15_reg_1066[7]_i_13_n_0 ;
  wire \p_Val2_15_reg_1066[7]_i_3_n_0 ;
  wire \p_Val2_15_reg_1066[7]_i_5_n_0 ;
  wire \p_Val2_15_reg_1066[7]_i_6_n_0 ;
  wire \p_Val2_15_reg_1066[7]_i_7_n_0 ;
  wire \p_Val2_15_reg_1066[7]_i_8_n_0 ;
  wire \p_Val2_15_reg_1066_reg[4]_i_2_n_0 ;
  wire \p_Val2_15_reg_1066_reg[4]_i_2_n_1 ;
  wire \p_Val2_15_reg_1066_reg[4]_i_2_n_2 ;
  wire \p_Val2_15_reg_1066_reg[4]_i_2_n_3 ;
  wire \p_Val2_15_reg_1066_reg[7]_i_2_n_0 ;
  wire \p_Val2_15_reg_1066_reg[7]_i_2_n_1 ;
  wire \p_Val2_15_reg_1066_reg[7]_i_2_n_2 ;
  wire \p_Val2_15_reg_1066_reg[7]_i_2_n_3 ;
  wire \p_Val2_15_reg_1066_reg[7]_i_4_n_0 ;
  wire \p_Val2_15_reg_1066_reg[7]_i_4_n_1 ;
  wire \p_Val2_15_reg_1066_reg[7]_i_4_n_2 ;
  wire \p_Val2_15_reg_1066_reg[7]_i_4_n_3 ;
  wire p_n_100;
  wire p_n_101;
  wire p_n_102;
  wire p_n_103;
  wire p_n_104;
  wire p_n_105;
  wire p_n_99;
  wire [19:7]ret_V_9_reg_1026;
  wire [2:0]tmp_1_fu_516_p4;
  wire tmp_9_fu_478_p3;
  wire NLW_p_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p_OVERFLOW_UNCONNECTED;
  wire NLW_p_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p_PATTERNDETECT_UNCONNECTED;
  wire NLW_p_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p_CARRYOUT_UNCONNECTED;
  wire [47:20]NLW_p_P_UNCONNECTED;
  wire [47:0]NLW_p_PCOUT_UNCONNECTED;
  wire [3:0]\NLW_p_Result_2_reg_1060_reg[0]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_p_Result_2_reg_1060_reg[0]_i_1_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    \and_ln781_1_reg_1072[0]_i_1 
       (.I0(\and_ln781_1_reg_1072[0]_i_2_n_0 ),
        .I1(p_Val2_14_fu_460_p4),
        .I2(p_Val2_14_fu_460_p4__0[5]),
        .I3(\p_Val2_15_reg_1066[7]_i_3_n_0 ),
        .I4(p_Val2_14_fu_460_p4__0[6]),
        .O(and_ln781_1_fu_546_p2));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \and_ln781_1_reg_1072[0]_i_2 
       (.I0(tmp_1_fu_516_p4[1]),
        .I1(tmp_1_fu_516_p4[0]),
        .I2(O),
        .I3(tmp_1_fu_516_p4[2]),
        .O(\and_ln781_1_reg_1072[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFDFFF0000)) 
    \or_ln785_1_reg_1078[0]_i_1 
       (.I0(p_Val2_14_fu_460_p4__0[6]),
        .I1(\p_Val2_15_reg_1066[7]_i_3_n_0 ),
        .I2(p_Val2_14_fu_460_p4__0[5]),
        .I3(p_Val2_14_fu_460_p4),
        .I4(\or_ln785_1_reg_1078[0]_i_2_n_0 ),
        .I5(O),
        .O(or_ln785_1_fu_552_p2));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \or_ln785_1_reg_1078[0]_i_2 
       (.I0(tmp_1_fu_516_p4[2]),
        .I1(tmp_1_fu_516_p4[1]),
        .I2(tmp_1_fu_516_p4[0]),
        .O(\or_ln785_1_reg_1078[0]_i_2_n_0 ));
  DSP48E1 #(
    .ACASCREG(2),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(2),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(2),
    .BREG(2),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    p
       (.A({p_1[9],p_1[9],p_1[9],p_1[9],p_1[9],p_1[9],p_1[9],p_1[9],p_1[9],p_1[9],p_1[9],p_1[9],p_1[9],p_1[9],p_1[9],p_1[9],p_1[9],p_1[9],p_1[9],p_1[9],p_1}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,Q}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p_BCOUT_UNCONNECTED[17:0]),
        .C({P[18],P[18],P[18],P[18],P[18],P[18],P[18],P[18],P[18],P[18],P[18],P[18],P[18],P[18],P[18],P[18],P[18],P[18],P[18],P[18],P[18],P[18],P[18],P[18],P[18],P[18],P[18],P[18],P[18],P}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(ap_block_pp0_stage0_11001),
        .CEA2(ap_block_pp0_stage0_11001),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(ap_block_pp0_stage0_11001),
        .CEB2(ap_block_pp0_stage0_11001),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(p_0),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p_OVERFLOW_UNCONNECTED),
        .P({NLW_p_P_UNCONNECTED[47:20],ret_V_9_reg_1026,p_n_99,p_n_100,p_n_101,p_n_102,p_n_103,p_n_104,p_n_105}),
        .PATTERNBDETECT(NLW_p_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_p_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p_UNDERFLOW_UNCONNECTED));
  LUT2 #(
    .INIT(4'h9)) 
    \p_Result_2_reg_1060[0]_i_2 
       (.I0(ret_V_9_reg_1026[18]),
        .I1(ret_V_9_reg_1026[19]),
        .O(\p_Result_2_reg_1060[0]_i_2_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \p_Result_2_reg_1060_reg[0]_i_1 
       (.CI(\p_Val2_15_reg_1066_reg[7]_i_4_n_0 ),
        .CO(\NLW_p_Result_2_reg_1060_reg[0]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_p_Result_2_reg_1060_reg[0]_i_1_O_UNCONNECTED [3:1],O}),
        .S({1'b0,1'b0,1'b0,\p_Result_2_reg_1060[0]_i_2_n_0 }));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \p_Val2_15_reg_1066[0]_i_1 
       (.I0(tmp_9_fu_478_p3),
        .I1(p_Val2_14_fu_460_p4__0[0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \p_Val2_15_reg_1066[1]_i_1 
       (.I0(p_Val2_14_fu_460_p4__0[0]),
        .I1(tmp_9_fu_478_p3),
        .I2(p_Val2_14_fu_460_p4__0[1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \p_Val2_15_reg_1066[2]_i_1 
       (.I0(p_Val2_14_fu_460_p4__0[1]),
        .I1(tmp_9_fu_478_p3),
        .I2(p_Val2_14_fu_460_p4__0[0]),
        .I3(p_Val2_14_fu_460_p4__0[2]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \p_Val2_15_reg_1066[3]_i_1 
       (.I0(p_Val2_14_fu_460_p4__0[2]),
        .I1(p_Val2_14_fu_460_p4__0[0]),
        .I2(tmp_9_fu_478_p3),
        .I3(p_Val2_14_fu_460_p4__0[1]),
        .I4(p_Val2_14_fu_460_p4__0[3]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \p_Val2_15_reg_1066[4]_i_1 
       (.I0(p_Val2_14_fu_460_p4__0[3]),
        .I1(p_Val2_14_fu_460_p4__0[1]),
        .I2(tmp_9_fu_478_p3),
        .I3(p_Val2_14_fu_460_p4__0[0]),
        .I4(p_Val2_14_fu_460_p4__0[2]),
        .I5(p_Val2_14_fu_460_p4__0[4]),
        .O(D[4]));
  LUT2 #(
    .INIT(4'h6)) 
    \p_Val2_15_reg_1066[4]_i_3 
       (.I0(ret_V_9_reg_1026[10]),
        .I1(bias_c2_V_read_reg_940_pp0_iter3_reg[2]),
        .O(\p_Val2_15_reg_1066[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p_Val2_15_reg_1066[4]_i_4 
       (.I0(ret_V_9_reg_1026[9]),
        .I1(bias_c2_V_read_reg_940_pp0_iter3_reg[1]),
        .O(\p_Val2_15_reg_1066[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p_Val2_15_reg_1066[4]_i_5 
       (.I0(ret_V_9_reg_1026[8]),
        .I1(bias_c2_V_read_reg_940_pp0_iter3_reg[0]),
        .O(\p_Val2_15_reg_1066[4]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \p_Val2_15_reg_1066[5]_i_1 
       (.I0(\p_Val2_15_reg_1066[7]_i_3_n_0 ),
        .I1(p_Val2_14_fu_460_p4__0[5]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \p_Val2_15_reg_1066[6]_i_1 
       (.I0(p_Val2_14_fu_460_p4__0[5]),
        .I1(\p_Val2_15_reg_1066[7]_i_3_n_0 ),
        .I2(p_Val2_14_fu_460_p4__0[6]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \p_Val2_15_reg_1066[7]_i_1 
       (.I0(p_Val2_14_fu_460_p4__0[6]),
        .I1(\p_Val2_15_reg_1066[7]_i_3_n_0 ),
        .I2(p_Val2_14_fu_460_p4__0[5]),
        .I3(p_Val2_14_fu_460_p4),
        .O(D[7]));
  LUT2 #(
    .INIT(4'h6)) 
    \p_Val2_15_reg_1066[7]_i_10 
       (.I0(DI[0]),
        .I1(ret_V_9_reg_1026[18]),
        .O(\p_Val2_15_reg_1066[7]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p_Val2_15_reg_1066[7]_i_11 
       (.I0(DI[0]),
        .I1(ret_V_9_reg_1026[17]),
        .O(\p_Val2_15_reg_1066[7]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p_Val2_15_reg_1066[7]_i_12 
       (.I0(ret_V_9_reg_1026[16]),
        .I1(bias_c2_V_read_reg_940_pp0_iter3_reg[8]),
        .O(\p_Val2_15_reg_1066[7]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p_Val2_15_reg_1066[7]_i_13 
       (.I0(ret_V_9_reg_1026[15]),
        .I1(bias_c2_V_read_reg_940_pp0_iter3_reg[7]),
        .O(\p_Val2_15_reg_1066[7]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \p_Val2_15_reg_1066[7]_i_3 
       (.I0(p_Val2_14_fu_460_p4__0[3]),
        .I1(p_Val2_14_fu_460_p4__0[1]),
        .I2(tmp_9_fu_478_p3),
        .I3(p_Val2_14_fu_460_p4__0[0]),
        .I4(p_Val2_14_fu_460_p4__0[2]),
        .I5(p_Val2_14_fu_460_p4__0[4]),
        .O(\p_Val2_15_reg_1066[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p_Val2_15_reg_1066[7]_i_5 
       (.I0(ret_V_9_reg_1026[14]),
        .I1(bias_c2_V_read_reg_940_pp0_iter3_reg[6]),
        .O(\p_Val2_15_reg_1066[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p_Val2_15_reg_1066[7]_i_6 
       (.I0(ret_V_9_reg_1026[13]),
        .I1(bias_c2_V_read_reg_940_pp0_iter3_reg[5]),
        .O(\p_Val2_15_reg_1066[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p_Val2_15_reg_1066[7]_i_7 
       (.I0(ret_V_9_reg_1026[12]),
        .I1(bias_c2_V_read_reg_940_pp0_iter3_reg[4]),
        .O(\p_Val2_15_reg_1066[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p_Val2_15_reg_1066[7]_i_8 
       (.I0(ret_V_9_reg_1026[11]),
        .I1(bias_c2_V_read_reg_940_pp0_iter3_reg[3]),
        .O(\p_Val2_15_reg_1066[7]_i_8_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \p_Val2_15_reg_1066_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\p_Val2_15_reg_1066_reg[4]_i_2_n_0 ,\p_Val2_15_reg_1066_reg[4]_i_2_n_1 ,\p_Val2_15_reg_1066_reg[4]_i_2_n_2 ,\p_Val2_15_reg_1066_reg[4]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({ret_V_9_reg_1026[10:8],1'b0}),
        .O({p_Val2_14_fu_460_p4__0[2:0],tmp_9_fu_478_p3}),
        .S({\p_Val2_15_reg_1066[4]_i_3_n_0 ,\p_Val2_15_reg_1066[4]_i_4_n_0 ,\p_Val2_15_reg_1066[4]_i_5_n_0 ,ret_V_9_reg_1026[7]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \p_Val2_15_reg_1066_reg[7]_i_2 
       (.CI(\p_Val2_15_reg_1066_reg[4]_i_2_n_0 ),
        .CO({\p_Val2_15_reg_1066_reg[7]_i_2_n_0 ,\p_Val2_15_reg_1066_reg[7]_i_2_n_1 ,\p_Val2_15_reg_1066_reg[7]_i_2_n_2 ,\p_Val2_15_reg_1066_reg[7]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(ret_V_9_reg_1026[14:11]),
        .O(p_Val2_14_fu_460_p4__0[6:3]),
        .S({\p_Val2_15_reg_1066[7]_i_5_n_0 ,\p_Val2_15_reg_1066[7]_i_6_n_0 ,\p_Val2_15_reg_1066[7]_i_7_n_0 ,\p_Val2_15_reg_1066[7]_i_8_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \p_Val2_15_reg_1066_reg[7]_i_4 
       (.CI(\p_Val2_15_reg_1066_reg[7]_i_2_n_0 ),
        .CO({\p_Val2_15_reg_1066_reg[7]_i_4_n_0 ,\p_Val2_15_reg_1066_reg[7]_i_4_n_1 ,\p_Val2_15_reg_1066_reg[7]_i_4_n_2 ,\p_Val2_15_reg_1066_reg[7]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({DI,ret_V_9_reg_1026[16:15]}),
        .O({tmp_1_fu_516_p4,p_Val2_14_fu_460_p4}),
        .S({\p_Val2_15_reg_1066[7]_i_10_n_0 ,\p_Val2_15_reg_1066[7]_i_11_n_0 ,\p_Val2_15_reg_1066[7]_i_12_n_0 ,\p_Val2_15_reg_1066[7]_i_13_n_0 }));
endmodule

(* ORIG_REF_NAME = "color_convert_maccud_DSP48_1" *) 
module base_color_convert_1_color_convert_maccud_DSP48_1_17
   (D,
    or_ln785_fu_430_p2,
    O,
    and_ln781_fu_424_p2,
    ap_block_pp0_stage0_11001,
    p_0,
    ap_clk,
    Q,
    p_1,
    P,
    DI,
    \p_Val2_7_reg_1042_reg[4]_i_2_0 ,
    \p_Val2_7_reg_1042_reg[4]_i_2_1 ,
    \p_Val2_7_reg_1042_reg[4]_i_2_2 ,
    \p_Val2_7_reg_1042_reg[7]_i_2_0 ,
    \p_Val2_7_reg_1042_reg[7]_i_2_1 ,
    \p_Val2_7_reg_1042_reg[7]_i_2_2 ,
    \p_Val2_7_reg_1042_reg[7]_i_2_3 ,
    \p_Val2_7_reg_1042_reg[7]_i_4_0 ,
    \p_Val2_7_reg_1042_reg[7]_i_4_1 );
  output [7:0]D;
  output or_ln785_fu_430_p2;
  output [0:0]O;
  output and_ln781_fu_424_p2;
  input ap_block_pp0_stage0_11001;
  input p_0;
  input ap_clk;
  input [7:0]Q;
  input [9:0]p_1;
  input [18:0]P;
  input [1:0]DI;
  input \p_Val2_7_reg_1042_reg[4]_i_2_0 ;
  input \p_Val2_7_reg_1042_reg[4]_i_2_1 ;
  input \p_Val2_7_reg_1042_reg[4]_i_2_2 ;
  input \p_Val2_7_reg_1042_reg[7]_i_2_0 ;
  input \p_Val2_7_reg_1042_reg[7]_i_2_1 ;
  input \p_Val2_7_reg_1042_reg[7]_i_2_2 ;
  input \p_Val2_7_reg_1042_reg[7]_i_2_3 ;
  input \p_Val2_7_reg_1042_reg[7]_i_4_0 ;
  input \p_Val2_7_reg_1042_reg[7]_i_4_1 ;

  wire [7:0]D;
  wire [1:0]DI;
  wire [0:0]O;
  wire [18:0]P;
  wire [7:0]Q;
  wire and_ln781_fu_424_p2;
  wire \and_ln781_reg_1048[0]_i_2_n_0 ;
  wire ap_block_pp0_stage0_11001;
  wire ap_clk;
  wire or_ln785_fu_430_p2;
  wire \or_ln785_reg_1054[0]_i_2_n_0 ;
  wire p_0;
  wire [9:0]p_1;
  wire \p_Result_s_reg_1036[0]_i_2_n_0 ;
  wire [7:7]p_Val2_6_fu_338_p4;
  wire [6:0]p_Val2_6_fu_338_p4__0;
  wire \p_Val2_7_reg_1042[4]_i_3_n_0 ;
  wire \p_Val2_7_reg_1042[4]_i_4_n_0 ;
  wire \p_Val2_7_reg_1042[4]_i_5_n_0 ;
  wire \p_Val2_7_reg_1042[7]_i_10_n_0 ;
  wire \p_Val2_7_reg_1042[7]_i_11_n_0 ;
  wire \p_Val2_7_reg_1042[7]_i_12_n_0 ;
  wire \p_Val2_7_reg_1042[7]_i_13_n_0 ;
  wire \p_Val2_7_reg_1042[7]_i_3_n_0 ;
  wire \p_Val2_7_reg_1042[7]_i_5_n_0 ;
  wire \p_Val2_7_reg_1042[7]_i_6_n_0 ;
  wire \p_Val2_7_reg_1042[7]_i_7_n_0 ;
  wire \p_Val2_7_reg_1042[7]_i_8_n_0 ;
  wire \p_Val2_7_reg_1042_reg[4]_i_2_0 ;
  wire \p_Val2_7_reg_1042_reg[4]_i_2_1 ;
  wire \p_Val2_7_reg_1042_reg[4]_i_2_2 ;
  wire \p_Val2_7_reg_1042_reg[4]_i_2_n_0 ;
  wire \p_Val2_7_reg_1042_reg[4]_i_2_n_1 ;
  wire \p_Val2_7_reg_1042_reg[4]_i_2_n_2 ;
  wire \p_Val2_7_reg_1042_reg[4]_i_2_n_3 ;
  wire \p_Val2_7_reg_1042_reg[7]_i_2_0 ;
  wire \p_Val2_7_reg_1042_reg[7]_i_2_1 ;
  wire \p_Val2_7_reg_1042_reg[7]_i_2_2 ;
  wire \p_Val2_7_reg_1042_reg[7]_i_2_3 ;
  wire \p_Val2_7_reg_1042_reg[7]_i_2_n_0 ;
  wire \p_Val2_7_reg_1042_reg[7]_i_2_n_1 ;
  wire \p_Val2_7_reg_1042_reg[7]_i_2_n_2 ;
  wire \p_Val2_7_reg_1042_reg[7]_i_2_n_3 ;
  wire \p_Val2_7_reg_1042_reg[7]_i_4_0 ;
  wire \p_Val2_7_reg_1042_reg[7]_i_4_1 ;
  wire \p_Val2_7_reg_1042_reg[7]_i_4_n_0 ;
  wire \p_Val2_7_reg_1042_reg[7]_i_4_n_1 ;
  wire \p_Val2_7_reg_1042_reg[7]_i_4_n_2 ;
  wire \p_Val2_7_reg_1042_reg[7]_i_4_n_3 ;
  wire p_n_100;
  wire p_n_101;
  wire p_n_102;
  wire p_n_103;
  wire p_n_104;
  wire p_n_105;
  wire p_n_99;
  wire [19:7]ret_V_7_reg_1021;
  wire tmp_5_fu_356_p3;
  wire [2:0]tmp_fu_394_p4;
  wire NLW_p_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p_OVERFLOW_UNCONNECTED;
  wire NLW_p_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p_PATTERNDETECT_UNCONNECTED;
  wire NLW_p_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p_CARRYOUT_UNCONNECTED;
  wire [47:20]NLW_p_P_UNCONNECTED;
  wire [47:0]NLW_p_PCOUT_UNCONNECTED;
  wire [3:0]\NLW_p_Result_s_reg_1036_reg[0]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_p_Result_s_reg_1036_reg[0]_i_1_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    \and_ln781_reg_1048[0]_i_1 
       (.I0(\and_ln781_reg_1048[0]_i_2_n_0 ),
        .I1(p_Val2_6_fu_338_p4),
        .I2(p_Val2_6_fu_338_p4__0[5]),
        .I3(\p_Val2_7_reg_1042[7]_i_3_n_0 ),
        .I4(p_Val2_6_fu_338_p4__0[6]),
        .O(and_ln781_fu_424_p2));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \and_ln781_reg_1048[0]_i_2 
       (.I0(tmp_fu_394_p4[1]),
        .I1(tmp_fu_394_p4[0]),
        .I2(O),
        .I3(tmp_fu_394_p4[2]),
        .O(\and_ln781_reg_1048[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFDFFF0000)) 
    \or_ln785_reg_1054[0]_i_1 
       (.I0(p_Val2_6_fu_338_p4__0[6]),
        .I1(\p_Val2_7_reg_1042[7]_i_3_n_0 ),
        .I2(p_Val2_6_fu_338_p4__0[5]),
        .I3(p_Val2_6_fu_338_p4),
        .I4(\or_ln785_reg_1054[0]_i_2_n_0 ),
        .I5(O),
        .O(or_ln785_fu_430_p2));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \or_ln785_reg_1054[0]_i_2 
       (.I0(tmp_fu_394_p4[2]),
        .I1(tmp_fu_394_p4[1]),
        .I2(tmp_fu_394_p4[0]),
        .O(\or_ln785_reg_1054[0]_i_2_n_0 ));
  DSP48E1 #(
    .ACASCREG(2),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(2),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(2),
    .BREG(2),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    p
       (.A({p_1[9],p_1[9],p_1[9],p_1[9],p_1[9],p_1[9],p_1[9],p_1[9],p_1[9],p_1[9],p_1[9],p_1[9],p_1[9],p_1[9],p_1[9],p_1[9],p_1[9],p_1[9],p_1[9],p_1[9],p_1}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,Q}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p_BCOUT_UNCONNECTED[17:0]),
        .C({P[18],P[18],P[18],P[18],P[18],P[18],P[18],P[18],P[18],P[18],P[18],P[18],P[18],P[18],P[18],P[18],P[18],P[18],P[18],P[18],P[18],P[18],P[18],P[18],P[18],P[18],P[18],P[18],P[18],P}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(ap_block_pp0_stage0_11001),
        .CEA2(ap_block_pp0_stage0_11001),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(ap_block_pp0_stage0_11001),
        .CEB2(ap_block_pp0_stage0_11001),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(p_0),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p_OVERFLOW_UNCONNECTED),
        .P({NLW_p_P_UNCONNECTED[47:20],ret_V_7_reg_1021,p_n_99,p_n_100,p_n_101,p_n_102,p_n_103,p_n_104,p_n_105}),
        .PATTERNBDETECT(NLW_p_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_p_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p_UNDERFLOW_UNCONNECTED));
  LUT2 #(
    .INIT(4'h9)) 
    \p_Result_s_reg_1036[0]_i_2 
       (.I0(ret_V_7_reg_1021[18]),
        .I1(ret_V_7_reg_1021[19]),
        .O(\p_Result_s_reg_1036[0]_i_2_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \p_Result_s_reg_1036_reg[0]_i_1 
       (.CI(\p_Val2_7_reg_1042_reg[7]_i_4_n_0 ),
        .CO(\NLW_p_Result_s_reg_1036_reg[0]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_p_Result_s_reg_1036_reg[0]_i_1_O_UNCONNECTED [3:1],O}),
        .S({1'b0,1'b0,1'b0,\p_Result_s_reg_1036[0]_i_2_n_0 }));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \p_Val2_7_reg_1042[0]_i_1 
       (.I0(p_Val2_6_fu_338_p4__0[0]),
        .I1(tmp_5_fu_356_p3),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \p_Val2_7_reg_1042[1]_i_1 
       (.I0(p_Val2_6_fu_338_p4__0[0]),
        .I1(tmp_5_fu_356_p3),
        .I2(p_Val2_6_fu_338_p4__0[1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \p_Val2_7_reg_1042[2]_i_1 
       (.I0(p_Val2_6_fu_338_p4__0[1]),
        .I1(tmp_5_fu_356_p3),
        .I2(p_Val2_6_fu_338_p4__0[0]),
        .I3(p_Val2_6_fu_338_p4__0[2]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \p_Val2_7_reg_1042[3]_i_1 
       (.I0(p_Val2_6_fu_338_p4__0[2]),
        .I1(p_Val2_6_fu_338_p4__0[0]),
        .I2(tmp_5_fu_356_p3),
        .I3(p_Val2_6_fu_338_p4__0[1]),
        .I4(p_Val2_6_fu_338_p4__0[3]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \p_Val2_7_reg_1042[4]_i_1 
       (.I0(p_Val2_6_fu_338_p4__0[3]),
        .I1(p_Val2_6_fu_338_p4__0[1]),
        .I2(tmp_5_fu_356_p3),
        .I3(p_Val2_6_fu_338_p4__0[0]),
        .I4(p_Val2_6_fu_338_p4__0[2]),
        .I5(p_Val2_6_fu_338_p4__0[4]),
        .O(D[4]));
  LUT2 #(
    .INIT(4'h6)) 
    \p_Val2_7_reg_1042[4]_i_3 
       (.I0(ret_V_7_reg_1021[10]),
        .I1(\p_Val2_7_reg_1042_reg[4]_i_2_2 ),
        .O(\p_Val2_7_reg_1042[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p_Val2_7_reg_1042[4]_i_4 
       (.I0(ret_V_7_reg_1021[9]),
        .I1(\p_Val2_7_reg_1042_reg[4]_i_2_1 ),
        .O(\p_Val2_7_reg_1042[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p_Val2_7_reg_1042[4]_i_5 
       (.I0(ret_V_7_reg_1021[8]),
        .I1(\p_Val2_7_reg_1042_reg[4]_i_2_0 ),
        .O(\p_Val2_7_reg_1042[4]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \p_Val2_7_reg_1042[5]_i_1 
       (.I0(\p_Val2_7_reg_1042[7]_i_3_n_0 ),
        .I1(p_Val2_6_fu_338_p4__0[5]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \p_Val2_7_reg_1042[6]_i_1 
       (.I0(p_Val2_6_fu_338_p4__0[5]),
        .I1(\p_Val2_7_reg_1042[7]_i_3_n_0 ),
        .I2(p_Val2_6_fu_338_p4__0[6]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \p_Val2_7_reg_1042[7]_i_1 
       (.I0(p_Val2_6_fu_338_p4__0[6]),
        .I1(\p_Val2_7_reg_1042[7]_i_3_n_0 ),
        .I2(p_Val2_6_fu_338_p4__0[5]),
        .I3(p_Val2_6_fu_338_p4),
        .O(D[7]));
  LUT2 #(
    .INIT(4'h6)) 
    \p_Val2_7_reg_1042[7]_i_10 
       (.I0(DI[0]),
        .I1(ret_V_7_reg_1021[18]),
        .O(\p_Val2_7_reg_1042[7]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p_Val2_7_reg_1042[7]_i_11 
       (.I0(DI[0]),
        .I1(ret_V_7_reg_1021[17]),
        .O(\p_Val2_7_reg_1042[7]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p_Val2_7_reg_1042[7]_i_12 
       (.I0(ret_V_7_reg_1021[16]),
        .I1(\p_Val2_7_reg_1042_reg[7]_i_4_1 ),
        .O(\p_Val2_7_reg_1042[7]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p_Val2_7_reg_1042[7]_i_13 
       (.I0(ret_V_7_reg_1021[15]),
        .I1(\p_Val2_7_reg_1042_reg[7]_i_4_0 ),
        .O(\p_Val2_7_reg_1042[7]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \p_Val2_7_reg_1042[7]_i_3 
       (.I0(p_Val2_6_fu_338_p4__0[3]),
        .I1(p_Val2_6_fu_338_p4__0[1]),
        .I2(tmp_5_fu_356_p3),
        .I3(p_Val2_6_fu_338_p4__0[0]),
        .I4(p_Val2_6_fu_338_p4__0[2]),
        .I5(p_Val2_6_fu_338_p4__0[4]),
        .O(\p_Val2_7_reg_1042[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p_Val2_7_reg_1042[7]_i_5 
       (.I0(ret_V_7_reg_1021[14]),
        .I1(\p_Val2_7_reg_1042_reg[7]_i_2_3 ),
        .O(\p_Val2_7_reg_1042[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p_Val2_7_reg_1042[7]_i_6 
       (.I0(ret_V_7_reg_1021[13]),
        .I1(\p_Val2_7_reg_1042_reg[7]_i_2_2 ),
        .O(\p_Val2_7_reg_1042[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p_Val2_7_reg_1042[7]_i_7 
       (.I0(ret_V_7_reg_1021[12]),
        .I1(\p_Val2_7_reg_1042_reg[7]_i_2_1 ),
        .O(\p_Val2_7_reg_1042[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p_Val2_7_reg_1042[7]_i_8 
       (.I0(ret_V_7_reg_1021[11]),
        .I1(\p_Val2_7_reg_1042_reg[7]_i_2_0 ),
        .O(\p_Val2_7_reg_1042[7]_i_8_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \p_Val2_7_reg_1042_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\p_Val2_7_reg_1042_reg[4]_i_2_n_0 ,\p_Val2_7_reg_1042_reg[4]_i_2_n_1 ,\p_Val2_7_reg_1042_reg[4]_i_2_n_2 ,\p_Val2_7_reg_1042_reg[4]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({ret_V_7_reg_1021[10:8],1'b0}),
        .O({p_Val2_6_fu_338_p4__0[2:0],tmp_5_fu_356_p3}),
        .S({\p_Val2_7_reg_1042[4]_i_3_n_0 ,\p_Val2_7_reg_1042[4]_i_4_n_0 ,\p_Val2_7_reg_1042[4]_i_5_n_0 ,ret_V_7_reg_1021[7]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \p_Val2_7_reg_1042_reg[7]_i_2 
       (.CI(\p_Val2_7_reg_1042_reg[4]_i_2_n_0 ),
        .CO({\p_Val2_7_reg_1042_reg[7]_i_2_n_0 ,\p_Val2_7_reg_1042_reg[7]_i_2_n_1 ,\p_Val2_7_reg_1042_reg[7]_i_2_n_2 ,\p_Val2_7_reg_1042_reg[7]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(ret_V_7_reg_1021[14:11]),
        .O(p_Val2_6_fu_338_p4__0[6:3]),
        .S({\p_Val2_7_reg_1042[7]_i_5_n_0 ,\p_Val2_7_reg_1042[7]_i_6_n_0 ,\p_Val2_7_reg_1042[7]_i_7_n_0 ,\p_Val2_7_reg_1042[7]_i_8_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \p_Val2_7_reg_1042_reg[7]_i_4 
       (.CI(\p_Val2_7_reg_1042_reg[7]_i_2_n_0 ),
        .CO({\p_Val2_7_reg_1042_reg[7]_i_4_n_0 ,\p_Val2_7_reg_1042_reg[7]_i_4_n_1 ,\p_Val2_7_reg_1042_reg[7]_i_4_n_2 ,\p_Val2_7_reg_1042_reg[7]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({DI,ret_V_7_reg_1021[16:15]}),
        .O({tmp_fu_394_p4,p_Val2_6_fu_338_p4}),
        .S({\p_Val2_7_reg_1042[7]_i_10_n_0 ,\p_Val2_7_reg_1042[7]_i_11_n_0 ,\p_Val2_7_reg_1042[7]_i_12_n_0 ,\p_Val2_7_reg_1042[7]_i_13_n_0 }));
endmodule

module base_color_convert_1_regslice_both
   (stream_in_24_TREADY,
    stream_in_24_TDATA_8_sp_1,
    stream_in_24_TDATA_9_sp_1,
    stream_in_24_TDATA_10_sp_1,
    stream_in_24_TDATA_11_sp_1,
    stream_in_24_TDATA_12_sp_1,
    stream_in_24_TDATA_13_sp_1,
    stream_in_24_TDATA_14_sp_1,
    stream_in_24_TDATA_15_sp_1,
    stream_in_24_TDATA_0_sp_1,
    stream_in_24_TDATA_1_sp_1,
    stream_in_24_TDATA_2_sp_1,
    stream_in_24_TDATA_3_sp_1,
    stream_in_24_TDATA_4_sp_1,
    stream_in_24_TDATA_5_sp_1,
    stream_in_24_TDATA_6_sp_1,
    stream_in_24_TDATA_7_sp_1,
    Q,
    stream_in_24_TVALID,
    ap_rst_n,
    stream_in_24_TDATA,
    ap_block_pp0_stage0_11001,
    ap_clk,
    ARESET,
    \odata_int_reg[16] );
  output stream_in_24_TREADY;
  output stream_in_24_TDATA_8_sp_1;
  output stream_in_24_TDATA_9_sp_1;
  output stream_in_24_TDATA_10_sp_1;
  output stream_in_24_TDATA_11_sp_1;
  output stream_in_24_TDATA_12_sp_1;
  output stream_in_24_TDATA_13_sp_1;
  output stream_in_24_TDATA_14_sp_1;
  output stream_in_24_TDATA_15_sp_1;
  output stream_in_24_TDATA_0_sp_1;
  output stream_in_24_TDATA_1_sp_1;
  output stream_in_24_TDATA_2_sp_1;
  output stream_in_24_TDATA_3_sp_1;
  output stream_in_24_TDATA_4_sp_1;
  output stream_in_24_TDATA_5_sp_1;
  output stream_in_24_TDATA_6_sp_1;
  output stream_in_24_TDATA_7_sp_1;
  output [8:0]Q;
  input stream_in_24_TVALID;
  input ap_rst_n;
  input [23:0]stream_in_24_TDATA;
  input ap_block_pp0_stage0_11001;
  input ap_clk;
  input ARESET;
  input \odata_int_reg[16] ;

  wire ARESET;
  wire [8:0]Q;
  wire ap_block_pp0_stage0_11001;
  wire ap_clk;
  wire ap_rst_n;
  wire ibuf_inst_n_10;
  wire ibuf_inst_n_2;
  wire ibuf_inst_n_3;
  wire ibuf_inst_n_4;
  wire ibuf_inst_n_5;
  wire ibuf_inst_n_6;
  wire ibuf_inst_n_7;
  wire ibuf_inst_n_8;
  wire ibuf_inst_n_9;
  wire obuf_inst_n_0;
  wire \odata_int_reg[16] ;
  wire p_0_in;
  wire [23:0]stream_in_24_TDATA;
  wire stream_in_24_TDATA_0_sn_1;
  wire stream_in_24_TDATA_10_sn_1;
  wire stream_in_24_TDATA_11_sn_1;
  wire stream_in_24_TDATA_12_sn_1;
  wire stream_in_24_TDATA_13_sn_1;
  wire stream_in_24_TDATA_14_sn_1;
  wire stream_in_24_TDATA_15_sn_1;
  wire stream_in_24_TDATA_1_sn_1;
  wire stream_in_24_TDATA_2_sn_1;
  wire stream_in_24_TDATA_3_sn_1;
  wire stream_in_24_TDATA_4_sn_1;
  wire stream_in_24_TDATA_5_sn_1;
  wire stream_in_24_TDATA_6_sn_1;
  wire stream_in_24_TDATA_7_sn_1;
  wire stream_in_24_TDATA_8_sn_1;
  wire stream_in_24_TDATA_9_sn_1;
  wire stream_in_24_TREADY;
  wire stream_in_24_TVALID;

  assign stream_in_24_TDATA_0_sp_1 = stream_in_24_TDATA_0_sn_1;
  assign stream_in_24_TDATA_10_sp_1 = stream_in_24_TDATA_10_sn_1;
  assign stream_in_24_TDATA_11_sp_1 = stream_in_24_TDATA_11_sn_1;
  assign stream_in_24_TDATA_12_sp_1 = stream_in_24_TDATA_12_sn_1;
  assign stream_in_24_TDATA_13_sp_1 = stream_in_24_TDATA_13_sn_1;
  assign stream_in_24_TDATA_14_sp_1 = stream_in_24_TDATA_14_sn_1;
  assign stream_in_24_TDATA_15_sp_1 = stream_in_24_TDATA_15_sn_1;
  assign stream_in_24_TDATA_1_sp_1 = stream_in_24_TDATA_1_sn_1;
  assign stream_in_24_TDATA_2_sp_1 = stream_in_24_TDATA_2_sn_1;
  assign stream_in_24_TDATA_3_sp_1 = stream_in_24_TDATA_3_sn_1;
  assign stream_in_24_TDATA_4_sp_1 = stream_in_24_TDATA_4_sn_1;
  assign stream_in_24_TDATA_5_sp_1 = stream_in_24_TDATA_5_sn_1;
  assign stream_in_24_TDATA_6_sp_1 = stream_in_24_TDATA_6_sn_1;
  assign stream_in_24_TDATA_7_sp_1 = stream_in_24_TDATA_7_sn_1;
  assign stream_in_24_TDATA_8_sp_1 = stream_in_24_TDATA_8_sn_1;
  assign stream_in_24_TDATA_9_sp_1 = stream_in_24_TDATA_9_sn_1;
  base_color_convert_1_xil_defaultlib_ibuf_14 ibuf_inst
       (.D({stream_in_24_TVALID,stream_in_24_TDATA}),
        .Q(p_0_in),
        .SR(obuf_inst_n_0),
        .ap_block_pp0_stage0_11001(ap_block_pp0_stage0_11001),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .\ireg_reg[0]_0 (Q[8]),
        .\ireg_reg[24]_0 ({ibuf_inst_n_2,ibuf_inst_n_3,ibuf_inst_n_4,ibuf_inst_n_5,ibuf_inst_n_6,ibuf_inst_n_7,ibuf_inst_n_8,ibuf_inst_n_9,ibuf_inst_n_10}),
        .\stream_in_24_TDATA[0] (stream_in_24_TDATA_0_sn_1),
        .\stream_in_24_TDATA[10] (stream_in_24_TDATA_10_sn_1),
        .\stream_in_24_TDATA[11] (stream_in_24_TDATA_11_sn_1),
        .\stream_in_24_TDATA[12] (stream_in_24_TDATA_12_sn_1),
        .\stream_in_24_TDATA[13] (stream_in_24_TDATA_13_sn_1),
        .\stream_in_24_TDATA[14] (stream_in_24_TDATA_14_sn_1),
        .\stream_in_24_TDATA[15] (stream_in_24_TDATA_15_sn_1),
        .\stream_in_24_TDATA[1] (stream_in_24_TDATA_1_sn_1),
        .\stream_in_24_TDATA[2] (stream_in_24_TDATA_2_sn_1),
        .\stream_in_24_TDATA[3] (stream_in_24_TDATA_3_sn_1),
        .\stream_in_24_TDATA[4] (stream_in_24_TDATA_4_sn_1),
        .\stream_in_24_TDATA[5] (stream_in_24_TDATA_5_sn_1),
        .\stream_in_24_TDATA[6] (stream_in_24_TDATA_6_sn_1),
        .\stream_in_24_TDATA[7] (stream_in_24_TDATA_7_sn_1),
        .\stream_in_24_TDATA[8] (stream_in_24_TDATA_8_sn_1),
        .\stream_in_24_TDATA[9] (stream_in_24_TDATA_9_sn_1),
        .stream_in_24_TREADY(stream_in_24_TREADY));
  base_color_convert_1_xil_defaultlib_obuf_15 obuf_inst
       (.ARESET(ARESET),
        .D({ibuf_inst_n_2,ibuf_inst_n_3,ibuf_inst_n_4,ibuf_inst_n_5,ibuf_inst_n_6,ibuf_inst_n_7,ibuf_inst_n_8,ibuf_inst_n_9,ibuf_inst_n_10}),
        .Q(Q),
        .SR(obuf_inst_n_0),
        .ap_block_pp0_stage0_11001(ap_block_pp0_stage0_11001),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .\ireg_reg[0] (p_0_in),
        .\odata_int_reg[16]_0 (\odata_int_reg[16] ));
endmodule

(* ORIG_REF_NAME = "regslice_both" *) 
module base_color_convert_1_regslice_both_5
   (ap_block_pp0_stage0_11001,
    ap_rst_n_0,
    ap_rst_n_1,
    ARESET,
    \odata_int_reg[24] ,
    \odata_int_reg[24]_0 ,
    ap_enable_reg_pp0_iter2_reg,
    ap_enable_reg_pp0_iter3_reg,
    ap_clk,
    p_Result_s_reg_1036,
    and_ln781_reg_1048,
    Q,
    or_ln785_reg_1054,
    p_Result_2_reg_1060,
    and_ln781_1_reg_1072,
    \ireg_reg[15] ,
    or_ln785_1_reg_1078,
    p_Result_4_reg_1084,
    and_ln781_2_reg_1096,
    \ireg_reg[23] ,
    or_ln785_2_reg_1102,
    ap_enable_reg_pp0_iter5,
    stream_out_24_TREADY,
    ap_rst_n,
    \odata_int_reg[0] ,
    \odata_int_reg[0]_0 ,
    ap_enable_reg_pp0_iter6,
    \odata_int_reg[16] ,
    ap_enable_reg_pp0_iter2,
    ap_enable_reg_pp0_iter3);
  output ap_block_pp0_stage0_11001;
  output ap_rst_n_0;
  output ap_rst_n_1;
  output ARESET;
  output \odata_int_reg[24] ;
  output [24:0]\odata_int_reg[24]_0 ;
  output ap_enable_reg_pp0_iter2_reg;
  output ap_enable_reg_pp0_iter3_reg;
  input ap_clk;
  input p_Result_s_reg_1036;
  input and_ln781_reg_1048;
  input [7:0]Q;
  input or_ln785_reg_1054;
  input p_Result_2_reg_1060;
  input and_ln781_1_reg_1072;
  input [7:0]\ireg_reg[15] ;
  input or_ln785_1_reg_1078;
  input p_Result_4_reg_1084;
  input and_ln781_2_reg_1096;
  input [7:0]\ireg_reg[23] ;
  input or_ln785_2_reg_1102;
  input ap_enable_reg_pp0_iter5;
  input stream_out_24_TREADY;
  input ap_rst_n;
  input \odata_int_reg[0] ;
  input \odata_int_reg[0]_0 ;
  input ap_enable_reg_pp0_iter6;
  input [0:0]\odata_int_reg[16] ;
  input ap_enable_reg_pp0_iter2;
  input ap_enable_reg_pp0_iter3;

  wire ARESET;
  wire [7:0]Q;
  wire and_ln781_1_reg_1072;
  wire and_ln781_2_reg_1096;
  wire and_ln781_reg_1048;
  wire ap_block_pp0_stage0_11001;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter2;
  wire ap_enable_reg_pp0_iter2_reg;
  wire ap_enable_reg_pp0_iter3;
  wire ap_enable_reg_pp0_iter3_reg;
  wire ap_enable_reg_pp0_iter5;
  wire ap_enable_reg_pp0_iter6;
  wire ap_rst_n;
  wire ap_rst_n_0;
  wire ap_rst_n_1;
  wire \count_reg_n_0_[0] ;
  wire \count_reg_n_0_[1] ;
  wire ibuf_inst_n_0;
  wire ibuf_inst_n_1;
  wire ibuf_inst_n_10;
  wire ibuf_inst_n_11;
  wire ibuf_inst_n_12;
  wire ibuf_inst_n_13;
  wire ibuf_inst_n_14;
  wire ibuf_inst_n_15;
  wire ibuf_inst_n_16;
  wire ibuf_inst_n_17;
  wire ibuf_inst_n_18;
  wire ibuf_inst_n_19;
  wire ibuf_inst_n_2;
  wire ibuf_inst_n_20;
  wire ibuf_inst_n_21;
  wire ibuf_inst_n_22;
  wire ibuf_inst_n_23;
  wire ibuf_inst_n_24;
  wire ibuf_inst_n_25;
  wire ibuf_inst_n_3;
  wire ibuf_inst_n_32;
  wire ibuf_inst_n_4;
  wire ibuf_inst_n_5;
  wire ibuf_inst_n_6;
  wire ibuf_inst_n_7;
  wire ibuf_inst_n_8;
  wire ibuf_inst_n_9;
  wire [7:0]\ireg_reg[15] ;
  wire [7:0]\ireg_reg[23] ;
  wire obuf_inst_n_26;
  wire \odata_int_reg[0] ;
  wire \odata_int_reg[0]_0 ;
  wire [0:0]\odata_int_reg[16] ;
  wire \odata_int_reg[24] ;
  wire [24:0]\odata_int_reg[24]_0 ;
  wire or_ln785_1_reg_1078;
  wire or_ln785_2_reg_1102;
  wire or_ln785_reg_1054;
  wire p_0_in;
  wire p_Result_2_reg_1060;
  wire p_Result_4_reg_1084;
  wire p_Result_s_reg_1036;
  wire p_i_3_n_0;
  wire stream_out_24_TREADY;

  FDRE \count_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ibuf_inst_n_25),
        .Q(\count_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \count_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ibuf_inst_n_32),
        .Q(\count_reg_n_0_[1] ),
        .R(1'b0));
  base_color_convert_1_xil_defaultlib_ibuf ibuf_inst
       (.D({ibuf_inst_n_0,ibuf_inst_n_1,ibuf_inst_n_2,ibuf_inst_n_3,ibuf_inst_n_4,ibuf_inst_n_5,ibuf_inst_n_6,ibuf_inst_n_7,ibuf_inst_n_8,ibuf_inst_n_9,ibuf_inst_n_10,ibuf_inst_n_11,ibuf_inst_n_12,ibuf_inst_n_13,ibuf_inst_n_14,ibuf_inst_n_15,ibuf_inst_n_16,ibuf_inst_n_17,ibuf_inst_n_18,ibuf_inst_n_19,ibuf_inst_n_20,ibuf_inst_n_21,ibuf_inst_n_22,ibuf_inst_n_23,ibuf_inst_n_24}),
        .Q(Q),
        .SR(obuf_inst_n_26),
        .and_ln781_1_reg_1072(and_ln781_1_reg_1072),
        .and_ln781_2_reg_1096(and_ln781_2_reg_1096),
        .and_ln781_reg_1048(and_ln781_reg_1048),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter2(ap_enable_reg_pp0_iter2),
        .ap_enable_reg_pp0_iter2_reg(ap_enable_reg_pp0_iter2_reg),
        .ap_enable_reg_pp0_iter3(ap_enable_reg_pp0_iter3),
        .ap_enable_reg_pp0_iter3_reg(ap_enable_reg_pp0_iter3_reg),
        .ap_enable_reg_pp0_iter5(ap_enable_reg_pp0_iter5),
        .ap_enable_reg_pp0_iter5_reg(ibuf_inst_n_25),
        .ap_enable_reg_pp0_iter6(ap_enable_reg_pp0_iter6),
        .ap_enable_reg_pp0_iter6_reg(ap_block_pp0_stage0_11001),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_0(ap_rst_n_0),
        .ap_rst_n_1(ap_rst_n_1),
        .\count_reg[0] (\count_reg_n_0_[0] ),
        .\count_reg[0]_0 (\count_reg_n_0_[1] ),
        .\count_reg[1] (ibuf_inst_n_32),
        .\ireg_reg[0]_0 (\odata_int_reg[24]_0 [24]),
        .\ireg_reg[15]_0 (\ireg_reg[15] ),
        .\ireg_reg[23]_0 (\ireg_reg[23] ),
        .\ireg_reg[24]_0 (p_0_in),
        .\odata_int_reg[0] (\odata_int_reg[0] ),
        .\odata_int_reg[0]_0 (\odata_int_reg[0]_0 ),
        .\odata_int_reg[16] (\odata_int_reg[16] ),
        .\odata_int_reg[24] (\odata_int_reg[24] ),
        .or_ln785_1_reg_1078(or_ln785_1_reg_1078),
        .or_ln785_2_reg_1102(or_ln785_2_reg_1102),
        .or_ln785_reg_1054(or_ln785_reg_1054),
        .p(p_i_3_n_0),
        .p_Result_2_reg_1060(p_Result_2_reg_1060),
        .p_Result_4_reg_1084(p_Result_4_reg_1084),
        .p_Result_s_reg_1036(p_Result_s_reg_1036),
        .stream_out_24_TREADY(stream_out_24_TREADY));
  base_color_convert_1_xil_defaultlib_obuf obuf_inst
       (.D({ibuf_inst_n_0,ibuf_inst_n_1,ibuf_inst_n_2,ibuf_inst_n_3,ibuf_inst_n_4,ibuf_inst_n_5,ibuf_inst_n_6,ibuf_inst_n_7,ibuf_inst_n_8,ibuf_inst_n_9,ibuf_inst_n_10,ibuf_inst_n_11,ibuf_inst_n_12,ibuf_inst_n_13,ibuf_inst_n_14,ibuf_inst_n_15,ibuf_inst_n_16,ibuf_inst_n_17,ibuf_inst_n_18,ibuf_inst_n_19,ibuf_inst_n_20,ibuf_inst_n_21,ibuf_inst_n_22,ibuf_inst_n_23,ibuf_inst_n_24}),
        .Q(\odata_int_reg[24]_0 ),
        .SR(ARESET),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .\ireg_reg[0] (p_0_in),
        .\odata_int_reg[24]_0 (obuf_inst_n_26),
        .stream_out_24_TREADY(stream_out_24_TREADY));
  LUT3 #(
    .INIT(8'hD5)) 
    p_i_3
       (.I0(\count_reg_n_0_[0] ),
        .I1(\count_reg_n_0_[1] ),
        .I2(stream_out_24_TREADY),
        .O(p_i_3_n_0));
endmodule

(* ORIG_REF_NAME = "regslice_both" *) 
module base_color_convert_1_regslice_both__parameterized1
   (\odata_int_reg[1] ,
    \odata_int_reg[0] ,
    stream_in_24_TVALID,
    ap_rst_n,
    ap_block_pp0_stage0_11001,
    stream_in_24_TLAST,
    ap_clk,
    \odata_int_reg[0]_0 ,
    ARESET);
  output \odata_int_reg[1] ;
  output \odata_int_reg[0] ;
  input stream_in_24_TVALID;
  input ap_rst_n;
  input ap_block_pp0_stage0_11001;
  input [0:0]stream_in_24_TLAST;
  input ap_clk;
  input \odata_int_reg[0]_0 ;
  input ARESET;

  wire ARESET;
  wire ap_block_pp0_stage0_11001;
  wire ap_clk;
  wire ap_rst_n;
  wire ibuf_inst_n_1;
  wire \odata_int_reg[0] ;
  wire \odata_int_reg[0]_0 ;
  wire \odata_int_reg[1] ;
  wire p_0_in;
  wire [0:0]stream_in_24_TLAST;
  wire stream_in_24_TVALID;

  base_color_convert_1_xil_defaultlib_ibuf__parameterized0_12 ibuf_inst
       (.ap_block_pp0_stage0_11001(ap_block_pp0_stage0_11001),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .\ireg_reg[0]_0 (ibuf_inst_n_1),
        .\ireg_reg[0]_1 (\odata_int_reg[1] ),
        .p_0_in(p_0_in),
        .stream_in_24_TLAST(stream_in_24_TLAST),
        .stream_in_24_TVALID(stream_in_24_TVALID));
  base_color_convert_1_xil_defaultlib_obuf__parameterized0_13 obuf_inst
       (.ARESET(ARESET),
        .ap_block_pp0_stage0_11001(ap_block_pp0_stage0_11001),
        .ap_clk(ap_clk),
        .\odata_int_reg[0]_0 (\odata_int_reg[0] ),
        .\odata_int_reg[0]_1 (ibuf_inst_n_1),
        .\odata_int_reg[0]_2 (\odata_int_reg[0]_0 ),
        .\odata_int_reg[1]_0 (\odata_int_reg[1] ),
        .p_0_in(p_0_in),
        .stream_in_24_TLAST(stream_in_24_TLAST),
        .stream_in_24_TVALID(stream_in_24_TVALID));
endmodule

(* ORIG_REF_NAME = "regslice_both" *) 
module base_color_convert_1_regslice_both__parameterized1_4
   (\odata_int_reg[1] ,
    \odata_int_reg[0] ,
    stream_in_24_TVALID,
    ap_rst_n,
    ap_block_pp0_stage0_11001,
    stream_in_24_TUSER,
    ap_clk,
    \odata_int_reg[0]_0 ,
    ARESET);
  output \odata_int_reg[1] ;
  output \odata_int_reg[0] ;
  input stream_in_24_TVALID;
  input ap_rst_n;
  input ap_block_pp0_stage0_11001;
  input [0:0]stream_in_24_TUSER;
  input ap_clk;
  input \odata_int_reg[0]_0 ;
  input ARESET;

  wire ARESET;
  wire ap_block_pp0_stage0_11001;
  wire ap_clk;
  wire ap_rst_n;
  wire ibuf_inst_n_1;
  wire \odata_int_reg[0] ;
  wire \odata_int_reg[0]_0 ;
  wire \odata_int_reg[1] ;
  wire p_0_in;
  wire [0:0]stream_in_24_TUSER;
  wire stream_in_24_TVALID;

  base_color_convert_1_xil_defaultlib_ibuf__parameterized0_10 ibuf_inst
       (.ap_block_pp0_stage0_11001(ap_block_pp0_stage0_11001),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .\ireg_reg[0]_0 (ibuf_inst_n_1),
        .\ireg_reg[0]_1 (\odata_int_reg[1] ),
        .p_0_in(p_0_in),
        .stream_in_24_TUSER(stream_in_24_TUSER),
        .stream_in_24_TVALID(stream_in_24_TVALID));
  base_color_convert_1_xil_defaultlib_obuf__parameterized0_11 obuf_inst
       (.ARESET(ARESET),
        .ap_block_pp0_stage0_11001(ap_block_pp0_stage0_11001),
        .ap_clk(ap_clk),
        .\odata_int_reg[0]_0 (\odata_int_reg[0] ),
        .\odata_int_reg[0]_1 (ibuf_inst_n_1),
        .\odata_int_reg[0]_2 (\odata_int_reg[0]_0 ),
        .\odata_int_reg[1]_0 (\odata_int_reg[1] ),
        .p_0_in(p_0_in),
        .stream_in_24_TUSER(stream_in_24_TUSER),
        .stream_in_24_TVALID(stream_in_24_TVALID));
endmodule

(* ORIG_REF_NAME = "regslice_both" *) 
module base_color_convert_1_regslice_both__parameterized1_6
   (stream_out_24_TLAST,
    ap_rst_n,
    stream_out_24_TREADY,
    ap_block_pp0_stage0_11001,
    ap_enable_reg_pp0_iter5,
    stream_in_24_last_V_s_reg_915_pp0_iter4_reg,
    ap_clk,
    ARESET);
  output [0:0]stream_out_24_TLAST;
  input ap_rst_n;
  input stream_out_24_TREADY;
  input ap_block_pp0_stage0_11001;
  input ap_enable_reg_pp0_iter5;
  input stream_in_24_last_V_s_reg_915_pp0_iter4_reg;
  input ap_clk;
  input ARESET;

  wire ARESET;
  wire ap_block_pp0_stage0_11001;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter5;
  wire ap_rst_n;
  wire ibuf_inst_n_1;
  wire obuf_inst_n_0;
  wire p_0_in;
  wire stream_in_24_last_V_s_reg_915_pp0_iter4_reg;
  wire [0:0]stream_out_24_TLAST;
  wire stream_out_24_TREADY;

  base_color_convert_1_xil_defaultlib_ibuf__parameterized0_8 ibuf_inst
       (.ap_block_pp0_stage0_11001(ap_block_pp0_stage0_11001),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter5(ap_enable_reg_pp0_iter5),
        .ap_rst_n(ap_rst_n),
        .\ireg_reg[0]_0 (ibuf_inst_n_1),
        .\ireg_reg[1]_0 (obuf_inst_n_0),
        .p_0_in(p_0_in),
        .stream_in_24_last_V_s_reg_915_pp0_iter4_reg(stream_in_24_last_V_s_reg_915_pp0_iter4_reg),
        .stream_out_24_TREADY(stream_out_24_TREADY));
  base_color_convert_1_xil_defaultlib_obuf__parameterized0_9 obuf_inst
       (.ARESET(ARESET),
        .ap_block_pp0_stage0_11001(ap_block_pp0_stage0_11001),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter5(ap_enable_reg_pp0_iter5),
        .ap_rst_n(ap_rst_n),
        .\odata_int_reg[0]_0 (ibuf_inst_n_1),
        .\odata_int_reg[1]_0 (obuf_inst_n_0),
        .p_0_in(p_0_in),
        .stream_in_24_last_V_s_reg_915_pp0_iter4_reg(stream_in_24_last_V_s_reg_915_pp0_iter4_reg),
        .stream_out_24_TLAST(stream_out_24_TLAST),
        .stream_out_24_TREADY(stream_out_24_TREADY));
endmodule

(* ORIG_REF_NAME = "regslice_both" *) 
module base_color_convert_1_regslice_both__parameterized1_7
   (stream_out_24_TUSER,
    ap_rst_n,
    stream_out_24_TREADY,
    ap_block_pp0_stage0_11001,
    ap_enable_reg_pp0_iter5,
    stream_in_24_user_V_s_reg_910_pp0_iter4_reg,
    ap_clk,
    ARESET);
  output [0:0]stream_out_24_TUSER;
  input ap_rst_n;
  input stream_out_24_TREADY;
  input ap_block_pp0_stage0_11001;
  input ap_enable_reg_pp0_iter5;
  input stream_in_24_user_V_s_reg_910_pp0_iter4_reg;
  input ap_clk;
  input ARESET;

  wire ARESET;
  wire ap_block_pp0_stage0_11001;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter5;
  wire ap_rst_n;
  wire ibuf_inst_n_1;
  wire obuf_inst_n_0;
  wire p_0_in;
  wire stream_in_24_user_V_s_reg_910_pp0_iter4_reg;
  wire stream_out_24_TREADY;
  wire [0:0]stream_out_24_TUSER;

  base_color_convert_1_xil_defaultlib_ibuf__parameterized0 ibuf_inst
       (.ap_block_pp0_stage0_11001(ap_block_pp0_stage0_11001),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter5(ap_enable_reg_pp0_iter5),
        .ap_rst_n(ap_rst_n),
        .\ireg_reg[0]_0 (ibuf_inst_n_1),
        .\ireg_reg[1]_0 (obuf_inst_n_0),
        .p_0_in(p_0_in),
        .stream_in_24_user_V_s_reg_910_pp0_iter4_reg(stream_in_24_user_V_s_reg_910_pp0_iter4_reg),
        .stream_out_24_TREADY(stream_out_24_TREADY));
  base_color_convert_1_xil_defaultlib_obuf__parameterized0 obuf_inst
       (.ARESET(ARESET),
        .ap_block_pp0_stage0_11001(ap_block_pp0_stage0_11001),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter5(ap_enable_reg_pp0_iter5),
        .ap_rst_n(ap_rst_n),
        .\odata_int_reg[0]_0 (ibuf_inst_n_1),
        .\odata_int_reg[1]_0 (obuf_inst_n_0),
        .p_0_in(p_0_in),
        .stream_in_24_user_V_s_reg_910_pp0_iter4_reg(stream_in_24_user_V_s_reg_910_pp0_iter4_reg),
        .stream_out_24_TREADY(stream_out_24_TREADY),
        .stream_out_24_TUSER(stream_out_24_TUSER));
endmodule

module base_color_convert_1_xil_defaultlib_ibuf
   (D,
    ap_enable_reg_pp0_iter5_reg,
    ap_enable_reg_pp0_iter6_reg,
    \ireg_reg[24]_0 ,
    ap_rst_n_0,
    ap_rst_n_1,
    \odata_int_reg[24] ,
    ap_enable_reg_pp0_iter2_reg,
    \count_reg[1] ,
    ap_enable_reg_pp0_iter3_reg,
    p_Result_s_reg_1036,
    and_ln781_reg_1048,
    Q,
    or_ln785_reg_1054,
    p_Result_2_reg_1060,
    and_ln781_1_reg_1072,
    \ireg_reg[15]_0 ,
    or_ln785_1_reg_1078,
    p_Result_4_reg_1084,
    and_ln781_2_reg_1096,
    \ireg_reg[23]_0 ,
    or_ln785_2_reg_1102,
    ap_enable_reg_pp0_iter5,
    \count_reg[0] ,
    \count_reg[0]_0 ,
    stream_out_24_TREADY,
    ap_rst_n,
    \odata_int_reg[0] ,
    \odata_int_reg[0]_0 ,
    p,
    ap_enable_reg_pp0_iter6,
    \odata_int_reg[16] ,
    \ireg_reg[0]_0 ,
    ap_enable_reg_pp0_iter2,
    ap_enable_reg_pp0_iter3,
    SR,
    ap_clk);
  output [24:0]D;
  output ap_enable_reg_pp0_iter5_reg;
  output ap_enable_reg_pp0_iter6_reg;
  output [0:0]\ireg_reg[24]_0 ;
  output ap_rst_n_0;
  output ap_rst_n_1;
  output \odata_int_reg[24] ;
  output ap_enable_reg_pp0_iter2_reg;
  output \count_reg[1] ;
  output ap_enable_reg_pp0_iter3_reg;
  input p_Result_s_reg_1036;
  input and_ln781_reg_1048;
  input [7:0]Q;
  input or_ln785_reg_1054;
  input p_Result_2_reg_1060;
  input and_ln781_1_reg_1072;
  input [7:0]\ireg_reg[15]_0 ;
  input or_ln785_1_reg_1078;
  input p_Result_4_reg_1084;
  input and_ln781_2_reg_1096;
  input [7:0]\ireg_reg[23]_0 ;
  input or_ln785_2_reg_1102;
  input ap_enable_reg_pp0_iter5;
  input \count_reg[0] ;
  input \count_reg[0]_0 ;
  input stream_out_24_TREADY;
  input ap_rst_n;
  input \odata_int_reg[0] ;
  input \odata_int_reg[0]_0 ;
  input p;
  input ap_enable_reg_pp0_iter6;
  input [0:0]\odata_int_reg[16] ;
  input [0:0]\ireg_reg[0]_0 ;
  input ap_enable_reg_pp0_iter2;
  input ap_enable_reg_pp0_iter3;
  input [0:0]SR;
  input ap_clk;

  wire [24:0]D;
  wire [7:0]Q;
  wire [0:0]SR;
  wire and_ln781_1_reg_1072;
  wire and_ln781_2_reg_1096;
  wire and_ln781_reg_1048;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter2;
  wire ap_enable_reg_pp0_iter2_reg;
  wire ap_enable_reg_pp0_iter3;
  wire ap_enable_reg_pp0_iter3_reg;
  wire ap_enable_reg_pp0_iter5;
  wire ap_enable_reg_pp0_iter5_reg;
  wire ap_enable_reg_pp0_iter6;
  wire ap_enable_reg_pp0_iter6_reg;
  wire ap_rst_n;
  wire ap_rst_n_0;
  wire ap_rst_n_1;
  wire \count_reg[0] ;
  wire \count_reg[0]_0 ;
  wire \count_reg[1] ;
  wire ireg01_out;
  wire \ireg[0]_i_1_n_0 ;
  wire \ireg[10]_i_1_n_0 ;
  wire \ireg[11]_i_1_n_0 ;
  wire \ireg[12]_i_1_n_0 ;
  wire \ireg[13]_i_1_n_0 ;
  wire \ireg[14]_i_1_n_0 ;
  wire \ireg[15]_i_1_n_0 ;
  wire \ireg[16]_i_1_n_0 ;
  wire \ireg[17]_i_1_n_0 ;
  wire \ireg[18]_i_1_n_0 ;
  wire \ireg[19]_i_1_n_0 ;
  wire \ireg[1]_i_1_n_0 ;
  wire \ireg[20]_i_1_n_0 ;
  wire \ireg[21]_i_1_n_0 ;
  wire \ireg[22]_i_1_n_0 ;
  wire \ireg[23]_i_1_n_0 ;
  wire \ireg[24]_i_3_n_0 ;
  wire \ireg[2]_i_1_n_0 ;
  wire \ireg[3]_i_1_n_0 ;
  wire \ireg[4]_i_1_n_0 ;
  wire \ireg[5]_i_1_n_0 ;
  wire \ireg[6]_i_1_n_0 ;
  wire \ireg[7]_i_1_n_0 ;
  wire \ireg[8]_i_1_n_0 ;
  wire \ireg[9]_i_1_n_0 ;
  wire [0:0]\ireg_reg[0]_0 ;
  wire [7:0]\ireg_reg[15]_0 ;
  wire [7:0]\ireg_reg[23]_0 ;
  wire [0:0]\ireg_reg[24]_0 ;
  wire \ireg_reg_n_0_[0] ;
  wire \ireg_reg_n_0_[10] ;
  wire \ireg_reg_n_0_[11] ;
  wire \ireg_reg_n_0_[12] ;
  wire \ireg_reg_n_0_[13] ;
  wire \ireg_reg_n_0_[14] ;
  wire \ireg_reg_n_0_[15] ;
  wire \ireg_reg_n_0_[16] ;
  wire \ireg_reg_n_0_[17] ;
  wire \ireg_reg_n_0_[18] ;
  wire \ireg_reg_n_0_[19] ;
  wire \ireg_reg_n_0_[1] ;
  wire \ireg_reg_n_0_[20] ;
  wire \ireg_reg_n_0_[21] ;
  wire \ireg_reg_n_0_[22] ;
  wire \ireg_reg_n_0_[23] ;
  wire \ireg_reg_n_0_[2] ;
  wire \ireg_reg_n_0_[3] ;
  wire \ireg_reg_n_0_[4] ;
  wire \ireg_reg_n_0_[5] ;
  wire \ireg_reg_n_0_[6] ;
  wire \ireg_reg_n_0_[7] ;
  wire \ireg_reg_n_0_[8] ;
  wire \ireg_reg_n_0_[9] ;
  wire \odata_int[23]_i_4_n_0 ;
  wire \odata_int_reg[0] ;
  wire \odata_int_reg[0]_0 ;
  wire [0:0]\odata_int_reg[16] ;
  wire \odata_int_reg[24] ;
  wire or_ln785_1_reg_1078;
  wire or_ln785_2_reg_1102;
  wire or_ln785_reg_1054;
  wire p;
  wire p_Result_2_reg_1060;
  wire p_Result_4_reg_1084;
  wire p_Result_s_reg_1036;
  wire stream_out_24_TREADY;

  LUT6 #(
    .INIT(64'h88F0F8F088008800)) 
    \count[0]_i_1 
       (.I0(ap_enable_reg_pp0_iter6_reg),
        .I1(ap_enable_reg_pp0_iter5),
        .I2(\count_reg[0] ),
        .I3(\count_reg[0]_0 ),
        .I4(stream_out_24_TREADY),
        .I5(ap_rst_n),
        .O(ap_enable_reg_pp0_iter5_reg));
  LUT6 #(
    .INIT(64'hF3FBFBFB00000000)) 
    \count[1]_i_1 
       (.I0(\count_reg[0]_0 ),
        .I1(\count_reg[0] ),
        .I2(stream_out_24_TREADY),
        .I3(ap_enable_reg_pp0_iter5),
        .I4(ap_enable_reg_pp0_iter6_reg),
        .I5(ap_rst_n),
        .O(\count_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT4 #(
    .INIT(16'hD0FF)) 
    \ireg[0]_i_1 
       (.I0(p_Result_s_reg_1036),
        .I1(and_ln781_reg_1048),
        .I2(Q[0]),
        .I3(or_ln785_reg_1054),
        .O(\ireg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT4 #(
    .INIT(16'hD0FF)) 
    \ireg[10]_i_1 
       (.I0(p_Result_2_reg_1060),
        .I1(and_ln781_1_reg_1072),
        .I2(\ireg_reg[15]_0 [2]),
        .I3(or_ln785_1_reg_1078),
        .O(\ireg[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT4 #(
    .INIT(16'hD0FF)) 
    \ireg[11]_i_1 
       (.I0(p_Result_2_reg_1060),
        .I1(and_ln781_1_reg_1072),
        .I2(\ireg_reg[15]_0 [3]),
        .I3(or_ln785_1_reg_1078),
        .O(\ireg[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT4 #(
    .INIT(16'hD0FF)) 
    \ireg[12]_i_1 
       (.I0(p_Result_2_reg_1060),
        .I1(and_ln781_1_reg_1072),
        .I2(\ireg_reg[15]_0 [4]),
        .I3(or_ln785_1_reg_1078),
        .O(\ireg[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT4 #(
    .INIT(16'hD0FF)) 
    \ireg[13]_i_1 
       (.I0(p_Result_2_reg_1060),
        .I1(and_ln781_1_reg_1072),
        .I2(\ireg_reg[15]_0 [5]),
        .I3(or_ln785_1_reg_1078),
        .O(\ireg[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT4 #(
    .INIT(16'hD0FF)) 
    \ireg[14]_i_1 
       (.I0(p_Result_2_reg_1060),
        .I1(and_ln781_1_reg_1072),
        .I2(\ireg_reg[15]_0 [6]),
        .I3(or_ln785_1_reg_1078),
        .O(\ireg[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT4 #(
    .INIT(16'hD0FF)) 
    \ireg[15]_i_1 
       (.I0(p_Result_2_reg_1060),
        .I1(and_ln781_1_reg_1072),
        .I2(\ireg_reg[15]_0 [7]),
        .I3(or_ln785_1_reg_1078),
        .O(\ireg[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT4 #(
    .INIT(16'hD0FF)) 
    \ireg[16]_i_1 
       (.I0(p_Result_4_reg_1084),
        .I1(and_ln781_2_reg_1096),
        .I2(\ireg_reg[23]_0 [0]),
        .I3(or_ln785_2_reg_1102),
        .O(\ireg[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT4 #(
    .INIT(16'hD0FF)) 
    \ireg[17]_i_1 
       (.I0(p_Result_4_reg_1084),
        .I1(and_ln781_2_reg_1096),
        .I2(\ireg_reg[23]_0 [1]),
        .I3(or_ln785_2_reg_1102),
        .O(\ireg[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT4 #(
    .INIT(16'hD0FF)) 
    \ireg[18]_i_1 
       (.I0(p_Result_4_reg_1084),
        .I1(and_ln781_2_reg_1096),
        .I2(\ireg_reg[23]_0 [2]),
        .I3(or_ln785_2_reg_1102),
        .O(\ireg[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT4 #(
    .INIT(16'hD0FF)) 
    \ireg[19]_i_1 
       (.I0(p_Result_4_reg_1084),
        .I1(and_ln781_2_reg_1096),
        .I2(\ireg_reg[23]_0 [3]),
        .I3(or_ln785_2_reg_1102),
        .O(\ireg[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT4 #(
    .INIT(16'hD0FF)) 
    \ireg[1]_i_1 
       (.I0(p_Result_s_reg_1036),
        .I1(and_ln781_reg_1048),
        .I2(Q[1]),
        .I3(or_ln785_reg_1054),
        .O(\ireg[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT4 #(
    .INIT(16'hD0FF)) 
    \ireg[20]_i_1 
       (.I0(p_Result_4_reg_1084),
        .I1(and_ln781_2_reg_1096),
        .I2(\ireg_reg[23]_0 [4]),
        .I3(or_ln785_2_reg_1102),
        .O(\ireg[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT4 #(
    .INIT(16'hD0FF)) 
    \ireg[21]_i_1 
       (.I0(p_Result_4_reg_1084),
        .I1(and_ln781_2_reg_1096),
        .I2(\ireg_reg[23]_0 [5]),
        .I3(or_ln785_2_reg_1102),
        .O(\ireg[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT4 #(
    .INIT(16'hD0FF)) 
    \ireg[22]_i_1 
       (.I0(p_Result_4_reg_1084),
        .I1(and_ln781_2_reg_1096),
        .I2(\ireg_reg[23]_0 [6]),
        .I3(or_ln785_2_reg_1102),
        .O(\ireg[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT4 #(
    .INIT(16'hD0FF)) 
    \ireg[23]_i_1 
       (.I0(p_Result_4_reg_1084),
        .I1(and_ln781_2_reg_1096),
        .I2(\ireg_reg[23]_0 [7]),
        .I3(or_ln785_2_reg_1102),
        .O(\ireg[23]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \ireg[24]_i_2__0 
       (.I0(\ireg_reg[24]_0 ),
        .I1(\ireg_reg[0]_0 ),
        .I2(stream_out_24_TREADY),
        .O(ireg01_out));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ireg[24]_i_3 
       (.I0(ap_enable_reg_pp0_iter5),
        .I1(ap_enable_reg_pp0_iter6_reg),
        .O(\ireg[24]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT4 #(
    .INIT(16'hD0FF)) 
    \ireg[2]_i_1 
       (.I0(p_Result_s_reg_1036),
        .I1(and_ln781_reg_1048),
        .I2(Q[2]),
        .I3(or_ln785_reg_1054),
        .O(\ireg[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT4 #(
    .INIT(16'hD0FF)) 
    \ireg[3]_i_1 
       (.I0(p_Result_s_reg_1036),
        .I1(and_ln781_reg_1048),
        .I2(Q[3]),
        .I3(or_ln785_reg_1054),
        .O(\ireg[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT4 #(
    .INIT(16'hD0FF)) 
    \ireg[4]_i_1 
       (.I0(p_Result_s_reg_1036),
        .I1(and_ln781_reg_1048),
        .I2(Q[4]),
        .I3(or_ln785_reg_1054),
        .O(\ireg[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT4 #(
    .INIT(16'hD0FF)) 
    \ireg[5]_i_1 
       (.I0(p_Result_s_reg_1036),
        .I1(and_ln781_reg_1048),
        .I2(Q[5]),
        .I3(or_ln785_reg_1054),
        .O(\ireg[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT4 #(
    .INIT(16'hD0FF)) 
    \ireg[6]_i_1 
       (.I0(p_Result_s_reg_1036),
        .I1(and_ln781_reg_1048),
        .I2(Q[6]),
        .I3(or_ln785_reg_1054),
        .O(\ireg[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT4 #(
    .INIT(16'hD0FF)) 
    \ireg[7]_i_1 
       (.I0(p_Result_s_reg_1036),
        .I1(and_ln781_reg_1048),
        .I2(Q[7]),
        .I3(or_ln785_reg_1054),
        .O(\ireg[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT4 #(
    .INIT(16'hD0FF)) 
    \ireg[8]_i_1 
       (.I0(p_Result_2_reg_1060),
        .I1(and_ln781_1_reg_1072),
        .I2(\ireg_reg[15]_0 [0]),
        .I3(or_ln785_1_reg_1078),
        .O(\ireg[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT4 #(
    .INIT(16'hD0FF)) 
    \ireg[9]_i_1 
       (.I0(p_Result_2_reg_1060),
        .I1(and_ln781_1_reg_1072),
        .I2(\ireg_reg[15]_0 [1]),
        .I3(or_ln785_1_reg_1078),
        .O(\ireg[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[0] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(\ireg[0]_i_1_n_0 ),
        .Q(\ireg_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[10] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(\ireg[10]_i_1_n_0 ),
        .Q(\ireg_reg_n_0_[10] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[11] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(\ireg[11]_i_1_n_0 ),
        .Q(\ireg_reg_n_0_[11] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[12] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(\ireg[12]_i_1_n_0 ),
        .Q(\ireg_reg_n_0_[12] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[13] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(\ireg[13]_i_1_n_0 ),
        .Q(\ireg_reg_n_0_[13] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[14] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(\ireg[14]_i_1_n_0 ),
        .Q(\ireg_reg_n_0_[14] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[15] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(\ireg[15]_i_1_n_0 ),
        .Q(\ireg_reg_n_0_[15] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[16] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(\ireg[16]_i_1_n_0 ),
        .Q(\ireg_reg_n_0_[16] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[17] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(\ireg[17]_i_1_n_0 ),
        .Q(\ireg_reg_n_0_[17] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[18] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(\ireg[18]_i_1_n_0 ),
        .Q(\ireg_reg_n_0_[18] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[19] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(\ireg[19]_i_1_n_0 ),
        .Q(\ireg_reg_n_0_[19] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[1] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(\ireg[1]_i_1_n_0 ),
        .Q(\ireg_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[20] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(\ireg[20]_i_1_n_0 ),
        .Q(\ireg_reg_n_0_[20] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[21] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(\ireg[21]_i_1_n_0 ),
        .Q(\ireg_reg_n_0_[21] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[22] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(\ireg[22]_i_1_n_0 ),
        .Q(\ireg_reg_n_0_[22] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[23] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(\ireg[23]_i_1_n_0 ),
        .Q(\ireg_reg_n_0_[23] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[24] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(\ireg[24]_i_3_n_0 ),
        .Q(\ireg_reg[24]_0 ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[2] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(\ireg[2]_i_1_n_0 ),
        .Q(\ireg_reg_n_0_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[3] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(\ireg[3]_i_1_n_0 ),
        .Q(\ireg_reg_n_0_[3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[4] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(\ireg[4]_i_1_n_0 ),
        .Q(\ireg_reg_n_0_[4] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[5] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(\ireg[5]_i_1_n_0 ),
        .Q(\ireg_reg_n_0_[5] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[6] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(\ireg[6]_i_1_n_0 ),
        .Q(\ireg_reg_n_0_[6] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[7] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(\ireg[7]_i_1_n_0 ),
        .Q(\ireg_reg_n_0_[7] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[8] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(\ireg[8]_i_1_n_0 ),
        .Q(\ireg_reg_n_0_[8] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[9] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(\ireg[9]_i_1_n_0 ),
        .Q(\ireg_reg_n_0_[9] ),
        .R(SR));
  LUT6 #(
    .INIT(64'hBB8B8888BBBBBBBB)) 
    \odata_int[0]_i_1 
       (.I0(\ireg_reg_n_0_[0] ),
        .I1(\odata_int[23]_i_4_n_0 ),
        .I2(p_Result_s_reg_1036),
        .I3(and_ln781_reg_1048),
        .I4(Q[0]),
        .I5(or_ln785_reg_1054),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \odata_int[0]_i_2 
       (.I0(ap_rst_n),
        .I1(ap_enable_reg_pp0_iter6_reg),
        .I2(\odata_int_reg[0] ),
        .O(ap_rst_n_0));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \odata_int[0]_i_2__0 
       (.I0(ap_rst_n),
        .I1(ap_enable_reg_pp0_iter6_reg),
        .I2(\odata_int_reg[0]_0 ),
        .O(ap_rst_n_1));
  LUT6 #(
    .INIT(64'hBB8B8888BBBBBBBB)) 
    \odata_int[10]_i_1 
       (.I0(\ireg_reg_n_0_[10] ),
        .I1(\odata_int[23]_i_4_n_0 ),
        .I2(p_Result_2_reg_1060),
        .I3(and_ln781_1_reg_1072),
        .I4(\ireg_reg[15]_0 [2]),
        .I5(or_ln785_1_reg_1078),
        .O(D[10]));
  LUT6 #(
    .INIT(64'hBB8B8888BBBBBBBB)) 
    \odata_int[11]_i_1 
       (.I0(\ireg_reg_n_0_[11] ),
        .I1(\odata_int[23]_i_4_n_0 ),
        .I2(p_Result_2_reg_1060),
        .I3(and_ln781_1_reg_1072),
        .I4(\ireg_reg[15]_0 [3]),
        .I5(or_ln785_1_reg_1078),
        .O(D[11]));
  LUT6 #(
    .INIT(64'hBB8B8888BBBBBBBB)) 
    \odata_int[12]_i_1 
       (.I0(\ireg_reg_n_0_[12] ),
        .I1(\odata_int[23]_i_4_n_0 ),
        .I2(p_Result_2_reg_1060),
        .I3(and_ln781_1_reg_1072),
        .I4(\ireg_reg[15]_0 [4]),
        .I5(or_ln785_1_reg_1078),
        .O(D[12]));
  LUT6 #(
    .INIT(64'hBB8B8888BBBBBBBB)) 
    \odata_int[13]_i_1 
       (.I0(\ireg_reg_n_0_[13] ),
        .I1(\odata_int[23]_i_4_n_0 ),
        .I2(p_Result_2_reg_1060),
        .I3(and_ln781_1_reg_1072),
        .I4(\ireg_reg[15]_0 [5]),
        .I5(or_ln785_1_reg_1078),
        .O(D[13]));
  LUT6 #(
    .INIT(64'hBB8B8888BBBBBBBB)) 
    \odata_int[14]_i_1 
       (.I0(\ireg_reg_n_0_[14] ),
        .I1(\odata_int[23]_i_4_n_0 ),
        .I2(p_Result_2_reg_1060),
        .I3(and_ln781_1_reg_1072),
        .I4(\ireg_reg[15]_0 [6]),
        .I5(or_ln785_1_reg_1078),
        .O(D[14]));
  LUT6 #(
    .INIT(64'hBB8B8888BBBBBBBB)) 
    \odata_int[15]_i_1 
       (.I0(\ireg_reg_n_0_[15] ),
        .I1(\odata_int[23]_i_4_n_0 ),
        .I2(p_Result_2_reg_1060),
        .I3(and_ln781_1_reg_1072),
        .I4(\ireg_reg[15]_0 [7]),
        .I5(or_ln785_1_reg_1078),
        .O(D[15]));
  LUT6 #(
    .INIT(64'hBB8B8888BBBBBBBB)) 
    \odata_int[16]_i_1 
       (.I0(\ireg_reg_n_0_[16] ),
        .I1(\odata_int[23]_i_4_n_0 ),
        .I2(p_Result_4_reg_1084),
        .I3(and_ln781_2_reg_1096),
        .I4(\ireg_reg[23]_0 [0]),
        .I5(or_ln785_2_reg_1102),
        .O(D[16]));
  LUT6 #(
    .INIT(64'hBB8B8888BBBBBBBB)) 
    \odata_int[17]_i_1 
       (.I0(\ireg_reg_n_0_[17] ),
        .I1(\odata_int[23]_i_4_n_0 ),
        .I2(p_Result_4_reg_1084),
        .I3(and_ln781_2_reg_1096),
        .I4(\ireg_reg[23]_0 [1]),
        .I5(or_ln785_2_reg_1102),
        .O(D[17]));
  LUT6 #(
    .INIT(64'hBB8B8888BBBBBBBB)) 
    \odata_int[18]_i_1 
       (.I0(\ireg_reg_n_0_[18] ),
        .I1(\odata_int[23]_i_4_n_0 ),
        .I2(p_Result_4_reg_1084),
        .I3(and_ln781_2_reg_1096),
        .I4(\ireg_reg[23]_0 [2]),
        .I5(or_ln785_2_reg_1102),
        .O(D[18]));
  LUT6 #(
    .INIT(64'hBB8B8888BBBBBBBB)) 
    \odata_int[19]_i_1 
       (.I0(\ireg_reg_n_0_[19] ),
        .I1(\odata_int[23]_i_4_n_0 ),
        .I2(p_Result_4_reg_1084),
        .I3(and_ln781_2_reg_1096),
        .I4(\ireg_reg[23]_0 [3]),
        .I5(or_ln785_2_reg_1102),
        .O(D[19]));
  LUT6 #(
    .INIT(64'hBB8B8888BBBBBBBB)) 
    \odata_int[1]_i_1 
       (.I0(\ireg_reg_n_0_[1] ),
        .I1(\odata_int[23]_i_4_n_0 ),
        .I2(p_Result_s_reg_1036),
        .I3(and_ln781_reg_1048),
        .I4(Q[1]),
        .I5(or_ln785_reg_1054),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hBB8B8888BBBBBBBB)) 
    \odata_int[20]_i_1 
       (.I0(\ireg_reg_n_0_[20] ),
        .I1(\odata_int[23]_i_4_n_0 ),
        .I2(p_Result_4_reg_1084),
        .I3(and_ln781_2_reg_1096),
        .I4(\ireg_reg[23]_0 [4]),
        .I5(or_ln785_2_reg_1102),
        .O(D[20]));
  LUT6 #(
    .INIT(64'hBB8B8888BBBBBBBB)) 
    \odata_int[21]_i_1 
       (.I0(\ireg_reg_n_0_[21] ),
        .I1(\odata_int[23]_i_4_n_0 ),
        .I2(p_Result_4_reg_1084),
        .I3(and_ln781_2_reg_1096),
        .I4(\ireg_reg[23]_0 [5]),
        .I5(or_ln785_2_reg_1102),
        .O(D[21]));
  LUT6 #(
    .INIT(64'hBB8B8888BBBBBBBB)) 
    \odata_int[22]_i_1 
       (.I0(\ireg_reg_n_0_[22] ),
        .I1(\odata_int[23]_i_4_n_0 ),
        .I2(p_Result_4_reg_1084),
        .I3(and_ln781_2_reg_1096),
        .I4(\ireg_reg[23]_0 [6]),
        .I5(or_ln785_2_reg_1102),
        .O(D[22]));
  LUT6 #(
    .INIT(64'hBB8B8888BBBBBBBB)) 
    \odata_int[23]_i_3 
       (.I0(\ireg_reg_n_0_[23] ),
        .I1(\odata_int[23]_i_4_n_0 ),
        .I2(p_Result_4_reg_1084),
        .I3(and_ln781_2_reg_1096),
        .I4(\ireg_reg[23]_0 [7]),
        .I5(or_ln785_2_reg_1102),
        .O(D[23]));
  LUT2 #(
    .INIT(4'hB)) 
    \odata_int[23]_i_4 
       (.I0(\ireg_reg[24]_0 ),
        .I1(ap_rst_n),
        .O(\odata_int[23]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \odata_int[24]_i_1 
       (.I0(\ireg_reg[24]_0 ),
        .I1(ap_enable_reg_pp0_iter6_reg),
        .I2(ap_enable_reg_pp0_iter5),
        .O(D[24]));
  LUT2 #(
    .INIT(4'hB)) 
    \odata_int[24]_i_1__0 
       (.I0(ap_enable_reg_pp0_iter6_reg),
        .I1(\odata_int_reg[16] ),
        .O(\odata_int_reg[24] ));
  LUT6 #(
    .INIT(64'hBB8B8888BBBBBBBB)) 
    \odata_int[2]_i_1 
       (.I0(\ireg_reg_n_0_[2] ),
        .I1(\odata_int[23]_i_4_n_0 ),
        .I2(p_Result_s_reg_1036),
        .I3(and_ln781_reg_1048),
        .I4(Q[2]),
        .I5(or_ln785_reg_1054),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hBB8B8888BBBBBBBB)) 
    \odata_int[3]_i_1 
       (.I0(\ireg_reg_n_0_[3] ),
        .I1(\odata_int[23]_i_4_n_0 ),
        .I2(p_Result_s_reg_1036),
        .I3(and_ln781_reg_1048),
        .I4(Q[3]),
        .I5(or_ln785_reg_1054),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hBB8B8888BBBBBBBB)) 
    \odata_int[4]_i_1 
       (.I0(\ireg_reg_n_0_[4] ),
        .I1(\odata_int[23]_i_4_n_0 ),
        .I2(p_Result_s_reg_1036),
        .I3(and_ln781_reg_1048),
        .I4(Q[4]),
        .I5(or_ln785_reg_1054),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hBB8B8888BBBBBBBB)) 
    \odata_int[5]_i_1 
       (.I0(\ireg_reg_n_0_[5] ),
        .I1(\odata_int[23]_i_4_n_0 ),
        .I2(p_Result_s_reg_1036),
        .I3(and_ln781_reg_1048),
        .I4(Q[5]),
        .I5(or_ln785_reg_1054),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hBB8B8888BBBBBBBB)) 
    \odata_int[6]_i_1 
       (.I0(\ireg_reg_n_0_[6] ),
        .I1(\odata_int[23]_i_4_n_0 ),
        .I2(p_Result_s_reg_1036),
        .I3(and_ln781_reg_1048),
        .I4(Q[6]),
        .I5(or_ln785_reg_1054),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hBB8B8888BBBBBBBB)) 
    \odata_int[7]_i_1 
       (.I0(\ireg_reg_n_0_[7] ),
        .I1(\odata_int[23]_i_4_n_0 ),
        .I2(p_Result_s_reg_1036),
        .I3(and_ln781_reg_1048),
        .I4(Q[7]),
        .I5(or_ln785_reg_1054),
        .O(D[7]));
  LUT6 #(
    .INIT(64'hBB8B8888BBBBBBBB)) 
    \odata_int[8]_i_1 
       (.I0(\ireg_reg_n_0_[8] ),
        .I1(\odata_int[23]_i_4_n_0 ),
        .I2(p_Result_2_reg_1060),
        .I3(and_ln781_1_reg_1072),
        .I4(\ireg_reg[15]_0 [0]),
        .I5(or_ln785_1_reg_1078),
        .O(D[8]));
  LUT6 #(
    .INIT(64'hBB8B8888BBBBBBBB)) 
    \odata_int[9]_i_1 
       (.I0(\ireg_reg_n_0_[9] ),
        .I1(\odata_int[23]_i_4_n_0 ),
        .I2(p_Result_2_reg_1060),
        .I3(and_ln781_1_reg_1072),
        .I4(\ireg_reg[15]_0 [1]),
        .I5(or_ln785_1_reg_1078),
        .O(D[9]));
  LUT6 #(
    .INIT(64'h0303BB0300000000)) 
    p_i_1
       (.I0(p),
        .I1(ap_enable_reg_pp0_iter6),
        .I2(ap_enable_reg_pp0_iter5),
        .I3(ap_rst_n),
        .I4(\ireg_reg[24]_0 ),
        .I5(\odata_int_reg[16] ),
        .O(ap_enable_reg_pp0_iter6_reg));
  LUT2 #(
    .INIT(4'h8)) 
    p_i_1__0
       (.I0(ap_enable_reg_pp0_iter3),
        .I1(ap_enable_reg_pp0_iter6_reg),
        .O(ap_enable_reg_pp0_iter3_reg));
  LUT2 #(
    .INIT(4'h8)) 
    p_i_2
       (.I0(ap_enable_reg_pp0_iter2),
        .I1(ap_enable_reg_pp0_iter6_reg),
        .O(ap_enable_reg_pp0_iter2_reg));
endmodule

(* ORIG_REF_NAME = "xil_defaultlib_ibuf" *) 
module base_color_convert_1_xil_defaultlib_ibuf_14
   (stream_in_24_TREADY,
    Q,
    \ireg_reg[24]_0 ,
    \stream_in_24_TDATA[8] ,
    \stream_in_24_TDATA[9] ,
    \stream_in_24_TDATA[10] ,
    \stream_in_24_TDATA[11] ,
    \stream_in_24_TDATA[12] ,
    \stream_in_24_TDATA[13] ,
    \stream_in_24_TDATA[14] ,
    \stream_in_24_TDATA[15] ,
    \stream_in_24_TDATA[0] ,
    \stream_in_24_TDATA[1] ,
    \stream_in_24_TDATA[2] ,
    \stream_in_24_TDATA[3] ,
    \stream_in_24_TDATA[4] ,
    \stream_in_24_TDATA[5] ,
    \stream_in_24_TDATA[6] ,
    \stream_in_24_TDATA[7] ,
    D,
    ap_rst_n,
    \ireg_reg[0]_0 ,
    ap_block_pp0_stage0_11001,
    SR,
    ap_clk);
  output stream_in_24_TREADY;
  output [0:0]Q;
  output [8:0]\ireg_reg[24]_0 ;
  output \stream_in_24_TDATA[8] ;
  output \stream_in_24_TDATA[9] ;
  output \stream_in_24_TDATA[10] ;
  output \stream_in_24_TDATA[11] ;
  output \stream_in_24_TDATA[12] ;
  output \stream_in_24_TDATA[13] ;
  output \stream_in_24_TDATA[14] ;
  output \stream_in_24_TDATA[15] ;
  output \stream_in_24_TDATA[0] ;
  output \stream_in_24_TDATA[1] ;
  output \stream_in_24_TDATA[2] ;
  output \stream_in_24_TDATA[3] ;
  output \stream_in_24_TDATA[4] ;
  output \stream_in_24_TDATA[5] ;
  output \stream_in_24_TDATA[6] ;
  output \stream_in_24_TDATA[7] ;
  input [24:0]D;
  input ap_rst_n;
  input [0:0]\ireg_reg[0]_0 ;
  input ap_block_pp0_stage0_11001;
  input [0:0]SR;
  input ap_clk;

  wire [24:0]D;
  wire [0:0]Q;
  wire [0:0]SR;
  wire ap_block_pp0_stage0_11001;
  wire ap_clk;
  wire ap_rst_n;
  wire ireg01_out;
  wire [0:0]\ireg_reg[0]_0 ;
  wire [8:0]\ireg_reg[24]_0 ;
  wire \ireg_reg_n_0_[0] ;
  wire \ireg_reg_n_0_[10] ;
  wire \ireg_reg_n_0_[11] ;
  wire \ireg_reg_n_0_[12] ;
  wire \ireg_reg_n_0_[13] ;
  wire \ireg_reg_n_0_[14] ;
  wire \ireg_reg_n_0_[15] ;
  wire \ireg_reg_n_0_[16] ;
  wire \ireg_reg_n_0_[17] ;
  wire \ireg_reg_n_0_[18] ;
  wire \ireg_reg_n_0_[19] ;
  wire \ireg_reg_n_0_[1] ;
  wire \ireg_reg_n_0_[20] ;
  wire \ireg_reg_n_0_[21] ;
  wire \ireg_reg_n_0_[22] ;
  wire \ireg_reg_n_0_[23] ;
  wire \ireg_reg_n_0_[2] ;
  wire \ireg_reg_n_0_[3] ;
  wire \ireg_reg_n_0_[4] ;
  wire \ireg_reg_n_0_[5] ;
  wire \ireg_reg_n_0_[6] ;
  wire \ireg_reg_n_0_[7] ;
  wire \ireg_reg_n_0_[8] ;
  wire \ireg_reg_n_0_[9] ;
  wire \stream_in_24_TDATA[0] ;
  wire \stream_in_24_TDATA[10] ;
  wire \stream_in_24_TDATA[11] ;
  wire \stream_in_24_TDATA[12] ;
  wire \stream_in_24_TDATA[13] ;
  wire \stream_in_24_TDATA[14] ;
  wire \stream_in_24_TDATA[15] ;
  wire \stream_in_24_TDATA[1] ;
  wire \stream_in_24_TDATA[2] ;
  wire \stream_in_24_TDATA[3] ;
  wire \stream_in_24_TDATA[4] ;
  wire \stream_in_24_TDATA[5] ;
  wire \stream_in_24_TDATA[6] ;
  wire \stream_in_24_TDATA[7] ;
  wire \stream_in_24_TDATA[8] ;
  wire \stream_in_24_TDATA[9] ;
  wire stream_in_24_TREADY;

  LUT3 #(
    .INIT(8'h04)) 
    \ireg[24]_i_2 
       (.I0(Q),
        .I1(\ireg_reg[0]_0 ),
        .I2(ap_block_pp0_stage0_11001),
        .O(ireg01_out));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[0] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(D[0]),
        .Q(\ireg_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[10] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(D[10]),
        .Q(\ireg_reg_n_0_[10] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[11] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(D[11]),
        .Q(\ireg_reg_n_0_[11] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[12] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(D[12]),
        .Q(\ireg_reg_n_0_[12] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[13] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(D[13]),
        .Q(\ireg_reg_n_0_[13] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[14] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(D[14]),
        .Q(\ireg_reg_n_0_[14] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[15] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(D[15]),
        .Q(\ireg_reg_n_0_[15] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[16] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(D[16]),
        .Q(\ireg_reg_n_0_[16] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[17] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(D[17]),
        .Q(\ireg_reg_n_0_[17] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[18] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(D[18]),
        .Q(\ireg_reg_n_0_[18] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[19] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(D[19]),
        .Q(\ireg_reg_n_0_[19] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[1] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(D[1]),
        .Q(\ireg_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[20] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(D[20]),
        .Q(\ireg_reg_n_0_[20] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[21] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(D[21]),
        .Q(\ireg_reg_n_0_[21] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[22] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(D[22]),
        .Q(\ireg_reg_n_0_[22] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[23] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(D[23]),
        .Q(\ireg_reg_n_0_[23] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[24] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(D[24]),
        .Q(Q),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[2] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(D[2]),
        .Q(\ireg_reg_n_0_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[3] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(D[3]),
        .Q(\ireg_reg_n_0_[3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[4] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(D[4]),
        .Q(\ireg_reg_n_0_[4] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[5] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(D[5]),
        .Q(\ireg_reg_n_0_[5] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[6] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(D[6]),
        .Q(\ireg_reg_n_0_[6] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[7] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(D[7]),
        .Q(\ireg_reg_n_0_[7] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[8] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(D[8]),
        .Q(\ireg_reg_n_0_[8] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[9] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(D[9]),
        .Q(\ireg_reg_n_0_[9] ),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \odata_int[16]_i_1__0 
       (.I0(D[16]),
        .I1(Q),
        .I2(\ireg_reg_n_0_[16] ),
        .O(\ireg_reg[24]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \odata_int[17]_i_1__0 
       (.I0(D[17]),
        .I1(Q),
        .I2(\ireg_reg_n_0_[17] ),
        .O(\ireg_reg[24]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \odata_int[18]_i_1__0 
       (.I0(D[18]),
        .I1(Q),
        .I2(\ireg_reg_n_0_[18] ),
        .O(\ireg_reg[24]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \odata_int[19]_i_1__0 
       (.I0(D[19]),
        .I1(Q),
        .I2(\ireg_reg_n_0_[19] ),
        .O(\ireg_reg[24]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \odata_int[20]_i_1__0 
       (.I0(D[20]),
        .I1(Q),
        .I2(\ireg_reg_n_0_[20] ),
        .O(\ireg_reg[24]_0 [4]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \odata_int[21]_i_1__0 
       (.I0(D[21]),
        .I1(Q),
        .I2(\ireg_reg_n_0_[21] ),
        .O(\ireg_reg[24]_0 [5]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \odata_int[22]_i_1__0 
       (.I0(D[22]),
        .I1(Q),
        .I2(\ireg_reg_n_0_[22] ),
        .O(\ireg_reg[24]_0 [6]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \odata_int[23]_i_1__0 
       (.I0(D[23]),
        .I1(Q),
        .I2(\ireg_reg_n_0_[23] ),
        .O(\ireg_reg[24]_0 [7]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \odata_int[24]_i_2 
       (.I0(Q),
        .I1(D[24]),
        .O(\ireg_reg[24]_0 [8]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    r_V_12_reg_986__0_i_1
       (.I0(D[7]),
        .I1(Q),
        .I2(\ireg_reg_n_0_[7] ),
        .O(\stream_in_24_TDATA[7] ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    r_V_12_reg_986__1_i_1
       (.I0(D[6]),
        .I1(Q),
        .I2(\ireg_reg_n_0_[6] ),
        .O(\stream_in_24_TDATA[6] ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    r_V_12_reg_986__2_i_1
       (.I0(D[5]),
        .I1(Q),
        .I2(\ireg_reg_n_0_[5] ),
        .O(\stream_in_24_TDATA[5] ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    r_V_12_reg_986__3_i_1
       (.I0(D[4]),
        .I1(Q),
        .I2(\ireg_reg_n_0_[4] ),
        .O(\stream_in_24_TDATA[4] ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    r_V_12_reg_986__4_i_1
       (.I0(D[3]),
        .I1(Q),
        .I2(\ireg_reg_n_0_[3] ),
        .O(\stream_in_24_TDATA[3] ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    r_V_12_reg_986__5_i_1
       (.I0(D[2]),
        .I1(Q),
        .I2(\ireg_reg_n_0_[2] ),
        .O(\stream_in_24_TDATA[2] ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    r_V_12_reg_986__6_i_1
       (.I0(D[1]),
        .I1(Q),
        .I2(\ireg_reg_n_0_[1] ),
        .O(\stream_in_24_TDATA[1] ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    r_V_12_reg_986__7_i_1
       (.I0(D[0]),
        .I1(Q),
        .I2(\ireg_reg_n_0_[0] ),
        .O(\stream_in_24_TDATA[0] ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    r_V_16_reg_996__0_i_1
       (.I0(D[15]),
        .I1(Q),
        .I2(\ireg_reg_n_0_[15] ),
        .O(\stream_in_24_TDATA[15] ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    r_V_16_reg_996__1_i_1
       (.I0(D[14]),
        .I1(Q),
        .I2(\ireg_reg_n_0_[14] ),
        .O(\stream_in_24_TDATA[14] ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    r_V_16_reg_996__2_i_1
       (.I0(D[13]),
        .I1(Q),
        .I2(\ireg_reg_n_0_[13] ),
        .O(\stream_in_24_TDATA[13] ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    r_V_16_reg_996__3_i_1
       (.I0(D[12]),
        .I1(Q),
        .I2(\ireg_reg_n_0_[12] ),
        .O(\stream_in_24_TDATA[12] ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    r_V_16_reg_996__4_i_1
       (.I0(D[11]),
        .I1(Q),
        .I2(\ireg_reg_n_0_[11] ),
        .O(\stream_in_24_TDATA[11] ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    r_V_16_reg_996__5_i_1
       (.I0(D[10]),
        .I1(Q),
        .I2(\ireg_reg_n_0_[10] ),
        .O(\stream_in_24_TDATA[10] ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    r_V_16_reg_996__6_i_1
       (.I0(D[9]),
        .I1(Q),
        .I2(\ireg_reg_n_0_[9] ),
        .O(\stream_in_24_TDATA[9] ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    r_V_16_reg_996__7_i_1
       (.I0(D[8]),
        .I1(Q),
        .I2(\ireg_reg_n_0_[8] ),
        .O(\stream_in_24_TDATA[8] ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'h20)) 
    stream_in_24_TREADY_INST_0
       (.I0(D[24]),
        .I1(Q),
        .I2(ap_rst_n),
        .O(stream_in_24_TREADY));
endmodule

(* ORIG_REF_NAME = "xil_defaultlib_ibuf" *) 
module base_color_convert_1_xil_defaultlib_ibuf__parameterized0
   (p_0_in,
    \ireg_reg[0]_0 ,
    ap_block_pp0_stage0_11001,
    ap_enable_reg_pp0_iter5,
    ap_rst_n,
    stream_out_24_TREADY,
    \ireg_reg[1]_0 ,
    stream_in_24_user_V_s_reg_910_pp0_iter4_reg,
    ap_clk);
  output p_0_in;
  output \ireg_reg[0]_0 ;
  input ap_block_pp0_stage0_11001;
  input ap_enable_reg_pp0_iter5;
  input ap_rst_n;
  input stream_out_24_TREADY;
  input \ireg_reg[1]_0 ;
  input stream_in_24_user_V_s_reg_910_pp0_iter4_reg;
  input ap_clk;

  wire ap_block_pp0_stage0_11001;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter5;
  wire ap_rst_n;
  wire \ireg[0]_i_1_n_0 ;
  wire \ireg[1]_i_1_n_0 ;
  wire \ireg_reg[0]_0 ;
  wire \ireg_reg[1]_0 ;
  wire p_0_in;
  wire stream_in_24_user_V_s_reg_910_pp0_iter4_reg;
  wire stream_out_24_TREADY;

  LUT6 #(
    .INIT(64'h00A0A0C000A000A0)) 
    \ireg[0]_i_1 
       (.I0(\ireg_reg[0]_0 ),
        .I1(stream_in_24_user_V_s_reg_910_pp0_iter4_reg),
        .I2(ap_rst_n),
        .I3(p_0_in),
        .I4(stream_out_24_TREADY),
        .I5(\ireg_reg[1]_0 ),
        .O(\ireg[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000F08000000000)) 
    \ireg[1]_i_1 
       (.I0(ap_block_pp0_stage0_11001),
        .I1(ap_enable_reg_pp0_iter5),
        .I2(ap_rst_n),
        .I3(p_0_in),
        .I4(stream_out_24_TREADY),
        .I5(\ireg_reg[1]_0 ),
        .O(\ireg[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ireg[0]_i_1_n_0 ),
        .Q(\ireg_reg[0]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ireg[1]_i_1_n_0 ),
        .Q(p_0_in),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "xil_defaultlib_ibuf" *) 
module base_color_convert_1_xil_defaultlib_ibuf__parameterized0_10
   (p_0_in,
    \ireg_reg[0]_0 ,
    stream_in_24_TVALID,
    ap_rst_n,
    ap_block_pp0_stage0_11001,
    \ireg_reg[0]_1 ,
    stream_in_24_TUSER,
    ap_clk);
  output p_0_in;
  output \ireg_reg[0]_0 ;
  input stream_in_24_TVALID;
  input ap_rst_n;
  input ap_block_pp0_stage0_11001;
  input \ireg_reg[0]_1 ;
  input [0:0]stream_in_24_TUSER;
  input ap_clk;

  wire ap_block_pp0_stage0_11001;
  wire ap_clk;
  wire ap_rst_n;
  wire \ireg[0]_i_1_n_0 ;
  wire \ireg[1]_i_1_n_0 ;
  wire \ireg_reg[0]_0 ;
  wire \ireg_reg[0]_1 ;
  wire p_0_in;
  wire [0:0]stream_in_24_TUSER;
  wire stream_in_24_TVALID;

  LUT6 #(
    .INIT(64'h00A0A0C000A000A0)) 
    \ireg[0]_i_1 
       (.I0(\ireg_reg[0]_0 ),
        .I1(stream_in_24_TUSER),
        .I2(ap_rst_n),
        .I3(p_0_in),
        .I4(ap_block_pp0_stage0_11001),
        .I5(\ireg_reg[0]_1 ),
        .O(\ireg[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00C80000)) 
    \ireg[1]_i_1 
       (.I0(stream_in_24_TVALID),
        .I1(ap_rst_n),
        .I2(p_0_in),
        .I3(ap_block_pp0_stage0_11001),
        .I4(\ireg_reg[0]_1 ),
        .O(\ireg[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ireg[0]_i_1_n_0 ),
        .Q(\ireg_reg[0]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ireg[1]_i_1_n_0 ),
        .Q(p_0_in),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "xil_defaultlib_ibuf" *) 
module base_color_convert_1_xil_defaultlib_ibuf__parameterized0_12
   (p_0_in,
    \ireg_reg[0]_0 ,
    stream_in_24_TVALID,
    ap_rst_n,
    ap_block_pp0_stage0_11001,
    \ireg_reg[0]_1 ,
    stream_in_24_TLAST,
    ap_clk);
  output p_0_in;
  output \ireg_reg[0]_0 ;
  input stream_in_24_TVALID;
  input ap_rst_n;
  input ap_block_pp0_stage0_11001;
  input \ireg_reg[0]_1 ;
  input [0:0]stream_in_24_TLAST;
  input ap_clk;

  wire ap_block_pp0_stage0_11001;
  wire ap_clk;
  wire ap_rst_n;
  wire \ireg[0]_i_1_n_0 ;
  wire \ireg[1]_i_1_n_0 ;
  wire \ireg_reg[0]_0 ;
  wire \ireg_reg[0]_1 ;
  wire p_0_in;
  wire [0:0]stream_in_24_TLAST;
  wire stream_in_24_TVALID;

  LUT6 #(
    .INIT(64'h00A0A0C000A000A0)) 
    \ireg[0]_i_1 
       (.I0(\ireg_reg[0]_0 ),
        .I1(stream_in_24_TLAST),
        .I2(ap_rst_n),
        .I3(p_0_in),
        .I4(ap_block_pp0_stage0_11001),
        .I5(\ireg_reg[0]_1 ),
        .O(\ireg[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00C80000)) 
    \ireg[1]_i_1 
       (.I0(stream_in_24_TVALID),
        .I1(ap_rst_n),
        .I2(p_0_in),
        .I3(ap_block_pp0_stage0_11001),
        .I4(\ireg_reg[0]_1 ),
        .O(\ireg[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ireg[0]_i_1_n_0 ),
        .Q(\ireg_reg[0]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ireg[1]_i_1_n_0 ),
        .Q(p_0_in),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "xil_defaultlib_ibuf" *) 
module base_color_convert_1_xil_defaultlib_ibuf__parameterized0_8
   (p_0_in,
    \ireg_reg[0]_0 ,
    ap_block_pp0_stage0_11001,
    ap_enable_reg_pp0_iter5,
    ap_rst_n,
    stream_out_24_TREADY,
    \ireg_reg[1]_0 ,
    stream_in_24_last_V_s_reg_915_pp0_iter4_reg,
    ap_clk);
  output p_0_in;
  output \ireg_reg[0]_0 ;
  input ap_block_pp0_stage0_11001;
  input ap_enable_reg_pp0_iter5;
  input ap_rst_n;
  input stream_out_24_TREADY;
  input \ireg_reg[1]_0 ;
  input stream_in_24_last_V_s_reg_915_pp0_iter4_reg;
  input ap_clk;

  wire ap_block_pp0_stage0_11001;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter5;
  wire ap_rst_n;
  wire \ireg[0]_i_1_n_0 ;
  wire \ireg[1]_i_1_n_0 ;
  wire \ireg_reg[0]_0 ;
  wire \ireg_reg[1]_0 ;
  wire p_0_in;
  wire stream_in_24_last_V_s_reg_915_pp0_iter4_reg;
  wire stream_out_24_TREADY;

  LUT6 #(
    .INIT(64'h00A0A0C000A000A0)) 
    \ireg[0]_i_1 
       (.I0(\ireg_reg[0]_0 ),
        .I1(stream_in_24_last_V_s_reg_915_pp0_iter4_reg),
        .I2(ap_rst_n),
        .I3(p_0_in),
        .I4(stream_out_24_TREADY),
        .I5(\ireg_reg[1]_0 ),
        .O(\ireg[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000F08000000000)) 
    \ireg[1]_i_1 
       (.I0(ap_block_pp0_stage0_11001),
        .I1(ap_enable_reg_pp0_iter5),
        .I2(ap_rst_n),
        .I3(p_0_in),
        .I4(stream_out_24_TREADY),
        .I5(\ireg_reg[1]_0 ),
        .O(\ireg[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ireg[0]_i_1_n_0 ),
        .Q(\ireg_reg[0]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ireg[1]_i_1_n_0 ),
        .Q(p_0_in),
        .R(1'b0));
endmodule

module base_color_convert_1_xil_defaultlib_obuf
   (SR,
    Q,
    \odata_int_reg[24]_0 ,
    ap_rst_n,
    stream_out_24_TREADY,
    \ireg_reg[0] ,
    D,
    ap_clk);
  output [0:0]SR;
  output [24:0]Q;
  output [0:0]\odata_int_reg[24]_0 ;
  input ap_rst_n;
  input stream_out_24_TREADY;
  input [0:0]\ireg_reg[0] ;
  input [24:0]D;
  input ap_clk;

  wire [24:0]D;
  wire [24:0]Q;
  wire [0:0]SR;
  wire ap_clk;
  wire ap_rst_n;
  wire [0:0]\ireg_reg[0] ;
  wire \odata_int[23]_i_2_n_0 ;
  wire [0:0]\odata_int_reg[24]_0 ;
  wire stream_out_24_TREADY;

  LUT4 #(
    .INIT(16'hD0FF)) 
    \ireg[24]_i_1__0 
       (.I0(Q[24]),
        .I1(stream_out_24_TREADY),
        .I2(\ireg_reg[0] ),
        .I3(ap_rst_n),
        .O(\odata_int_reg[24]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \odata_int[23]_i_1 
       (.I0(ap_rst_n),
        .O(SR));
  LUT2 #(
    .INIT(4'hB)) 
    \odata_int[23]_i_2 
       (.I0(stream_out_24_TREADY),
        .I1(Q[24]),
        .O(\odata_int[23]_i_2_n_0 ));
  FDRE \odata_int_reg[0] 
       (.C(ap_clk),
        .CE(\odata_int[23]_i_2_n_0 ),
        .D(D[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \odata_int_reg[10] 
       (.C(ap_clk),
        .CE(\odata_int[23]_i_2_n_0 ),
        .D(D[10]),
        .Q(Q[10]),
        .R(SR));
  FDRE \odata_int_reg[11] 
       (.C(ap_clk),
        .CE(\odata_int[23]_i_2_n_0 ),
        .D(D[11]),
        .Q(Q[11]),
        .R(SR));
  FDRE \odata_int_reg[12] 
       (.C(ap_clk),
        .CE(\odata_int[23]_i_2_n_0 ),
        .D(D[12]),
        .Q(Q[12]),
        .R(SR));
  FDRE \odata_int_reg[13] 
       (.C(ap_clk),
        .CE(\odata_int[23]_i_2_n_0 ),
        .D(D[13]),
        .Q(Q[13]),
        .R(SR));
  FDRE \odata_int_reg[14] 
       (.C(ap_clk),
        .CE(\odata_int[23]_i_2_n_0 ),
        .D(D[14]),
        .Q(Q[14]),
        .R(SR));
  FDRE \odata_int_reg[15] 
       (.C(ap_clk),
        .CE(\odata_int[23]_i_2_n_0 ),
        .D(D[15]),
        .Q(Q[15]),
        .R(SR));
  FDRE \odata_int_reg[16] 
       (.C(ap_clk),
        .CE(\odata_int[23]_i_2_n_0 ),
        .D(D[16]),
        .Q(Q[16]),
        .R(SR));
  FDRE \odata_int_reg[17] 
       (.C(ap_clk),
        .CE(\odata_int[23]_i_2_n_0 ),
        .D(D[17]),
        .Q(Q[17]),
        .R(SR));
  FDRE \odata_int_reg[18] 
       (.C(ap_clk),
        .CE(\odata_int[23]_i_2_n_0 ),
        .D(D[18]),
        .Q(Q[18]),
        .R(SR));
  FDRE \odata_int_reg[19] 
       (.C(ap_clk),
        .CE(\odata_int[23]_i_2_n_0 ),
        .D(D[19]),
        .Q(Q[19]),
        .R(SR));
  FDRE \odata_int_reg[1] 
       (.C(ap_clk),
        .CE(\odata_int[23]_i_2_n_0 ),
        .D(D[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \odata_int_reg[20] 
       (.C(ap_clk),
        .CE(\odata_int[23]_i_2_n_0 ),
        .D(D[20]),
        .Q(Q[20]),
        .R(SR));
  FDRE \odata_int_reg[21] 
       (.C(ap_clk),
        .CE(\odata_int[23]_i_2_n_0 ),
        .D(D[21]),
        .Q(Q[21]),
        .R(SR));
  FDRE \odata_int_reg[22] 
       (.C(ap_clk),
        .CE(\odata_int[23]_i_2_n_0 ),
        .D(D[22]),
        .Q(Q[22]),
        .R(SR));
  FDRE \odata_int_reg[23] 
       (.C(ap_clk),
        .CE(\odata_int[23]_i_2_n_0 ),
        .D(D[23]),
        .Q(Q[23]),
        .R(SR));
  FDRE \odata_int_reg[24] 
       (.C(ap_clk),
        .CE(\odata_int[23]_i_2_n_0 ),
        .D(D[24]),
        .Q(Q[24]),
        .R(SR));
  FDRE \odata_int_reg[2] 
       (.C(ap_clk),
        .CE(\odata_int[23]_i_2_n_0 ),
        .D(D[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \odata_int_reg[3] 
       (.C(ap_clk),
        .CE(\odata_int[23]_i_2_n_0 ),
        .D(D[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE \odata_int_reg[4] 
       (.C(ap_clk),
        .CE(\odata_int[23]_i_2_n_0 ),
        .D(D[4]),
        .Q(Q[4]),
        .R(SR));
  FDRE \odata_int_reg[5] 
       (.C(ap_clk),
        .CE(\odata_int[23]_i_2_n_0 ),
        .D(D[5]),
        .Q(Q[5]),
        .R(SR));
  FDRE \odata_int_reg[6] 
       (.C(ap_clk),
        .CE(\odata_int[23]_i_2_n_0 ),
        .D(D[6]),
        .Q(Q[6]),
        .R(SR));
  FDRE \odata_int_reg[7] 
       (.C(ap_clk),
        .CE(\odata_int[23]_i_2_n_0 ),
        .D(D[7]),
        .Q(Q[7]),
        .R(SR));
  FDRE \odata_int_reg[8] 
       (.C(ap_clk),
        .CE(\odata_int[23]_i_2_n_0 ),
        .D(D[8]),
        .Q(Q[8]),
        .R(SR));
  FDRE \odata_int_reg[9] 
       (.C(ap_clk),
        .CE(\odata_int[23]_i_2_n_0 ),
        .D(D[9]),
        .Q(Q[9]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "xil_defaultlib_obuf" *) 
module base_color_convert_1_xil_defaultlib_obuf_15
   (SR,
    Q,
    ap_block_pp0_stage0_11001,
    \ireg_reg[0] ,
    ap_rst_n,
    ARESET,
    \odata_int_reg[16]_0 ,
    D,
    ap_clk);
  output [0:0]SR;
  output [8:0]Q;
  input ap_block_pp0_stage0_11001;
  input [0:0]\ireg_reg[0] ;
  input ap_rst_n;
  input ARESET;
  input \odata_int_reg[16]_0 ;
  input [8:0]D;
  input ap_clk;

  wire ARESET;
  wire [8:0]D;
  wire [8:0]Q;
  wire [0:0]SR;
  wire ap_block_pp0_stage0_11001;
  wire ap_clk;
  wire ap_rst_n;
  wire [0:0]\ireg_reg[0] ;
  wire \odata_int_reg[16]_0 ;

  LUT4 #(
    .INIT(16'hD0FF)) 
    \ireg[24]_i_1 
       (.I0(Q[8]),
        .I1(ap_block_pp0_stage0_11001),
        .I2(\ireg_reg[0] ),
        .I3(ap_rst_n),
        .O(SR));
  FDRE \odata_int_reg[16] 
       (.C(ap_clk),
        .CE(\odata_int_reg[16]_0 ),
        .D(D[0]),
        .Q(Q[0]),
        .R(ARESET));
  FDRE \odata_int_reg[17] 
       (.C(ap_clk),
        .CE(\odata_int_reg[16]_0 ),
        .D(D[1]),
        .Q(Q[1]),
        .R(ARESET));
  FDRE \odata_int_reg[18] 
       (.C(ap_clk),
        .CE(\odata_int_reg[16]_0 ),
        .D(D[2]),
        .Q(Q[2]),
        .R(ARESET));
  FDRE \odata_int_reg[19] 
       (.C(ap_clk),
        .CE(\odata_int_reg[16]_0 ),
        .D(D[3]),
        .Q(Q[3]),
        .R(ARESET));
  FDRE \odata_int_reg[20] 
       (.C(ap_clk),
        .CE(\odata_int_reg[16]_0 ),
        .D(D[4]),
        .Q(Q[4]),
        .R(ARESET));
  FDRE \odata_int_reg[21] 
       (.C(ap_clk),
        .CE(\odata_int_reg[16]_0 ),
        .D(D[5]),
        .Q(Q[5]),
        .R(ARESET));
  FDRE \odata_int_reg[22] 
       (.C(ap_clk),
        .CE(\odata_int_reg[16]_0 ),
        .D(D[6]),
        .Q(Q[6]),
        .R(ARESET));
  FDRE \odata_int_reg[23] 
       (.C(ap_clk),
        .CE(\odata_int_reg[16]_0 ),
        .D(D[7]),
        .Q(Q[7]),
        .R(ARESET));
  FDRE \odata_int_reg[24] 
       (.C(ap_clk),
        .CE(\odata_int_reg[16]_0 ),
        .D(D[8]),
        .Q(Q[8]),
        .R(ARESET));
endmodule

(* ORIG_REF_NAME = "xil_defaultlib_obuf" *) 
module base_color_convert_1_xil_defaultlib_obuf__parameterized0
   (\odata_int_reg[1]_0 ,
    stream_out_24_TUSER,
    ap_rst_n,
    stream_out_24_TREADY,
    p_0_in,
    ap_block_pp0_stage0_11001,
    ap_enable_reg_pp0_iter5,
    stream_in_24_user_V_s_reg_910_pp0_iter4_reg,
    \odata_int_reg[0]_0 ,
    ARESET,
    ap_clk);
  output \odata_int_reg[1]_0 ;
  output [0:0]stream_out_24_TUSER;
  input ap_rst_n;
  input stream_out_24_TREADY;
  input p_0_in;
  input ap_block_pp0_stage0_11001;
  input ap_enable_reg_pp0_iter5;
  input stream_in_24_user_V_s_reg_910_pp0_iter4_reg;
  input \odata_int_reg[0]_0 ;
  input ARESET;
  input ap_clk;

  wire ARESET;
  wire ap_block_pp0_stage0_11001;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter5;
  wire ap_rst_n;
  wire \odata_int[0]_i_1_n_0 ;
  wire \odata_int[0]_i_2__1_n_0 ;
  wire \odata_int[1]_i_1_n_0 ;
  wire \odata_int_reg[0]_0 ;
  wire \odata_int_reg[1]_0 ;
  wire p_0_in;
  wire stream_in_24_user_V_s_reg_910_pp0_iter4_reg;
  wire stream_out_24_TREADY;
  wire [0:0]stream_out_24_TUSER;

  LUT5 #(
    .INIT(32'hE2FFE200)) 
    \odata_int[0]_i_1 
       (.I0(stream_in_24_user_V_s_reg_910_pp0_iter4_reg),
        .I1(p_0_in),
        .I2(\odata_int_reg[0]_0 ),
        .I3(\odata_int[0]_i_2__1_n_0 ),
        .I4(stream_out_24_TUSER),
        .O(\odata_int[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \odata_int[0]_i_2__1 
       (.I0(ap_rst_n),
        .I1(stream_out_24_TREADY),
        .I2(\odata_int_reg[1]_0 ),
        .O(\odata_int[0]_i_2__1_n_0 ));
  LUT5 #(
    .INIT(32'hEAFFEAEA)) 
    \odata_int[1]_i_1 
       (.I0(p_0_in),
        .I1(ap_block_pp0_stage0_11001),
        .I2(ap_enable_reg_pp0_iter5),
        .I3(stream_out_24_TREADY),
        .I4(\odata_int_reg[1]_0 ),
        .O(\odata_int[1]_i_1_n_0 ));
  FDRE \odata_int_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\odata_int[0]_i_1_n_0 ),
        .Q(stream_out_24_TUSER),
        .R(ARESET));
  FDRE \odata_int_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\odata_int[1]_i_1_n_0 ),
        .Q(\odata_int_reg[1]_0 ),
        .R(ARESET));
endmodule

(* ORIG_REF_NAME = "xil_defaultlib_obuf" *) 
module base_color_convert_1_xil_defaultlib_obuf__parameterized0_11
   (\odata_int_reg[1]_0 ,
    \odata_int_reg[0]_0 ,
    p_0_in,
    stream_in_24_TVALID,
    ap_block_pp0_stage0_11001,
    stream_in_24_TUSER,
    \odata_int_reg[0]_1 ,
    \odata_int_reg[0]_2 ,
    ARESET,
    ap_clk);
  output \odata_int_reg[1]_0 ;
  output \odata_int_reg[0]_0 ;
  input p_0_in;
  input stream_in_24_TVALID;
  input ap_block_pp0_stage0_11001;
  input [0:0]stream_in_24_TUSER;
  input \odata_int_reg[0]_1 ;
  input \odata_int_reg[0]_2 ;
  input ARESET;
  input ap_clk;

  wire ARESET;
  wire ap_block_pp0_stage0_11001;
  wire ap_clk;
  wire \odata_int[0]_i_1_n_0 ;
  wire \odata_int[1]_i_1_n_0 ;
  wire \odata_int_reg[0]_0 ;
  wire \odata_int_reg[0]_1 ;
  wire \odata_int_reg[0]_2 ;
  wire \odata_int_reg[1]_0 ;
  wire p_0_in;
  wire [0:0]stream_in_24_TUSER;
  wire stream_in_24_TVALID;

  LUT5 #(
    .INIT(32'hE2FFE200)) 
    \odata_int[0]_i_1 
       (.I0(stream_in_24_TUSER),
        .I1(p_0_in),
        .I2(\odata_int_reg[0]_1 ),
        .I3(\odata_int_reg[0]_2 ),
        .I4(\odata_int_reg[0]_0 ),
        .O(\odata_int[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEFEE)) 
    \odata_int[1]_i_1 
       (.I0(p_0_in),
        .I1(stream_in_24_TVALID),
        .I2(ap_block_pp0_stage0_11001),
        .I3(\odata_int_reg[1]_0 ),
        .O(\odata_int[1]_i_1_n_0 ));
  FDRE \odata_int_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\odata_int[0]_i_1_n_0 ),
        .Q(\odata_int_reg[0]_0 ),
        .R(ARESET));
  FDRE \odata_int_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\odata_int[1]_i_1_n_0 ),
        .Q(\odata_int_reg[1]_0 ),
        .R(ARESET));
endmodule

(* ORIG_REF_NAME = "xil_defaultlib_obuf" *) 
module base_color_convert_1_xil_defaultlib_obuf__parameterized0_13
   (\odata_int_reg[1]_0 ,
    \odata_int_reg[0]_0 ,
    p_0_in,
    stream_in_24_TVALID,
    ap_block_pp0_stage0_11001,
    stream_in_24_TLAST,
    \odata_int_reg[0]_1 ,
    \odata_int_reg[0]_2 ,
    ARESET,
    ap_clk);
  output \odata_int_reg[1]_0 ;
  output \odata_int_reg[0]_0 ;
  input p_0_in;
  input stream_in_24_TVALID;
  input ap_block_pp0_stage0_11001;
  input [0:0]stream_in_24_TLAST;
  input \odata_int_reg[0]_1 ;
  input \odata_int_reg[0]_2 ;
  input ARESET;
  input ap_clk;

  wire ARESET;
  wire ap_block_pp0_stage0_11001;
  wire ap_clk;
  wire \odata_int[0]_i_1_n_0 ;
  wire \odata_int[1]_i_1_n_0 ;
  wire \odata_int_reg[0]_0 ;
  wire \odata_int_reg[0]_1 ;
  wire \odata_int_reg[0]_2 ;
  wire \odata_int_reg[1]_0 ;
  wire p_0_in;
  wire [0:0]stream_in_24_TLAST;
  wire stream_in_24_TVALID;

  LUT5 #(
    .INIT(32'hE2FFE200)) 
    \odata_int[0]_i_1 
       (.I0(stream_in_24_TLAST),
        .I1(p_0_in),
        .I2(\odata_int_reg[0]_1 ),
        .I3(\odata_int_reg[0]_2 ),
        .I4(\odata_int_reg[0]_0 ),
        .O(\odata_int[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEFEE)) 
    \odata_int[1]_i_1 
       (.I0(p_0_in),
        .I1(stream_in_24_TVALID),
        .I2(ap_block_pp0_stage0_11001),
        .I3(\odata_int_reg[1]_0 ),
        .O(\odata_int[1]_i_1_n_0 ));
  FDRE \odata_int_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\odata_int[0]_i_1_n_0 ),
        .Q(\odata_int_reg[0]_0 ),
        .R(ARESET));
  FDRE \odata_int_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\odata_int[1]_i_1_n_0 ),
        .Q(\odata_int_reg[1]_0 ),
        .R(ARESET));
endmodule

(* ORIG_REF_NAME = "xil_defaultlib_obuf" *) 
module base_color_convert_1_xil_defaultlib_obuf__parameterized0_9
   (\odata_int_reg[1]_0 ,
    stream_out_24_TLAST,
    ap_rst_n,
    stream_out_24_TREADY,
    p_0_in,
    ap_block_pp0_stage0_11001,
    ap_enable_reg_pp0_iter5,
    stream_in_24_last_V_s_reg_915_pp0_iter4_reg,
    \odata_int_reg[0]_0 ,
    ARESET,
    ap_clk);
  output \odata_int_reg[1]_0 ;
  output [0:0]stream_out_24_TLAST;
  input ap_rst_n;
  input stream_out_24_TREADY;
  input p_0_in;
  input ap_block_pp0_stage0_11001;
  input ap_enable_reg_pp0_iter5;
  input stream_in_24_last_V_s_reg_915_pp0_iter4_reg;
  input \odata_int_reg[0]_0 ;
  input ARESET;
  input ap_clk;

  wire ARESET;
  wire ap_block_pp0_stage0_11001;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter5;
  wire ap_rst_n;
  wire \odata_int[0]_i_1_n_0 ;
  wire \odata_int[0]_i_2__2_n_0 ;
  wire \odata_int[1]_i_1_n_0 ;
  wire \odata_int_reg[0]_0 ;
  wire \odata_int_reg[1]_0 ;
  wire p_0_in;
  wire stream_in_24_last_V_s_reg_915_pp0_iter4_reg;
  wire [0:0]stream_out_24_TLAST;
  wire stream_out_24_TREADY;

  LUT5 #(
    .INIT(32'hE2FFE200)) 
    \odata_int[0]_i_1 
       (.I0(stream_in_24_last_V_s_reg_915_pp0_iter4_reg),
        .I1(p_0_in),
        .I2(\odata_int_reg[0]_0 ),
        .I3(\odata_int[0]_i_2__2_n_0 ),
        .I4(stream_out_24_TLAST),
        .O(\odata_int[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \odata_int[0]_i_2__2 
       (.I0(ap_rst_n),
        .I1(stream_out_24_TREADY),
        .I2(\odata_int_reg[1]_0 ),
        .O(\odata_int[0]_i_2__2_n_0 ));
  LUT5 #(
    .INIT(32'hEAFFEAEA)) 
    \odata_int[1]_i_1 
       (.I0(p_0_in),
        .I1(ap_block_pp0_stage0_11001),
        .I2(ap_enable_reg_pp0_iter5),
        .I3(stream_out_24_TREADY),
        .I4(\odata_int_reg[1]_0 ),
        .O(\odata_int[1]_i_1_n_0 ));
  FDRE \odata_int_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\odata_int[0]_i_1_n_0 ),
        .Q(stream_out_24_TLAST),
        .R(ARESET));
  FDRE \odata_int_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\odata_int[1]_i_1_n_0 ),
        .Q(\odata_int_reg[1]_0 ),
        .R(ARESET));
endmodule
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
