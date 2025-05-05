--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
--Date        : Thu May  1 13:42:15 2025
--Host        : Osher running 64-bit major release  (build 9200)
--Command     : generate_target base.bd
--Design      : base
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity frontend_imp_13KUJBY is
  port (
    DDC_scl_i : in STD_LOGIC;
    DDC_scl_o : out STD_LOGIC;
    DDC_scl_t : out STD_LOGIC;
    DDC_sda_i : in STD_LOGIC;
    DDC_sda_o : out STD_LOGIC;
    DDC_sda_t : out STD_LOGIC;
    PixelClk : out STD_LOGIC;
    S00_AXILite_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    S00_AXILite_arready : out STD_LOGIC;
    S00_AXILite_arvalid : in STD_LOGIC;
    S00_AXILite_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    S00_AXILite_awready : out STD_LOGIC;
    S00_AXILite_awvalid : in STD_LOGIC;
    S00_AXILite_bready : in STD_LOGIC;
    S00_AXILite_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXILite_bvalid : out STD_LOGIC;
    S00_AXILite_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXILite_rready : in STD_LOGIC;
    S00_AXILite_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXILite_rvalid : out STD_LOGIC;
    S00_AXILite_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXILite_wready : out STD_LOGIC;
    S00_AXILite_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXILite_wvalid : in STD_LOGIC;
    S02_AXILite_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    S02_AXILite_arready : out STD_LOGIC;
    S02_AXILite_arvalid : in STD_LOGIC;
    S02_AXILite_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    S02_AXILite_awready : out STD_LOGIC;
    S02_AXILite_awvalid : in STD_LOGIC;
    S02_AXILite_bready : in STD_LOGIC;
    S02_AXILite_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXILite_bvalid : out STD_LOGIC;
    S02_AXILite_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S02_AXILite_rready : in STD_LOGIC;
    S02_AXILite_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXILite_rvalid : out STD_LOGIC;
    S02_AXILite_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S02_AXILite_wready : out STD_LOGIC;
    S02_AXILite_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXILite_wvalid : in STD_LOGIC;
    TMDS_in_clk_n : in STD_LOGIC;
    TMDS_in_clk_p : in STD_LOGIC;
    TMDS_in_data_n : in STD_LOGIC_VECTOR ( 2 downto 0 );
    TMDS_in_data_p : in STD_LOGIC_VECTOR ( 2 downto 0 );
    aPixelClkLckd : out STD_LOGIC;
    clk_100M : in STD_LOGIC;
    clk_142M : in STD_LOGIC;
    clk_200M : in STD_LOGIC;
    hdmi_in_hpd : out STD_LOGIC_VECTOR ( 0 to 0 );
    hdmi_in_hpd_irq : out STD_LOGIC;
    periph_resetn_clk100M : in STD_LOGIC_VECTOR ( 0 to 0 );
    resetn : in STD_LOGIC_VECTOR ( 0 to 0 );
    vid_io_in_reset : in STD_LOGIC_VECTOR ( 0 to 0 );
    video_out_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    video_out_tlast : out STD_LOGIC;
    video_out_tready : in STD_LOGIC;
    video_out_tuser : out STD_LOGIC;
    video_out_tvalid : out STD_LOGIC;
    vtc_in_irq : out STD_LOGIC
  );
end frontend_imp_13KUJBY;

architecture STRUCTURE of frontend_imp_13KUJBY is
  component base_axi_gpio_hdmiin_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    ip2intc_irpt : out STD_LOGIC;
    gpio_io_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    gpio2_io_i : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component base_axi_gpio_hdmiin_0;
  component base_color_swap_0_0 is
  port (
    hsync_in : in STD_LOGIC;
    hsync_out : out STD_LOGIC;
    pixel_in : in STD_LOGIC_VECTOR ( 23 downto 0 );
    pixel_out : out STD_LOGIC_VECTOR ( 23 downto 0 );
    vde_in : in STD_LOGIC;
    vde_out : out STD_LOGIC;
    vsync_in : in STD_LOGIC;
    vsync_out : out STD_LOGIC
  );
  end component base_color_swap_0_0;
  component base_dvi2rgb_0_0 is
  port (
    TMDS_Clk_p : in STD_LOGIC;
    TMDS_Clk_n : in STD_LOGIC;
    TMDS_Data_p : in STD_LOGIC_VECTOR ( 2 downto 0 );
    TMDS_Data_n : in STD_LOGIC_VECTOR ( 2 downto 0 );
    RefClk : in STD_LOGIC;
    aRst_n : in STD_LOGIC;
    vid_pData : out STD_LOGIC_VECTOR ( 23 downto 0 );
    vid_pVDE : out STD_LOGIC;
    vid_pHSync : out STD_LOGIC;
    vid_pVSync : out STD_LOGIC;
    PixelClk : out STD_LOGIC;
    aPixelClkLckd : out STD_LOGIC;
    DDC_SDA_I : in STD_LOGIC;
    DDC_SDA_O : out STD_LOGIC;
    DDC_SDA_T : out STD_LOGIC;
    DDC_SCL_I : in STD_LOGIC;
    DDC_SCL_O : out STD_LOGIC;
    DDC_SCL_T : out STD_LOGIC;
    pRst_n : in STD_LOGIC
  );
  end component base_dvi2rgb_0_0;
  component base_v_vid_in_axi4s_0_0 is
  port (
    vid_io_in_clk : in STD_LOGIC;
    vid_io_in_ce : in STD_LOGIC;
    vid_io_in_reset : in STD_LOGIC;
    vid_active_video : in STD_LOGIC;
    vid_vblank : in STD_LOGIC;
    vid_hblank : in STD_LOGIC;
    vid_vsync : in STD_LOGIC;
    vid_hsync : in STD_LOGIC;
    vid_field_id : in STD_LOGIC;
    vid_data : in STD_LOGIC_VECTOR ( 23 downto 0 );
    aclk : in STD_LOGIC;
    aclken : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    m_axis_video_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_video_tvalid : out STD_LOGIC;
    m_axis_video_tready : in STD_LOGIC;
    m_axis_video_tuser : out STD_LOGIC;
    m_axis_video_tlast : out STD_LOGIC;
    fid : out STD_LOGIC;
    vtd_active_video : out STD_LOGIC;
    vtd_vblank : out STD_LOGIC;
    vtd_hblank : out STD_LOGIC;
    vtd_vsync : out STD_LOGIC;
    vtd_hsync : out STD_LOGIC;
    vtd_field_id : out STD_LOGIC;
    overflow : out STD_LOGIC;
    underflow : out STD_LOGIC;
    axis_enable : in STD_LOGIC
  );
  end component base_v_vid_in_axi4s_0_0;
  component base_vtc_in_0 is
  port (
    clk : in STD_LOGIC;
    clken : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aclken : in STD_LOGIC;
    det_clken : in STD_LOGIC;
    intc_if : out STD_LOGIC_VECTOR ( 31 downto 0 );
    hsync_in : in STD_LOGIC;
    vsync_in : in STD_LOGIC;
    active_video_in : in STD_LOGIC;
    resetn : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    irq : out STD_LOGIC
  );
  end component base_vtc_in_0;
  signal Conn1_SCL_I : STD_LOGIC;
  signal Conn1_SCL_O : STD_LOGIC;
  signal Conn1_SCL_T : STD_LOGIC;
  signal Conn1_SDA_I : STD_LOGIC;
  signal Conn1_SDA_O : STD_LOGIC;
  signal Conn1_SDA_T : STD_LOGIC;
  signal Conn2_CLK_N : STD_LOGIC;
  signal Conn2_CLK_P : STD_LOGIC;
  signal Conn2_DATA_N : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn2_DATA_P : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn3_ARADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal Conn3_ARREADY : STD_LOGIC;
  signal Conn3_ARVALID : STD_LOGIC;
  signal Conn3_AWADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal Conn3_AWREADY : STD_LOGIC;
  signal Conn3_AWVALID : STD_LOGIC;
  signal Conn3_BREADY : STD_LOGIC;
  signal Conn3_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn3_BVALID : STD_LOGIC;
  signal Conn3_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn3_RREADY : STD_LOGIC;
  signal Conn3_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn3_RVALID : STD_LOGIC;
  signal Conn3_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn3_WREADY : STD_LOGIC;
  signal Conn3_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn3_WVALID : STD_LOGIC;
  signal Net : STD_LOGIC;
  signal Net1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal RefClk_1 : STD_LOGIC;
  signal aclk_1 : STD_LOGIC;
  signal axi_gpio_video_gpio_io_o : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_gpio_video_ip2intc_irpt : STD_LOGIC;
  signal color_swap_0_pixel_output_ACTIVE_VIDEO : STD_LOGIC;
  signal color_swap_0_pixel_output_DATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal color_swap_0_pixel_output_HSYNC : STD_LOGIC;
  signal color_swap_0_pixel_output_VSYNC : STD_LOGIC;
  signal dvi2rgb_0_PixelClk1 : STD_LOGIC;
  signal dvi2rgb_0_RGB_ACTIVE_VIDEO : STD_LOGIC;
  signal dvi2rgb_0_RGB_DATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal dvi2rgb_0_RGB_HSYNC : STD_LOGIC;
  signal dvi2rgb_0_RGB_VSYNC : STD_LOGIC;
  signal dvi2rgb_0_aPixelClkLckd : STD_LOGIC;
  signal hdmi_in_video_out_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal hdmi_in_video_out_TLAST : STD_LOGIC;
  signal hdmi_in_video_out_TREADY : STD_LOGIC;
  signal hdmi_in_video_out_TUSER : STD_LOGIC;
  signal hdmi_in_video_out_TVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M07_AXI_ARADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal ps7_0_axi_periph_M07_AXI_ARREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M07_AXI_ARVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M07_AXI_AWADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal ps7_0_axi_periph_M07_AXI_AWREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M07_AXI_AWVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M07_AXI_BREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M07_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_M07_AXI_BVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M07_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M07_AXI_RREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M07_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_M07_AXI_RVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M07_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M07_AXI_WREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M07_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_M07_AXI_WVALID : STD_LOGIC;
  signal resetn_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal v_tc_1_irq : STD_LOGIC;
  signal v_vid_in_axi4s_0_vtiming_out_ACTIVE_VIDEO : STD_LOGIC;
  signal v_vid_in_axi4s_0_vtiming_out_HSYNC : STD_LOGIC;
  signal v_vid_in_axi4s_0_vtiming_out_VSYNC : STD_LOGIC;
  signal vid_io_in_reset_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_v_vid_in_axi4s_0_fid_UNCONNECTED : STD_LOGIC;
  signal NLW_v_vid_in_axi4s_0_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_v_vid_in_axi4s_0_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_v_vid_in_axi4s_0_vtd_field_id_UNCONNECTED : STD_LOGIC;
  signal NLW_v_vid_in_axi4s_0_vtd_hblank_UNCONNECTED : STD_LOGIC;
  signal NLW_v_vid_in_axi4s_0_vtd_vblank_UNCONNECTED : STD_LOGIC;
  signal NLW_vtc_in_intc_if_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
begin
  Conn1_SCL_I <= DDC_scl_i;
  Conn1_SDA_I <= DDC_sda_i;
  Conn2_CLK_N <= TMDS_in_clk_n;
  Conn2_CLK_P <= TMDS_in_clk_p;
  Conn2_DATA_N(2 downto 0) <= TMDS_in_data_n(2 downto 0);
  Conn2_DATA_P(2 downto 0) <= TMDS_in_data_p(2 downto 0);
  Conn3_ARADDR(8 downto 0) <= S02_AXILite_araddr(8 downto 0);
  Conn3_ARVALID <= S02_AXILite_arvalid;
  Conn3_AWADDR(8 downto 0) <= S02_AXILite_awaddr(8 downto 0);
  Conn3_AWVALID <= S02_AXILite_awvalid;
  Conn3_BREADY <= S02_AXILite_bready;
  Conn3_RREADY <= S02_AXILite_rready;
  Conn3_WDATA(31 downto 0) <= S02_AXILite_wdata(31 downto 0);
  Conn3_WSTRB(3 downto 0) <= S02_AXILite_wstrb(3 downto 0);
  Conn3_WVALID <= S02_AXILite_wvalid;
  DDC_scl_o <= Conn1_SCL_O;
  DDC_scl_t <= Conn1_SCL_T;
  DDC_sda_o <= Conn1_SDA_O;
  DDC_sda_t <= Conn1_SDA_T;
  Net <= clk_100M;
  Net1(0) <= periph_resetn_clk100M(0);
  PixelClk <= dvi2rgb_0_PixelClk1;
  RefClk_1 <= clk_200M;
  S00_AXILite_arready <= ps7_0_axi_periph_M07_AXI_ARREADY;
  S00_AXILite_awready <= ps7_0_axi_periph_M07_AXI_AWREADY;
  S00_AXILite_bresp(1 downto 0) <= ps7_0_axi_periph_M07_AXI_BRESP(1 downto 0);
  S00_AXILite_bvalid <= ps7_0_axi_periph_M07_AXI_BVALID;
  S00_AXILite_rdata(31 downto 0) <= ps7_0_axi_periph_M07_AXI_RDATA(31 downto 0);
  S00_AXILite_rresp(1 downto 0) <= ps7_0_axi_periph_M07_AXI_RRESP(1 downto 0);
  S00_AXILite_rvalid <= ps7_0_axi_periph_M07_AXI_RVALID;
  S00_AXILite_wready <= ps7_0_axi_periph_M07_AXI_WREADY;
  S02_AXILite_arready <= Conn3_ARREADY;
  S02_AXILite_awready <= Conn3_AWREADY;
  S02_AXILite_bresp(1 downto 0) <= Conn3_BRESP(1 downto 0);
  S02_AXILite_bvalid <= Conn3_BVALID;
  S02_AXILite_rdata(31 downto 0) <= Conn3_RDATA(31 downto 0);
  S02_AXILite_rresp(1 downto 0) <= Conn3_RRESP(1 downto 0);
  S02_AXILite_rvalid <= Conn3_RVALID;
  S02_AXILite_wready <= Conn3_WREADY;
  aPixelClkLckd <= dvi2rgb_0_aPixelClkLckd;
  aclk_1 <= clk_142M;
  hdmi_in_hpd(0) <= axi_gpio_video_gpio_io_o(0);
  hdmi_in_hpd_irq <= axi_gpio_video_ip2intc_irpt;
  hdmi_in_video_out_TREADY <= video_out_tready;
  ps7_0_axi_periph_M07_AXI_ARADDR(8 downto 0) <= S00_AXILite_araddr(8 downto 0);
  ps7_0_axi_periph_M07_AXI_ARVALID <= S00_AXILite_arvalid;
  ps7_0_axi_periph_M07_AXI_AWADDR(8 downto 0) <= S00_AXILite_awaddr(8 downto 0);
  ps7_0_axi_periph_M07_AXI_AWVALID <= S00_AXILite_awvalid;
  ps7_0_axi_periph_M07_AXI_BREADY <= S00_AXILite_bready;
  ps7_0_axi_periph_M07_AXI_RREADY <= S00_AXILite_rready;
  ps7_0_axi_periph_M07_AXI_WDATA(31 downto 0) <= S00_AXILite_wdata(31 downto 0);
  ps7_0_axi_periph_M07_AXI_WSTRB(3 downto 0) <= S00_AXILite_wstrb(3 downto 0);
  ps7_0_axi_periph_M07_AXI_WVALID <= S00_AXILite_wvalid;
  resetn_1(0) <= resetn(0);
  vid_io_in_reset_1(0) <= vid_io_in_reset(0);
  video_out_tdata(23 downto 0) <= hdmi_in_video_out_TDATA(23 downto 0);
  video_out_tlast <= hdmi_in_video_out_TLAST;
  video_out_tuser <= hdmi_in_video_out_TUSER;
  video_out_tvalid <= hdmi_in_video_out_TVALID;
  vtc_in_irq <= v_tc_1_irq;
axi_gpio_hdmiin: component base_axi_gpio_hdmiin_0
     port map (
      gpio2_io_i(0) => dvi2rgb_0_aPixelClkLckd,
      gpio_io_o(0) => axi_gpio_video_gpio_io_o(0),
      ip2intc_irpt => axi_gpio_video_ip2intc_irpt,
      s_axi_aclk => Net,
      s_axi_araddr(8 downto 0) => ps7_0_axi_periph_M07_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => Net1(0),
      s_axi_arready => ps7_0_axi_periph_M07_AXI_ARREADY,
      s_axi_arvalid => ps7_0_axi_periph_M07_AXI_ARVALID,
      s_axi_awaddr(8 downto 0) => ps7_0_axi_periph_M07_AXI_AWADDR(8 downto 0),
      s_axi_awready => ps7_0_axi_periph_M07_AXI_AWREADY,
      s_axi_awvalid => ps7_0_axi_periph_M07_AXI_AWVALID,
      s_axi_bready => ps7_0_axi_periph_M07_AXI_BREADY,
      s_axi_bresp(1 downto 0) => ps7_0_axi_periph_M07_AXI_BRESP(1 downto 0),
      s_axi_bvalid => ps7_0_axi_periph_M07_AXI_BVALID,
      s_axi_rdata(31 downto 0) => ps7_0_axi_periph_M07_AXI_RDATA(31 downto 0),
      s_axi_rready => ps7_0_axi_periph_M07_AXI_RREADY,
      s_axi_rresp(1 downto 0) => ps7_0_axi_periph_M07_AXI_RRESP(1 downto 0),
      s_axi_rvalid => ps7_0_axi_periph_M07_AXI_RVALID,
      s_axi_wdata(31 downto 0) => ps7_0_axi_periph_M07_AXI_WDATA(31 downto 0),
      s_axi_wready => ps7_0_axi_periph_M07_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => ps7_0_axi_periph_M07_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => ps7_0_axi_periph_M07_AXI_WVALID
    );
color_swap_0: component base_color_swap_0_0
     port map (
      hsync_in => dvi2rgb_0_RGB_HSYNC,
      hsync_out => color_swap_0_pixel_output_HSYNC,
      pixel_in(23 downto 0) => dvi2rgb_0_RGB_DATA(23 downto 0),
      pixel_out(23 downto 0) => color_swap_0_pixel_output_DATA(23 downto 0),
      vde_in => dvi2rgb_0_RGB_ACTIVE_VIDEO,
      vde_out => color_swap_0_pixel_output_ACTIVE_VIDEO,
      vsync_in => dvi2rgb_0_RGB_VSYNC,
      vsync_out => color_swap_0_pixel_output_VSYNC
    );
dvi2rgb_0: component base_dvi2rgb_0_0
     port map (
      DDC_SCL_I => Conn1_SCL_I,
      DDC_SCL_O => Conn1_SCL_O,
      DDC_SCL_T => Conn1_SCL_T,
      DDC_SDA_I => Conn1_SDA_I,
      DDC_SDA_O => Conn1_SDA_O,
      DDC_SDA_T => Conn1_SDA_T,
      PixelClk => dvi2rgb_0_PixelClk1,
      RefClk => RefClk_1,
      TMDS_Clk_n => Conn2_CLK_N,
      TMDS_Clk_p => Conn2_CLK_P,
      TMDS_Data_n(2 downto 0) => Conn2_DATA_N(2 downto 0),
      TMDS_Data_p(2 downto 0) => Conn2_DATA_P(2 downto 0),
      aPixelClkLckd => dvi2rgb_0_aPixelClkLckd,
      aRst_n => Net1(0),
      pRst_n => '1',
      vid_pData(23 downto 0) => dvi2rgb_0_RGB_DATA(23 downto 0),
      vid_pHSync => dvi2rgb_0_RGB_HSYNC,
      vid_pVDE => dvi2rgb_0_RGB_ACTIVE_VIDEO,
      vid_pVSync => dvi2rgb_0_RGB_VSYNC
    );
v_vid_in_axi4s_0: component base_v_vid_in_axi4s_0_0
     port map (
      aclk => aclk_1,
      aclken => '1',
      aresetn => '1',
      axis_enable => '1',
      fid => NLW_v_vid_in_axi4s_0_fid_UNCONNECTED,
      m_axis_video_tdata(23 downto 0) => hdmi_in_video_out_TDATA(23 downto 0),
      m_axis_video_tlast => hdmi_in_video_out_TLAST,
      m_axis_video_tready => hdmi_in_video_out_TREADY,
      m_axis_video_tuser => hdmi_in_video_out_TUSER,
      m_axis_video_tvalid => hdmi_in_video_out_TVALID,
      overflow => NLW_v_vid_in_axi4s_0_overflow_UNCONNECTED,
      underflow => NLW_v_vid_in_axi4s_0_underflow_UNCONNECTED,
      vid_active_video => color_swap_0_pixel_output_ACTIVE_VIDEO,
      vid_data(23 downto 0) => color_swap_0_pixel_output_DATA(23 downto 0),
      vid_field_id => '0',
      vid_hblank => '0',
      vid_hsync => color_swap_0_pixel_output_HSYNC,
      vid_io_in_ce => '1',
      vid_io_in_clk => dvi2rgb_0_PixelClk1,
      vid_io_in_reset => vid_io_in_reset_1(0),
      vid_vblank => '0',
      vid_vsync => color_swap_0_pixel_output_VSYNC,
      vtd_active_video => v_vid_in_axi4s_0_vtiming_out_ACTIVE_VIDEO,
      vtd_field_id => NLW_v_vid_in_axi4s_0_vtd_field_id_UNCONNECTED,
      vtd_hblank => NLW_v_vid_in_axi4s_0_vtd_hblank_UNCONNECTED,
      vtd_hsync => v_vid_in_axi4s_0_vtiming_out_HSYNC,
      vtd_vblank => NLW_v_vid_in_axi4s_0_vtd_vblank_UNCONNECTED,
      vtd_vsync => v_vid_in_axi4s_0_vtiming_out_VSYNC
    );
vtc_in: component base_vtc_in_0
     port map (
      active_video_in => v_vid_in_axi4s_0_vtiming_out_ACTIVE_VIDEO,
      clk => dvi2rgb_0_PixelClk1,
      clken => '1',
      det_clken => '1',
      hsync_in => v_vid_in_axi4s_0_vtiming_out_HSYNC,
      intc_if(31 downto 0) => NLW_vtc_in_intc_if_UNCONNECTED(31 downto 0),
      irq => v_tc_1_irq,
      resetn => resetn_1(0),
      s_axi_aclk => Net,
      s_axi_aclken => '1',
      s_axi_araddr(8 downto 0) => Conn3_ARADDR(8 downto 0),
      s_axi_aresetn => Net1(0),
      s_axi_arready => Conn3_ARREADY,
      s_axi_arvalid => Conn3_ARVALID,
      s_axi_awaddr(8 downto 0) => Conn3_AWADDR(8 downto 0),
      s_axi_awready => Conn3_AWREADY,
      s_axi_awvalid => Conn3_AWVALID,
      s_axi_bready => Conn3_BREADY,
      s_axi_bresp(1 downto 0) => Conn3_BRESP(1 downto 0),
      s_axi_bvalid => Conn3_BVALID,
      s_axi_rdata(31 downto 0) => Conn3_RDATA(31 downto 0),
      s_axi_rready => Conn3_RREADY,
      s_axi_rresp(1 downto 0) => Conn3_RRESP(1 downto 0),
      s_axi_rvalid => Conn3_RVALID,
      s_axi_wdata(31 downto 0) => Conn3_WDATA(31 downto 0),
      s_axi_wready => Conn3_WREADY,
      s_axi_wstrb(3 downto 0) => Conn3_WSTRB(3 downto 0),
      s_axi_wvalid => Conn3_WVALID,
      vsync_in => v_vid_in_axi4s_0_vtiming_out_VSYNC
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity frontend_imp_1JYZ9V6 is
  port (
    S00_AXILite_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    S00_AXILite_arready : out STD_LOGIC;
    S00_AXILite_arvalid : in STD_LOGIC;
    S00_AXILite_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    S00_AXILite_awready : out STD_LOGIC;
    S00_AXILite_awvalid : in STD_LOGIC;
    S00_AXILite_bready : in STD_LOGIC;
    S00_AXILite_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXILite_bvalid : out STD_LOGIC;
    S00_AXILite_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXILite_rready : in STD_LOGIC;
    S00_AXILite_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXILite_rvalid : out STD_LOGIC;
    S00_AXILite_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXILite_wready : out STD_LOGIC;
    S00_AXILite_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXILite_wvalid : in STD_LOGIC;
    S02_AXILite_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    S02_AXILite_arready : out STD_LOGIC;
    S02_AXILite_arvalid : in STD_LOGIC;
    S02_AXILite_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    S02_AXILite_awready : out STD_LOGIC;
    S02_AXILite_awvalid : in STD_LOGIC;
    S02_AXILite_bready : in STD_LOGIC;
    S02_AXILite_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXILite_bvalid : out STD_LOGIC;
    S02_AXILite_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S02_AXILite_rready : in STD_LOGIC;
    S02_AXILite_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXILite_rvalid : out STD_LOGIC;
    S02_AXILite_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S02_AXILite_wready : out STD_LOGIC;
    S02_AXILite_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXILite_wvalid : in STD_LOGIC;
    S04_AXILite_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    S04_AXILite_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S04_AXILite_arready : out STD_LOGIC;
    S04_AXILite_arvalid : in STD_LOGIC;
    S04_AXILite_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    S04_AXILite_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S04_AXILite_awready : out STD_LOGIC;
    S04_AXILite_awvalid : in STD_LOGIC;
    S04_AXILite_bready : in STD_LOGIC;
    S04_AXILite_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S04_AXILite_bvalid : out STD_LOGIC;
    S04_AXILite_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S04_AXILite_rready : in STD_LOGIC;
    S04_AXILite_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S04_AXILite_rvalid : out STD_LOGIC;
    S04_AXILite_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S04_AXILite_wready : out STD_LOGIC;
    S04_AXILite_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S04_AXILite_wvalid : in STD_LOGIC;
    TMDS_out_clk_n : out STD_LOGIC;
    TMDS_out_clk_p : out STD_LOGIC;
    TMDS_out_data_n : out STD_LOGIC_VECTOR ( 2 downto 0 );
    TMDS_out_data_p : out STD_LOGIC_VECTOR ( 2 downto 0 );
    clk_100M : in STD_LOGIC;
    clk_142M : in STD_LOGIC;
    hdmi_out_hpd : out STD_LOGIC_VECTOR ( 0 to 0 );
    hdmi_out_hpd_irq : out STD_LOGIC;
    periph_resetn_clk100M : in STD_LOGIC_VECTOR ( 0 to 0 );
    video_in_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    video_in_tlast : in STD_LOGIC;
    video_in_tready : out STD_LOGIC;
    video_in_tuser : in STD_LOGIC;
    video_in_tvalid : in STD_LOGIC;
    vtc_out_irq : out STD_LOGIC
  );
end frontend_imp_1JYZ9V6;

architecture STRUCTURE of frontend_imp_1JYZ9V6 is
  component base_axi_dynclk_0 is
  port (
    REF_CLK_I : in STD_LOGIC;
    PXL_CLK_O : out STD_LOGIC;
    PXL_CLK_5X_O : out STD_LOGIC;
    LOCKED_O : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  end component base_axi_dynclk_0;
  component base_color_swap_0_1 is
  port (
    hsync_in : in STD_LOGIC;
    hsync_out : out STD_LOGIC;
    pixel_in : in STD_LOGIC_VECTOR ( 23 downto 0 );
    pixel_out : out STD_LOGIC_VECTOR ( 23 downto 0 );
    vde_in : in STD_LOGIC;
    vde_out : out STD_LOGIC;
    vsync_in : in STD_LOGIC;
    vsync_out : out STD_LOGIC
  );
  end component base_color_swap_0_1;
  component base_hdmi_out_hpd_video_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    ip2intc_irpt : out STD_LOGIC;
    gpio_io_o : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component base_hdmi_out_hpd_video_0;
  component base_rgb2dvi_0_0 is
  port (
    TMDS_Clk_p : out STD_LOGIC;
    TMDS_Clk_n : out STD_LOGIC;
    TMDS_Data_p : out STD_LOGIC_VECTOR ( 2 downto 0 );
    TMDS_Data_n : out STD_LOGIC_VECTOR ( 2 downto 0 );
    aRst_n : in STD_LOGIC;
    vid_pData : in STD_LOGIC_VECTOR ( 23 downto 0 );
    vid_pVDE : in STD_LOGIC;
    vid_pHSync : in STD_LOGIC;
    vid_pVSync : in STD_LOGIC;
    PixelClk : in STD_LOGIC;
    SerialClk : in STD_LOGIC
  );
  end component base_rgb2dvi_0_0;
  component base_v_axi4s_vid_out_0_0 is
  port (
    aclk : in STD_LOGIC;
    aclken : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_video_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_video_tvalid : in STD_LOGIC;
    s_axis_video_tready : out STD_LOGIC;
    s_axis_video_tuser : in STD_LOGIC;
    s_axis_video_tlast : in STD_LOGIC;
    fid : in STD_LOGIC;
    vid_io_out_clk : in STD_LOGIC;
    vid_io_out_ce : in STD_LOGIC;
    vid_io_out_reset : in STD_LOGIC;
    vid_active_video : out STD_LOGIC;
    vid_vsync : out STD_LOGIC;
    vid_hsync : out STD_LOGIC;
    vid_vblank : out STD_LOGIC;
    vid_hblank : out STD_LOGIC;
    vid_field_id : out STD_LOGIC;
    vid_data : out STD_LOGIC_VECTOR ( 23 downto 0 );
    vtg_vsync : in STD_LOGIC;
    vtg_hsync : in STD_LOGIC;
    vtg_vblank : in STD_LOGIC;
    vtg_hblank : in STD_LOGIC;
    vtg_active_video : in STD_LOGIC;
    vtg_field_id : in STD_LOGIC;
    vtg_ce : out STD_LOGIC;
    locked : out STD_LOGIC;
    overflow : out STD_LOGIC;
    underflow : out STD_LOGIC;
    fifo_read_level : out STD_LOGIC_VECTOR ( 11 downto 0 );
    status : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component base_v_axi4s_vid_out_0_0;
  component base_vtc_out_0 is
  port (
    clk : in STD_LOGIC;
    clken : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aclken : in STD_LOGIC;
    gen_clken : in STD_LOGIC;
    hsync_out : out STD_LOGIC;
    hblank_out : out STD_LOGIC;
    vsync_out : out STD_LOGIC;
    vblank_out : out STD_LOGIC;
    active_video_out : out STD_LOGIC;
    resetn : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    irq : out STD_LOGIC;
    fsync_in : in STD_LOGIC;
    fsync_out : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component base_vtc_out_0;
  signal Conn1_CLK_N : STD_LOGIC;
  signal Conn1_CLK_P : STD_LOGIC;
  signal Conn1_DATA_N : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn1_DATA_P : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn2_ARADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal Conn2_ARREADY : STD_LOGIC;
  signal Conn2_ARVALID : STD_LOGIC;
  signal Conn2_AWADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal Conn2_AWREADY : STD_LOGIC;
  signal Conn2_AWVALID : STD_LOGIC;
  signal Conn2_BREADY : STD_LOGIC;
  signal Conn2_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn2_BVALID : STD_LOGIC;
  signal Conn2_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn2_RREADY : STD_LOGIC;
  signal Conn2_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn2_RVALID : STD_LOGIC;
  signal Conn2_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn2_WREADY : STD_LOGIC;
  signal Conn2_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn2_WVALID : STD_LOGIC;
  signal Net : STD_LOGIC;
  signal Net1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal aclk_1 : STD_LOGIC;
  signal axi_dynclk_0_LOCKED_O : STD_LOGIC;
  signal axi_dynclk_0_PXL_CLK_5X_O : STD_LOGIC;
  signal axi_dynclk_0_PXL_CLK_O : STD_LOGIC;
  signal color_swap_0_pixel_output_ACTIVE_VIDEO : STD_LOGIC;
  signal color_swap_0_pixel_output_DATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal color_swap_0_pixel_output_HSYNC : STD_LOGIC;
  signal color_swap_0_pixel_output_VSYNC : STD_LOGIC;
  signal hdmi_out_hpd_video_gpio_io_o : STD_LOGIC_VECTOR ( 0 to 0 );
  signal hdmi_out_hpd_video_ip2intc_irpt : STD_LOGIC;
  signal ps7_0_axi_periph_M06_AXI_ARADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal ps7_0_axi_periph_M06_AXI_ARREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M06_AXI_ARVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M06_AXI_AWADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal ps7_0_axi_periph_M06_AXI_AWREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M06_AXI_AWVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M06_AXI_BREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M06_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_M06_AXI_BVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M06_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M06_AXI_RREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M06_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_M06_AXI_RVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M06_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M06_AXI_WREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M06_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_M06_AXI_WVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M08_AXI_ARADDR : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal ps7_0_axi_periph_M08_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_0_axi_periph_M08_AXI_ARREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M08_AXI_ARVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M08_AXI_AWADDR : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal ps7_0_axi_periph_M08_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_0_axi_periph_M08_AXI_AWREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M08_AXI_AWVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M08_AXI_BREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M08_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_M08_AXI_BVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M08_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M08_AXI_RREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M08_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_M08_AXI_RVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M08_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M08_AXI_WREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M08_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_M08_AXI_WVALID : STD_LOGIC;
  signal v_axi4s_vid_out_0_vid_io_out_ACTIVE_VIDEO : STD_LOGIC;
  signal v_axi4s_vid_out_0_vid_io_out_DATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal v_axi4s_vid_out_0_vid_io_out_HSYNC : STD_LOGIC;
  signal v_axi4s_vid_out_0_vid_io_out_VSYNC : STD_LOGIC;
  signal v_tc_0_irq : STD_LOGIC;
  signal v_tc_0_vtiming_out_ACTIVE_VIDEO : STD_LOGIC;
  signal v_tc_0_vtiming_out_HBLANK : STD_LOGIC;
  signal v_tc_0_vtiming_out_HSYNC : STD_LOGIC;
  signal v_tc_0_vtiming_out_VBLANK : STD_LOGIC;
  signal v_tc_0_vtiming_out_VSYNC : STD_LOGIC;
  signal video_in_1_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal video_in_1_TLAST : STD_LOGIC;
  signal video_in_1_TREADY : STD_LOGIC;
  signal video_in_1_TUSER : STD_LOGIC;
  signal video_in_1_TVALID : STD_LOGIC;
  signal NLW_v_axi4s_vid_out_0_locked_UNCONNECTED : STD_LOGIC;
  signal NLW_v_axi4s_vid_out_0_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_v_axi4s_vid_out_0_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_v_axi4s_vid_out_0_vid_field_id_UNCONNECTED : STD_LOGIC;
  signal NLW_v_axi4s_vid_out_0_vid_hblank_UNCONNECTED : STD_LOGIC;
  signal NLW_v_axi4s_vid_out_0_vid_vblank_UNCONNECTED : STD_LOGIC;
  signal NLW_v_axi4s_vid_out_0_vtg_ce_UNCONNECTED : STD_LOGIC;
  signal NLW_v_axi4s_vid_out_0_fifo_read_level_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_v_axi4s_vid_out_0_status_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_vtc_out_fsync_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  Conn2_ARADDR(8 downto 0) <= S02_AXILite_araddr(8 downto 0);
  Conn2_ARVALID <= S02_AXILite_arvalid;
  Conn2_AWADDR(8 downto 0) <= S02_AXILite_awaddr(8 downto 0);
  Conn2_AWVALID <= S02_AXILite_awvalid;
  Conn2_BREADY <= S02_AXILite_bready;
  Conn2_RREADY <= S02_AXILite_rready;
  Conn2_WDATA(31 downto 0) <= S02_AXILite_wdata(31 downto 0);
  Conn2_WSTRB(3 downto 0) <= S02_AXILite_wstrb(3 downto 0);
  Conn2_WVALID <= S02_AXILite_wvalid;
  Net <= clk_100M;
  Net1(0) <= periph_resetn_clk100M(0);
  S00_AXILite_arready <= ps7_0_axi_periph_M06_AXI_ARREADY;
  S00_AXILite_awready <= ps7_0_axi_periph_M06_AXI_AWREADY;
  S00_AXILite_bresp(1 downto 0) <= ps7_0_axi_periph_M06_AXI_BRESP(1 downto 0);
  S00_AXILite_bvalid <= ps7_0_axi_periph_M06_AXI_BVALID;
  S00_AXILite_rdata(31 downto 0) <= ps7_0_axi_periph_M06_AXI_RDATA(31 downto 0);
  S00_AXILite_rresp(1 downto 0) <= ps7_0_axi_periph_M06_AXI_RRESP(1 downto 0);
  S00_AXILite_rvalid <= ps7_0_axi_periph_M06_AXI_RVALID;
  S00_AXILite_wready <= ps7_0_axi_periph_M06_AXI_WREADY;
  S02_AXILite_arready <= Conn2_ARREADY;
  S02_AXILite_awready <= Conn2_AWREADY;
  S02_AXILite_bresp(1 downto 0) <= Conn2_BRESP(1 downto 0);
  S02_AXILite_bvalid <= Conn2_BVALID;
  S02_AXILite_rdata(31 downto 0) <= Conn2_RDATA(31 downto 0);
  S02_AXILite_rresp(1 downto 0) <= Conn2_RRESP(1 downto 0);
  S02_AXILite_rvalid <= Conn2_RVALID;
  S02_AXILite_wready <= Conn2_WREADY;
  S04_AXILite_arready <= ps7_0_axi_periph_M08_AXI_ARREADY;
  S04_AXILite_awready <= ps7_0_axi_periph_M08_AXI_AWREADY;
  S04_AXILite_bresp(1 downto 0) <= ps7_0_axi_periph_M08_AXI_BRESP(1 downto 0);
  S04_AXILite_bvalid <= ps7_0_axi_periph_M08_AXI_BVALID;
  S04_AXILite_rdata(31 downto 0) <= ps7_0_axi_periph_M08_AXI_RDATA(31 downto 0);
  S04_AXILite_rresp(1 downto 0) <= ps7_0_axi_periph_M08_AXI_RRESP(1 downto 0);
  S04_AXILite_rvalid <= ps7_0_axi_periph_M08_AXI_RVALID;
  S04_AXILite_wready <= ps7_0_axi_periph_M08_AXI_WREADY;
  TMDS_out_clk_n <= Conn1_CLK_N;
  TMDS_out_clk_p <= Conn1_CLK_P;
  TMDS_out_data_n(2 downto 0) <= Conn1_DATA_N(2 downto 0);
  TMDS_out_data_p(2 downto 0) <= Conn1_DATA_P(2 downto 0);
  aclk_1 <= clk_142M;
  hdmi_out_hpd(0) <= hdmi_out_hpd_video_gpio_io_o(0);
  hdmi_out_hpd_irq <= hdmi_out_hpd_video_ip2intc_irpt;
  ps7_0_axi_periph_M06_AXI_ARADDR(8 downto 0) <= S00_AXILite_araddr(8 downto 0);
  ps7_0_axi_periph_M06_AXI_ARVALID <= S00_AXILite_arvalid;
  ps7_0_axi_periph_M06_AXI_AWADDR(8 downto 0) <= S00_AXILite_awaddr(8 downto 0);
  ps7_0_axi_periph_M06_AXI_AWVALID <= S00_AXILite_awvalid;
  ps7_0_axi_periph_M06_AXI_BREADY <= S00_AXILite_bready;
  ps7_0_axi_periph_M06_AXI_RREADY <= S00_AXILite_rready;
  ps7_0_axi_periph_M06_AXI_WDATA(31 downto 0) <= S00_AXILite_wdata(31 downto 0);
  ps7_0_axi_periph_M06_AXI_WSTRB(3 downto 0) <= S00_AXILite_wstrb(3 downto 0);
  ps7_0_axi_periph_M06_AXI_WVALID <= S00_AXILite_wvalid;
  ps7_0_axi_periph_M08_AXI_ARADDR(4 downto 0) <= S04_AXILite_araddr(4 downto 0);
  ps7_0_axi_periph_M08_AXI_ARPROT(2 downto 0) <= S04_AXILite_arprot(2 downto 0);
  ps7_0_axi_periph_M08_AXI_ARVALID <= S04_AXILite_arvalid;
  ps7_0_axi_periph_M08_AXI_AWADDR(4 downto 0) <= S04_AXILite_awaddr(4 downto 0);
  ps7_0_axi_periph_M08_AXI_AWPROT(2 downto 0) <= S04_AXILite_awprot(2 downto 0);
  ps7_0_axi_periph_M08_AXI_AWVALID <= S04_AXILite_awvalid;
  ps7_0_axi_periph_M08_AXI_BREADY <= S04_AXILite_bready;
  ps7_0_axi_periph_M08_AXI_RREADY <= S04_AXILite_rready;
  ps7_0_axi_periph_M08_AXI_WDATA(31 downto 0) <= S04_AXILite_wdata(31 downto 0);
  ps7_0_axi_periph_M08_AXI_WSTRB(3 downto 0) <= S04_AXILite_wstrb(3 downto 0);
  ps7_0_axi_periph_M08_AXI_WVALID <= S04_AXILite_wvalid;
  video_in_1_TDATA(23 downto 0) <= video_in_tdata(23 downto 0);
  video_in_1_TLAST <= video_in_tlast;
  video_in_1_TUSER <= video_in_tuser;
  video_in_1_TVALID <= video_in_tvalid;
  video_in_tready <= video_in_1_TREADY;
  vtc_out_irq <= v_tc_0_irq;
axi_dynclk: component base_axi_dynclk_0
     port map (
      LOCKED_O => axi_dynclk_0_LOCKED_O,
      PXL_CLK_5X_O => axi_dynclk_0_PXL_CLK_5X_O,
      PXL_CLK_O => axi_dynclk_0_PXL_CLK_O,
      REF_CLK_I => Net,
      s00_axi_aclk => Net,
      s00_axi_araddr(4 downto 0) => ps7_0_axi_periph_M08_AXI_ARADDR(4 downto 0),
      s00_axi_aresetn => Net1(0),
      s00_axi_arprot(2 downto 0) => ps7_0_axi_periph_M08_AXI_ARPROT(2 downto 0),
      s00_axi_arready => ps7_0_axi_periph_M08_AXI_ARREADY,
      s00_axi_arvalid => ps7_0_axi_periph_M08_AXI_ARVALID,
      s00_axi_awaddr(4 downto 0) => ps7_0_axi_periph_M08_AXI_AWADDR(4 downto 0),
      s00_axi_awprot(2 downto 0) => ps7_0_axi_periph_M08_AXI_AWPROT(2 downto 0),
      s00_axi_awready => ps7_0_axi_periph_M08_AXI_AWREADY,
      s00_axi_awvalid => ps7_0_axi_periph_M08_AXI_AWVALID,
      s00_axi_bready => ps7_0_axi_periph_M08_AXI_BREADY,
      s00_axi_bresp(1 downto 0) => ps7_0_axi_periph_M08_AXI_BRESP(1 downto 0),
      s00_axi_bvalid => ps7_0_axi_periph_M08_AXI_BVALID,
      s00_axi_rdata(31 downto 0) => ps7_0_axi_periph_M08_AXI_RDATA(31 downto 0),
      s00_axi_rready => ps7_0_axi_periph_M08_AXI_RREADY,
      s00_axi_rresp(1 downto 0) => ps7_0_axi_periph_M08_AXI_RRESP(1 downto 0),
      s00_axi_rvalid => ps7_0_axi_periph_M08_AXI_RVALID,
      s00_axi_wdata(31 downto 0) => ps7_0_axi_periph_M08_AXI_WDATA(31 downto 0),
      s00_axi_wready => ps7_0_axi_periph_M08_AXI_WREADY,
      s00_axi_wstrb(3 downto 0) => ps7_0_axi_periph_M08_AXI_WSTRB(3 downto 0),
      s00_axi_wvalid => ps7_0_axi_periph_M08_AXI_WVALID
    );
color_swap_0: component base_color_swap_0_1
     port map (
      hsync_in => v_axi4s_vid_out_0_vid_io_out_HSYNC,
      hsync_out => color_swap_0_pixel_output_HSYNC,
      pixel_in(23 downto 0) => v_axi4s_vid_out_0_vid_io_out_DATA(23 downto 0),
      pixel_out(23 downto 0) => color_swap_0_pixel_output_DATA(23 downto 0),
      vde_in => v_axi4s_vid_out_0_vid_io_out_ACTIVE_VIDEO,
      vde_out => color_swap_0_pixel_output_ACTIVE_VIDEO,
      vsync_in => v_axi4s_vid_out_0_vid_io_out_VSYNC,
      vsync_out => color_swap_0_pixel_output_VSYNC
    );
hdmi_out_hpd_video: component base_hdmi_out_hpd_video_0
     port map (
      gpio_io_o(0) => hdmi_out_hpd_video_gpio_io_o(0),
      ip2intc_irpt => hdmi_out_hpd_video_ip2intc_irpt,
      s_axi_aclk => Net,
      s_axi_araddr(8 downto 0) => ps7_0_axi_periph_M06_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => Net1(0),
      s_axi_arready => ps7_0_axi_periph_M06_AXI_ARREADY,
      s_axi_arvalid => ps7_0_axi_periph_M06_AXI_ARVALID,
      s_axi_awaddr(8 downto 0) => ps7_0_axi_periph_M06_AXI_AWADDR(8 downto 0),
      s_axi_awready => ps7_0_axi_periph_M06_AXI_AWREADY,
      s_axi_awvalid => ps7_0_axi_periph_M06_AXI_AWVALID,
      s_axi_bready => ps7_0_axi_periph_M06_AXI_BREADY,
      s_axi_bresp(1 downto 0) => ps7_0_axi_periph_M06_AXI_BRESP(1 downto 0),
      s_axi_bvalid => ps7_0_axi_periph_M06_AXI_BVALID,
      s_axi_rdata(31 downto 0) => ps7_0_axi_periph_M06_AXI_RDATA(31 downto 0),
      s_axi_rready => ps7_0_axi_periph_M06_AXI_RREADY,
      s_axi_rresp(1 downto 0) => ps7_0_axi_periph_M06_AXI_RRESP(1 downto 0),
      s_axi_rvalid => ps7_0_axi_periph_M06_AXI_RVALID,
      s_axi_wdata(31 downto 0) => ps7_0_axi_periph_M06_AXI_WDATA(31 downto 0),
      s_axi_wready => ps7_0_axi_periph_M06_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => ps7_0_axi_periph_M06_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => ps7_0_axi_periph_M06_AXI_WVALID
    );
rgb2dvi_0: component base_rgb2dvi_0_0
     port map (
      PixelClk => axi_dynclk_0_PXL_CLK_O,
      SerialClk => axi_dynclk_0_PXL_CLK_5X_O,
      TMDS_Clk_n => Conn1_CLK_N,
      TMDS_Clk_p => Conn1_CLK_P,
      TMDS_Data_n(2 downto 0) => Conn1_DATA_N(2 downto 0),
      TMDS_Data_p(2 downto 0) => Conn1_DATA_P(2 downto 0),
      aRst_n => axi_dynclk_0_LOCKED_O,
      vid_pData(23 downto 0) => color_swap_0_pixel_output_DATA(23 downto 0),
      vid_pHSync => color_swap_0_pixel_output_HSYNC,
      vid_pVDE => color_swap_0_pixel_output_ACTIVE_VIDEO,
      vid_pVSync => color_swap_0_pixel_output_VSYNC
    );
v_axi4s_vid_out_0: component base_v_axi4s_vid_out_0_0
     port map (
      aclk => aclk_1,
      aclken => '1',
      aresetn => '1',
      fid => '0',
      fifo_read_level(11 downto 0) => NLW_v_axi4s_vid_out_0_fifo_read_level_UNCONNECTED(11 downto 0),
      locked => NLW_v_axi4s_vid_out_0_locked_UNCONNECTED,
      overflow => NLW_v_axi4s_vid_out_0_overflow_UNCONNECTED,
      s_axis_video_tdata(23 downto 0) => video_in_1_TDATA(23 downto 0),
      s_axis_video_tlast => video_in_1_TLAST,
      s_axis_video_tready => video_in_1_TREADY,
      s_axis_video_tuser => video_in_1_TUSER,
      s_axis_video_tvalid => video_in_1_TVALID,
      status(31 downto 0) => NLW_v_axi4s_vid_out_0_status_UNCONNECTED(31 downto 0),
      underflow => NLW_v_axi4s_vid_out_0_underflow_UNCONNECTED,
      vid_active_video => v_axi4s_vid_out_0_vid_io_out_ACTIVE_VIDEO,
      vid_data(23 downto 0) => v_axi4s_vid_out_0_vid_io_out_DATA(23 downto 0),
      vid_field_id => NLW_v_axi4s_vid_out_0_vid_field_id_UNCONNECTED,
      vid_hblank => NLW_v_axi4s_vid_out_0_vid_hblank_UNCONNECTED,
      vid_hsync => v_axi4s_vid_out_0_vid_io_out_HSYNC,
      vid_io_out_ce => '1',
      vid_io_out_clk => axi_dynclk_0_PXL_CLK_O,
      vid_io_out_reset => '0',
      vid_vblank => NLW_v_axi4s_vid_out_0_vid_vblank_UNCONNECTED,
      vid_vsync => v_axi4s_vid_out_0_vid_io_out_VSYNC,
      vtg_active_video => v_tc_0_vtiming_out_ACTIVE_VIDEO,
      vtg_ce => NLW_v_axi4s_vid_out_0_vtg_ce_UNCONNECTED,
      vtg_field_id => '0',
      vtg_hblank => v_tc_0_vtiming_out_HBLANK,
      vtg_hsync => v_tc_0_vtiming_out_HSYNC,
      vtg_vblank => v_tc_0_vtiming_out_VBLANK,
      vtg_vsync => v_tc_0_vtiming_out_VSYNC
    );
vtc_out: component base_vtc_out_0
     port map (
      active_video_out => v_tc_0_vtiming_out_ACTIVE_VIDEO,
      clk => axi_dynclk_0_PXL_CLK_O,
      clken => '1',
      fsync_in => '0',
      fsync_out(0) => NLW_vtc_out_fsync_out_UNCONNECTED(0),
      gen_clken => '1',
      hblank_out => v_tc_0_vtiming_out_HBLANK,
      hsync_out => v_tc_0_vtiming_out_HSYNC,
      irq => v_tc_0_irq,
      resetn => '1',
      s_axi_aclk => Net,
      s_axi_aclken => '1',
      s_axi_araddr(8 downto 0) => Conn2_ARADDR(8 downto 0),
      s_axi_aresetn => Net1(0),
      s_axi_arready => Conn2_ARREADY,
      s_axi_arvalid => Conn2_ARVALID,
      s_axi_awaddr(8 downto 0) => Conn2_AWADDR(8 downto 0),
      s_axi_awready => Conn2_AWREADY,
      s_axi_awvalid => Conn2_AWVALID,
      s_axi_bready => Conn2_BREADY,
      s_axi_bresp(1 downto 0) => Conn2_BRESP(1 downto 0),
      s_axi_bvalid => Conn2_BVALID,
      s_axi_rdata(31 downto 0) => Conn2_RDATA(31 downto 0),
      s_axi_rready => Conn2_RREADY,
      s_axi_rresp(1 downto 0) => Conn2_RRESP(1 downto 0),
      s_axi_rvalid => Conn2_RVALID,
      s_axi_wdata(31 downto 0) => Conn2_WDATA(31 downto 0),
      s_axi_wready => Conn2_WREADY,
      s_axi_wstrb(3 downto 0) => Conn2_WSTRB(3 downto 0),
      s_axi_wvalid => Conn2_WVALID,
      vblank_out => v_tc_0_vtiming_out_VBLANK,
      vsync_out => v_tc_0_vtiming_out_VSYNC
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m00_couplers_imp_1FYRJNX is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m00_couplers_imp_1FYRJNX;

architecture STRUCTURE of m00_couplers_imp_1FYRJNX is
  component base_m00_regslice_33 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component base_m00_regslice_33;
  signal M_ACLK_1 : STD_LOGIC;
  signal M_ARESETN_1 : STD_LOGIC;
  signal m00_couplers_to_m00_regslice_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_regslice_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_m00_regslice_ARREADY : STD_LOGIC;
  signal m00_couplers_to_m00_regslice_ARVALID : STD_LOGIC;
  signal m00_couplers_to_m00_regslice_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_regslice_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_m00_regslice_AWREADY : STD_LOGIC;
  signal m00_couplers_to_m00_regslice_AWVALID : STD_LOGIC;
  signal m00_couplers_to_m00_regslice_BREADY : STD_LOGIC;
  signal m00_couplers_to_m00_regslice_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_m00_regslice_BVALID : STD_LOGIC;
  signal m00_couplers_to_m00_regslice_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_regslice_RREADY : STD_LOGIC;
  signal m00_couplers_to_m00_regslice_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_m00_regslice_RVALID : STD_LOGIC;
  signal m00_couplers_to_m00_regslice_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_regslice_WREADY : STD_LOGIC;
  signal m00_couplers_to_m00_regslice_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_m00_regslice_WVALID : STD_LOGIC;
  signal m00_regslice_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal m00_regslice_to_m00_couplers_ARREADY : STD_LOGIC;
  signal m00_regslice_to_m00_couplers_ARVALID : STD_LOGIC;
  signal m00_regslice_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal m00_regslice_to_m00_couplers_AWREADY : STD_LOGIC;
  signal m00_regslice_to_m00_couplers_AWVALID : STD_LOGIC;
  signal m00_regslice_to_m00_couplers_BREADY : STD_LOGIC;
  signal m00_regslice_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_regslice_to_m00_couplers_BVALID : STD_LOGIC;
  signal m00_regslice_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_regslice_to_m00_couplers_RREADY : STD_LOGIC;
  signal m00_regslice_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_regslice_to_m00_couplers_RVALID : STD_LOGIC;
  signal m00_regslice_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_regslice_to_m00_couplers_WREADY : STD_LOGIC;
  signal m00_regslice_to_m00_couplers_WVALID : STD_LOGIC;
  signal NLW_m00_regslice_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_m00_regslice_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_m00_regslice_m_axi_wstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  M_ACLK_1 <= M_ACLK;
  M_ARESETN_1 <= M_ARESETN;
  M_AXI_araddr(8 downto 0) <= m00_regslice_to_m00_couplers_ARADDR(8 downto 0);
  M_AXI_arvalid <= m00_regslice_to_m00_couplers_ARVALID;
  M_AXI_awaddr(8 downto 0) <= m00_regslice_to_m00_couplers_AWADDR(8 downto 0);
  M_AXI_awvalid <= m00_regslice_to_m00_couplers_AWVALID;
  M_AXI_bready <= m00_regslice_to_m00_couplers_BREADY;
  M_AXI_rready <= m00_regslice_to_m00_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m00_regslice_to_m00_couplers_WDATA(31 downto 0);
  M_AXI_wvalid <= m00_regslice_to_m00_couplers_WVALID;
  S_AXI_arready <= m00_couplers_to_m00_regslice_ARREADY;
  S_AXI_awready <= m00_couplers_to_m00_regslice_AWREADY;
  S_AXI_bresp(1 downto 0) <= m00_couplers_to_m00_regslice_BRESP(1 downto 0);
  S_AXI_bvalid <= m00_couplers_to_m00_regslice_BVALID;
  S_AXI_rdata(31 downto 0) <= m00_couplers_to_m00_regslice_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m00_couplers_to_m00_regslice_RRESP(1 downto 0);
  S_AXI_rvalid <= m00_couplers_to_m00_regslice_RVALID;
  S_AXI_wready <= m00_couplers_to_m00_regslice_WREADY;
  m00_couplers_to_m00_regslice_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m00_couplers_to_m00_regslice_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m00_couplers_to_m00_regslice_ARVALID <= S_AXI_arvalid;
  m00_couplers_to_m00_regslice_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m00_couplers_to_m00_regslice_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m00_couplers_to_m00_regslice_AWVALID <= S_AXI_awvalid;
  m00_couplers_to_m00_regslice_BREADY <= S_AXI_bready;
  m00_couplers_to_m00_regslice_RREADY <= S_AXI_rready;
  m00_couplers_to_m00_regslice_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m00_couplers_to_m00_regslice_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m00_couplers_to_m00_regslice_WVALID <= S_AXI_wvalid;
  m00_regslice_to_m00_couplers_ARREADY <= M_AXI_arready;
  m00_regslice_to_m00_couplers_AWREADY <= M_AXI_awready;
  m00_regslice_to_m00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m00_regslice_to_m00_couplers_BVALID <= M_AXI_bvalid;
  m00_regslice_to_m00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m00_regslice_to_m00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m00_regslice_to_m00_couplers_RVALID <= M_AXI_rvalid;
  m00_regslice_to_m00_couplers_WREADY <= M_AXI_wready;
m00_regslice: component base_m00_regslice_33
     port map (
      aclk => M_ACLK_1,
      aresetn => M_ARESETN_1,
      m_axi_araddr(8 downto 0) => m00_regslice_to_m00_couplers_ARADDR(8 downto 0),
      m_axi_arprot(2 downto 0) => NLW_m00_regslice_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arready => m00_regslice_to_m00_couplers_ARREADY,
      m_axi_arvalid => m00_regslice_to_m00_couplers_ARVALID,
      m_axi_awaddr(8 downto 0) => m00_regslice_to_m00_couplers_AWADDR(8 downto 0),
      m_axi_awprot(2 downto 0) => NLW_m00_regslice_m_axi_awprot_UNCONNECTED(2 downto 0),
      m_axi_awready => m00_regslice_to_m00_couplers_AWREADY,
      m_axi_awvalid => m00_regslice_to_m00_couplers_AWVALID,
      m_axi_bready => m00_regslice_to_m00_couplers_BREADY,
      m_axi_bresp(1 downto 0) => m00_regslice_to_m00_couplers_BRESP(1 downto 0),
      m_axi_bvalid => m00_regslice_to_m00_couplers_BVALID,
      m_axi_rdata(31 downto 0) => m00_regslice_to_m00_couplers_RDATA(31 downto 0),
      m_axi_rready => m00_regslice_to_m00_couplers_RREADY,
      m_axi_rresp(1 downto 0) => m00_regslice_to_m00_couplers_RRESP(1 downto 0),
      m_axi_rvalid => m00_regslice_to_m00_couplers_RVALID,
      m_axi_wdata(31 downto 0) => m00_regslice_to_m00_couplers_WDATA(31 downto 0),
      m_axi_wready => m00_regslice_to_m00_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => NLW_m00_regslice_m_axi_wstrb_UNCONNECTED(3 downto 0),
      m_axi_wvalid => m00_regslice_to_m00_couplers_WVALID,
      s_axi_araddr(8 downto 0) => m00_couplers_to_m00_regslice_ARADDR(8 downto 0),
      s_axi_arprot(2 downto 0) => m00_couplers_to_m00_regslice_ARPROT(2 downto 0),
      s_axi_arready => m00_couplers_to_m00_regslice_ARREADY,
      s_axi_arvalid => m00_couplers_to_m00_regslice_ARVALID,
      s_axi_awaddr(8 downto 0) => m00_couplers_to_m00_regslice_AWADDR(8 downto 0),
      s_axi_awprot(2 downto 0) => m00_couplers_to_m00_regslice_AWPROT(2 downto 0),
      s_axi_awready => m00_couplers_to_m00_regslice_AWREADY,
      s_axi_awvalid => m00_couplers_to_m00_regslice_AWVALID,
      s_axi_bready => m00_couplers_to_m00_regslice_BREADY,
      s_axi_bresp(1 downto 0) => m00_couplers_to_m00_regslice_BRESP(1 downto 0),
      s_axi_bvalid => m00_couplers_to_m00_regslice_BVALID,
      s_axi_rdata(31 downto 0) => m00_couplers_to_m00_regslice_RDATA(31 downto 0),
      s_axi_rready => m00_couplers_to_m00_regslice_RREADY,
      s_axi_rresp(1 downto 0) => m00_couplers_to_m00_regslice_RRESP(1 downto 0),
      s_axi_rvalid => m00_couplers_to_m00_regslice_RVALID,
      s_axi_wdata(31 downto 0) => m00_couplers_to_m00_regslice_WDATA(31 downto 0),
      s_axi_wready => m00_couplers_to_m00_regslice_WREADY,
      s_axi_wstrb(3 downto 0) => m00_couplers_to_m00_regslice_WSTRB(3 downto 0),
      s_axi_wvalid => m00_couplers_to_m00_regslice_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m00_couplers_imp_1UNZW92 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    M_AXI_rid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M_AXI_wid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m00_couplers_imp_1UNZW92;

architecture STRUCTURE of m00_couplers_imp_1UNZW92 is
  component base_auto_pc_5 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component base_auto_pc_5;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_pc_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m00_couplers_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_pc_to_m00_couplers_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m00_couplers_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_m00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m00_couplers_ARREADY : STD_LOGIC;
  signal auto_pc_to_m00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_m00_couplers_ARVALID : STD_LOGIC;
  signal auto_pc_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m00_couplers_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_pc_to_m00_couplers_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m00_couplers_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_m00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m00_couplers_AWREADY : STD_LOGIC;
  signal auto_pc_to_m00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_m00_couplers_AWVALID : STD_LOGIC;
  signal auto_pc_to_m00_couplers_BID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal auto_pc_to_m00_couplers_BREADY : STD_LOGIC;
  signal auto_pc_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m00_couplers_BVALID : STD_LOGIC;
  signal auto_pc_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal auto_pc_to_m00_couplers_RID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal auto_pc_to_m00_couplers_RLAST : STD_LOGIC;
  signal auto_pc_to_m00_couplers_RREADY : STD_LOGIC;
  signal auto_pc_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m00_couplers_RVALID : STD_LOGIC;
  signal auto_pc_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal auto_pc_to_m00_couplers_WID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_pc_to_m00_couplers_WLAST : STD_LOGIC;
  signal auto_pc_to_m00_couplers_WREADY : STD_LOGIC;
  signal auto_pc_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_pc_to_m00_couplers_WVALID : STD_LOGIC;
  signal m00_couplers_to_auto_pc_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_auto_pc_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_auto_pc_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_auto_pc_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m00_couplers_to_auto_pc_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_auto_pc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_auto_pc_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_ARREADY : STD_LOGIC;
  signal m00_couplers_to_auto_pc_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_auto_pc_ARVALID : STD_LOGIC;
  signal m00_couplers_to_auto_pc_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_auto_pc_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_auto_pc_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_auto_pc_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m00_couplers_to_auto_pc_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_auto_pc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_auto_pc_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_AWREADY : STD_LOGIC;
  signal m00_couplers_to_auto_pc_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_auto_pc_AWVALID : STD_LOGIC;
  signal m00_couplers_to_auto_pc_BID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_auto_pc_BREADY : STD_LOGIC;
  signal m00_couplers_to_auto_pc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_auto_pc_BVALID : STD_LOGIC;
  signal m00_couplers_to_auto_pc_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal m00_couplers_to_auto_pc_RID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_auto_pc_RLAST : STD_LOGIC;
  signal m00_couplers_to_auto_pc_RREADY : STD_LOGIC;
  signal m00_couplers_to_auto_pc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_auto_pc_RVALID : STD_LOGIC;
  signal m00_couplers_to_auto_pc_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal m00_couplers_to_auto_pc_WLAST : STD_LOGIC;
  signal m00_couplers_to_auto_pc_WREADY : STD_LOGIC;
  signal m00_couplers_to_auto_pc_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m00_couplers_to_auto_pc_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= auto_pc_to_m00_couplers_ARADDR(31 downto 0);
  M_AXI_arburst(1 downto 0) <= auto_pc_to_m00_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= auto_pc_to_m00_couplers_ARCACHE(3 downto 0);
  M_AXI_arid(0) <= auto_pc_to_m00_couplers_ARID(0);
  M_AXI_arlen(3 downto 0) <= auto_pc_to_m00_couplers_ARLEN(3 downto 0);
  M_AXI_arlock(1 downto 0) <= auto_pc_to_m00_couplers_ARLOCK(1 downto 0);
  M_AXI_arprot(2 downto 0) <= auto_pc_to_m00_couplers_ARPROT(2 downto 0);
  M_AXI_arqos(3 downto 0) <= auto_pc_to_m00_couplers_ARQOS(3 downto 0);
  M_AXI_arsize(2 downto 0) <= auto_pc_to_m00_couplers_ARSIZE(2 downto 0);
  M_AXI_arvalid <= auto_pc_to_m00_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= auto_pc_to_m00_couplers_AWADDR(31 downto 0);
  M_AXI_awburst(1 downto 0) <= auto_pc_to_m00_couplers_AWBURST(1 downto 0);
  M_AXI_awcache(3 downto 0) <= auto_pc_to_m00_couplers_AWCACHE(3 downto 0);
  M_AXI_awid(0) <= auto_pc_to_m00_couplers_AWID(0);
  M_AXI_awlen(3 downto 0) <= auto_pc_to_m00_couplers_AWLEN(3 downto 0);
  M_AXI_awlock(1 downto 0) <= auto_pc_to_m00_couplers_AWLOCK(1 downto 0);
  M_AXI_awprot(2 downto 0) <= auto_pc_to_m00_couplers_AWPROT(2 downto 0);
  M_AXI_awqos(3 downto 0) <= auto_pc_to_m00_couplers_AWQOS(3 downto 0);
  M_AXI_awsize(2 downto 0) <= auto_pc_to_m00_couplers_AWSIZE(2 downto 0);
  M_AXI_awvalid <= auto_pc_to_m00_couplers_AWVALID;
  M_AXI_bready <= auto_pc_to_m00_couplers_BREADY;
  M_AXI_rready <= auto_pc_to_m00_couplers_RREADY;
  M_AXI_wdata(63 downto 0) <= auto_pc_to_m00_couplers_WDATA(63 downto 0);
  M_AXI_wid(0) <= auto_pc_to_m00_couplers_WID(0);
  M_AXI_wlast <= auto_pc_to_m00_couplers_WLAST;
  M_AXI_wstrb(7 downto 0) <= auto_pc_to_m00_couplers_WSTRB(7 downto 0);
  M_AXI_wvalid <= auto_pc_to_m00_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= m00_couplers_to_auto_pc_ARREADY;
  S_AXI_awready <= m00_couplers_to_auto_pc_AWREADY;
  S_AXI_bid(0) <= m00_couplers_to_auto_pc_BID(0);
  S_AXI_bresp(1 downto 0) <= m00_couplers_to_auto_pc_BRESP(1 downto 0);
  S_AXI_bvalid <= m00_couplers_to_auto_pc_BVALID;
  S_AXI_rdata(63 downto 0) <= m00_couplers_to_auto_pc_RDATA(63 downto 0);
  S_AXI_rid(0) <= m00_couplers_to_auto_pc_RID(0);
  S_AXI_rlast <= m00_couplers_to_auto_pc_RLAST;
  S_AXI_rresp(1 downto 0) <= m00_couplers_to_auto_pc_RRESP(1 downto 0);
  S_AXI_rvalid <= m00_couplers_to_auto_pc_RVALID;
  S_AXI_wready <= m00_couplers_to_auto_pc_WREADY;
  auto_pc_to_m00_couplers_ARREADY <= M_AXI_arready;
  auto_pc_to_m00_couplers_AWREADY <= M_AXI_awready;
  auto_pc_to_m00_couplers_BID(5 downto 0) <= M_AXI_bid(5 downto 0);
  auto_pc_to_m00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_pc_to_m00_couplers_BVALID <= M_AXI_bvalid;
  auto_pc_to_m00_couplers_RDATA(63 downto 0) <= M_AXI_rdata(63 downto 0);
  auto_pc_to_m00_couplers_RID(5 downto 0) <= M_AXI_rid(5 downto 0);
  auto_pc_to_m00_couplers_RLAST <= M_AXI_rlast;
  auto_pc_to_m00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_pc_to_m00_couplers_RVALID <= M_AXI_rvalid;
  auto_pc_to_m00_couplers_WREADY <= M_AXI_wready;
  m00_couplers_to_auto_pc_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m00_couplers_to_auto_pc_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  m00_couplers_to_auto_pc_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  m00_couplers_to_auto_pc_ARID(0) <= S_AXI_arid(0);
  m00_couplers_to_auto_pc_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  m00_couplers_to_auto_pc_ARLOCK(0) <= S_AXI_arlock(0);
  m00_couplers_to_auto_pc_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m00_couplers_to_auto_pc_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  m00_couplers_to_auto_pc_ARREGION(3 downto 0) <= S_AXI_arregion(3 downto 0);
  m00_couplers_to_auto_pc_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  m00_couplers_to_auto_pc_ARVALID <= S_AXI_arvalid;
  m00_couplers_to_auto_pc_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m00_couplers_to_auto_pc_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  m00_couplers_to_auto_pc_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  m00_couplers_to_auto_pc_AWID(0) <= S_AXI_awid(0);
  m00_couplers_to_auto_pc_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  m00_couplers_to_auto_pc_AWLOCK(0) <= S_AXI_awlock(0);
  m00_couplers_to_auto_pc_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m00_couplers_to_auto_pc_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  m00_couplers_to_auto_pc_AWREGION(3 downto 0) <= S_AXI_awregion(3 downto 0);
  m00_couplers_to_auto_pc_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  m00_couplers_to_auto_pc_AWVALID <= S_AXI_awvalid;
  m00_couplers_to_auto_pc_BREADY <= S_AXI_bready;
  m00_couplers_to_auto_pc_RREADY <= S_AXI_rready;
  m00_couplers_to_auto_pc_WDATA(63 downto 0) <= S_AXI_wdata(63 downto 0);
  m00_couplers_to_auto_pc_WLAST <= S_AXI_wlast;
  m00_couplers_to_auto_pc_WSTRB(7 downto 0) <= S_AXI_wstrb(7 downto 0);
  m00_couplers_to_auto_pc_WVALID <= S_AXI_wvalid;
auto_pc: component base_auto_pc_5
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1,
      m_axi_araddr(31 downto 0) => auto_pc_to_m00_couplers_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => auto_pc_to_m00_couplers_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => auto_pc_to_m00_couplers_ARCACHE(3 downto 0),
      m_axi_arid(0) => auto_pc_to_m00_couplers_ARID(0),
      m_axi_arlen(3 downto 0) => auto_pc_to_m00_couplers_ARLEN(3 downto 0),
      m_axi_arlock(1 downto 0) => auto_pc_to_m00_couplers_ARLOCK(1 downto 0),
      m_axi_arprot(2 downto 0) => auto_pc_to_m00_couplers_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => auto_pc_to_m00_couplers_ARQOS(3 downto 0),
      m_axi_arready => auto_pc_to_m00_couplers_ARREADY,
      m_axi_arsize(2 downto 0) => auto_pc_to_m00_couplers_ARSIZE(2 downto 0),
      m_axi_arvalid => auto_pc_to_m00_couplers_ARVALID,
      m_axi_awaddr(31 downto 0) => auto_pc_to_m00_couplers_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => auto_pc_to_m00_couplers_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => auto_pc_to_m00_couplers_AWCACHE(3 downto 0),
      m_axi_awid(0) => auto_pc_to_m00_couplers_AWID(0),
      m_axi_awlen(3 downto 0) => auto_pc_to_m00_couplers_AWLEN(3 downto 0),
      m_axi_awlock(1 downto 0) => auto_pc_to_m00_couplers_AWLOCK(1 downto 0),
      m_axi_awprot(2 downto 0) => auto_pc_to_m00_couplers_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => auto_pc_to_m00_couplers_AWQOS(3 downto 0),
      m_axi_awready => auto_pc_to_m00_couplers_AWREADY,
      m_axi_awsize(2 downto 0) => auto_pc_to_m00_couplers_AWSIZE(2 downto 0),
      m_axi_awvalid => auto_pc_to_m00_couplers_AWVALID,
      m_axi_bid(0) => auto_pc_to_m00_couplers_BID(0),
      m_axi_bready => auto_pc_to_m00_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_pc_to_m00_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_pc_to_m00_couplers_BVALID,
      m_axi_rdata(63 downto 0) => auto_pc_to_m00_couplers_RDATA(63 downto 0),
      m_axi_rid(0) => auto_pc_to_m00_couplers_RID(0),
      m_axi_rlast => auto_pc_to_m00_couplers_RLAST,
      m_axi_rready => auto_pc_to_m00_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_pc_to_m00_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_pc_to_m00_couplers_RVALID,
      m_axi_wdata(63 downto 0) => auto_pc_to_m00_couplers_WDATA(63 downto 0),
      m_axi_wid(0) => auto_pc_to_m00_couplers_WID(0),
      m_axi_wlast => auto_pc_to_m00_couplers_WLAST,
      m_axi_wready => auto_pc_to_m00_couplers_WREADY,
      m_axi_wstrb(7 downto 0) => auto_pc_to_m00_couplers_WSTRB(7 downto 0),
      m_axi_wvalid => auto_pc_to_m00_couplers_WVALID,
      s_axi_araddr(31 downto 0) => m00_couplers_to_auto_pc_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => m00_couplers_to_auto_pc_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => m00_couplers_to_auto_pc_ARCACHE(3 downto 0),
      s_axi_arid(0) => m00_couplers_to_auto_pc_ARID(0),
      s_axi_arlen(7 downto 0) => m00_couplers_to_auto_pc_ARLEN(7 downto 0),
      s_axi_arlock(0) => m00_couplers_to_auto_pc_ARLOCK(0),
      s_axi_arprot(2 downto 0) => m00_couplers_to_auto_pc_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => m00_couplers_to_auto_pc_ARQOS(3 downto 0),
      s_axi_arready => m00_couplers_to_auto_pc_ARREADY,
      s_axi_arregion(3 downto 0) => m00_couplers_to_auto_pc_ARREGION(3 downto 0),
      s_axi_arsize(2 downto 0) => m00_couplers_to_auto_pc_ARSIZE(2 downto 0),
      s_axi_arvalid => m00_couplers_to_auto_pc_ARVALID,
      s_axi_awaddr(31 downto 0) => m00_couplers_to_auto_pc_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => m00_couplers_to_auto_pc_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => m00_couplers_to_auto_pc_AWCACHE(3 downto 0),
      s_axi_awid(0) => m00_couplers_to_auto_pc_AWID(0),
      s_axi_awlen(7 downto 0) => m00_couplers_to_auto_pc_AWLEN(7 downto 0),
      s_axi_awlock(0) => m00_couplers_to_auto_pc_AWLOCK(0),
      s_axi_awprot(2 downto 0) => m00_couplers_to_auto_pc_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => m00_couplers_to_auto_pc_AWQOS(3 downto 0),
      s_axi_awready => m00_couplers_to_auto_pc_AWREADY,
      s_axi_awregion(3 downto 0) => m00_couplers_to_auto_pc_AWREGION(3 downto 0),
      s_axi_awsize(2 downto 0) => m00_couplers_to_auto_pc_AWSIZE(2 downto 0),
      s_axi_awvalid => m00_couplers_to_auto_pc_AWVALID,
      s_axi_bid(0) => m00_couplers_to_auto_pc_BID(0),
      s_axi_bready => m00_couplers_to_auto_pc_BREADY,
      s_axi_bresp(1 downto 0) => m00_couplers_to_auto_pc_BRESP(1 downto 0),
      s_axi_bvalid => m00_couplers_to_auto_pc_BVALID,
      s_axi_rdata(63 downto 0) => m00_couplers_to_auto_pc_RDATA(63 downto 0),
      s_axi_rid(0) => m00_couplers_to_auto_pc_RID(0),
      s_axi_rlast => m00_couplers_to_auto_pc_RLAST,
      s_axi_rready => m00_couplers_to_auto_pc_RREADY,
      s_axi_rresp(1 downto 0) => m00_couplers_to_auto_pc_RRESP(1 downto 0),
      s_axi_rvalid => m00_couplers_to_auto_pc_RVALID,
      s_axi_wdata(63 downto 0) => m00_couplers_to_auto_pc_WDATA(63 downto 0),
      s_axi_wlast => m00_couplers_to_auto_pc_WLAST,
      s_axi_wready => m00_couplers_to_auto_pc_WREADY,
      s_axi_wstrb(7 downto 0) => m00_couplers_to_auto_pc_WSTRB(7 downto 0),
      s_axi_wvalid => m00_couplers_to_auto_pc_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m00_couplers_imp_7VXYTM is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 9 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 9 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m00_couplers_imp_7VXYTM;

architecture STRUCTURE of m00_couplers_imp_7VXYTM is
  component base_m00_regslice_32 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 9 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 9 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component base_m00_regslice_32;
  component base_auto_pc_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component base_auto_pc_0;
  signal M_ACLK_1 : STD_LOGIC;
  signal M_ARESETN_1 : STD_LOGIC;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_pc_to_m00_regslice_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m00_regslice_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_m00_regslice_ARREADY : STD_LOGIC;
  signal auto_pc_to_m00_regslice_ARVALID : STD_LOGIC;
  signal auto_pc_to_m00_regslice_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m00_regslice_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_m00_regslice_AWREADY : STD_LOGIC;
  signal auto_pc_to_m00_regslice_AWVALID : STD_LOGIC;
  signal auto_pc_to_m00_regslice_BREADY : STD_LOGIC;
  signal auto_pc_to_m00_regslice_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m00_regslice_BVALID : STD_LOGIC;
  signal auto_pc_to_m00_regslice_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m00_regslice_RREADY : STD_LOGIC;
  signal auto_pc_to_m00_regslice_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m00_regslice_RVALID : STD_LOGIC;
  signal auto_pc_to_m00_regslice_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m00_regslice_WREADY : STD_LOGIC;
  signal auto_pc_to_m00_regslice_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m00_regslice_WVALID : STD_LOGIC;
  signal m00_couplers_to_auto_pc_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_auto_pc_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_auto_pc_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal m00_couplers_to_auto_pc_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m00_couplers_to_auto_pc_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_auto_pc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_auto_pc_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_ARREADY : STD_LOGIC;
  signal m00_couplers_to_auto_pc_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_auto_pc_ARVALID : STD_LOGIC;
  signal m00_couplers_to_auto_pc_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_auto_pc_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_auto_pc_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal m00_couplers_to_auto_pc_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m00_couplers_to_auto_pc_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_auto_pc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_auto_pc_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_AWREADY : STD_LOGIC;
  signal m00_couplers_to_auto_pc_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_auto_pc_AWVALID : STD_LOGIC;
  signal m00_couplers_to_auto_pc_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal m00_couplers_to_auto_pc_BREADY : STD_LOGIC;
  signal m00_couplers_to_auto_pc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_auto_pc_BVALID : STD_LOGIC;
  signal m00_couplers_to_auto_pc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_auto_pc_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal m00_couplers_to_auto_pc_RLAST : STD_LOGIC;
  signal m00_couplers_to_auto_pc_RREADY : STD_LOGIC;
  signal m00_couplers_to_auto_pc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_auto_pc_RVALID : STD_LOGIC;
  signal m00_couplers_to_auto_pc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_auto_pc_WLAST : STD_LOGIC;
  signal m00_couplers_to_auto_pc_WREADY : STD_LOGIC;
  signal m00_couplers_to_auto_pc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_WVALID : STD_LOGIC;
  signal m00_regslice_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal m00_regslice_to_m00_couplers_ARREADY : STD_LOGIC;
  signal m00_regslice_to_m00_couplers_ARVALID : STD_LOGIC;
  signal m00_regslice_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal m00_regslice_to_m00_couplers_AWREADY : STD_LOGIC;
  signal m00_regslice_to_m00_couplers_AWVALID : STD_LOGIC;
  signal m00_regslice_to_m00_couplers_BREADY : STD_LOGIC;
  signal m00_regslice_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_regslice_to_m00_couplers_BVALID : STD_LOGIC;
  signal m00_regslice_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_regslice_to_m00_couplers_RREADY : STD_LOGIC;
  signal m00_regslice_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_regslice_to_m00_couplers_RVALID : STD_LOGIC;
  signal m00_regslice_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_regslice_to_m00_couplers_WREADY : STD_LOGIC;
  signal m00_regslice_to_m00_couplers_WVALID : STD_LOGIC;
  signal NLW_m00_regslice_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_m00_regslice_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_m00_regslice_m_axi_wstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  M_ACLK_1 <= M_ACLK;
  M_ARESETN_1 <= M_ARESETN;
  M_AXI_araddr(9 downto 0) <= m00_regslice_to_m00_couplers_ARADDR(9 downto 0);
  M_AXI_arvalid <= m00_regslice_to_m00_couplers_ARVALID;
  M_AXI_awaddr(9 downto 0) <= m00_regslice_to_m00_couplers_AWADDR(9 downto 0);
  M_AXI_awvalid <= m00_regslice_to_m00_couplers_AWVALID;
  M_AXI_bready <= m00_regslice_to_m00_couplers_BREADY;
  M_AXI_rready <= m00_regslice_to_m00_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m00_regslice_to_m00_couplers_WDATA(31 downto 0);
  M_AXI_wvalid <= m00_regslice_to_m00_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= m00_couplers_to_auto_pc_ARREADY;
  S_AXI_awready <= m00_couplers_to_auto_pc_AWREADY;
  S_AXI_bid(11 downto 0) <= m00_couplers_to_auto_pc_BID(11 downto 0);
  S_AXI_bresp(1 downto 0) <= m00_couplers_to_auto_pc_BRESP(1 downto 0);
  S_AXI_bvalid <= m00_couplers_to_auto_pc_BVALID;
  S_AXI_rdata(31 downto 0) <= m00_couplers_to_auto_pc_RDATA(31 downto 0);
  S_AXI_rid(11 downto 0) <= m00_couplers_to_auto_pc_RID(11 downto 0);
  S_AXI_rlast <= m00_couplers_to_auto_pc_RLAST;
  S_AXI_rresp(1 downto 0) <= m00_couplers_to_auto_pc_RRESP(1 downto 0);
  S_AXI_rvalid <= m00_couplers_to_auto_pc_RVALID;
  S_AXI_wready <= m00_couplers_to_auto_pc_WREADY;
  m00_couplers_to_auto_pc_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m00_couplers_to_auto_pc_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  m00_couplers_to_auto_pc_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  m00_couplers_to_auto_pc_ARID(11 downto 0) <= S_AXI_arid(11 downto 0);
  m00_couplers_to_auto_pc_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  m00_couplers_to_auto_pc_ARLOCK(0) <= S_AXI_arlock(0);
  m00_couplers_to_auto_pc_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m00_couplers_to_auto_pc_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  m00_couplers_to_auto_pc_ARREGION(3 downto 0) <= S_AXI_arregion(3 downto 0);
  m00_couplers_to_auto_pc_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  m00_couplers_to_auto_pc_ARVALID <= S_AXI_arvalid;
  m00_couplers_to_auto_pc_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m00_couplers_to_auto_pc_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  m00_couplers_to_auto_pc_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  m00_couplers_to_auto_pc_AWID(11 downto 0) <= S_AXI_awid(11 downto 0);
  m00_couplers_to_auto_pc_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  m00_couplers_to_auto_pc_AWLOCK(0) <= S_AXI_awlock(0);
  m00_couplers_to_auto_pc_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m00_couplers_to_auto_pc_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  m00_couplers_to_auto_pc_AWREGION(3 downto 0) <= S_AXI_awregion(3 downto 0);
  m00_couplers_to_auto_pc_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  m00_couplers_to_auto_pc_AWVALID <= S_AXI_awvalid;
  m00_couplers_to_auto_pc_BREADY <= S_AXI_bready;
  m00_couplers_to_auto_pc_RREADY <= S_AXI_rready;
  m00_couplers_to_auto_pc_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m00_couplers_to_auto_pc_WLAST <= S_AXI_wlast;
  m00_couplers_to_auto_pc_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m00_couplers_to_auto_pc_WVALID <= S_AXI_wvalid;
  m00_regslice_to_m00_couplers_ARREADY <= M_AXI_arready;
  m00_regslice_to_m00_couplers_AWREADY <= M_AXI_awready;
  m00_regslice_to_m00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m00_regslice_to_m00_couplers_BVALID <= M_AXI_bvalid;
  m00_regslice_to_m00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m00_regslice_to_m00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m00_regslice_to_m00_couplers_RVALID <= M_AXI_rvalid;
  m00_regslice_to_m00_couplers_WREADY <= M_AXI_wready;
auto_pc: component base_auto_pc_0
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1,
      m_axi_araddr(31 downto 0) => auto_pc_to_m00_regslice_ARADDR(31 downto 0),
      m_axi_arprot(2 downto 0) => auto_pc_to_m00_regslice_ARPROT(2 downto 0),
      m_axi_arready => auto_pc_to_m00_regslice_ARREADY,
      m_axi_arvalid => auto_pc_to_m00_regslice_ARVALID,
      m_axi_awaddr(31 downto 0) => auto_pc_to_m00_regslice_AWADDR(31 downto 0),
      m_axi_awprot(2 downto 0) => auto_pc_to_m00_regslice_AWPROT(2 downto 0),
      m_axi_awready => auto_pc_to_m00_regslice_AWREADY,
      m_axi_awvalid => auto_pc_to_m00_regslice_AWVALID,
      m_axi_bready => auto_pc_to_m00_regslice_BREADY,
      m_axi_bresp(1 downto 0) => auto_pc_to_m00_regslice_BRESP(1 downto 0),
      m_axi_bvalid => auto_pc_to_m00_regslice_BVALID,
      m_axi_rdata(31 downto 0) => auto_pc_to_m00_regslice_RDATA(31 downto 0),
      m_axi_rready => auto_pc_to_m00_regslice_RREADY,
      m_axi_rresp(1 downto 0) => auto_pc_to_m00_regslice_RRESP(1 downto 0),
      m_axi_rvalid => auto_pc_to_m00_regslice_RVALID,
      m_axi_wdata(31 downto 0) => auto_pc_to_m00_regslice_WDATA(31 downto 0),
      m_axi_wready => auto_pc_to_m00_regslice_WREADY,
      m_axi_wstrb(3 downto 0) => auto_pc_to_m00_regslice_WSTRB(3 downto 0),
      m_axi_wvalid => auto_pc_to_m00_regslice_WVALID,
      s_axi_araddr(31 downto 0) => m00_couplers_to_auto_pc_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => m00_couplers_to_auto_pc_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => m00_couplers_to_auto_pc_ARCACHE(3 downto 0),
      s_axi_arid(11 downto 0) => m00_couplers_to_auto_pc_ARID(11 downto 0),
      s_axi_arlen(7 downto 0) => m00_couplers_to_auto_pc_ARLEN(7 downto 0),
      s_axi_arlock(0) => m00_couplers_to_auto_pc_ARLOCK(0),
      s_axi_arprot(2 downto 0) => m00_couplers_to_auto_pc_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => m00_couplers_to_auto_pc_ARQOS(3 downto 0),
      s_axi_arready => m00_couplers_to_auto_pc_ARREADY,
      s_axi_arregion(3 downto 0) => m00_couplers_to_auto_pc_ARREGION(3 downto 0),
      s_axi_arsize(2 downto 0) => m00_couplers_to_auto_pc_ARSIZE(2 downto 0),
      s_axi_arvalid => m00_couplers_to_auto_pc_ARVALID,
      s_axi_awaddr(31 downto 0) => m00_couplers_to_auto_pc_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => m00_couplers_to_auto_pc_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => m00_couplers_to_auto_pc_AWCACHE(3 downto 0),
      s_axi_awid(11 downto 0) => m00_couplers_to_auto_pc_AWID(11 downto 0),
      s_axi_awlen(7 downto 0) => m00_couplers_to_auto_pc_AWLEN(7 downto 0),
      s_axi_awlock(0) => m00_couplers_to_auto_pc_AWLOCK(0),
      s_axi_awprot(2 downto 0) => m00_couplers_to_auto_pc_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => m00_couplers_to_auto_pc_AWQOS(3 downto 0),
      s_axi_awready => m00_couplers_to_auto_pc_AWREADY,
      s_axi_awregion(3 downto 0) => m00_couplers_to_auto_pc_AWREGION(3 downto 0),
      s_axi_awsize(2 downto 0) => m00_couplers_to_auto_pc_AWSIZE(2 downto 0),
      s_axi_awvalid => m00_couplers_to_auto_pc_AWVALID,
      s_axi_bid(11 downto 0) => m00_couplers_to_auto_pc_BID(11 downto 0),
      s_axi_bready => m00_couplers_to_auto_pc_BREADY,
      s_axi_bresp(1 downto 0) => m00_couplers_to_auto_pc_BRESP(1 downto 0),
      s_axi_bvalid => m00_couplers_to_auto_pc_BVALID,
      s_axi_rdata(31 downto 0) => m00_couplers_to_auto_pc_RDATA(31 downto 0),
      s_axi_rid(11 downto 0) => m00_couplers_to_auto_pc_RID(11 downto 0),
      s_axi_rlast => m00_couplers_to_auto_pc_RLAST,
      s_axi_rready => m00_couplers_to_auto_pc_RREADY,
      s_axi_rresp(1 downto 0) => m00_couplers_to_auto_pc_RRESP(1 downto 0),
      s_axi_rvalid => m00_couplers_to_auto_pc_RVALID,
      s_axi_wdata(31 downto 0) => m00_couplers_to_auto_pc_WDATA(31 downto 0),
      s_axi_wlast => m00_couplers_to_auto_pc_WLAST,
      s_axi_wready => m00_couplers_to_auto_pc_WREADY,
      s_axi_wstrb(3 downto 0) => m00_couplers_to_auto_pc_WSTRB(3 downto 0),
      s_axi_wvalid => m00_couplers_to_auto_pc_WVALID
    );
m00_regslice: component base_m00_regslice_32
     port map (
      aclk => M_ACLK_1,
      aresetn => M_ARESETN_1,
      m_axi_araddr(9 downto 0) => m00_regslice_to_m00_couplers_ARADDR(9 downto 0),
      m_axi_arprot(2 downto 0) => NLW_m00_regslice_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arready => m00_regslice_to_m00_couplers_ARREADY,
      m_axi_arvalid => m00_regslice_to_m00_couplers_ARVALID,
      m_axi_awaddr(9 downto 0) => m00_regslice_to_m00_couplers_AWADDR(9 downto 0),
      m_axi_awprot(2 downto 0) => NLW_m00_regslice_m_axi_awprot_UNCONNECTED(2 downto 0),
      m_axi_awready => m00_regslice_to_m00_couplers_AWREADY,
      m_axi_awvalid => m00_regslice_to_m00_couplers_AWVALID,
      m_axi_bready => m00_regslice_to_m00_couplers_BREADY,
      m_axi_bresp(1 downto 0) => m00_regslice_to_m00_couplers_BRESP(1 downto 0),
      m_axi_bvalid => m00_regslice_to_m00_couplers_BVALID,
      m_axi_rdata(31 downto 0) => m00_regslice_to_m00_couplers_RDATA(31 downto 0),
      m_axi_rready => m00_regslice_to_m00_couplers_RREADY,
      m_axi_rresp(1 downto 0) => m00_regslice_to_m00_couplers_RRESP(1 downto 0),
      m_axi_rvalid => m00_regslice_to_m00_couplers_RVALID,
      m_axi_wdata(31 downto 0) => m00_regslice_to_m00_couplers_WDATA(31 downto 0),
      m_axi_wready => m00_regslice_to_m00_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => NLW_m00_regslice_m_axi_wstrb_UNCONNECTED(3 downto 0),
      m_axi_wvalid => m00_regslice_to_m00_couplers_WVALID,
      s_axi_araddr(9 downto 0) => auto_pc_to_m00_regslice_ARADDR(9 downto 0),
      s_axi_arprot(2 downto 0) => auto_pc_to_m00_regslice_ARPROT(2 downto 0),
      s_axi_arready => auto_pc_to_m00_regslice_ARREADY,
      s_axi_arvalid => auto_pc_to_m00_regslice_ARVALID,
      s_axi_awaddr(9 downto 0) => auto_pc_to_m00_regslice_AWADDR(9 downto 0),
      s_axi_awprot(2 downto 0) => auto_pc_to_m00_regslice_AWPROT(2 downto 0),
      s_axi_awready => auto_pc_to_m00_regslice_AWREADY,
      s_axi_awvalid => auto_pc_to_m00_regslice_AWVALID,
      s_axi_bready => auto_pc_to_m00_regslice_BREADY,
      s_axi_bresp(1 downto 0) => auto_pc_to_m00_regslice_BRESP(1 downto 0),
      s_axi_bvalid => auto_pc_to_m00_regslice_BVALID,
      s_axi_rdata(31 downto 0) => auto_pc_to_m00_regslice_RDATA(31 downto 0),
      s_axi_rready => auto_pc_to_m00_regslice_RREADY,
      s_axi_rresp(1 downto 0) => auto_pc_to_m00_regslice_RRESP(1 downto 0),
      s_axi_rvalid => auto_pc_to_m00_regslice_RVALID,
      s_axi_wdata(31 downto 0) => auto_pc_to_m00_regslice_WDATA(31 downto 0),
      s_axi_wready => auto_pc_to_m00_regslice_WREADY,
      s_axi_wstrb(3 downto 0) => auto_pc_to_m00_regslice_WSTRB(3 downto 0),
      s_axi_wvalid => auto_pc_to_m00_regslice_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m01_couplers_imp_AMBB5N is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 4 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 4 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m01_couplers_imp_AMBB5N;

architecture STRUCTURE of m01_couplers_imp_AMBB5N is
  component base_m01_regslice_33 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 4 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 4 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component base_m01_regslice_33;
  component base_auto_cc_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    m_axi_aresetn : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 4 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 4 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component base_auto_cc_0;
  signal M_ACLK_1 : STD_LOGIC;
  signal M_ARESETN_1 : STD_LOGIC;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_cc_to_m01_regslice_ARADDR : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal auto_cc_to_m01_regslice_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_cc_to_m01_regslice_ARREADY : STD_LOGIC;
  signal auto_cc_to_m01_regslice_ARVALID : STD_LOGIC;
  signal auto_cc_to_m01_regslice_AWADDR : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal auto_cc_to_m01_regslice_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_cc_to_m01_regslice_AWREADY : STD_LOGIC;
  signal auto_cc_to_m01_regslice_AWVALID : STD_LOGIC;
  signal auto_cc_to_m01_regslice_BREADY : STD_LOGIC;
  signal auto_cc_to_m01_regslice_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_cc_to_m01_regslice_BVALID : STD_LOGIC;
  signal auto_cc_to_m01_regslice_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_cc_to_m01_regslice_RREADY : STD_LOGIC;
  signal auto_cc_to_m01_regslice_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_cc_to_m01_regslice_RVALID : STD_LOGIC;
  signal auto_cc_to_m01_regslice_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_cc_to_m01_regslice_WREADY : STD_LOGIC;
  signal auto_cc_to_m01_regslice_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_cc_to_m01_regslice_WVALID : STD_LOGIC;
  signal m01_couplers_to_auto_cc_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_auto_cc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_auto_cc_ARREADY : STD_LOGIC;
  signal m01_couplers_to_auto_cc_ARVALID : STD_LOGIC;
  signal m01_couplers_to_auto_cc_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_auto_cc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_auto_cc_AWREADY : STD_LOGIC;
  signal m01_couplers_to_auto_cc_AWVALID : STD_LOGIC;
  signal m01_couplers_to_auto_cc_BREADY : STD_LOGIC;
  signal m01_couplers_to_auto_cc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_auto_cc_BVALID : STD_LOGIC;
  signal m01_couplers_to_auto_cc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_auto_cc_RREADY : STD_LOGIC;
  signal m01_couplers_to_auto_cc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_auto_cc_RVALID : STD_LOGIC;
  signal m01_couplers_to_auto_cc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_auto_cc_WREADY : STD_LOGIC;
  signal m01_couplers_to_auto_cc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_auto_cc_WVALID : STD_LOGIC;
  signal m01_regslice_to_m01_couplers_ARADDR : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal m01_regslice_to_m01_couplers_ARREADY : STD_LOGIC;
  signal m01_regslice_to_m01_couplers_ARVALID : STD_LOGIC;
  signal m01_regslice_to_m01_couplers_AWADDR : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal m01_regslice_to_m01_couplers_AWREADY : STD_LOGIC;
  signal m01_regslice_to_m01_couplers_AWVALID : STD_LOGIC;
  signal m01_regslice_to_m01_couplers_BREADY : STD_LOGIC;
  signal m01_regslice_to_m01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_regslice_to_m01_couplers_BVALID : STD_LOGIC;
  signal m01_regslice_to_m01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_regslice_to_m01_couplers_RREADY : STD_LOGIC;
  signal m01_regslice_to_m01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_regslice_to_m01_couplers_RVALID : STD_LOGIC;
  signal m01_regslice_to_m01_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_regslice_to_m01_couplers_WREADY : STD_LOGIC;
  signal m01_regslice_to_m01_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_regslice_to_m01_couplers_WVALID : STD_LOGIC;
  signal NLW_m01_regslice_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_m01_regslice_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
begin
  M_ACLK_1 <= M_ACLK;
  M_ARESETN_1 <= M_ARESETN;
  M_AXI_araddr(4 downto 0) <= m01_regslice_to_m01_couplers_ARADDR(4 downto 0);
  M_AXI_arvalid <= m01_regslice_to_m01_couplers_ARVALID;
  M_AXI_awaddr(4 downto 0) <= m01_regslice_to_m01_couplers_AWADDR(4 downto 0);
  M_AXI_awvalid <= m01_regslice_to_m01_couplers_AWVALID;
  M_AXI_bready <= m01_regslice_to_m01_couplers_BREADY;
  M_AXI_rready <= m01_regslice_to_m01_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m01_regslice_to_m01_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m01_regslice_to_m01_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= m01_regslice_to_m01_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= m01_couplers_to_auto_cc_ARREADY;
  S_AXI_awready <= m01_couplers_to_auto_cc_AWREADY;
  S_AXI_bresp(1 downto 0) <= m01_couplers_to_auto_cc_BRESP(1 downto 0);
  S_AXI_bvalid <= m01_couplers_to_auto_cc_BVALID;
  S_AXI_rdata(31 downto 0) <= m01_couplers_to_auto_cc_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m01_couplers_to_auto_cc_RRESP(1 downto 0);
  S_AXI_rvalid <= m01_couplers_to_auto_cc_RVALID;
  S_AXI_wready <= m01_couplers_to_auto_cc_WREADY;
  m01_couplers_to_auto_cc_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m01_couplers_to_auto_cc_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m01_couplers_to_auto_cc_ARVALID <= S_AXI_arvalid;
  m01_couplers_to_auto_cc_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m01_couplers_to_auto_cc_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m01_couplers_to_auto_cc_AWVALID <= S_AXI_awvalid;
  m01_couplers_to_auto_cc_BREADY <= S_AXI_bready;
  m01_couplers_to_auto_cc_RREADY <= S_AXI_rready;
  m01_couplers_to_auto_cc_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m01_couplers_to_auto_cc_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m01_couplers_to_auto_cc_WVALID <= S_AXI_wvalid;
  m01_regslice_to_m01_couplers_ARREADY <= M_AXI_arready;
  m01_regslice_to_m01_couplers_AWREADY <= M_AXI_awready;
  m01_regslice_to_m01_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m01_regslice_to_m01_couplers_BVALID <= M_AXI_bvalid;
  m01_regslice_to_m01_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m01_regslice_to_m01_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m01_regslice_to_m01_couplers_RVALID <= M_AXI_rvalid;
  m01_regslice_to_m01_couplers_WREADY <= M_AXI_wready;
auto_cc: component base_auto_cc_0
     port map (
      m_axi_aclk => M_ACLK_1,
      m_axi_araddr(4 downto 0) => auto_cc_to_m01_regslice_ARADDR(4 downto 0),
      m_axi_aresetn => M_ARESETN_1,
      m_axi_arprot(2 downto 0) => auto_cc_to_m01_regslice_ARPROT(2 downto 0),
      m_axi_arready => auto_cc_to_m01_regslice_ARREADY,
      m_axi_arvalid => auto_cc_to_m01_regslice_ARVALID,
      m_axi_awaddr(4 downto 0) => auto_cc_to_m01_regslice_AWADDR(4 downto 0),
      m_axi_awprot(2 downto 0) => auto_cc_to_m01_regslice_AWPROT(2 downto 0),
      m_axi_awready => auto_cc_to_m01_regslice_AWREADY,
      m_axi_awvalid => auto_cc_to_m01_regslice_AWVALID,
      m_axi_bready => auto_cc_to_m01_regslice_BREADY,
      m_axi_bresp(1 downto 0) => auto_cc_to_m01_regslice_BRESP(1 downto 0),
      m_axi_bvalid => auto_cc_to_m01_regslice_BVALID,
      m_axi_rdata(31 downto 0) => auto_cc_to_m01_regslice_RDATA(31 downto 0),
      m_axi_rready => auto_cc_to_m01_regslice_RREADY,
      m_axi_rresp(1 downto 0) => auto_cc_to_m01_regslice_RRESP(1 downto 0),
      m_axi_rvalid => auto_cc_to_m01_regslice_RVALID,
      m_axi_wdata(31 downto 0) => auto_cc_to_m01_regslice_WDATA(31 downto 0),
      m_axi_wready => auto_cc_to_m01_regslice_WREADY,
      m_axi_wstrb(3 downto 0) => auto_cc_to_m01_regslice_WSTRB(3 downto 0),
      m_axi_wvalid => auto_cc_to_m01_regslice_WVALID,
      s_axi_aclk => S_ACLK_1,
      s_axi_araddr(4 downto 0) => m01_couplers_to_auto_cc_ARADDR(4 downto 0),
      s_axi_aresetn => S_ARESETN_1,
      s_axi_arprot(2 downto 0) => m01_couplers_to_auto_cc_ARPROT(2 downto 0),
      s_axi_arready => m01_couplers_to_auto_cc_ARREADY,
      s_axi_arvalid => m01_couplers_to_auto_cc_ARVALID,
      s_axi_awaddr(4 downto 0) => m01_couplers_to_auto_cc_AWADDR(4 downto 0),
      s_axi_awprot(2 downto 0) => m01_couplers_to_auto_cc_AWPROT(2 downto 0),
      s_axi_awready => m01_couplers_to_auto_cc_AWREADY,
      s_axi_awvalid => m01_couplers_to_auto_cc_AWVALID,
      s_axi_bready => m01_couplers_to_auto_cc_BREADY,
      s_axi_bresp(1 downto 0) => m01_couplers_to_auto_cc_BRESP(1 downto 0),
      s_axi_bvalid => m01_couplers_to_auto_cc_BVALID,
      s_axi_rdata(31 downto 0) => m01_couplers_to_auto_cc_RDATA(31 downto 0),
      s_axi_rready => m01_couplers_to_auto_cc_RREADY,
      s_axi_rresp(1 downto 0) => m01_couplers_to_auto_cc_RRESP(1 downto 0),
      s_axi_rvalid => m01_couplers_to_auto_cc_RVALID,
      s_axi_wdata(31 downto 0) => m01_couplers_to_auto_cc_WDATA(31 downto 0),
      s_axi_wready => m01_couplers_to_auto_cc_WREADY,
      s_axi_wstrb(3 downto 0) => m01_couplers_to_auto_cc_WSTRB(3 downto 0),
      s_axi_wvalid => m01_couplers_to_auto_cc_WVALID
    );
m01_regslice: component base_m01_regslice_33
     port map (
      aclk => M_ACLK_1,
      aresetn => M_ARESETN_1,
      m_axi_araddr(4 downto 0) => m01_regslice_to_m01_couplers_ARADDR(4 downto 0),
      m_axi_arprot(2 downto 0) => NLW_m01_regslice_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arready => m01_regslice_to_m01_couplers_ARREADY,
      m_axi_arvalid => m01_regslice_to_m01_couplers_ARVALID,
      m_axi_awaddr(4 downto 0) => m01_regslice_to_m01_couplers_AWADDR(4 downto 0),
      m_axi_awprot(2 downto 0) => NLW_m01_regslice_m_axi_awprot_UNCONNECTED(2 downto 0),
      m_axi_awready => m01_regslice_to_m01_couplers_AWREADY,
      m_axi_awvalid => m01_regslice_to_m01_couplers_AWVALID,
      m_axi_bready => m01_regslice_to_m01_couplers_BREADY,
      m_axi_bresp(1 downto 0) => m01_regslice_to_m01_couplers_BRESP(1 downto 0),
      m_axi_bvalid => m01_regslice_to_m01_couplers_BVALID,
      m_axi_rdata(31 downto 0) => m01_regslice_to_m01_couplers_RDATA(31 downto 0),
      m_axi_rready => m01_regslice_to_m01_couplers_RREADY,
      m_axi_rresp(1 downto 0) => m01_regslice_to_m01_couplers_RRESP(1 downto 0),
      m_axi_rvalid => m01_regslice_to_m01_couplers_RVALID,
      m_axi_wdata(31 downto 0) => m01_regslice_to_m01_couplers_WDATA(31 downto 0),
      m_axi_wready => m01_regslice_to_m01_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => m01_regslice_to_m01_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => m01_regslice_to_m01_couplers_WVALID,
      s_axi_araddr(4 downto 0) => auto_cc_to_m01_regslice_ARADDR(4 downto 0),
      s_axi_arprot(2 downto 0) => auto_cc_to_m01_regslice_ARPROT(2 downto 0),
      s_axi_arready => auto_cc_to_m01_regslice_ARREADY,
      s_axi_arvalid => auto_cc_to_m01_regslice_ARVALID,
      s_axi_awaddr(4 downto 0) => auto_cc_to_m01_regslice_AWADDR(4 downto 0),
      s_axi_awprot(2 downto 0) => auto_cc_to_m01_regslice_AWPROT(2 downto 0),
      s_axi_awready => auto_cc_to_m01_regslice_AWREADY,
      s_axi_awvalid => auto_cc_to_m01_regslice_AWVALID,
      s_axi_bready => auto_cc_to_m01_regslice_BREADY,
      s_axi_bresp(1 downto 0) => auto_cc_to_m01_regslice_BRESP(1 downto 0),
      s_axi_bvalid => auto_cc_to_m01_regslice_BVALID,
      s_axi_rdata(31 downto 0) => auto_cc_to_m01_regslice_RDATA(31 downto 0),
      s_axi_rready => auto_cc_to_m01_regslice_RREADY,
      s_axi_rresp(1 downto 0) => auto_cc_to_m01_regslice_RRESP(1 downto 0),
      s_axi_rvalid => auto_cc_to_m01_regslice_RVALID,
      s_axi_wdata(31 downto 0) => auto_cc_to_m01_regslice_WDATA(31 downto 0),
      s_axi_wready => auto_cc_to_m01_regslice_WREADY,
      s_axi_wstrb(3 downto 0) => auto_cc_to_m01_regslice_WSTRB(3 downto 0),
      s_axi_wvalid => auto_cc_to_m01_regslice_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m01_couplers_imp_ZWEDQ4 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m01_couplers_imp_ZWEDQ4;

architecture STRUCTURE of m01_couplers_imp_ZWEDQ4 is
  component base_m01_regslice_32 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component base_m01_regslice_32;
  component base_auto_pc_1 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component base_auto_pc_1;
  signal M_ACLK_1 : STD_LOGIC;
  signal M_ARESETN_1 : STD_LOGIC;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_pc_to_m01_regslice_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m01_regslice_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_m01_regslice_ARREADY : STD_LOGIC;
  signal auto_pc_to_m01_regslice_ARVALID : STD_LOGIC;
  signal auto_pc_to_m01_regslice_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m01_regslice_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_m01_regslice_AWREADY : STD_LOGIC;
  signal auto_pc_to_m01_regslice_AWVALID : STD_LOGIC;
  signal auto_pc_to_m01_regslice_BREADY : STD_LOGIC;
  signal auto_pc_to_m01_regslice_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m01_regslice_BVALID : STD_LOGIC;
  signal auto_pc_to_m01_regslice_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m01_regslice_RREADY : STD_LOGIC;
  signal auto_pc_to_m01_regslice_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m01_regslice_RVALID : STD_LOGIC;
  signal auto_pc_to_m01_regslice_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m01_regslice_WREADY : STD_LOGIC;
  signal auto_pc_to_m01_regslice_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m01_regslice_WVALID : STD_LOGIC;
  signal m01_couplers_to_auto_pc_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_auto_pc_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_auto_pc_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_auto_pc_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal m01_couplers_to_auto_pc_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m01_couplers_to_auto_pc_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_auto_pc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_auto_pc_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_auto_pc_ARREADY : STD_LOGIC;
  signal m01_couplers_to_auto_pc_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_auto_pc_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_auto_pc_ARVALID : STD_LOGIC;
  signal m01_couplers_to_auto_pc_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_auto_pc_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_auto_pc_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_auto_pc_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal m01_couplers_to_auto_pc_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m01_couplers_to_auto_pc_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_auto_pc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_auto_pc_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_auto_pc_AWREADY : STD_LOGIC;
  signal m01_couplers_to_auto_pc_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_auto_pc_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_auto_pc_AWVALID : STD_LOGIC;
  signal m01_couplers_to_auto_pc_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal m01_couplers_to_auto_pc_BREADY : STD_LOGIC;
  signal m01_couplers_to_auto_pc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_auto_pc_BVALID : STD_LOGIC;
  signal m01_couplers_to_auto_pc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_auto_pc_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal m01_couplers_to_auto_pc_RLAST : STD_LOGIC;
  signal m01_couplers_to_auto_pc_RREADY : STD_LOGIC;
  signal m01_couplers_to_auto_pc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_auto_pc_RVALID : STD_LOGIC;
  signal m01_couplers_to_auto_pc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_auto_pc_WLAST : STD_LOGIC;
  signal m01_couplers_to_auto_pc_WREADY : STD_LOGIC;
  signal m01_couplers_to_auto_pc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_auto_pc_WVALID : STD_LOGIC;
  signal m01_regslice_to_m01_couplers_ARADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal m01_regslice_to_m01_couplers_ARREADY : STD_LOGIC;
  signal m01_regslice_to_m01_couplers_ARVALID : STD_LOGIC;
  signal m01_regslice_to_m01_couplers_AWADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal m01_regslice_to_m01_couplers_AWREADY : STD_LOGIC;
  signal m01_regslice_to_m01_couplers_AWVALID : STD_LOGIC;
  signal m01_regslice_to_m01_couplers_BREADY : STD_LOGIC;
  signal m01_regslice_to_m01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_regslice_to_m01_couplers_BVALID : STD_LOGIC;
  signal m01_regslice_to_m01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_regslice_to_m01_couplers_RREADY : STD_LOGIC;
  signal m01_regslice_to_m01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_regslice_to_m01_couplers_RVALID : STD_LOGIC;
  signal m01_regslice_to_m01_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_regslice_to_m01_couplers_WREADY : STD_LOGIC;
  signal m01_regslice_to_m01_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_regslice_to_m01_couplers_WVALID : STD_LOGIC;
  signal NLW_m01_regslice_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_m01_regslice_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
begin
  M_ACLK_1 <= M_ACLK;
  M_ARESETN_1 <= M_ARESETN;
  M_AXI_araddr(8 downto 0) <= m01_regslice_to_m01_couplers_ARADDR(8 downto 0);
  M_AXI_arvalid <= m01_regslice_to_m01_couplers_ARVALID;
  M_AXI_awaddr(8 downto 0) <= m01_regslice_to_m01_couplers_AWADDR(8 downto 0);
  M_AXI_awvalid <= m01_regslice_to_m01_couplers_AWVALID;
  M_AXI_bready <= m01_regslice_to_m01_couplers_BREADY;
  M_AXI_rready <= m01_regslice_to_m01_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m01_regslice_to_m01_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m01_regslice_to_m01_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= m01_regslice_to_m01_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= m01_couplers_to_auto_pc_ARREADY;
  S_AXI_awready <= m01_couplers_to_auto_pc_AWREADY;
  S_AXI_bid(11 downto 0) <= m01_couplers_to_auto_pc_BID(11 downto 0);
  S_AXI_bresp(1 downto 0) <= m01_couplers_to_auto_pc_BRESP(1 downto 0);
  S_AXI_bvalid <= m01_couplers_to_auto_pc_BVALID;
  S_AXI_rdata(31 downto 0) <= m01_couplers_to_auto_pc_RDATA(31 downto 0);
  S_AXI_rid(11 downto 0) <= m01_couplers_to_auto_pc_RID(11 downto 0);
  S_AXI_rlast <= m01_couplers_to_auto_pc_RLAST;
  S_AXI_rresp(1 downto 0) <= m01_couplers_to_auto_pc_RRESP(1 downto 0);
  S_AXI_rvalid <= m01_couplers_to_auto_pc_RVALID;
  S_AXI_wready <= m01_couplers_to_auto_pc_WREADY;
  m01_couplers_to_auto_pc_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m01_couplers_to_auto_pc_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  m01_couplers_to_auto_pc_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  m01_couplers_to_auto_pc_ARID(11 downto 0) <= S_AXI_arid(11 downto 0);
  m01_couplers_to_auto_pc_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  m01_couplers_to_auto_pc_ARLOCK(0) <= S_AXI_arlock(0);
  m01_couplers_to_auto_pc_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m01_couplers_to_auto_pc_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  m01_couplers_to_auto_pc_ARREGION(3 downto 0) <= S_AXI_arregion(3 downto 0);
  m01_couplers_to_auto_pc_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  m01_couplers_to_auto_pc_ARVALID <= S_AXI_arvalid;
  m01_couplers_to_auto_pc_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m01_couplers_to_auto_pc_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  m01_couplers_to_auto_pc_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  m01_couplers_to_auto_pc_AWID(11 downto 0) <= S_AXI_awid(11 downto 0);
  m01_couplers_to_auto_pc_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  m01_couplers_to_auto_pc_AWLOCK(0) <= S_AXI_awlock(0);
  m01_couplers_to_auto_pc_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m01_couplers_to_auto_pc_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  m01_couplers_to_auto_pc_AWREGION(3 downto 0) <= S_AXI_awregion(3 downto 0);
  m01_couplers_to_auto_pc_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  m01_couplers_to_auto_pc_AWVALID <= S_AXI_awvalid;
  m01_couplers_to_auto_pc_BREADY <= S_AXI_bready;
  m01_couplers_to_auto_pc_RREADY <= S_AXI_rready;
  m01_couplers_to_auto_pc_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m01_couplers_to_auto_pc_WLAST <= S_AXI_wlast;
  m01_couplers_to_auto_pc_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m01_couplers_to_auto_pc_WVALID <= S_AXI_wvalid;
  m01_regslice_to_m01_couplers_ARREADY <= M_AXI_arready;
  m01_regslice_to_m01_couplers_AWREADY <= M_AXI_awready;
  m01_regslice_to_m01_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m01_regslice_to_m01_couplers_BVALID <= M_AXI_bvalid;
  m01_regslice_to_m01_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m01_regslice_to_m01_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m01_regslice_to_m01_couplers_RVALID <= M_AXI_rvalid;
  m01_regslice_to_m01_couplers_WREADY <= M_AXI_wready;
auto_pc: component base_auto_pc_1
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1,
      m_axi_araddr(31 downto 0) => auto_pc_to_m01_regslice_ARADDR(31 downto 0),
      m_axi_arprot(2 downto 0) => auto_pc_to_m01_regslice_ARPROT(2 downto 0),
      m_axi_arready => auto_pc_to_m01_regslice_ARREADY,
      m_axi_arvalid => auto_pc_to_m01_regslice_ARVALID,
      m_axi_awaddr(31 downto 0) => auto_pc_to_m01_regslice_AWADDR(31 downto 0),
      m_axi_awprot(2 downto 0) => auto_pc_to_m01_regslice_AWPROT(2 downto 0),
      m_axi_awready => auto_pc_to_m01_regslice_AWREADY,
      m_axi_awvalid => auto_pc_to_m01_regslice_AWVALID,
      m_axi_bready => auto_pc_to_m01_regslice_BREADY,
      m_axi_bresp(1 downto 0) => auto_pc_to_m01_regslice_BRESP(1 downto 0),
      m_axi_bvalid => auto_pc_to_m01_regslice_BVALID,
      m_axi_rdata(31 downto 0) => auto_pc_to_m01_regslice_RDATA(31 downto 0),
      m_axi_rready => auto_pc_to_m01_regslice_RREADY,
      m_axi_rresp(1 downto 0) => auto_pc_to_m01_regslice_RRESP(1 downto 0),
      m_axi_rvalid => auto_pc_to_m01_regslice_RVALID,
      m_axi_wdata(31 downto 0) => auto_pc_to_m01_regslice_WDATA(31 downto 0),
      m_axi_wready => auto_pc_to_m01_regslice_WREADY,
      m_axi_wstrb(3 downto 0) => auto_pc_to_m01_regslice_WSTRB(3 downto 0),
      m_axi_wvalid => auto_pc_to_m01_regslice_WVALID,
      s_axi_araddr(31 downto 0) => m01_couplers_to_auto_pc_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => m01_couplers_to_auto_pc_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => m01_couplers_to_auto_pc_ARCACHE(3 downto 0),
      s_axi_arid(11 downto 0) => m01_couplers_to_auto_pc_ARID(11 downto 0),
      s_axi_arlen(7 downto 0) => m01_couplers_to_auto_pc_ARLEN(7 downto 0),
      s_axi_arlock(0) => m01_couplers_to_auto_pc_ARLOCK(0),
      s_axi_arprot(2 downto 0) => m01_couplers_to_auto_pc_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => m01_couplers_to_auto_pc_ARQOS(3 downto 0),
      s_axi_arready => m01_couplers_to_auto_pc_ARREADY,
      s_axi_arregion(3 downto 0) => m01_couplers_to_auto_pc_ARREGION(3 downto 0),
      s_axi_arsize(2 downto 0) => m01_couplers_to_auto_pc_ARSIZE(2 downto 0),
      s_axi_arvalid => m01_couplers_to_auto_pc_ARVALID,
      s_axi_awaddr(31 downto 0) => m01_couplers_to_auto_pc_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => m01_couplers_to_auto_pc_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => m01_couplers_to_auto_pc_AWCACHE(3 downto 0),
      s_axi_awid(11 downto 0) => m01_couplers_to_auto_pc_AWID(11 downto 0),
      s_axi_awlen(7 downto 0) => m01_couplers_to_auto_pc_AWLEN(7 downto 0),
      s_axi_awlock(0) => m01_couplers_to_auto_pc_AWLOCK(0),
      s_axi_awprot(2 downto 0) => m01_couplers_to_auto_pc_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => m01_couplers_to_auto_pc_AWQOS(3 downto 0),
      s_axi_awready => m01_couplers_to_auto_pc_AWREADY,
      s_axi_awregion(3 downto 0) => m01_couplers_to_auto_pc_AWREGION(3 downto 0),
      s_axi_awsize(2 downto 0) => m01_couplers_to_auto_pc_AWSIZE(2 downto 0),
      s_axi_awvalid => m01_couplers_to_auto_pc_AWVALID,
      s_axi_bid(11 downto 0) => m01_couplers_to_auto_pc_BID(11 downto 0),
      s_axi_bready => m01_couplers_to_auto_pc_BREADY,
      s_axi_bresp(1 downto 0) => m01_couplers_to_auto_pc_BRESP(1 downto 0),
      s_axi_bvalid => m01_couplers_to_auto_pc_BVALID,
      s_axi_rdata(31 downto 0) => m01_couplers_to_auto_pc_RDATA(31 downto 0),
      s_axi_rid(11 downto 0) => m01_couplers_to_auto_pc_RID(11 downto 0),
      s_axi_rlast => m01_couplers_to_auto_pc_RLAST,
      s_axi_rready => m01_couplers_to_auto_pc_RREADY,
      s_axi_rresp(1 downto 0) => m01_couplers_to_auto_pc_RRESP(1 downto 0),
      s_axi_rvalid => m01_couplers_to_auto_pc_RVALID,
      s_axi_wdata(31 downto 0) => m01_couplers_to_auto_pc_WDATA(31 downto 0),
      s_axi_wlast => m01_couplers_to_auto_pc_WLAST,
      s_axi_wready => m01_couplers_to_auto_pc_WREADY,
      s_axi_wstrb(3 downto 0) => m01_couplers_to_auto_pc_WSTRB(3 downto 0),
      s_axi_wvalid => m01_couplers_to_auto_pc_WVALID
    );
m01_regslice: component base_m01_regslice_32
     port map (
      aclk => M_ACLK_1,
      aresetn => M_ARESETN_1,
      m_axi_araddr(8 downto 0) => m01_regslice_to_m01_couplers_ARADDR(8 downto 0),
      m_axi_arprot(2 downto 0) => NLW_m01_regslice_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arready => m01_regslice_to_m01_couplers_ARREADY,
      m_axi_arvalid => m01_regslice_to_m01_couplers_ARVALID,
      m_axi_awaddr(8 downto 0) => m01_regslice_to_m01_couplers_AWADDR(8 downto 0),
      m_axi_awprot(2 downto 0) => NLW_m01_regslice_m_axi_awprot_UNCONNECTED(2 downto 0),
      m_axi_awready => m01_regslice_to_m01_couplers_AWREADY,
      m_axi_awvalid => m01_regslice_to_m01_couplers_AWVALID,
      m_axi_bready => m01_regslice_to_m01_couplers_BREADY,
      m_axi_bresp(1 downto 0) => m01_regslice_to_m01_couplers_BRESP(1 downto 0),
      m_axi_bvalid => m01_regslice_to_m01_couplers_BVALID,
      m_axi_rdata(31 downto 0) => m01_regslice_to_m01_couplers_RDATA(31 downto 0),
      m_axi_rready => m01_regslice_to_m01_couplers_RREADY,
      m_axi_rresp(1 downto 0) => m01_regslice_to_m01_couplers_RRESP(1 downto 0),
      m_axi_rvalid => m01_regslice_to_m01_couplers_RVALID,
      m_axi_wdata(31 downto 0) => m01_regslice_to_m01_couplers_WDATA(31 downto 0),
      m_axi_wready => m01_regslice_to_m01_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => m01_regslice_to_m01_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => m01_regslice_to_m01_couplers_WVALID,
      s_axi_araddr(8 downto 0) => auto_pc_to_m01_regslice_ARADDR(8 downto 0),
      s_axi_arprot(2 downto 0) => auto_pc_to_m01_regslice_ARPROT(2 downto 0),
      s_axi_arready => auto_pc_to_m01_regslice_ARREADY,
      s_axi_arvalid => auto_pc_to_m01_regslice_ARVALID,
      s_axi_awaddr(8 downto 0) => auto_pc_to_m01_regslice_AWADDR(8 downto 0),
      s_axi_awprot(2 downto 0) => auto_pc_to_m01_regslice_AWPROT(2 downto 0),
      s_axi_awready => auto_pc_to_m01_regslice_AWREADY,
      s_axi_awvalid => auto_pc_to_m01_regslice_AWVALID,
      s_axi_bready => auto_pc_to_m01_regslice_BREADY,
      s_axi_bresp(1 downto 0) => auto_pc_to_m01_regslice_BRESP(1 downto 0),
      s_axi_bvalid => auto_pc_to_m01_regslice_BVALID,
      s_axi_rdata(31 downto 0) => auto_pc_to_m01_regslice_RDATA(31 downto 0),
      s_axi_rready => auto_pc_to_m01_regslice_RREADY,
      s_axi_rresp(1 downto 0) => auto_pc_to_m01_regslice_RRESP(1 downto 0),
      s_axi_rvalid => auto_pc_to_m01_regslice_RVALID,
      s_axi_wdata(31 downto 0) => auto_pc_to_m01_regslice_WDATA(31 downto 0),
      s_axi_wready => auto_pc_to_m01_regslice_WREADY,
      s_axi_wstrb(3 downto 0) => auto_pc_to_m01_regslice_WSTRB(3 downto 0),
      s_axi_wvalid => auto_pc_to_m01_regslice_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m02_couplers_imp_1Y7ASDJ is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m02_couplers_imp_1Y7ASDJ;

architecture STRUCTURE of m02_couplers_imp_1Y7ASDJ is
  component base_m02_regslice_32 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component base_m02_regslice_32;
  signal M_ACLK_1 : STD_LOGIC;
  signal M_ARESETN_1 : STD_LOGIC;
  signal m02_couplers_to_m02_regslice_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_regslice_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_m02_regslice_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_m02_regslice_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal m02_couplers_to_m02_regslice_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m02_couplers_to_m02_regslice_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_regslice_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_m02_regslice_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_m02_regslice_ARREADY : STD_LOGIC;
  signal m02_couplers_to_m02_regslice_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_m02_regslice_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_m02_regslice_ARVALID : STD_LOGIC;
  signal m02_couplers_to_m02_regslice_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_regslice_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_m02_regslice_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_m02_regslice_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal m02_couplers_to_m02_regslice_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m02_couplers_to_m02_regslice_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_regslice_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_m02_regslice_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_m02_regslice_AWREADY : STD_LOGIC;
  signal m02_couplers_to_m02_regslice_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_m02_regslice_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_m02_regslice_AWVALID : STD_LOGIC;
  signal m02_couplers_to_m02_regslice_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal m02_couplers_to_m02_regslice_BREADY : STD_LOGIC;
  signal m02_couplers_to_m02_regslice_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_m02_regslice_BVALID : STD_LOGIC;
  signal m02_couplers_to_m02_regslice_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_regslice_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal m02_couplers_to_m02_regslice_RLAST : STD_LOGIC;
  signal m02_couplers_to_m02_regslice_RREADY : STD_LOGIC;
  signal m02_couplers_to_m02_regslice_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_m02_regslice_RVALID : STD_LOGIC;
  signal m02_couplers_to_m02_regslice_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_regslice_WLAST : STD_LOGIC;
  signal m02_couplers_to_m02_regslice_WREADY : STD_LOGIC;
  signal m02_couplers_to_m02_regslice_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_m02_regslice_WVALID : STD_LOGIC;
  signal m02_regslice_to_m02_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_regslice_to_m02_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_regslice_to_m02_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_regslice_to_m02_couplers_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal m02_regslice_to_m02_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m02_regslice_to_m02_couplers_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_regslice_to_m02_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_regslice_to_m02_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_regslice_to_m02_couplers_ARREADY : STD_LOGIC;
  signal m02_regslice_to_m02_couplers_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_regslice_to_m02_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_regslice_to_m02_couplers_ARVALID : STD_LOGIC;
  signal m02_regslice_to_m02_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_regslice_to_m02_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_regslice_to_m02_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_regslice_to_m02_couplers_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal m02_regslice_to_m02_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m02_regslice_to_m02_couplers_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_regslice_to_m02_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_regslice_to_m02_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_regslice_to_m02_couplers_AWREADY : STD_LOGIC;
  signal m02_regslice_to_m02_couplers_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_regslice_to_m02_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_regslice_to_m02_couplers_AWVALID : STD_LOGIC;
  signal m02_regslice_to_m02_couplers_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal m02_regslice_to_m02_couplers_BREADY : STD_LOGIC;
  signal m02_regslice_to_m02_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_regslice_to_m02_couplers_BVALID : STD_LOGIC;
  signal m02_regslice_to_m02_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_regslice_to_m02_couplers_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal m02_regslice_to_m02_couplers_RLAST : STD_LOGIC;
  signal m02_regslice_to_m02_couplers_RREADY : STD_LOGIC;
  signal m02_regslice_to_m02_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_regslice_to_m02_couplers_RVALID : STD_LOGIC;
  signal m02_regslice_to_m02_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_regslice_to_m02_couplers_WLAST : STD_LOGIC;
  signal m02_regslice_to_m02_couplers_WREADY : STD_LOGIC;
  signal m02_regslice_to_m02_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_regslice_to_m02_couplers_WVALID : STD_LOGIC;
begin
  M_ACLK_1 <= M_ACLK;
  M_ARESETN_1 <= M_ARESETN;
  M_AXI_araddr(31 downto 0) <= m02_regslice_to_m02_couplers_ARADDR(31 downto 0);
  M_AXI_arburst(1 downto 0) <= m02_regslice_to_m02_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= m02_regslice_to_m02_couplers_ARCACHE(3 downto 0);
  M_AXI_arid(11 downto 0) <= m02_regslice_to_m02_couplers_ARID(11 downto 0);
  M_AXI_arlen(7 downto 0) <= m02_regslice_to_m02_couplers_ARLEN(7 downto 0);
  M_AXI_arlock(0) <= m02_regslice_to_m02_couplers_ARLOCK(0);
  M_AXI_arprot(2 downto 0) <= m02_regslice_to_m02_couplers_ARPROT(2 downto 0);
  M_AXI_arqos(3 downto 0) <= m02_regslice_to_m02_couplers_ARQOS(3 downto 0);
  M_AXI_arregion(3 downto 0) <= m02_regslice_to_m02_couplers_ARREGION(3 downto 0);
  M_AXI_arsize(2 downto 0) <= m02_regslice_to_m02_couplers_ARSIZE(2 downto 0);
  M_AXI_arvalid <= m02_regslice_to_m02_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= m02_regslice_to_m02_couplers_AWADDR(31 downto 0);
  M_AXI_awburst(1 downto 0) <= m02_regslice_to_m02_couplers_AWBURST(1 downto 0);
  M_AXI_awcache(3 downto 0) <= m02_regslice_to_m02_couplers_AWCACHE(3 downto 0);
  M_AXI_awid(11 downto 0) <= m02_regslice_to_m02_couplers_AWID(11 downto 0);
  M_AXI_awlen(7 downto 0) <= m02_regslice_to_m02_couplers_AWLEN(7 downto 0);
  M_AXI_awlock(0) <= m02_regslice_to_m02_couplers_AWLOCK(0);
  M_AXI_awprot(2 downto 0) <= m02_regslice_to_m02_couplers_AWPROT(2 downto 0);
  M_AXI_awqos(3 downto 0) <= m02_regslice_to_m02_couplers_AWQOS(3 downto 0);
  M_AXI_awregion(3 downto 0) <= m02_regslice_to_m02_couplers_AWREGION(3 downto 0);
  M_AXI_awsize(2 downto 0) <= m02_regslice_to_m02_couplers_AWSIZE(2 downto 0);
  M_AXI_awvalid <= m02_regslice_to_m02_couplers_AWVALID;
  M_AXI_bready <= m02_regslice_to_m02_couplers_BREADY;
  M_AXI_rready <= m02_regslice_to_m02_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m02_regslice_to_m02_couplers_WDATA(31 downto 0);
  M_AXI_wlast <= m02_regslice_to_m02_couplers_WLAST;
  M_AXI_wstrb(3 downto 0) <= m02_regslice_to_m02_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= m02_regslice_to_m02_couplers_WVALID;
  S_AXI_arready <= m02_couplers_to_m02_regslice_ARREADY;
  S_AXI_awready <= m02_couplers_to_m02_regslice_AWREADY;
  S_AXI_bid(11 downto 0) <= m02_couplers_to_m02_regslice_BID(11 downto 0);
  S_AXI_bresp(1 downto 0) <= m02_couplers_to_m02_regslice_BRESP(1 downto 0);
  S_AXI_bvalid <= m02_couplers_to_m02_regslice_BVALID;
  S_AXI_rdata(31 downto 0) <= m02_couplers_to_m02_regslice_RDATA(31 downto 0);
  S_AXI_rid(11 downto 0) <= m02_couplers_to_m02_regslice_RID(11 downto 0);
  S_AXI_rlast <= m02_couplers_to_m02_regslice_RLAST;
  S_AXI_rresp(1 downto 0) <= m02_couplers_to_m02_regslice_RRESP(1 downto 0);
  S_AXI_rvalid <= m02_couplers_to_m02_regslice_RVALID;
  S_AXI_wready <= m02_couplers_to_m02_regslice_WREADY;
  m02_couplers_to_m02_regslice_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m02_couplers_to_m02_regslice_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  m02_couplers_to_m02_regslice_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  m02_couplers_to_m02_regslice_ARID(11 downto 0) <= S_AXI_arid(11 downto 0);
  m02_couplers_to_m02_regslice_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  m02_couplers_to_m02_regslice_ARLOCK(0) <= S_AXI_arlock(0);
  m02_couplers_to_m02_regslice_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m02_couplers_to_m02_regslice_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  m02_couplers_to_m02_regslice_ARREGION(3 downto 0) <= S_AXI_arregion(3 downto 0);
  m02_couplers_to_m02_regslice_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  m02_couplers_to_m02_regslice_ARVALID <= S_AXI_arvalid;
  m02_couplers_to_m02_regslice_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m02_couplers_to_m02_regslice_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  m02_couplers_to_m02_regslice_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  m02_couplers_to_m02_regslice_AWID(11 downto 0) <= S_AXI_awid(11 downto 0);
  m02_couplers_to_m02_regslice_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  m02_couplers_to_m02_regslice_AWLOCK(0) <= S_AXI_awlock(0);
  m02_couplers_to_m02_regslice_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m02_couplers_to_m02_regslice_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  m02_couplers_to_m02_regslice_AWREGION(3 downto 0) <= S_AXI_awregion(3 downto 0);
  m02_couplers_to_m02_regslice_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  m02_couplers_to_m02_regslice_AWVALID <= S_AXI_awvalid;
  m02_couplers_to_m02_regslice_BREADY <= S_AXI_bready;
  m02_couplers_to_m02_regslice_RREADY <= S_AXI_rready;
  m02_couplers_to_m02_regslice_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m02_couplers_to_m02_regslice_WLAST <= S_AXI_wlast;
  m02_couplers_to_m02_regslice_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m02_couplers_to_m02_regslice_WVALID <= S_AXI_wvalid;
  m02_regslice_to_m02_couplers_ARREADY <= M_AXI_arready;
  m02_regslice_to_m02_couplers_AWREADY <= M_AXI_awready;
  m02_regslice_to_m02_couplers_BID(11 downto 0) <= M_AXI_bid(11 downto 0);
  m02_regslice_to_m02_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m02_regslice_to_m02_couplers_BVALID <= M_AXI_bvalid;
  m02_regslice_to_m02_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m02_regslice_to_m02_couplers_RID(11 downto 0) <= M_AXI_rid(11 downto 0);
  m02_regslice_to_m02_couplers_RLAST <= M_AXI_rlast;
  m02_regslice_to_m02_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m02_regslice_to_m02_couplers_RVALID <= M_AXI_rvalid;
  m02_regslice_to_m02_couplers_WREADY <= M_AXI_wready;
m02_regslice: component base_m02_regslice_32
     port map (
      aclk => M_ACLK_1,
      aresetn => M_ARESETN_1,
      m_axi_araddr(31 downto 0) => m02_regslice_to_m02_couplers_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => m02_regslice_to_m02_couplers_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => m02_regslice_to_m02_couplers_ARCACHE(3 downto 0),
      m_axi_arid(11 downto 0) => m02_regslice_to_m02_couplers_ARID(11 downto 0),
      m_axi_arlen(7 downto 0) => m02_regslice_to_m02_couplers_ARLEN(7 downto 0),
      m_axi_arlock(0) => m02_regslice_to_m02_couplers_ARLOCK(0),
      m_axi_arprot(2 downto 0) => m02_regslice_to_m02_couplers_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => m02_regslice_to_m02_couplers_ARQOS(3 downto 0),
      m_axi_arready => m02_regslice_to_m02_couplers_ARREADY,
      m_axi_arregion(3 downto 0) => m02_regslice_to_m02_couplers_ARREGION(3 downto 0),
      m_axi_arsize(2 downto 0) => m02_regslice_to_m02_couplers_ARSIZE(2 downto 0),
      m_axi_arvalid => m02_regslice_to_m02_couplers_ARVALID,
      m_axi_awaddr(31 downto 0) => m02_regslice_to_m02_couplers_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => m02_regslice_to_m02_couplers_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => m02_regslice_to_m02_couplers_AWCACHE(3 downto 0),
      m_axi_awid(11 downto 0) => m02_regslice_to_m02_couplers_AWID(11 downto 0),
      m_axi_awlen(7 downto 0) => m02_regslice_to_m02_couplers_AWLEN(7 downto 0),
      m_axi_awlock(0) => m02_regslice_to_m02_couplers_AWLOCK(0),
      m_axi_awprot(2 downto 0) => m02_regslice_to_m02_couplers_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => m02_regslice_to_m02_couplers_AWQOS(3 downto 0),
      m_axi_awready => m02_regslice_to_m02_couplers_AWREADY,
      m_axi_awregion(3 downto 0) => m02_regslice_to_m02_couplers_AWREGION(3 downto 0),
      m_axi_awsize(2 downto 0) => m02_regslice_to_m02_couplers_AWSIZE(2 downto 0),
      m_axi_awvalid => m02_regslice_to_m02_couplers_AWVALID,
      m_axi_bid(11 downto 0) => m02_regslice_to_m02_couplers_BID(11 downto 0),
      m_axi_bready => m02_regslice_to_m02_couplers_BREADY,
      m_axi_bresp(1 downto 0) => m02_regslice_to_m02_couplers_BRESP(1 downto 0),
      m_axi_bvalid => m02_regslice_to_m02_couplers_BVALID,
      m_axi_rdata(31 downto 0) => m02_regslice_to_m02_couplers_RDATA(31 downto 0),
      m_axi_rid(11 downto 0) => m02_regslice_to_m02_couplers_RID(11 downto 0),
      m_axi_rlast => m02_regslice_to_m02_couplers_RLAST,
      m_axi_rready => m02_regslice_to_m02_couplers_RREADY,
      m_axi_rresp(1 downto 0) => m02_regslice_to_m02_couplers_RRESP(1 downto 0),
      m_axi_rvalid => m02_regslice_to_m02_couplers_RVALID,
      m_axi_wdata(31 downto 0) => m02_regslice_to_m02_couplers_WDATA(31 downto 0),
      m_axi_wlast => m02_regslice_to_m02_couplers_WLAST,
      m_axi_wready => m02_regslice_to_m02_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => m02_regslice_to_m02_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => m02_regslice_to_m02_couplers_WVALID,
      s_axi_araddr(31 downto 0) => m02_couplers_to_m02_regslice_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => m02_couplers_to_m02_regslice_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => m02_couplers_to_m02_regslice_ARCACHE(3 downto 0),
      s_axi_arid(11 downto 0) => m02_couplers_to_m02_regslice_ARID(11 downto 0),
      s_axi_arlen(7 downto 0) => m02_couplers_to_m02_regslice_ARLEN(7 downto 0),
      s_axi_arlock(0) => m02_couplers_to_m02_regslice_ARLOCK(0),
      s_axi_arprot(2 downto 0) => m02_couplers_to_m02_regslice_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => m02_couplers_to_m02_regslice_ARQOS(3 downto 0),
      s_axi_arready => m02_couplers_to_m02_regslice_ARREADY,
      s_axi_arregion(3 downto 0) => m02_couplers_to_m02_regslice_ARREGION(3 downto 0),
      s_axi_arsize(2 downto 0) => m02_couplers_to_m02_regslice_ARSIZE(2 downto 0),
      s_axi_arvalid => m02_couplers_to_m02_regslice_ARVALID,
      s_axi_awaddr(31 downto 0) => m02_couplers_to_m02_regslice_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => m02_couplers_to_m02_regslice_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => m02_couplers_to_m02_regslice_AWCACHE(3 downto 0),
      s_axi_awid(11 downto 0) => m02_couplers_to_m02_regslice_AWID(11 downto 0),
      s_axi_awlen(7 downto 0) => m02_couplers_to_m02_regslice_AWLEN(7 downto 0),
      s_axi_awlock(0) => m02_couplers_to_m02_regslice_AWLOCK(0),
      s_axi_awprot(2 downto 0) => m02_couplers_to_m02_regslice_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => m02_couplers_to_m02_regslice_AWQOS(3 downto 0),
      s_axi_awready => m02_couplers_to_m02_regslice_AWREADY,
      s_axi_awregion(3 downto 0) => m02_couplers_to_m02_regslice_AWREGION(3 downto 0),
      s_axi_awsize(2 downto 0) => m02_couplers_to_m02_regslice_AWSIZE(2 downto 0),
      s_axi_awvalid => m02_couplers_to_m02_regslice_AWVALID,
      s_axi_bid(11 downto 0) => m02_couplers_to_m02_regslice_BID(11 downto 0),
      s_axi_bready => m02_couplers_to_m02_regslice_BREADY,
      s_axi_bresp(1 downto 0) => m02_couplers_to_m02_regslice_BRESP(1 downto 0),
      s_axi_bvalid => m02_couplers_to_m02_regslice_BVALID,
      s_axi_rdata(31 downto 0) => m02_couplers_to_m02_regslice_RDATA(31 downto 0),
      s_axi_rid(11 downto 0) => m02_couplers_to_m02_regslice_RID(11 downto 0),
      s_axi_rlast => m02_couplers_to_m02_regslice_RLAST,
      s_axi_rready => m02_couplers_to_m02_regslice_RREADY,
      s_axi_rresp(1 downto 0) => m02_couplers_to_m02_regslice_RRESP(1 downto 0),
      s_axi_rvalid => m02_couplers_to_m02_regslice_RVALID,
      s_axi_wdata(31 downto 0) => m02_couplers_to_m02_regslice_WDATA(31 downto 0),
      s_axi_wlast => m02_couplers_to_m02_regslice_WLAST,
      s_axi_wready => m02_couplers_to_m02_regslice_WREADY,
      s_axi_wstrb(3 downto 0) => m02_couplers_to_m02_regslice_WSTRB(3 downto 0),
      s_axi_wvalid => m02_couplers_to_m02_regslice_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m02_couplers_imp_P0IUHS is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 6 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 6 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m02_couplers_imp_P0IUHS;

architecture STRUCTURE of m02_couplers_imp_P0IUHS is
  component base_m02_regslice_33 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component base_m02_regslice_33;
  component base_auto_cc_1 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    m_axi_aresetn : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component base_auto_cc_1;
  signal M_ACLK_1 : STD_LOGIC;
  signal M_ARESETN_1 : STD_LOGIC;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_cc_to_m02_regslice_ARADDR : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal auto_cc_to_m02_regslice_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_cc_to_m02_regslice_ARREADY : STD_LOGIC;
  signal auto_cc_to_m02_regslice_ARVALID : STD_LOGIC;
  signal auto_cc_to_m02_regslice_AWADDR : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal auto_cc_to_m02_regslice_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_cc_to_m02_regslice_AWREADY : STD_LOGIC;
  signal auto_cc_to_m02_regslice_AWVALID : STD_LOGIC;
  signal auto_cc_to_m02_regslice_BREADY : STD_LOGIC;
  signal auto_cc_to_m02_regslice_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_cc_to_m02_regslice_BVALID : STD_LOGIC;
  signal auto_cc_to_m02_regslice_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_cc_to_m02_regslice_RREADY : STD_LOGIC;
  signal auto_cc_to_m02_regslice_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_cc_to_m02_regslice_RVALID : STD_LOGIC;
  signal auto_cc_to_m02_regslice_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_cc_to_m02_regslice_WREADY : STD_LOGIC;
  signal auto_cc_to_m02_regslice_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_cc_to_m02_regslice_WVALID : STD_LOGIC;
  signal m02_couplers_to_auto_cc_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_auto_cc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_auto_cc_ARREADY : STD_LOGIC;
  signal m02_couplers_to_auto_cc_ARVALID : STD_LOGIC;
  signal m02_couplers_to_auto_cc_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_auto_cc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_auto_cc_AWREADY : STD_LOGIC;
  signal m02_couplers_to_auto_cc_AWVALID : STD_LOGIC;
  signal m02_couplers_to_auto_cc_BREADY : STD_LOGIC;
  signal m02_couplers_to_auto_cc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_auto_cc_BVALID : STD_LOGIC;
  signal m02_couplers_to_auto_cc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_auto_cc_RREADY : STD_LOGIC;
  signal m02_couplers_to_auto_cc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_auto_cc_RVALID : STD_LOGIC;
  signal m02_couplers_to_auto_cc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_auto_cc_WREADY : STD_LOGIC;
  signal m02_couplers_to_auto_cc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_auto_cc_WVALID : STD_LOGIC;
  signal m02_regslice_to_m02_couplers_ARADDR : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal m02_regslice_to_m02_couplers_ARREADY : STD_LOGIC;
  signal m02_regslice_to_m02_couplers_ARVALID : STD_LOGIC;
  signal m02_regslice_to_m02_couplers_AWADDR : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal m02_regslice_to_m02_couplers_AWREADY : STD_LOGIC;
  signal m02_regslice_to_m02_couplers_AWVALID : STD_LOGIC;
  signal m02_regslice_to_m02_couplers_BREADY : STD_LOGIC;
  signal m02_regslice_to_m02_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_regslice_to_m02_couplers_BVALID : STD_LOGIC;
  signal m02_regslice_to_m02_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_regslice_to_m02_couplers_RREADY : STD_LOGIC;
  signal m02_regslice_to_m02_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_regslice_to_m02_couplers_RVALID : STD_LOGIC;
  signal m02_regslice_to_m02_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_regslice_to_m02_couplers_WREADY : STD_LOGIC;
  signal m02_regslice_to_m02_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_regslice_to_m02_couplers_WVALID : STD_LOGIC;
  signal NLW_m02_regslice_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_m02_regslice_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
begin
  M_ACLK_1 <= M_ACLK;
  M_ARESETN_1 <= M_ARESETN;
  M_AXI_araddr(6 downto 0) <= m02_regslice_to_m02_couplers_ARADDR(6 downto 0);
  M_AXI_arvalid <= m02_regslice_to_m02_couplers_ARVALID;
  M_AXI_awaddr(6 downto 0) <= m02_regslice_to_m02_couplers_AWADDR(6 downto 0);
  M_AXI_awvalid <= m02_regslice_to_m02_couplers_AWVALID;
  M_AXI_bready <= m02_regslice_to_m02_couplers_BREADY;
  M_AXI_rready <= m02_regslice_to_m02_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m02_regslice_to_m02_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m02_regslice_to_m02_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= m02_regslice_to_m02_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= m02_couplers_to_auto_cc_ARREADY;
  S_AXI_awready <= m02_couplers_to_auto_cc_AWREADY;
  S_AXI_bresp(1 downto 0) <= m02_couplers_to_auto_cc_BRESP(1 downto 0);
  S_AXI_bvalid <= m02_couplers_to_auto_cc_BVALID;
  S_AXI_rdata(31 downto 0) <= m02_couplers_to_auto_cc_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m02_couplers_to_auto_cc_RRESP(1 downto 0);
  S_AXI_rvalid <= m02_couplers_to_auto_cc_RVALID;
  S_AXI_wready <= m02_couplers_to_auto_cc_WREADY;
  m02_couplers_to_auto_cc_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m02_couplers_to_auto_cc_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m02_couplers_to_auto_cc_ARVALID <= S_AXI_arvalid;
  m02_couplers_to_auto_cc_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m02_couplers_to_auto_cc_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m02_couplers_to_auto_cc_AWVALID <= S_AXI_awvalid;
  m02_couplers_to_auto_cc_BREADY <= S_AXI_bready;
  m02_couplers_to_auto_cc_RREADY <= S_AXI_rready;
  m02_couplers_to_auto_cc_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m02_couplers_to_auto_cc_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m02_couplers_to_auto_cc_WVALID <= S_AXI_wvalid;
  m02_regslice_to_m02_couplers_ARREADY <= M_AXI_arready;
  m02_regslice_to_m02_couplers_AWREADY <= M_AXI_awready;
  m02_regslice_to_m02_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m02_regslice_to_m02_couplers_BVALID <= M_AXI_bvalid;
  m02_regslice_to_m02_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m02_regslice_to_m02_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m02_regslice_to_m02_couplers_RVALID <= M_AXI_rvalid;
  m02_regslice_to_m02_couplers_WREADY <= M_AXI_wready;
auto_cc: component base_auto_cc_1
     port map (
      m_axi_aclk => M_ACLK_1,
      m_axi_araddr(6 downto 0) => auto_cc_to_m02_regslice_ARADDR(6 downto 0),
      m_axi_aresetn => M_ARESETN_1,
      m_axi_arprot(2 downto 0) => auto_cc_to_m02_regslice_ARPROT(2 downto 0),
      m_axi_arready => auto_cc_to_m02_regslice_ARREADY,
      m_axi_arvalid => auto_cc_to_m02_regslice_ARVALID,
      m_axi_awaddr(6 downto 0) => auto_cc_to_m02_regslice_AWADDR(6 downto 0),
      m_axi_awprot(2 downto 0) => auto_cc_to_m02_regslice_AWPROT(2 downto 0),
      m_axi_awready => auto_cc_to_m02_regslice_AWREADY,
      m_axi_awvalid => auto_cc_to_m02_regslice_AWVALID,
      m_axi_bready => auto_cc_to_m02_regslice_BREADY,
      m_axi_bresp(1 downto 0) => auto_cc_to_m02_regslice_BRESP(1 downto 0),
      m_axi_bvalid => auto_cc_to_m02_regslice_BVALID,
      m_axi_rdata(31 downto 0) => auto_cc_to_m02_regslice_RDATA(31 downto 0),
      m_axi_rready => auto_cc_to_m02_regslice_RREADY,
      m_axi_rresp(1 downto 0) => auto_cc_to_m02_regslice_RRESP(1 downto 0),
      m_axi_rvalid => auto_cc_to_m02_regslice_RVALID,
      m_axi_wdata(31 downto 0) => auto_cc_to_m02_regslice_WDATA(31 downto 0),
      m_axi_wready => auto_cc_to_m02_regslice_WREADY,
      m_axi_wstrb(3 downto 0) => auto_cc_to_m02_regslice_WSTRB(3 downto 0),
      m_axi_wvalid => auto_cc_to_m02_regslice_WVALID,
      s_axi_aclk => S_ACLK_1,
      s_axi_araddr(6 downto 0) => m02_couplers_to_auto_cc_ARADDR(6 downto 0),
      s_axi_aresetn => S_ARESETN_1,
      s_axi_arprot(2 downto 0) => m02_couplers_to_auto_cc_ARPROT(2 downto 0),
      s_axi_arready => m02_couplers_to_auto_cc_ARREADY,
      s_axi_arvalid => m02_couplers_to_auto_cc_ARVALID,
      s_axi_awaddr(6 downto 0) => m02_couplers_to_auto_cc_AWADDR(6 downto 0),
      s_axi_awprot(2 downto 0) => m02_couplers_to_auto_cc_AWPROT(2 downto 0),
      s_axi_awready => m02_couplers_to_auto_cc_AWREADY,
      s_axi_awvalid => m02_couplers_to_auto_cc_AWVALID,
      s_axi_bready => m02_couplers_to_auto_cc_BREADY,
      s_axi_bresp(1 downto 0) => m02_couplers_to_auto_cc_BRESP(1 downto 0),
      s_axi_bvalid => m02_couplers_to_auto_cc_BVALID,
      s_axi_rdata(31 downto 0) => m02_couplers_to_auto_cc_RDATA(31 downto 0),
      s_axi_rready => m02_couplers_to_auto_cc_RREADY,
      s_axi_rresp(1 downto 0) => m02_couplers_to_auto_cc_RRESP(1 downto 0),
      s_axi_rvalid => m02_couplers_to_auto_cc_RVALID,
      s_axi_wdata(31 downto 0) => m02_couplers_to_auto_cc_WDATA(31 downto 0),
      s_axi_wready => m02_couplers_to_auto_cc_WREADY,
      s_axi_wstrb(3 downto 0) => m02_couplers_to_auto_cc_WSTRB(3 downto 0),
      s_axi_wvalid => m02_couplers_to_auto_cc_WVALID
    );
m02_regslice: component base_m02_regslice_33
     port map (
      aclk => M_ACLK_1,
      aresetn => M_ARESETN_1,
      m_axi_araddr(6 downto 0) => m02_regslice_to_m02_couplers_ARADDR(6 downto 0),
      m_axi_arprot(2 downto 0) => NLW_m02_regslice_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arready => m02_regslice_to_m02_couplers_ARREADY,
      m_axi_arvalid => m02_regslice_to_m02_couplers_ARVALID,
      m_axi_awaddr(6 downto 0) => m02_regslice_to_m02_couplers_AWADDR(6 downto 0),
      m_axi_awprot(2 downto 0) => NLW_m02_regslice_m_axi_awprot_UNCONNECTED(2 downto 0),
      m_axi_awready => m02_regslice_to_m02_couplers_AWREADY,
      m_axi_awvalid => m02_regslice_to_m02_couplers_AWVALID,
      m_axi_bready => m02_regslice_to_m02_couplers_BREADY,
      m_axi_bresp(1 downto 0) => m02_regslice_to_m02_couplers_BRESP(1 downto 0),
      m_axi_bvalid => m02_regslice_to_m02_couplers_BVALID,
      m_axi_rdata(31 downto 0) => m02_regslice_to_m02_couplers_RDATA(31 downto 0),
      m_axi_rready => m02_regslice_to_m02_couplers_RREADY,
      m_axi_rresp(1 downto 0) => m02_regslice_to_m02_couplers_RRESP(1 downto 0),
      m_axi_rvalid => m02_regslice_to_m02_couplers_RVALID,
      m_axi_wdata(31 downto 0) => m02_regslice_to_m02_couplers_WDATA(31 downto 0),
      m_axi_wready => m02_regslice_to_m02_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => m02_regslice_to_m02_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => m02_regslice_to_m02_couplers_WVALID,
      s_axi_araddr(6 downto 0) => auto_cc_to_m02_regslice_ARADDR(6 downto 0),
      s_axi_arprot(2 downto 0) => auto_cc_to_m02_regslice_ARPROT(2 downto 0),
      s_axi_arready => auto_cc_to_m02_regslice_ARREADY,
      s_axi_arvalid => auto_cc_to_m02_regslice_ARVALID,
      s_axi_awaddr(6 downto 0) => auto_cc_to_m02_regslice_AWADDR(6 downto 0),
      s_axi_awprot(2 downto 0) => auto_cc_to_m02_regslice_AWPROT(2 downto 0),
      s_axi_awready => auto_cc_to_m02_regslice_AWREADY,
      s_axi_awvalid => auto_cc_to_m02_regslice_AWVALID,
      s_axi_bready => auto_cc_to_m02_regslice_BREADY,
      s_axi_bresp(1 downto 0) => auto_cc_to_m02_regslice_BRESP(1 downto 0),
      s_axi_bvalid => auto_cc_to_m02_regslice_BVALID,
      s_axi_rdata(31 downto 0) => auto_cc_to_m02_regslice_RDATA(31 downto 0),
      s_axi_rready => auto_cc_to_m02_regslice_RREADY,
      s_axi_rresp(1 downto 0) => auto_cc_to_m02_regslice_RRESP(1 downto 0),
      s_axi_rvalid => auto_cc_to_m02_regslice_RVALID,
      s_axi_wdata(31 downto 0) => auto_cc_to_m02_regslice_WDATA(31 downto 0),
      s_axi_wready => auto_cc_to_m02_regslice_WREADY,
      s_axi_wstrb(3 downto 0) => auto_cc_to_m02_regslice_WSTRB(3 downto 0),
      s_axi_wvalid => auto_cc_to_m02_regslice_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m03_couplers_imp_1J9C68M is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 4 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 4 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m03_couplers_imp_1J9C68M;

architecture STRUCTURE of m03_couplers_imp_1J9C68M is
  component base_m03_regslice_31 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 4 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 4 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component base_m03_regslice_31;
  signal M_ACLK_1 : STD_LOGIC;
  signal M_ARESETN_1 : STD_LOGIC;
  signal m03_couplers_to_m03_regslice_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_m03_regslice_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m03_couplers_to_m03_regslice_ARREADY : STD_LOGIC;
  signal m03_couplers_to_m03_regslice_ARVALID : STD_LOGIC;
  signal m03_couplers_to_m03_regslice_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_m03_regslice_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m03_couplers_to_m03_regslice_AWREADY : STD_LOGIC;
  signal m03_couplers_to_m03_regslice_AWVALID : STD_LOGIC;
  signal m03_couplers_to_m03_regslice_BREADY : STD_LOGIC;
  signal m03_couplers_to_m03_regslice_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_m03_regslice_BVALID : STD_LOGIC;
  signal m03_couplers_to_m03_regslice_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_m03_regslice_RREADY : STD_LOGIC;
  signal m03_couplers_to_m03_regslice_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_m03_regslice_RVALID : STD_LOGIC;
  signal m03_couplers_to_m03_regslice_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_m03_regslice_WREADY : STD_LOGIC;
  signal m03_couplers_to_m03_regslice_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m03_couplers_to_m03_regslice_WVALID : STD_LOGIC;
  signal m03_regslice_to_m03_couplers_ARADDR : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal m03_regslice_to_m03_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m03_regslice_to_m03_couplers_ARREADY : STD_LOGIC;
  signal m03_regslice_to_m03_couplers_ARVALID : STD_LOGIC;
  signal m03_regslice_to_m03_couplers_AWADDR : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal m03_regslice_to_m03_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m03_regslice_to_m03_couplers_AWREADY : STD_LOGIC;
  signal m03_regslice_to_m03_couplers_AWVALID : STD_LOGIC;
  signal m03_regslice_to_m03_couplers_BREADY : STD_LOGIC;
  signal m03_regslice_to_m03_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_regslice_to_m03_couplers_BVALID : STD_LOGIC;
  signal m03_regslice_to_m03_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_regslice_to_m03_couplers_RREADY : STD_LOGIC;
  signal m03_regslice_to_m03_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_regslice_to_m03_couplers_RVALID : STD_LOGIC;
  signal m03_regslice_to_m03_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_regslice_to_m03_couplers_WREADY : STD_LOGIC;
  signal m03_regslice_to_m03_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m03_regslice_to_m03_couplers_WVALID : STD_LOGIC;
begin
  M_ACLK_1 <= M_ACLK;
  M_ARESETN_1 <= M_ARESETN;
  M_AXI_araddr(4 downto 0) <= m03_regslice_to_m03_couplers_ARADDR(4 downto 0);
  M_AXI_arprot(2 downto 0) <= m03_regslice_to_m03_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid <= m03_regslice_to_m03_couplers_ARVALID;
  M_AXI_awaddr(4 downto 0) <= m03_regslice_to_m03_couplers_AWADDR(4 downto 0);
  M_AXI_awprot(2 downto 0) <= m03_regslice_to_m03_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid <= m03_regslice_to_m03_couplers_AWVALID;
  M_AXI_bready <= m03_regslice_to_m03_couplers_BREADY;
  M_AXI_rready <= m03_regslice_to_m03_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m03_regslice_to_m03_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m03_regslice_to_m03_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= m03_regslice_to_m03_couplers_WVALID;
  S_AXI_arready <= m03_couplers_to_m03_regslice_ARREADY;
  S_AXI_awready <= m03_couplers_to_m03_regslice_AWREADY;
  S_AXI_bresp(1 downto 0) <= m03_couplers_to_m03_regslice_BRESP(1 downto 0);
  S_AXI_bvalid <= m03_couplers_to_m03_regslice_BVALID;
  S_AXI_rdata(31 downto 0) <= m03_couplers_to_m03_regslice_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m03_couplers_to_m03_regslice_RRESP(1 downto 0);
  S_AXI_rvalid <= m03_couplers_to_m03_regslice_RVALID;
  S_AXI_wready <= m03_couplers_to_m03_regslice_WREADY;
  m03_couplers_to_m03_regslice_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m03_couplers_to_m03_regslice_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m03_couplers_to_m03_regslice_ARVALID <= S_AXI_arvalid;
  m03_couplers_to_m03_regslice_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m03_couplers_to_m03_regslice_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m03_couplers_to_m03_regslice_AWVALID <= S_AXI_awvalid;
  m03_couplers_to_m03_regslice_BREADY <= S_AXI_bready;
  m03_couplers_to_m03_regslice_RREADY <= S_AXI_rready;
  m03_couplers_to_m03_regslice_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m03_couplers_to_m03_regslice_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m03_couplers_to_m03_regslice_WVALID <= S_AXI_wvalid;
  m03_regslice_to_m03_couplers_ARREADY <= M_AXI_arready;
  m03_regslice_to_m03_couplers_AWREADY <= M_AXI_awready;
  m03_regslice_to_m03_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m03_regslice_to_m03_couplers_BVALID <= M_AXI_bvalid;
  m03_regslice_to_m03_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m03_regslice_to_m03_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m03_regslice_to_m03_couplers_RVALID <= M_AXI_rvalid;
  m03_regslice_to_m03_couplers_WREADY <= M_AXI_wready;
m03_regslice: component base_m03_regslice_31
     port map (
      aclk => M_ACLK_1,
      aresetn => M_ARESETN_1,
      m_axi_araddr(4 downto 0) => m03_regslice_to_m03_couplers_ARADDR(4 downto 0),
      m_axi_arprot(2 downto 0) => m03_regslice_to_m03_couplers_ARPROT(2 downto 0),
      m_axi_arready => m03_regslice_to_m03_couplers_ARREADY,
      m_axi_arvalid => m03_regslice_to_m03_couplers_ARVALID,
      m_axi_awaddr(4 downto 0) => m03_regslice_to_m03_couplers_AWADDR(4 downto 0),
      m_axi_awprot(2 downto 0) => m03_regslice_to_m03_couplers_AWPROT(2 downto 0),
      m_axi_awready => m03_regslice_to_m03_couplers_AWREADY,
      m_axi_awvalid => m03_regslice_to_m03_couplers_AWVALID,
      m_axi_bready => m03_regslice_to_m03_couplers_BREADY,
      m_axi_bresp(1 downto 0) => m03_regslice_to_m03_couplers_BRESP(1 downto 0),
      m_axi_bvalid => m03_regslice_to_m03_couplers_BVALID,
      m_axi_rdata(31 downto 0) => m03_regslice_to_m03_couplers_RDATA(31 downto 0),
      m_axi_rready => m03_regslice_to_m03_couplers_RREADY,
      m_axi_rresp(1 downto 0) => m03_regslice_to_m03_couplers_RRESP(1 downto 0),
      m_axi_rvalid => m03_regslice_to_m03_couplers_RVALID,
      m_axi_wdata(31 downto 0) => m03_regslice_to_m03_couplers_WDATA(31 downto 0),
      m_axi_wready => m03_regslice_to_m03_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => m03_regslice_to_m03_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => m03_regslice_to_m03_couplers_WVALID,
      s_axi_araddr(4 downto 0) => m03_couplers_to_m03_regslice_ARADDR(4 downto 0),
      s_axi_arprot(2 downto 0) => m03_couplers_to_m03_regslice_ARPROT(2 downto 0),
      s_axi_arready => m03_couplers_to_m03_regslice_ARREADY,
      s_axi_arvalid => m03_couplers_to_m03_regslice_ARVALID,
      s_axi_awaddr(4 downto 0) => m03_couplers_to_m03_regslice_AWADDR(4 downto 0),
      s_axi_awprot(2 downto 0) => m03_couplers_to_m03_regslice_AWPROT(2 downto 0),
      s_axi_awready => m03_couplers_to_m03_regslice_AWREADY,
      s_axi_awvalid => m03_couplers_to_m03_regslice_AWVALID,
      s_axi_bready => m03_couplers_to_m03_regslice_BREADY,
      s_axi_bresp(1 downto 0) => m03_couplers_to_m03_regslice_BRESP(1 downto 0),
      s_axi_bvalid => m03_couplers_to_m03_regslice_BVALID,
      s_axi_rdata(31 downto 0) => m03_couplers_to_m03_regslice_RDATA(31 downto 0),
      s_axi_rready => m03_couplers_to_m03_regslice_RREADY,
      s_axi_rresp(1 downto 0) => m03_couplers_to_m03_regslice_RRESP(1 downto 0),
      s_axi_rvalid => m03_couplers_to_m03_regslice_RVALID,
      s_axi_wdata(31 downto 0) => m03_couplers_to_m03_regslice_WDATA(31 downto 0),
      s_axi_wready => m03_couplers_to_m03_regslice_WREADY,
      s_axi_wstrb(3 downto 0) => m03_couplers_to_m03_regslice_WSTRB(3 downto 0),
      s_axi_wvalid => m03_couplers_to_m03_regslice_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m03_couplers_imp_QNDXZL is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m03_couplers_imp_QNDXZL;

architecture STRUCTURE of m03_couplers_imp_QNDXZL is
  component base_m03_regslice_30 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component base_m03_regslice_30;
  component base_auto_pc_2 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component base_auto_pc_2;
  signal M_ACLK_1 : STD_LOGIC;
  signal M_ARESETN_1 : STD_LOGIC;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_pc_to_m03_regslice_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m03_regslice_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_m03_regslice_ARREADY : STD_LOGIC;
  signal auto_pc_to_m03_regslice_ARVALID : STD_LOGIC;
  signal auto_pc_to_m03_regslice_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m03_regslice_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_m03_regslice_AWREADY : STD_LOGIC;
  signal auto_pc_to_m03_regslice_AWVALID : STD_LOGIC;
  signal auto_pc_to_m03_regslice_BREADY : STD_LOGIC;
  signal auto_pc_to_m03_regslice_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m03_regslice_BVALID : STD_LOGIC;
  signal auto_pc_to_m03_regslice_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m03_regslice_RREADY : STD_LOGIC;
  signal auto_pc_to_m03_regslice_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m03_regslice_RVALID : STD_LOGIC;
  signal auto_pc_to_m03_regslice_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m03_regslice_WREADY : STD_LOGIC;
  signal auto_pc_to_m03_regslice_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m03_regslice_WVALID : STD_LOGIC;
  signal m03_couplers_to_auto_pc_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_auto_pc_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_auto_pc_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m03_couplers_to_auto_pc_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal m03_couplers_to_auto_pc_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m03_couplers_to_auto_pc_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_auto_pc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m03_couplers_to_auto_pc_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m03_couplers_to_auto_pc_ARREADY : STD_LOGIC;
  signal m03_couplers_to_auto_pc_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m03_couplers_to_auto_pc_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m03_couplers_to_auto_pc_ARVALID : STD_LOGIC;
  signal m03_couplers_to_auto_pc_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_auto_pc_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_auto_pc_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m03_couplers_to_auto_pc_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal m03_couplers_to_auto_pc_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m03_couplers_to_auto_pc_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_auto_pc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m03_couplers_to_auto_pc_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m03_couplers_to_auto_pc_AWREADY : STD_LOGIC;
  signal m03_couplers_to_auto_pc_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m03_couplers_to_auto_pc_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m03_couplers_to_auto_pc_AWVALID : STD_LOGIC;
  signal m03_couplers_to_auto_pc_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal m03_couplers_to_auto_pc_BREADY : STD_LOGIC;
  signal m03_couplers_to_auto_pc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_auto_pc_BVALID : STD_LOGIC;
  signal m03_couplers_to_auto_pc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_auto_pc_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal m03_couplers_to_auto_pc_RLAST : STD_LOGIC;
  signal m03_couplers_to_auto_pc_RREADY : STD_LOGIC;
  signal m03_couplers_to_auto_pc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_auto_pc_RVALID : STD_LOGIC;
  signal m03_couplers_to_auto_pc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_auto_pc_WLAST : STD_LOGIC;
  signal m03_couplers_to_auto_pc_WREADY : STD_LOGIC;
  signal m03_couplers_to_auto_pc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m03_couplers_to_auto_pc_WVALID : STD_LOGIC;
  signal m03_regslice_to_m03_couplers_ARADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal m03_regslice_to_m03_couplers_ARREADY : STD_LOGIC;
  signal m03_regslice_to_m03_couplers_ARVALID : STD_LOGIC;
  signal m03_regslice_to_m03_couplers_AWADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal m03_regslice_to_m03_couplers_AWREADY : STD_LOGIC;
  signal m03_regslice_to_m03_couplers_AWVALID : STD_LOGIC;
  signal m03_regslice_to_m03_couplers_BREADY : STD_LOGIC;
  signal m03_regslice_to_m03_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_regslice_to_m03_couplers_BVALID : STD_LOGIC;
  signal m03_regslice_to_m03_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_regslice_to_m03_couplers_RREADY : STD_LOGIC;
  signal m03_regslice_to_m03_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_regslice_to_m03_couplers_RVALID : STD_LOGIC;
  signal m03_regslice_to_m03_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_regslice_to_m03_couplers_WREADY : STD_LOGIC;
  signal m03_regslice_to_m03_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m03_regslice_to_m03_couplers_WVALID : STD_LOGIC;
  signal NLW_m03_regslice_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_m03_regslice_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
begin
  M_ACLK_1 <= M_ACLK;
  M_ARESETN_1 <= M_ARESETN;
  M_AXI_araddr(8 downto 0) <= m03_regslice_to_m03_couplers_ARADDR(8 downto 0);
  M_AXI_arvalid <= m03_regslice_to_m03_couplers_ARVALID;
  M_AXI_awaddr(8 downto 0) <= m03_regslice_to_m03_couplers_AWADDR(8 downto 0);
  M_AXI_awvalid <= m03_regslice_to_m03_couplers_AWVALID;
  M_AXI_bready <= m03_regslice_to_m03_couplers_BREADY;
  M_AXI_rready <= m03_regslice_to_m03_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m03_regslice_to_m03_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m03_regslice_to_m03_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= m03_regslice_to_m03_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= m03_couplers_to_auto_pc_ARREADY;
  S_AXI_awready <= m03_couplers_to_auto_pc_AWREADY;
  S_AXI_bid(11 downto 0) <= m03_couplers_to_auto_pc_BID(11 downto 0);
  S_AXI_bresp(1 downto 0) <= m03_couplers_to_auto_pc_BRESP(1 downto 0);
  S_AXI_bvalid <= m03_couplers_to_auto_pc_BVALID;
  S_AXI_rdata(31 downto 0) <= m03_couplers_to_auto_pc_RDATA(31 downto 0);
  S_AXI_rid(11 downto 0) <= m03_couplers_to_auto_pc_RID(11 downto 0);
  S_AXI_rlast <= m03_couplers_to_auto_pc_RLAST;
  S_AXI_rresp(1 downto 0) <= m03_couplers_to_auto_pc_RRESP(1 downto 0);
  S_AXI_rvalid <= m03_couplers_to_auto_pc_RVALID;
  S_AXI_wready <= m03_couplers_to_auto_pc_WREADY;
  m03_couplers_to_auto_pc_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m03_couplers_to_auto_pc_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  m03_couplers_to_auto_pc_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  m03_couplers_to_auto_pc_ARID(11 downto 0) <= S_AXI_arid(11 downto 0);
  m03_couplers_to_auto_pc_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  m03_couplers_to_auto_pc_ARLOCK(0) <= S_AXI_arlock(0);
  m03_couplers_to_auto_pc_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m03_couplers_to_auto_pc_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  m03_couplers_to_auto_pc_ARREGION(3 downto 0) <= S_AXI_arregion(3 downto 0);
  m03_couplers_to_auto_pc_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  m03_couplers_to_auto_pc_ARVALID <= S_AXI_arvalid;
  m03_couplers_to_auto_pc_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m03_couplers_to_auto_pc_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  m03_couplers_to_auto_pc_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  m03_couplers_to_auto_pc_AWID(11 downto 0) <= S_AXI_awid(11 downto 0);
  m03_couplers_to_auto_pc_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  m03_couplers_to_auto_pc_AWLOCK(0) <= S_AXI_awlock(0);
  m03_couplers_to_auto_pc_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m03_couplers_to_auto_pc_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  m03_couplers_to_auto_pc_AWREGION(3 downto 0) <= S_AXI_awregion(3 downto 0);
  m03_couplers_to_auto_pc_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  m03_couplers_to_auto_pc_AWVALID <= S_AXI_awvalid;
  m03_couplers_to_auto_pc_BREADY <= S_AXI_bready;
  m03_couplers_to_auto_pc_RREADY <= S_AXI_rready;
  m03_couplers_to_auto_pc_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m03_couplers_to_auto_pc_WLAST <= S_AXI_wlast;
  m03_couplers_to_auto_pc_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m03_couplers_to_auto_pc_WVALID <= S_AXI_wvalid;
  m03_regslice_to_m03_couplers_ARREADY <= M_AXI_arready;
  m03_regslice_to_m03_couplers_AWREADY <= M_AXI_awready;
  m03_regslice_to_m03_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m03_regslice_to_m03_couplers_BVALID <= M_AXI_bvalid;
  m03_regslice_to_m03_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m03_regslice_to_m03_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m03_regslice_to_m03_couplers_RVALID <= M_AXI_rvalid;
  m03_regslice_to_m03_couplers_WREADY <= M_AXI_wready;
auto_pc: component base_auto_pc_2
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1,
      m_axi_araddr(31 downto 0) => auto_pc_to_m03_regslice_ARADDR(31 downto 0),
      m_axi_arprot(2 downto 0) => auto_pc_to_m03_regslice_ARPROT(2 downto 0),
      m_axi_arready => auto_pc_to_m03_regslice_ARREADY,
      m_axi_arvalid => auto_pc_to_m03_regslice_ARVALID,
      m_axi_awaddr(31 downto 0) => auto_pc_to_m03_regslice_AWADDR(31 downto 0),
      m_axi_awprot(2 downto 0) => auto_pc_to_m03_regslice_AWPROT(2 downto 0),
      m_axi_awready => auto_pc_to_m03_regslice_AWREADY,
      m_axi_awvalid => auto_pc_to_m03_regslice_AWVALID,
      m_axi_bready => auto_pc_to_m03_regslice_BREADY,
      m_axi_bresp(1 downto 0) => auto_pc_to_m03_regslice_BRESP(1 downto 0),
      m_axi_bvalid => auto_pc_to_m03_regslice_BVALID,
      m_axi_rdata(31 downto 0) => auto_pc_to_m03_regslice_RDATA(31 downto 0),
      m_axi_rready => auto_pc_to_m03_regslice_RREADY,
      m_axi_rresp(1 downto 0) => auto_pc_to_m03_regslice_RRESP(1 downto 0),
      m_axi_rvalid => auto_pc_to_m03_regslice_RVALID,
      m_axi_wdata(31 downto 0) => auto_pc_to_m03_regslice_WDATA(31 downto 0),
      m_axi_wready => auto_pc_to_m03_regslice_WREADY,
      m_axi_wstrb(3 downto 0) => auto_pc_to_m03_regslice_WSTRB(3 downto 0),
      m_axi_wvalid => auto_pc_to_m03_regslice_WVALID,
      s_axi_araddr(31 downto 0) => m03_couplers_to_auto_pc_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => m03_couplers_to_auto_pc_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => m03_couplers_to_auto_pc_ARCACHE(3 downto 0),
      s_axi_arid(11 downto 0) => m03_couplers_to_auto_pc_ARID(11 downto 0),
      s_axi_arlen(7 downto 0) => m03_couplers_to_auto_pc_ARLEN(7 downto 0),
      s_axi_arlock(0) => m03_couplers_to_auto_pc_ARLOCK(0),
      s_axi_arprot(2 downto 0) => m03_couplers_to_auto_pc_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => m03_couplers_to_auto_pc_ARQOS(3 downto 0),
      s_axi_arready => m03_couplers_to_auto_pc_ARREADY,
      s_axi_arregion(3 downto 0) => m03_couplers_to_auto_pc_ARREGION(3 downto 0),
      s_axi_arsize(2 downto 0) => m03_couplers_to_auto_pc_ARSIZE(2 downto 0),
      s_axi_arvalid => m03_couplers_to_auto_pc_ARVALID,
      s_axi_awaddr(31 downto 0) => m03_couplers_to_auto_pc_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => m03_couplers_to_auto_pc_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => m03_couplers_to_auto_pc_AWCACHE(3 downto 0),
      s_axi_awid(11 downto 0) => m03_couplers_to_auto_pc_AWID(11 downto 0),
      s_axi_awlen(7 downto 0) => m03_couplers_to_auto_pc_AWLEN(7 downto 0),
      s_axi_awlock(0) => m03_couplers_to_auto_pc_AWLOCK(0),
      s_axi_awprot(2 downto 0) => m03_couplers_to_auto_pc_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => m03_couplers_to_auto_pc_AWQOS(3 downto 0),
      s_axi_awready => m03_couplers_to_auto_pc_AWREADY,
      s_axi_awregion(3 downto 0) => m03_couplers_to_auto_pc_AWREGION(3 downto 0),
      s_axi_awsize(2 downto 0) => m03_couplers_to_auto_pc_AWSIZE(2 downto 0),
      s_axi_awvalid => m03_couplers_to_auto_pc_AWVALID,
      s_axi_bid(11 downto 0) => m03_couplers_to_auto_pc_BID(11 downto 0),
      s_axi_bready => m03_couplers_to_auto_pc_BREADY,
      s_axi_bresp(1 downto 0) => m03_couplers_to_auto_pc_BRESP(1 downto 0),
      s_axi_bvalid => m03_couplers_to_auto_pc_BVALID,
      s_axi_rdata(31 downto 0) => m03_couplers_to_auto_pc_RDATA(31 downto 0),
      s_axi_rid(11 downto 0) => m03_couplers_to_auto_pc_RID(11 downto 0),
      s_axi_rlast => m03_couplers_to_auto_pc_RLAST,
      s_axi_rready => m03_couplers_to_auto_pc_RREADY,
      s_axi_rresp(1 downto 0) => m03_couplers_to_auto_pc_RRESP(1 downto 0),
      s_axi_rvalid => m03_couplers_to_auto_pc_RVALID,
      s_axi_wdata(31 downto 0) => m03_couplers_to_auto_pc_WDATA(31 downto 0),
      s_axi_wlast => m03_couplers_to_auto_pc_WLAST,
      s_axi_wready => m03_couplers_to_auto_pc_WREADY,
      s_axi_wstrb(3 downto 0) => m03_couplers_to_auto_pc_WSTRB(3 downto 0),
      s_axi_wvalid => m03_couplers_to_auto_pc_WVALID
    );
m03_regslice: component base_m03_regslice_30
     port map (
      aclk => M_ACLK_1,
      aresetn => M_ARESETN_1,
      m_axi_araddr(8 downto 0) => m03_regslice_to_m03_couplers_ARADDR(8 downto 0),
      m_axi_arprot(2 downto 0) => NLW_m03_regslice_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arready => m03_regslice_to_m03_couplers_ARREADY,
      m_axi_arvalid => m03_regslice_to_m03_couplers_ARVALID,
      m_axi_awaddr(8 downto 0) => m03_regslice_to_m03_couplers_AWADDR(8 downto 0),
      m_axi_awprot(2 downto 0) => NLW_m03_regslice_m_axi_awprot_UNCONNECTED(2 downto 0),
      m_axi_awready => m03_regslice_to_m03_couplers_AWREADY,
      m_axi_awvalid => m03_regslice_to_m03_couplers_AWVALID,
      m_axi_bready => m03_regslice_to_m03_couplers_BREADY,
      m_axi_bresp(1 downto 0) => m03_regslice_to_m03_couplers_BRESP(1 downto 0),
      m_axi_bvalid => m03_regslice_to_m03_couplers_BVALID,
      m_axi_rdata(31 downto 0) => m03_regslice_to_m03_couplers_RDATA(31 downto 0),
      m_axi_rready => m03_regslice_to_m03_couplers_RREADY,
      m_axi_rresp(1 downto 0) => m03_regslice_to_m03_couplers_RRESP(1 downto 0),
      m_axi_rvalid => m03_regslice_to_m03_couplers_RVALID,
      m_axi_wdata(31 downto 0) => m03_regslice_to_m03_couplers_WDATA(31 downto 0),
      m_axi_wready => m03_regslice_to_m03_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => m03_regslice_to_m03_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => m03_regslice_to_m03_couplers_WVALID,
      s_axi_araddr(8 downto 0) => auto_pc_to_m03_regslice_ARADDR(8 downto 0),
      s_axi_arprot(2 downto 0) => auto_pc_to_m03_regslice_ARPROT(2 downto 0),
      s_axi_arready => auto_pc_to_m03_regslice_ARREADY,
      s_axi_arvalid => auto_pc_to_m03_regslice_ARVALID,
      s_axi_awaddr(8 downto 0) => auto_pc_to_m03_regslice_AWADDR(8 downto 0),
      s_axi_awprot(2 downto 0) => auto_pc_to_m03_regslice_AWPROT(2 downto 0),
      s_axi_awready => auto_pc_to_m03_regslice_AWREADY,
      s_axi_awvalid => auto_pc_to_m03_regslice_AWVALID,
      s_axi_bready => auto_pc_to_m03_regslice_BREADY,
      s_axi_bresp(1 downto 0) => auto_pc_to_m03_regslice_BRESP(1 downto 0),
      s_axi_bvalid => auto_pc_to_m03_regslice_BVALID,
      s_axi_rdata(31 downto 0) => auto_pc_to_m03_regslice_RDATA(31 downto 0),
      s_axi_rready => auto_pc_to_m03_regslice_RREADY,
      s_axi_rresp(1 downto 0) => auto_pc_to_m03_regslice_RRESP(1 downto 0),
      s_axi_rvalid => auto_pc_to_m03_regslice_RVALID,
      s_axi_wdata(31 downto 0) => auto_pc_to_m03_regslice_WDATA(31 downto 0),
      s_axi_wready => auto_pc_to_m03_regslice_WREADY,
      s_axi_wstrb(3 downto 0) => auto_pc_to_m03_regslice_WSTRB(3 downto 0),
      s_axi_wvalid => auto_pc_to_m03_regslice_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m04_couplers_imp_19743FA is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m04_couplers_imp_19743FA;

architecture STRUCTURE of m04_couplers_imp_19743FA is
  component base_m04_regslice_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component base_m04_regslice_0;
  signal M_ACLK_1 : STD_LOGIC;
  signal M_ARESETN_1 : STD_LOGIC;
  signal m04_couplers_to_m04_regslice_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_m04_regslice_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m04_couplers_to_m04_regslice_ARREADY : STD_LOGIC;
  signal m04_couplers_to_m04_regslice_ARVALID : STD_LOGIC;
  signal m04_couplers_to_m04_regslice_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_m04_regslice_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m04_couplers_to_m04_regslice_AWREADY : STD_LOGIC;
  signal m04_couplers_to_m04_regslice_AWVALID : STD_LOGIC;
  signal m04_couplers_to_m04_regslice_BREADY : STD_LOGIC;
  signal m04_couplers_to_m04_regslice_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_m04_regslice_BVALID : STD_LOGIC;
  signal m04_couplers_to_m04_regslice_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_m04_regslice_RREADY : STD_LOGIC;
  signal m04_couplers_to_m04_regslice_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_m04_regslice_RVALID : STD_LOGIC;
  signal m04_couplers_to_m04_regslice_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_m04_regslice_WREADY : STD_LOGIC;
  signal m04_couplers_to_m04_regslice_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m04_couplers_to_m04_regslice_WVALID : STD_LOGIC;
  signal m04_regslice_to_m04_couplers_ARADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal m04_regslice_to_m04_couplers_ARREADY : STD_LOGIC;
  signal m04_regslice_to_m04_couplers_ARVALID : STD_LOGIC;
  signal m04_regslice_to_m04_couplers_AWADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal m04_regslice_to_m04_couplers_AWREADY : STD_LOGIC;
  signal m04_regslice_to_m04_couplers_AWVALID : STD_LOGIC;
  signal m04_regslice_to_m04_couplers_BREADY : STD_LOGIC;
  signal m04_regslice_to_m04_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_regslice_to_m04_couplers_BVALID : STD_LOGIC;
  signal m04_regslice_to_m04_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_regslice_to_m04_couplers_RREADY : STD_LOGIC;
  signal m04_regslice_to_m04_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_regslice_to_m04_couplers_RVALID : STD_LOGIC;
  signal m04_regslice_to_m04_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_regslice_to_m04_couplers_WREADY : STD_LOGIC;
  signal m04_regslice_to_m04_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m04_regslice_to_m04_couplers_WVALID : STD_LOGIC;
  signal NLW_m04_regslice_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_m04_regslice_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
begin
  M_ACLK_1 <= M_ACLK;
  M_ARESETN_1 <= M_ARESETN;
  M_AXI_araddr(8 downto 0) <= m04_regslice_to_m04_couplers_ARADDR(8 downto 0);
  M_AXI_arvalid <= m04_regslice_to_m04_couplers_ARVALID;
  M_AXI_awaddr(8 downto 0) <= m04_regslice_to_m04_couplers_AWADDR(8 downto 0);
  M_AXI_awvalid <= m04_regslice_to_m04_couplers_AWVALID;
  M_AXI_bready <= m04_regslice_to_m04_couplers_BREADY;
  M_AXI_rready <= m04_regslice_to_m04_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m04_regslice_to_m04_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m04_regslice_to_m04_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= m04_regslice_to_m04_couplers_WVALID;
  S_AXI_arready <= m04_couplers_to_m04_regslice_ARREADY;
  S_AXI_awready <= m04_couplers_to_m04_regslice_AWREADY;
  S_AXI_bresp(1 downto 0) <= m04_couplers_to_m04_regslice_BRESP(1 downto 0);
  S_AXI_bvalid <= m04_couplers_to_m04_regslice_BVALID;
  S_AXI_rdata(31 downto 0) <= m04_couplers_to_m04_regslice_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m04_couplers_to_m04_regslice_RRESP(1 downto 0);
  S_AXI_rvalid <= m04_couplers_to_m04_regslice_RVALID;
  S_AXI_wready <= m04_couplers_to_m04_regslice_WREADY;
  m04_couplers_to_m04_regslice_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m04_couplers_to_m04_regslice_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m04_couplers_to_m04_regslice_ARVALID <= S_AXI_arvalid;
  m04_couplers_to_m04_regslice_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m04_couplers_to_m04_regslice_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m04_couplers_to_m04_regslice_AWVALID <= S_AXI_awvalid;
  m04_couplers_to_m04_regslice_BREADY <= S_AXI_bready;
  m04_couplers_to_m04_regslice_RREADY <= S_AXI_rready;
  m04_couplers_to_m04_regslice_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m04_couplers_to_m04_regslice_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m04_couplers_to_m04_regslice_WVALID <= S_AXI_wvalid;
  m04_regslice_to_m04_couplers_ARREADY <= M_AXI_arready;
  m04_regslice_to_m04_couplers_AWREADY <= M_AXI_awready;
  m04_regslice_to_m04_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m04_regslice_to_m04_couplers_BVALID <= M_AXI_bvalid;
  m04_regslice_to_m04_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m04_regslice_to_m04_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m04_regslice_to_m04_couplers_RVALID <= M_AXI_rvalid;
  m04_regslice_to_m04_couplers_WREADY <= M_AXI_wready;
m04_regslice: component base_m04_regslice_0
     port map (
      aclk => M_ACLK_1,
      aresetn => M_ARESETN_1,
      m_axi_araddr(8 downto 0) => m04_regslice_to_m04_couplers_ARADDR(8 downto 0),
      m_axi_arprot(2 downto 0) => NLW_m04_regslice_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arready => m04_regslice_to_m04_couplers_ARREADY,
      m_axi_arvalid => m04_regslice_to_m04_couplers_ARVALID,
      m_axi_awaddr(8 downto 0) => m04_regslice_to_m04_couplers_AWADDR(8 downto 0),
      m_axi_awprot(2 downto 0) => NLW_m04_regslice_m_axi_awprot_UNCONNECTED(2 downto 0),
      m_axi_awready => m04_regslice_to_m04_couplers_AWREADY,
      m_axi_awvalid => m04_regslice_to_m04_couplers_AWVALID,
      m_axi_bready => m04_regslice_to_m04_couplers_BREADY,
      m_axi_bresp(1 downto 0) => m04_regslice_to_m04_couplers_BRESP(1 downto 0),
      m_axi_bvalid => m04_regslice_to_m04_couplers_BVALID,
      m_axi_rdata(31 downto 0) => m04_regslice_to_m04_couplers_RDATA(31 downto 0),
      m_axi_rready => m04_regslice_to_m04_couplers_RREADY,
      m_axi_rresp(1 downto 0) => m04_regslice_to_m04_couplers_RRESP(1 downto 0),
      m_axi_rvalid => m04_regslice_to_m04_couplers_RVALID,
      m_axi_wdata(31 downto 0) => m04_regslice_to_m04_couplers_WDATA(31 downto 0),
      m_axi_wready => m04_regslice_to_m04_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => m04_regslice_to_m04_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => m04_regslice_to_m04_couplers_WVALID,
      s_axi_araddr(8 downto 0) => m04_couplers_to_m04_regslice_ARADDR(8 downto 0),
      s_axi_arprot(2 downto 0) => m04_couplers_to_m04_regslice_ARPROT(2 downto 0),
      s_axi_arready => m04_couplers_to_m04_regslice_ARREADY,
      s_axi_arvalid => m04_couplers_to_m04_regslice_ARVALID,
      s_axi_awaddr(8 downto 0) => m04_couplers_to_m04_regslice_AWADDR(8 downto 0),
      s_axi_awprot(2 downto 0) => m04_couplers_to_m04_regslice_AWPROT(2 downto 0),
      s_axi_awready => m04_couplers_to_m04_regslice_AWREADY,
      s_axi_awvalid => m04_couplers_to_m04_regslice_AWVALID,
      s_axi_bready => m04_couplers_to_m04_regslice_BREADY,
      s_axi_bresp(1 downto 0) => m04_couplers_to_m04_regslice_BRESP(1 downto 0),
      s_axi_bvalid => m04_couplers_to_m04_regslice_BVALID,
      s_axi_rdata(31 downto 0) => m04_couplers_to_m04_regslice_RDATA(31 downto 0),
      s_axi_rready => m04_couplers_to_m04_regslice_RREADY,
      s_axi_rresp(1 downto 0) => m04_couplers_to_m04_regslice_RRESP(1 downto 0),
      s_axi_rvalid => m04_couplers_to_m04_regslice_RVALID,
      s_axi_wdata(31 downto 0) => m04_couplers_to_m04_regslice_WDATA(31 downto 0),
      s_axi_wready => m04_couplers_to_m04_regslice_WREADY,
      s_axi_wstrb(3 downto 0) => m04_couplers_to_m04_regslice_WSTRB(3 downto 0),
      s_axi_wvalid => m04_couplers_to_m04_regslice_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m05_couplers_imp_HQG6QO is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m05_couplers_imp_HQG6QO;

architecture STRUCTURE of m05_couplers_imp_HQG6QO is
  component base_m05_regslice_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component base_m05_regslice_0;
  signal M_ACLK_1 : STD_LOGIC;
  signal M_ARESETN_1 : STD_LOGIC;
  signal m05_couplers_to_m05_regslice_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_m05_regslice_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m05_couplers_to_m05_regslice_ARREADY : STD_LOGIC;
  signal m05_couplers_to_m05_regslice_ARVALID : STD_LOGIC;
  signal m05_couplers_to_m05_regslice_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_m05_regslice_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m05_couplers_to_m05_regslice_AWREADY : STD_LOGIC;
  signal m05_couplers_to_m05_regslice_AWVALID : STD_LOGIC;
  signal m05_couplers_to_m05_regslice_BREADY : STD_LOGIC;
  signal m05_couplers_to_m05_regslice_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_m05_regslice_BVALID : STD_LOGIC;
  signal m05_couplers_to_m05_regslice_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_m05_regslice_RREADY : STD_LOGIC;
  signal m05_couplers_to_m05_regslice_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_m05_regslice_RVALID : STD_LOGIC;
  signal m05_couplers_to_m05_regslice_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_m05_regslice_WREADY : STD_LOGIC;
  signal m05_couplers_to_m05_regslice_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m05_couplers_to_m05_regslice_WVALID : STD_LOGIC;
  signal m05_regslice_to_m05_couplers_ARADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal m05_regslice_to_m05_couplers_ARREADY : STD_LOGIC;
  signal m05_regslice_to_m05_couplers_ARVALID : STD_LOGIC;
  signal m05_regslice_to_m05_couplers_AWADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal m05_regslice_to_m05_couplers_AWREADY : STD_LOGIC;
  signal m05_regslice_to_m05_couplers_AWVALID : STD_LOGIC;
  signal m05_regslice_to_m05_couplers_BREADY : STD_LOGIC;
  signal m05_regslice_to_m05_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_regslice_to_m05_couplers_BVALID : STD_LOGIC;
  signal m05_regslice_to_m05_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_regslice_to_m05_couplers_RREADY : STD_LOGIC;
  signal m05_regslice_to_m05_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_regslice_to_m05_couplers_RVALID : STD_LOGIC;
  signal m05_regslice_to_m05_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_regslice_to_m05_couplers_WREADY : STD_LOGIC;
  signal m05_regslice_to_m05_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m05_regslice_to_m05_couplers_WVALID : STD_LOGIC;
  signal NLW_m05_regslice_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_m05_regslice_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
begin
  M_ACLK_1 <= M_ACLK;
  M_ARESETN_1 <= M_ARESETN;
  M_AXI_araddr(8 downto 0) <= m05_regslice_to_m05_couplers_ARADDR(8 downto 0);
  M_AXI_arvalid <= m05_regslice_to_m05_couplers_ARVALID;
  M_AXI_awaddr(8 downto 0) <= m05_regslice_to_m05_couplers_AWADDR(8 downto 0);
  M_AXI_awvalid <= m05_regslice_to_m05_couplers_AWVALID;
  M_AXI_bready <= m05_regslice_to_m05_couplers_BREADY;
  M_AXI_rready <= m05_regslice_to_m05_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m05_regslice_to_m05_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m05_regslice_to_m05_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= m05_regslice_to_m05_couplers_WVALID;
  S_AXI_arready <= m05_couplers_to_m05_regslice_ARREADY;
  S_AXI_awready <= m05_couplers_to_m05_regslice_AWREADY;
  S_AXI_bresp(1 downto 0) <= m05_couplers_to_m05_regslice_BRESP(1 downto 0);
  S_AXI_bvalid <= m05_couplers_to_m05_regslice_BVALID;
  S_AXI_rdata(31 downto 0) <= m05_couplers_to_m05_regslice_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m05_couplers_to_m05_regslice_RRESP(1 downto 0);
  S_AXI_rvalid <= m05_couplers_to_m05_regslice_RVALID;
  S_AXI_wready <= m05_couplers_to_m05_regslice_WREADY;
  m05_couplers_to_m05_regslice_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m05_couplers_to_m05_regslice_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m05_couplers_to_m05_regslice_ARVALID <= S_AXI_arvalid;
  m05_couplers_to_m05_regslice_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m05_couplers_to_m05_regslice_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m05_couplers_to_m05_regslice_AWVALID <= S_AXI_awvalid;
  m05_couplers_to_m05_regslice_BREADY <= S_AXI_bready;
  m05_couplers_to_m05_regslice_RREADY <= S_AXI_rready;
  m05_couplers_to_m05_regslice_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m05_couplers_to_m05_regslice_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m05_couplers_to_m05_regslice_WVALID <= S_AXI_wvalid;
  m05_regslice_to_m05_couplers_ARREADY <= M_AXI_arready;
  m05_regslice_to_m05_couplers_AWREADY <= M_AXI_awready;
  m05_regslice_to_m05_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m05_regslice_to_m05_couplers_BVALID <= M_AXI_bvalid;
  m05_regslice_to_m05_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m05_regslice_to_m05_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m05_regslice_to_m05_couplers_RVALID <= M_AXI_rvalid;
  m05_regslice_to_m05_couplers_WREADY <= M_AXI_wready;
m05_regslice: component base_m05_regslice_0
     port map (
      aclk => M_ACLK_1,
      aresetn => M_ARESETN_1,
      m_axi_araddr(8 downto 0) => m05_regslice_to_m05_couplers_ARADDR(8 downto 0),
      m_axi_arprot(2 downto 0) => NLW_m05_regslice_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arready => m05_regslice_to_m05_couplers_ARREADY,
      m_axi_arvalid => m05_regslice_to_m05_couplers_ARVALID,
      m_axi_awaddr(8 downto 0) => m05_regslice_to_m05_couplers_AWADDR(8 downto 0),
      m_axi_awprot(2 downto 0) => NLW_m05_regslice_m_axi_awprot_UNCONNECTED(2 downto 0),
      m_axi_awready => m05_regslice_to_m05_couplers_AWREADY,
      m_axi_awvalid => m05_regslice_to_m05_couplers_AWVALID,
      m_axi_bready => m05_regslice_to_m05_couplers_BREADY,
      m_axi_bresp(1 downto 0) => m05_regslice_to_m05_couplers_BRESP(1 downto 0),
      m_axi_bvalid => m05_regslice_to_m05_couplers_BVALID,
      m_axi_rdata(31 downto 0) => m05_regslice_to_m05_couplers_RDATA(31 downto 0),
      m_axi_rready => m05_regslice_to_m05_couplers_RREADY,
      m_axi_rresp(1 downto 0) => m05_regslice_to_m05_couplers_RRESP(1 downto 0),
      m_axi_rvalid => m05_regslice_to_m05_couplers_RVALID,
      m_axi_wdata(31 downto 0) => m05_regslice_to_m05_couplers_WDATA(31 downto 0),
      m_axi_wready => m05_regslice_to_m05_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => m05_regslice_to_m05_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => m05_regslice_to_m05_couplers_WVALID,
      s_axi_araddr(8 downto 0) => m05_couplers_to_m05_regslice_ARADDR(8 downto 0),
      s_axi_arprot(2 downto 0) => m05_couplers_to_m05_regslice_ARPROT(2 downto 0),
      s_axi_arready => m05_couplers_to_m05_regslice_ARREADY,
      s_axi_arvalid => m05_couplers_to_m05_regslice_ARVALID,
      s_axi_awaddr(8 downto 0) => m05_couplers_to_m05_regslice_AWADDR(8 downto 0),
      s_axi_awprot(2 downto 0) => m05_couplers_to_m05_regslice_AWPROT(2 downto 0),
      s_axi_awready => m05_couplers_to_m05_regslice_AWREADY,
      s_axi_awvalid => m05_couplers_to_m05_regslice_AWVALID,
      s_axi_bready => m05_couplers_to_m05_regslice_BREADY,
      s_axi_bresp(1 downto 0) => m05_couplers_to_m05_regslice_BRESP(1 downto 0),
      s_axi_bvalid => m05_couplers_to_m05_regslice_BVALID,
      s_axi_rdata(31 downto 0) => m05_couplers_to_m05_regslice_RDATA(31 downto 0),
      s_axi_rready => m05_couplers_to_m05_regslice_RREADY,
      s_axi_rresp(1 downto 0) => m05_couplers_to_m05_regslice_RRESP(1 downto 0),
      s_axi_rvalid => m05_couplers_to_m05_regslice_RVALID,
      s_axi_wdata(31 downto 0) => m05_couplers_to_m05_regslice_WDATA(31 downto 0),
      s_axi_wready => m05_couplers_to_m05_regslice_WREADY,
      s_axi_wstrb(3 downto 0) => m05_couplers_to_m05_regslice_WSTRB(3 downto 0),
      s_axi_wvalid => m05_couplers_to_m05_regslice_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m06_couplers_imp_IQPA7V is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 6 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 6 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m06_couplers_imp_IQPA7V;

architecture STRUCTURE of m06_couplers_imp_IQPA7V is
  component base_m06_regslice_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component base_m06_regslice_0;
  component base_auto_cc_2 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    m_axi_aresetn : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component base_auto_cc_2;
  signal M_ACLK_1 : STD_LOGIC;
  signal M_ARESETN_1 : STD_LOGIC;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_cc_to_m06_regslice_ARADDR : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal auto_cc_to_m06_regslice_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_cc_to_m06_regslice_ARREADY : STD_LOGIC;
  signal auto_cc_to_m06_regslice_ARVALID : STD_LOGIC;
  signal auto_cc_to_m06_regslice_AWADDR : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal auto_cc_to_m06_regslice_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_cc_to_m06_regslice_AWREADY : STD_LOGIC;
  signal auto_cc_to_m06_regslice_AWVALID : STD_LOGIC;
  signal auto_cc_to_m06_regslice_BREADY : STD_LOGIC;
  signal auto_cc_to_m06_regslice_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_cc_to_m06_regslice_BVALID : STD_LOGIC;
  signal auto_cc_to_m06_regslice_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_cc_to_m06_regslice_RREADY : STD_LOGIC;
  signal auto_cc_to_m06_regslice_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_cc_to_m06_regslice_RVALID : STD_LOGIC;
  signal auto_cc_to_m06_regslice_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_cc_to_m06_regslice_WREADY : STD_LOGIC;
  signal auto_cc_to_m06_regslice_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_cc_to_m06_regslice_WVALID : STD_LOGIC;
  signal m06_couplers_to_auto_cc_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_auto_cc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m06_couplers_to_auto_cc_ARREADY : STD_LOGIC;
  signal m06_couplers_to_auto_cc_ARVALID : STD_LOGIC;
  signal m06_couplers_to_auto_cc_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_auto_cc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m06_couplers_to_auto_cc_AWREADY : STD_LOGIC;
  signal m06_couplers_to_auto_cc_AWVALID : STD_LOGIC;
  signal m06_couplers_to_auto_cc_BREADY : STD_LOGIC;
  signal m06_couplers_to_auto_cc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m06_couplers_to_auto_cc_BVALID : STD_LOGIC;
  signal m06_couplers_to_auto_cc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_auto_cc_RREADY : STD_LOGIC;
  signal m06_couplers_to_auto_cc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m06_couplers_to_auto_cc_RVALID : STD_LOGIC;
  signal m06_couplers_to_auto_cc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_auto_cc_WREADY : STD_LOGIC;
  signal m06_couplers_to_auto_cc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m06_couplers_to_auto_cc_WVALID : STD_LOGIC;
  signal m06_regslice_to_m06_couplers_ARADDR : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal m06_regslice_to_m06_couplers_ARREADY : STD_LOGIC;
  signal m06_regslice_to_m06_couplers_ARVALID : STD_LOGIC;
  signal m06_regslice_to_m06_couplers_AWADDR : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal m06_regslice_to_m06_couplers_AWREADY : STD_LOGIC;
  signal m06_regslice_to_m06_couplers_AWVALID : STD_LOGIC;
  signal m06_regslice_to_m06_couplers_BREADY : STD_LOGIC;
  signal m06_regslice_to_m06_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m06_regslice_to_m06_couplers_BVALID : STD_LOGIC;
  signal m06_regslice_to_m06_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_regslice_to_m06_couplers_RREADY : STD_LOGIC;
  signal m06_regslice_to_m06_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m06_regslice_to_m06_couplers_RVALID : STD_LOGIC;
  signal m06_regslice_to_m06_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_regslice_to_m06_couplers_WREADY : STD_LOGIC;
  signal m06_regslice_to_m06_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m06_regslice_to_m06_couplers_WVALID : STD_LOGIC;
  signal NLW_m06_regslice_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_m06_regslice_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
begin
  M_ACLK_1 <= M_ACLK;
  M_ARESETN_1 <= M_ARESETN;
  M_AXI_araddr(6 downto 0) <= m06_regslice_to_m06_couplers_ARADDR(6 downto 0);
  M_AXI_arvalid <= m06_regslice_to_m06_couplers_ARVALID;
  M_AXI_awaddr(6 downto 0) <= m06_regslice_to_m06_couplers_AWADDR(6 downto 0);
  M_AXI_awvalid <= m06_regslice_to_m06_couplers_AWVALID;
  M_AXI_bready <= m06_regslice_to_m06_couplers_BREADY;
  M_AXI_rready <= m06_regslice_to_m06_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m06_regslice_to_m06_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m06_regslice_to_m06_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= m06_regslice_to_m06_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= m06_couplers_to_auto_cc_ARREADY;
  S_AXI_awready <= m06_couplers_to_auto_cc_AWREADY;
  S_AXI_bresp(1 downto 0) <= m06_couplers_to_auto_cc_BRESP(1 downto 0);
  S_AXI_bvalid <= m06_couplers_to_auto_cc_BVALID;
  S_AXI_rdata(31 downto 0) <= m06_couplers_to_auto_cc_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m06_couplers_to_auto_cc_RRESP(1 downto 0);
  S_AXI_rvalid <= m06_couplers_to_auto_cc_RVALID;
  S_AXI_wready <= m06_couplers_to_auto_cc_WREADY;
  m06_couplers_to_auto_cc_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m06_couplers_to_auto_cc_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m06_couplers_to_auto_cc_ARVALID <= S_AXI_arvalid;
  m06_couplers_to_auto_cc_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m06_couplers_to_auto_cc_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m06_couplers_to_auto_cc_AWVALID <= S_AXI_awvalid;
  m06_couplers_to_auto_cc_BREADY <= S_AXI_bready;
  m06_couplers_to_auto_cc_RREADY <= S_AXI_rready;
  m06_couplers_to_auto_cc_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m06_couplers_to_auto_cc_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m06_couplers_to_auto_cc_WVALID <= S_AXI_wvalid;
  m06_regslice_to_m06_couplers_ARREADY <= M_AXI_arready;
  m06_regslice_to_m06_couplers_AWREADY <= M_AXI_awready;
  m06_regslice_to_m06_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m06_regslice_to_m06_couplers_BVALID <= M_AXI_bvalid;
  m06_regslice_to_m06_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m06_regslice_to_m06_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m06_regslice_to_m06_couplers_RVALID <= M_AXI_rvalid;
  m06_regslice_to_m06_couplers_WREADY <= M_AXI_wready;
auto_cc: component base_auto_cc_2
     port map (
      m_axi_aclk => M_ACLK_1,
      m_axi_araddr(6 downto 0) => auto_cc_to_m06_regslice_ARADDR(6 downto 0),
      m_axi_aresetn => M_ARESETN_1,
      m_axi_arprot(2 downto 0) => auto_cc_to_m06_regslice_ARPROT(2 downto 0),
      m_axi_arready => auto_cc_to_m06_regslice_ARREADY,
      m_axi_arvalid => auto_cc_to_m06_regslice_ARVALID,
      m_axi_awaddr(6 downto 0) => auto_cc_to_m06_regslice_AWADDR(6 downto 0),
      m_axi_awprot(2 downto 0) => auto_cc_to_m06_regslice_AWPROT(2 downto 0),
      m_axi_awready => auto_cc_to_m06_regslice_AWREADY,
      m_axi_awvalid => auto_cc_to_m06_regslice_AWVALID,
      m_axi_bready => auto_cc_to_m06_regslice_BREADY,
      m_axi_bresp(1 downto 0) => auto_cc_to_m06_regslice_BRESP(1 downto 0),
      m_axi_bvalid => auto_cc_to_m06_regslice_BVALID,
      m_axi_rdata(31 downto 0) => auto_cc_to_m06_regslice_RDATA(31 downto 0),
      m_axi_rready => auto_cc_to_m06_regslice_RREADY,
      m_axi_rresp(1 downto 0) => auto_cc_to_m06_regslice_RRESP(1 downto 0),
      m_axi_rvalid => auto_cc_to_m06_regslice_RVALID,
      m_axi_wdata(31 downto 0) => auto_cc_to_m06_regslice_WDATA(31 downto 0),
      m_axi_wready => auto_cc_to_m06_regslice_WREADY,
      m_axi_wstrb(3 downto 0) => auto_cc_to_m06_regslice_WSTRB(3 downto 0),
      m_axi_wvalid => auto_cc_to_m06_regslice_WVALID,
      s_axi_aclk => S_ACLK_1,
      s_axi_araddr(6 downto 0) => m06_couplers_to_auto_cc_ARADDR(6 downto 0),
      s_axi_aresetn => S_ARESETN_1,
      s_axi_arprot(2 downto 0) => m06_couplers_to_auto_cc_ARPROT(2 downto 0),
      s_axi_arready => m06_couplers_to_auto_cc_ARREADY,
      s_axi_arvalid => m06_couplers_to_auto_cc_ARVALID,
      s_axi_awaddr(6 downto 0) => m06_couplers_to_auto_cc_AWADDR(6 downto 0),
      s_axi_awprot(2 downto 0) => m06_couplers_to_auto_cc_AWPROT(2 downto 0),
      s_axi_awready => m06_couplers_to_auto_cc_AWREADY,
      s_axi_awvalid => m06_couplers_to_auto_cc_AWVALID,
      s_axi_bready => m06_couplers_to_auto_cc_BREADY,
      s_axi_bresp(1 downto 0) => m06_couplers_to_auto_cc_BRESP(1 downto 0),
      s_axi_bvalid => m06_couplers_to_auto_cc_BVALID,
      s_axi_rdata(31 downto 0) => m06_couplers_to_auto_cc_RDATA(31 downto 0),
      s_axi_rready => m06_couplers_to_auto_cc_RREADY,
      s_axi_rresp(1 downto 0) => m06_couplers_to_auto_cc_RRESP(1 downto 0),
      s_axi_rvalid => m06_couplers_to_auto_cc_RVALID,
      s_axi_wdata(31 downto 0) => m06_couplers_to_auto_cc_WDATA(31 downto 0),
      s_axi_wready => m06_couplers_to_auto_cc_WREADY,
      s_axi_wstrb(3 downto 0) => m06_couplers_to_auto_cc_WSTRB(3 downto 0),
      s_axi_wvalid => m06_couplers_to_auto_cc_WVALID
    );
m06_regslice: component base_m06_regslice_0
     port map (
      aclk => M_ACLK_1,
      aresetn => M_ARESETN_1,
      m_axi_araddr(6 downto 0) => m06_regslice_to_m06_couplers_ARADDR(6 downto 0),
      m_axi_arprot(2 downto 0) => NLW_m06_regslice_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arready => m06_regslice_to_m06_couplers_ARREADY,
      m_axi_arvalid => m06_regslice_to_m06_couplers_ARVALID,
      m_axi_awaddr(6 downto 0) => m06_regslice_to_m06_couplers_AWADDR(6 downto 0),
      m_axi_awprot(2 downto 0) => NLW_m06_regslice_m_axi_awprot_UNCONNECTED(2 downto 0),
      m_axi_awready => m06_regslice_to_m06_couplers_AWREADY,
      m_axi_awvalid => m06_regslice_to_m06_couplers_AWVALID,
      m_axi_bready => m06_regslice_to_m06_couplers_BREADY,
      m_axi_bresp(1 downto 0) => m06_regslice_to_m06_couplers_BRESP(1 downto 0),
      m_axi_bvalid => m06_regslice_to_m06_couplers_BVALID,
      m_axi_rdata(31 downto 0) => m06_regslice_to_m06_couplers_RDATA(31 downto 0),
      m_axi_rready => m06_regslice_to_m06_couplers_RREADY,
      m_axi_rresp(1 downto 0) => m06_regslice_to_m06_couplers_RRESP(1 downto 0),
      m_axi_rvalid => m06_regslice_to_m06_couplers_RVALID,
      m_axi_wdata(31 downto 0) => m06_regslice_to_m06_couplers_WDATA(31 downto 0),
      m_axi_wready => m06_regslice_to_m06_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => m06_regslice_to_m06_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => m06_regslice_to_m06_couplers_WVALID,
      s_axi_araddr(6 downto 0) => auto_cc_to_m06_regslice_ARADDR(6 downto 0),
      s_axi_arprot(2 downto 0) => auto_cc_to_m06_regslice_ARPROT(2 downto 0),
      s_axi_arready => auto_cc_to_m06_regslice_ARREADY,
      s_axi_arvalid => auto_cc_to_m06_regslice_ARVALID,
      s_axi_awaddr(6 downto 0) => auto_cc_to_m06_regslice_AWADDR(6 downto 0),
      s_axi_awprot(2 downto 0) => auto_cc_to_m06_regslice_AWPROT(2 downto 0),
      s_axi_awready => auto_cc_to_m06_regslice_AWREADY,
      s_axi_awvalid => auto_cc_to_m06_regslice_AWVALID,
      s_axi_bready => auto_cc_to_m06_regslice_BREADY,
      s_axi_bresp(1 downto 0) => auto_cc_to_m06_regslice_BRESP(1 downto 0),
      s_axi_bvalid => auto_cc_to_m06_regslice_BVALID,
      s_axi_rdata(31 downto 0) => auto_cc_to_m06_regslice_RDATA(31 downto 0),
      s_axi_rready => auto_cc_to_m06_regslice_RREADY,
      s_axi_rresp(1 downto 0) => auto_cc_to_m06_regslice_RRESP(1 downto 0),
      s_axi_rvalid => auto_cc_to_m06_regslice_RVALID,
      s_axi_wdata(31 downto 0) => auto_cc_to_m06_regslice_WDATA(31 downto 0),
      s_axi_wready => auto_cc_to_m06_regslice_WREADY,
      s_axi_wstrb(3 downto 0) => auto_cc_to_m06_regslice_WSTRB(3 downto 0),
      s_axi_wvalid => auto_cc_to_m06_regslice_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m07_couplers_imp_1PQNA19 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 4 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 4 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m07_couplers_imp_1PQNA19;

architecture STRUCTURE of m07_couplers_imp_1PQNA19 is
  component base_m07_regslice_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 4 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 4 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component base_m07_regslice_0;
  component base_auto_cc_3 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    m_axi_aresetn : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 4 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 4 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component base_auto_cc_3;
  signal M_ACLK_1 : STD_LOGIC;
  signal M_ARESETN_1 : STD_LOGIC;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_cc_to_m07_regslice_ARADDR : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal auto_cc_to_m07_regslice_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_cc_to_m07_regslice_ARREADY : STD_LOGIC;
  signal auto_cc_to_m07_regslice_ARVALID : STD_LOGIC;
  signal auto_cc_to_m07_regslice_AWADDR : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal auto_cc_to_m07_regslice_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_cc_to_m07_regslice_AWREADY : STD_LOGIC;
  signal auto_cc_to_m07_regslice_AWVALID : STD_LOGIC;
  signal auto_cc_to_m07_regslice_BREADY : STD_LOGIC;
  signal auto_cc_to_m07_regslice_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_cc_to_m07_regslice_BVALID : STD_LOGIC;
  signal auto_cc_to_m07_regslice_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_cc_to_m07_regslice_RREADY : STD_LOGIC;
  signal auto_cc_to_m07_regslice_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_cc_to_m07_regslice_RVALID : STD_LOGIC;
  signal auto_cc_to_m07_regslice_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_cc_to_m07_regslice_WREADY : STD_LOGIC;
  signal auto_cc_to_m07_regslice_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_cc_to_m07_regslice_WVALID : STD_LOGIC;
  signal m07_couplers_to_auto_cc_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m07_couplers_to_auto_cc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m07_couplers_to_auto_cc_ARREADY : STD_LOGIC;
  signal m07_couplers_to_auto_cc_ARVALID : STD_LOGIC;
  signal m07_couplers_to_auto_cc_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m07_couplers_to_auto_cc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m07_couplers_to_auto_cc_AWREADY : STD_LOGIC;
  signal m07_couplers_to_auto_cc_AWVALID : STD_LOGIC;
  signal m07_couplers_to_auto_cc_BREADY : STD_LOGIC;
  signal m07_couplers_to_auto_cc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m07_couplers_to_auto_cc_BVALID : STD_LOGIC;
  signal m07_couplers_to_auto_cc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m07_couplers_to_auto_cc_RREADY : STD_LOGIC;
  signal m07_couplers_to_auto_cc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m07_couplers_to_auto_cc_RVALID : STD_LOGIC;
  signal m07_couplers_to_auto_cc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m07_couplers_to_auto_cc_WREADY : STD_LOGIC;
  signal m07_couplers_to_auto_cc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m07_couplers_to_auto_cc_WVALID : STD_LOGIC;
  signal m07_regslice_to_m07_couplers_ARADDR : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal m07_regslice_to_m07_couplers_ARREADY : STD_LOGIC;
  signal m07_regslice_to_m07_couplers_ARVALID : STD_LOGIC;
  signal m07_regslice_to_m07_couplers_AWADDR : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal m07_regslice_to_m07_couplers_AWREADY : STD_LOGIC;
  signal m07_regslice_to_m07_couplers_AWVALID : STD_LOGIC;
  signal m07_regslice_to_m07_couplers_BREADY : STD_LOGIC;
  signal m07_regslice_to_m07_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m07_regslice_to_m07_couplers_BVALID : STD_LOGIC;
  signal m07_regslice_to_m07_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m07_regslice_to_m07_couplers_RREADY : STD_LOGIC;
  signal m07_regslice_to_m07_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m07_regslice_to_m07_couplers_RVALID : STD_LOGIC;
  signal m07_regslice_to_m07_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m07_regslice_to_m07_couplers_WREADY : STD_LOGIC;
  signal m07_regslice_to_m07_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m07_regslice_to_m07_couplers_WVALID : STD_LOGIC;
  signal NLW_m07_regslice_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_m07_regslice_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
begin
  M_ACLK_1 <= M_ACLK;
  M_ARESETN_1 <= M_ARESETN;
  M_AXI_araddr(4 downto 0) <= m07_regslice_to_m07_couplers_ARADDR(4 downto 0);
  M_AXI_arvalid <= m07_regslice_to_m07_couplers_ARVALID;
  M_AXI_awaddr(4 downto 0) <= m07_regslice_to_m07_couplers_AWADDR(4 downto 0);
  M_AXI_awvalid <= m07_regslice_to_m07_couplers_AWVALID;
  M_AXI_bready <= m07_regslice_to_m07_couplers_BREADY;
  M_AXI_rready <= m07_regslice_to_m07_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m07_regslice_to_m07_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m07_regslice_to_m07_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= m07_regslice_to_m07_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= m07_couplers_to_auto_cc_ARREADY;
  S_AXI_awready <= m07_couplers_to_auto_cc_AWREADY;
  S_AXI_bresp(1 downto 0) <= m07_couplers_to_auto_cc_BRESP(1 downto 0);
  S_AXI_bvalid <= m07_couplers_to_auto_cc_BVALID;
  S_AXI_rdata(31 downto 0) <= m07_couplers_to_auto_cc_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m07_couplers_to_auto_cc_RRESP(1 downto 0);
  S_AXI_rvalid <= m07_couplers_to_auto_cc_RVALID;
  S_AXI_wready <= m07_couplers_to_auto_cc_WREADY;
  m07_couplers_to_auto_cc_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m07_couplers_to_auto_cc_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m07_couplers_to_auto_cc_ARVALID <= S_AXI_arvalid;
  m07_couplers_to_auto_cc_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m07_couplers_to_auto_cc_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m07_couplers_to_auto_cc_AWVALID <= S_AXI_awvalid;
  m07_couplers_to_auto_cc_BREADY <= S_AXI_bready;
  m07_couplers_to_auto_cc_RREADY <= S_AXI_rready;
  m07_couplers_to_auto_cc_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m07_couplers_to_auto_cc_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m07_couplers_to_auto_cc_WVALID <= S_AXI_wvalid;
  m07_regslice_to_m07_couplers_ARREADY <= M_AXI_arready;
  m07_regslice_to_m07_couplers_AWREADY <= M_AXI_awready;
  m07_regslice_to_m07_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m07_regslice_to_m07_couplers_BVALID <= M_AXI_bvalid;
  m07_regslice_to_m07_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m07_regslice_to_m07_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m07_regslice_to_m07_couplers_RVALID <= M_AXI_rvalid;
  m07_regslice_to_m07_couplers_WREADY <= M_AXI_wready;
auto_cc: component base_auto_cc_3
     port map (
      m_axi_aclk => M_ACLK_1,
      m_axi_araddr(4 downto 0) => auto_cc_to_m07_regslice_ARADDR(4 downto 0),
      m_axi_aresetn => M_ARESETN_1,
      m_axi_arprot(2 downto 0) => auto_cc_to_m07_regslice_ARPROT(2 downto 0),
      m_axi_arready => auto_cc_to_m07_regslice_ARREADY,
      m_axi_arvalid => auto_cc_to_m07_regslice_ARVALID,
      m_axi_awaddr(4 downto 0) => auto_cc_to_m07_regslice_AWADDR(4 downto 0),
      m_axi_awprot(2 downto 0) => auto_cc_to_m07_regslice_AWPROT(2 downto 0),
      m_axi_awready => auto_cc_to_m07_regslice_AWREADY,
      m_axi_awvalid => auto_cc_to_m07_regslice_AWVALID,
      m_axi_bready => auto_cc_to_m07_regslice_BREADY,
      m_axi_bresp(1 downto 0) => auto_cc_to_m07_regslice_BRESP(1 downto 0),
      m_axi_bvalid => auto_cc_to_m07_regslice_BVALID,
      m_axi_rdata(31 downto 0) => auto_cc_to_m07_regslice_RDATA(31 downto 0),
      m_axi_rready => auto_cc_to_m07_regslice_RREADY,
      m_axi_rresp(1 downto 0) => auto_cc_to_m07_regslice_RRESP(1 downto 0),
      m_axi_rvalid => auto_cc_to_m07_regslice_RVALID,
      m_axi_wdata(31 downto 0) => auto_cc_to_m07_regslice_WDATA(31 downto 0),
      m_axi_wready => auto_cc_to_m07_regslice_WREADY,
      m_axi_wstrb(3 downto 0) => auto_cc_to_m07_regslice_WSTRB(3 downto 0),
      m_axi_wvalid => auto_cc_to_m07_regslice_WVALID,
      s_axi_aclk => S_ACLK_1,
      s_axi_araddr(4 downto 0) => m07_couplers_to_auto_cc_ARADDR(4 downto 0),
      s_axi_aresetn => S_ARESETN_1,
      s_axi_arprot(2 downto 0) => m07_couplers_to_auto_cc_ARPROT(2 downto 0),
      s_axi_arready => m07_couplers_to_auto_cc_ARREADY,
      s_axi_arvalid => m07_couplers_to_auto_cc_ARVALID,
      s_axi_awaddr(4 downto 0) => m07_couplers_to_auto_cc_AWADDR(4 downto 0),
      s_axi_awprot(2 downto 0) => m07_couplers_to_auto_cc_AWPROT(2 downto 0),
      s_axi_awready => m07_couplers_to_auto_cc_AWREADY,
      s_axi_awvalid => m07_couplers_to_auto_cc_AWVALID,
      s_axi_bready => m07_couplers_to_auto_cc_BREADY,
      s_axi_bresp(1 downto 0) => m07_couplers_to_auto_cc_BRESP(1 downto 0),
      s_axi_bvalid => m07_couplers_to_auto_cc_BVALID,
      s_axi_rdata(31 downto 0) => m07_couplers_to_auto_cc_RDATA(31 downto 0),
      s_axi_rready => m07_couplers_to_auto_cc_RREADY,
      s_axi_rresp(1 downto 0) => m07_couplers_to_auto_cc_RRESP(1 downto 0),
      s_axi_rvalid => m07_couplers_to_auto_cc_RVALID,
      s_axi_wdata(31 downto 0) => m07_couplers_to_auto_cc_WDATA(31 downto 0),
      s_axi_wready => m07_couplers_to_auto_cc_WREADY,
      s_axi_wstrb(3 downto 0) => m07_couplers_to_auto_cc_WSTRB(3 downto 0),
      s_axi_wvalid => m07_couplers_to_auto_cc_WVALID
    );
m07_regslice: component base_m07_regslice_0
     port map (
      aclk => M_ACLK_1,
      aresetn => M_ARESETN_1,
      m_axi_araddr(4 downto 0) => m07_regslice_to_m07_couplers_ARADDR(4 downto 0),
      m_axi_arprot(2 downto 0) => NLW_m07_regslice_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arready => m07_regslice_to_m07_couplers_ARREADY,
      m_axi_arvalid => m07_regslice_to_m07_couplers_ARVALID,
      m_axi_awaddr(4 downto 0) => m07_regslice_to_m07_couplers_AWADDR(4 downto 0),
      m_axi_awprot(2 downto 0) => NLW_m07_regslice_m_axi_awprot_UNCONNECTED(2 downto 0),
      m_axi_awready => m07_regslice_to_m07_couplers_AWREADY,
      m_axi_awvalid => m07_regslice_to_m07_couplers_AWVALID,
      m_axi_bready => m07_regslice_to_m07_couplers_BREADY,
      m_axi_bresp(1 downto 0) => m07_regslice_to_m07_couplers_BRESP(1 downto 0),
      m_axi_bvalid => m07_regslice_to_m07_couplers_BVALID,
      m_axi_rdata(31 downto 0) => m07_regslice_to_m07_couplers_RDATA(31 downto 0),
      m_axi_rready => m07_regslice_to_m07_couplers_RREADY,
      m_axi_rresp(1 downto 0) => m07_regslice_to_m07_couplers_RRESP(1 downto 0),
      m_axi_rvalid => m07_regslice_to_m07_couplers_RVALID,
      m_axi_wdata(31 downto 0) => m07_regslice_to_m07_couplers_WDATA(31 downto 0),
      m_axi_wready => m07_regslice_to_m07_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => m07_regslice_to_m07_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => m07_regslice_to_m07_couplers_WVALID,
      s_axi_araddr(4 downto 0) => auto_cc_to_m07_regslice_ARADDR(4 downto 0),
      s_axi_arprot(2 downto 0) => auto_cc_to_m07_regslice_ARPROT(2 downto 0),
      s_axi_arready => auto_cc_to_m07_regslice_ARREADY,
      s_axi_arvalid => auto_cc_to_m07_regslice_ARVALID,
      s_axi_awaddr(4 downto 0) => auto_cc_to_m07_regslice_AWADDR(4 downto 0),
      s_axi_awprot(2 downto 0) => auto_cc_to_m07_regslice_AWPROT(2 downto 0),
      s_axi_awready => auto_cc_to_m07_regslice_AWREADY,
      s_axi_awvalid => auto_cc_to_m07_regslice_AWVALID,
      s_axi_bready => auto_cc_to_m07_regslice_BREADY,
      s_axi_bresp(1 downto 0) => auto_cc_to_m07_regslice_BRESP(1 downto 0),
      s_axi_bvalid => auto_cc_to_m07_regslice_BVALID,
      s_axi_rdata(31 downto 0) => auto_cc_to_m07_regslice_RDATA(31 downto 0),
      s_axi_rready => auto_cc_to_m07_regslice_RREADY,
      s_axi_rresp(1 downto 0) => auto_cc_to_m07_regslice_RRESP(1 downto 0),
      s_axi_rvalid => auto_cc_to_m07_regslice_RVALID,
      s_axi_wdata(31 downto 0) => auto_cc_to_m07_regslice_WDATA(31 downto 0),
      s_axi_wready => auto_cc_to_m07_regslice_WREADY,
      s_axi_wstrb(3 downto 0) => auto_cc_to_m07_regslice_WSTRB(3 downto 0),
      s_axi_wvalid => auto_cc_to_m07_regslice_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m08_couplers_imp_11R48SB is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m08_couplers_imp_11R48SB;

architecture STRUCTURE of m08_couplers_imp_11R48SB is
  component base_m08_regslice_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component base_m08_regslice_0;
  signal M_ACLK_1 : STD_LOGIC;
  signal M_ARESETN_1 : STD_LOGIC;
  signal m08_couplers_to_m08_regslice_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m08_couplers_to_m08_regslice_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m08_couplers_to_m08_regslice_ARREADY : STD_LOGIC;
  signal m08_couplers_to_m08_regslice_ARVALID : STD_LOGIC;
  signal m08_couplers_to_m08_regslice_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m08_couplers_to_m08_regslice_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m08_couplers_to_m08_regslice_AWREADY : STD_LOGIC;
  signal m08_couplers_to_m08_regslice_AWVALID : STD_LOGIC;
  signal m08_couplers_to_m08_regslice_BREADY : STD_LOGIC;
  signal m08_couplers_to_m08_regslice_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m08_couplers_to_m08_regslice_BVALID : STD_LOGIC;
  signal m08_couplers_to_m08_regslice_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m08_couplers_to_m08_regslice_RREADY : STD_LOGIC;
  signal m08_couplers_to_m08_regslice_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m08_couplers_to_m08_regslice_RVALID : STD_LOGIC;
  signal m08_couplers_to_m08_regslice_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m08_couplers_to_m08_regslice_WREADY : STD_LOGIC;
  signal m08_couplers_to_m08_regslice_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m08_couplers_to_m08_regslice_WVALID : STD_LOGIC;
  signal m08_regslice_to_m08_couplers_ARADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal m08_regslice_to_m08_couplers_ARREADY : STD_LOGIC;
  signal m08_regslice_to_m08_couplers_ARVALID : STD_LOGIC;
  signal m08_regslice_to_m08_couplers_AWADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal m08_regslice_to_m08_couplers_AWREADY : STD_LOGIC;
  signal m08_regslice_to_m08_couplers_AWVALID : STD_LOGIC;
  signal m08_regslice_to_m08_couplers_BREADY : STD_LOGIC;
  signal m08_regslice_to_m08_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m08_regslice_to_m08_couplers_BVALID : STD_LOGIC;
  signal m08_regslice_to_m08_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m08_regslice_to_m08_couplers_RREADY : STD_LOGIC;
  signal m08_regslice_to_m08_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m08_regslice_to_m08_couplers_RVALID : STD_LOGIC;
  signal m08_regslice_to_m08_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m08_regslice_to_m08_couplers_WREADY : STD_LOGIC;
  signal m08_regslice_to_m08_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m08_regslice_to_m08_couplers_WVALID : STD_LOGIC;
  signal NLW_m08_regslice_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_m08_regslice_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
begin
  M_ACLK_1 <= M_ACLK;
  M_ARESETN_1 <= M_ARESETN;
  M_AXI_araddr(8 downto 0) <= m08_regslice_to_m08_couplers_ARADDR(8 downto 0);
  M_AXI_arvalid <= m08_regslice_to_m08_couplers_ARVALID;
  M_AXI_awaddr(8 downto 0) <= m08_regslice_to_m08_couplers_AWADDR(8 downto 0);
  M_AXI_awvalid <= m08_regslice_to_m08_couplers_AWVALID;
  M_AXI_bready <= m08_regslice_to_m08_couplers_BREADY;
  M_AXI_rready <= m08_regslice_to_m08_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m08_regslice_to_m08_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m08_regslice_to_m08_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= m08_regslice_to_m08_couplers_WVALID;
  S_AXI_arready <= m08_couplers_to_m08_regslice_ARREADY;
  S_AXI_awready <= m08_couplers_to_m08_regslice_AWREADY;
  S_AXI_bresp(1 downto 0) <= m08_couplers_to_m08_regslice_BRESP(1 downto 0);
  S_AXI_bvalid <= m08_couplers_to_m08_regslice_BVALID;
  S_AXI_rdata(31 downto 0) <= m08_couplers_to_m08_regslice_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m08_couplers_to_m08_regslice_RRESP(1 downto 0);
  S_AXI_rvalid <= m08_couplers_to_m08_regslice_RVALID;
  S_AXI_wready <= m08_couplers_to_m08_regslice_WREADY;
  m08_couplers_to_m08_regslice_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m08_couplers_to_m08_regslice_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m08_couplers_to_m08_regslice_ARVALID <= S_AXI_arvalid;
  m08_couplers_to_m08_regslice_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m08_couplers_to_m08_regslice_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m08_couplers_to_m08_regslice_AWVALID <= S_AXI_awvalid;
  m08_couplers_to_m08_regslice_BREADY <= S_AXI_bready;
  m08_couplers_to_m08_regslice_RREADY <= S_AXI_rready;
  m08_couplers_to_m08_regslice_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m08_couplers_to_m08_regslice_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m08_couplers_to_m08_regslice_WVALID <= S_AXI_wvalid;
  m08_regslice_to_m08_couplers_ARREADY <= M_AXI_arready;
  m08_regslice_to_m08_couplers_AWREADY <= M_AXI_awready;
  m08_regslice_to_m08_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m08_regslice_to_m08_couplers_BVALID <= M_AXI_bvalid;
  m08_regslice_to_m08_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m08_regslice_to_m08_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m08_regslice_to_m08_couplers_RVALID <= M_AXI_rvalid;
  m08_regslice_to_m08_couplers_WREADY <= M_AXI_wready;
m08_regslice: component base_m08_regslice_0
     port map (
      aclk => M_ACLK_1,
      aresetn => M_ARESETN_1,
      m_axi_araddr(8 downto 0) => m08_regslice_to_m08_couplers_ARADDR(8 downto 0),
      m_axi_arprot(2 downto 0) => NLW_m08_regslice_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arready => m08_regslice_to_m08_couplers_ARREADY,
      m_axi_arvalid => m08_regslice_to_m08_couplers_ARVALID,
      m_axi_awaddr(8 downto 0) => m08_regslice_to_m08_couplers_AWADDR(8 downto 0),
      m_axi_awprot(2 downto 0) => NLW_m08_regslice_m_axi_awprot_UNCONNECTED(2 downto 0),
      m_axi_awready => m08_regslice_to_m08_couplers_AWREADY,
      m_axi_awvalid => m08_regslice_to_m08_couplers_AWVALID,
      m_axi_bready => m08_regslice_to_m08_couplers_BREADY,
      m_axi_bresp(1 downto 0) => m08_regslice_to_m08_couplers_BRESP(1 downto 0),
      m_axi_bvalid => m08_regslice_to_m08_couplers_BVALID,
      m_axi_rdata(31 downto 0) => m08_regslice_to_m08_couplers_RDATA(31 downto 0),
      m_axi_rready => m08_regslice_to_m08_couplers_RREADY,
      m_axi_rresp(1 downto 0) => m08_regslice_to_m08_couplers_RRESP(1 downto 0),
      m_axi_rvalid => m08_regslice_to_m08_couplers_RVALID,
      m_axi_wdata(31 downto 0) => m08_regslice_to_m08_couplers_WDATA(31 downto 0),
      m_axi_wready => m08_regslice_to_m08_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => m08_regslice_to_m08_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => m08_regslice_to_m08_couplers_WVALID,
      s_axi_araddr(8 downto 0) => m08_couplers_to_m08_regslice_ARADDR(8 downto 0),
      s_axi_arprot(2 downto 0) => m08_couplers_to_m08_regslice_ARPROT(2 downto 0),
      s_axi_arready => m08_couplers_to_m08_regslice_ARREADY,
      s_axi_arvalid => m08_couplers_to_m08_regslice_ARVALID,
      s_axi_awaddr(8 downto 0) => m08_couplers_to_m08_regslice_AWADDR(8 downto 0),
      s_axi_awprot(2 downto 0) => m08_couplers_to_m08_regslice_AWPROT(2 downto 0),
      s_axi_awready => m08_couplers_to_m08_regslice_AWREADY,
      s_axi_awvalid => m08_couplers_to_m08_regslice_AWVALID,
      s_axi_bready => m08_couplers_to_m08_regslice_BREADY,
      s_axi_bresp(1 downto 0) => m08_couplers_to_m08_regslice_BRESP(1 downto 0),
      s_axi_bvalid => m08_couplers_to_m08_regslice_BVALID,
      s_axi_rdata(31 downto 0) => m08_couplers_to_m08_regslice_RDATA(31 downto 0),
      s_axi_rready => m08_couplers_to_m08_regslice_RREADY,
      s_axi_rresp(1 downto 0) => m08_couplers_to_m08_regslice_RRESP(1 downto 0),
      s_axi_rvalid => m08_couplers_to_m08_regslice_RVALID,
      s_axi_wdata(31 downto 0) => m08_couplers_to_m08_regslice_WDATA(31 downto 0),
      s_axi_wready => m08_couplers_to_m08_regslice_WREADY,
      s_axi_wstrb(3 downto 0) => m08_couplers_to_m08_regslice_WSTRB(3 downto 0),
      s_axi_wvalid => m08_couplers_to_m08_regslice_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m09_couplers_imp_5UZHFX is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m09_couplers_imp_5UZHFX;

architecture STRUCTURE of m09_couplers_imp_5UZHFX is
  component base_m09_regslice_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component base_m09_regslice_0;
  signal M_ACLK_1 : STD_LOGIC;
  signal M_ARESETN_1 : STD_LOGIC;
  signal m09_couplers_to_m09_regslice_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m09_couplers_to_m09_regslice_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m09_couplers_to_m09_regslice_ARREADY : STD_LOGIC;
  signal m09_couplers_to_m09_regslice_ARVALID : STD_LOGIC;
  signal m09_couplers_to_m09_regslice_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m09_couplers_to_m09_regslice_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m09_couplers_to_m09_regslice_AWREADY : STD_LOGIC;
  signal m09_couplers_to_m09_regslice_AWVALID : STD_LOGIC;
  signal m09_couplers_to_m09_regslice_BREADY : STD_LOGIC;
  signal m09_couplers_to_m09_regslice_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m09_couplers_to_m09_regslice_BVALID : STD_LOGIC;
  signal m09_couplers_to_m09_regslice_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m09_couplers_to_m09_regslice_RREADY : STD_LOGIC;
  signal m09_couplers_to_m09_regslice_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m09_couplers_to_m09_regslice_RVALID : STD_LOGIC;
  signal m09_couplers_to_m09_regslice_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m09_couplers_to_m09_regslice_WREADY : STD_LOGIC;
  signal m09_couplers_to_m09_regslice_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m09_couplers_to_m09_regslice_WVALID : STD_LOGIC;
  signal m09_regslice_to_m09_couplers_ARADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal m09_regslice_to_m09_couplers_ARREADY : STD_LOGIC;
  signal m09_regslice_to_m09_couplers_ARVALID : STD_LOGIC;
  signal m09_regslice_to_m09_couplers_AWADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal m09_regslice_to_m09_couplers_AWREADY : STD_LOGIC;
  signal m09_regslice_to_m09_couplers_AWVALID : STD_LOGIC;
  signal m09_regslice_to_m09_couplers_BREADY : STD_LOGIC;
  signal m09_regslice_to_m09_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m09_regslice_to_m09_couplers_BVALID : STD_LOGIC;
  signal m09_regslice_to_m09_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m09_regslice_to_m09_couplers_RREADY : STD_LOGIC;
  signal m09_regslice_to_m09_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m09_regslice_to_m09_couplers_RVALID : STD_LOGIC;
  signal m09_regslice_to_m09_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m09_regslice_to_m09_couplers_WREADY : STD_LOGIC;
  signal m09_regslice_to_m09_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m09_regslice_to_m09_couplers_WVALID : STD_LOGIC;
  signal NLW_m09_regslice_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_m09_regslice_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
begin
  M_ACLK_1 <= M_ACLK;
  M_ARESETN_1 <= M_ARESETN;
  M_AXI_araddr(8 downto 0) <= m09_regslice_to_m09_couplers_ARADDR(8 downto 0);
  M_AXI_arvalid <= m09_regslice_to_m09_couplers_ARVALID;
  M_AXI_awaddr(8 downto 0) <= m09_regslice_to_m09_couplers_AWADDR(8 downto 0);
  M_AXI_awvalid <= m09_regslice_to_m09_couplers_AWVALID;
  M_AXI_bready <= m09_regslice_to_m09_couplers_BREADY;
  M_AXI_rready <= m09_regslice_to_m09_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m09_regslice_to_m09_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m09_regslice_to_m09_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= m09_regslice_to_m09_couplers_WVALID;
  S_AXI_arready <= m09_couplers_to_m09_regslice_ARREADY;
  S_AXI_awready <= m09_couplers_to_m09_regslice_AWREADY;
  S_AXI_bresp(1 downto 0) <= m09_couplers_to_m09_regslice_BRESP(1 downto 0);
  S_AXI_bvalid <= m09_couplers_to_m09_regslice_BVALID;
  S_AXI_rdata(31 downto 0) <= m09_couplers_to_m09_regslice_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m09_couplers_to_m09_regslice_RRESP(1 downto 0);
  S_AXI_rvalid <= m09_couplers_to_m09_regslice_RVALID;
  S_AXI_wready <= m09_couplers_to_m09_regslice_WREADY;
  m09_couplers_to_m09_regslice_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m09_couplers_to_m09_regslice_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m09_couplers_to_m09_regslice_ARVALID <= S_AXI_arvalid;
  m09_couplers_to_m09_regslice_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m09_couplers_to_m09_regslice_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m09_couplers_to_m09_regslice_AWVALID <= S_AXI_awvalid;
  m09_couplers_to_m09_regslice_BREADY <= S_AXI_bready;
  m09_couplers_to_m09_regslice_RREADY <= S_AXI_rready;
  m09_couplers_to_m09_regslice_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m09_couplers_to_m09_regslice_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m09_couplers_to_m09_regslice_WVALID <= S_AXI_wvalid;
  m09_regslice_to_m09_couplers_ARREADY <= M_AXI_arready;
  m09_regslice_to_m09_couplers_AWREADY <= M_AXI_awready;
  m09_regslice_to_m09_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m09_regslice_to_m09_couplers_BVALID <= M_AXI_bvalid;
  m09_regslice_to_m09_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m09_regslice_to_m09_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m09_regslice_to_m09_couplers_RVALID <= M_AXI_rvalid;
  m09_regslice_to_m09_couplers_WREADY <= M_AXI_wready;
m09_regslice: component base_m09_regslice_0
     port map (
      aclk => M_ACLK_1,
      aresetn => M_ARESETN_1,
      m_axi_araddr(8 downto 0) => m09_regslice_to_m09_couplers_ARADDR(8 downto 0),
      m_axi_arprot(2 downto 0) => NLW_m09_regslice_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arready => m09_regslice_to_m09_couplers_ARREADY,
      m_axi_arvalid => m09_regslice_to_m09_couplers_ARVALID,
      m_axi_awaddr(8 downto 0) => m09_regslice_to_m09_couplers_AWADDR(8 downto 0),
      m_axi_awprot(2 downto 0) => NLW_m09_regslice_m_axi_awprot_UNCONNECTED(2 downto 0),
      m_axi_awready => m09_regslice_to_m09_couplers_AWREADY,
      m_axi_awvalid => m09_regslice_to_m09_couplers_AWVALID,
      m_axi_bready => m09_regslice_to_m09_couplers_BREADY,
      m_axi_bresp(1 downto 0) => m09_regslice_to_m09_couplers_BRESP(1 downto 0),
      m_axi_bvalid => m09_regslice_to_m09_couplers_BVALID,
      m_axi_rdata(31 downto 0) => m09_regslice_to_m09_couplers_RDATA(31 downto 0),
      m_axi_rready => m09_regslice_to_m09_couplers_RREADY,
      m_axi_rresp(1 downto 0) => m09_regslice_to_m09_couplers_RRESP(1 downto 0),
      m_axi_rvalid => m09_regslice_to_m09_couplers_RVALID,
      m_axi_wdata(31 downto 0) => m09_regslice_to_m09_couplers_WDATA(31 downto 0),
      m_axi_wready => m09_regslice_to_m09_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => m09_regslice_to_m09_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => m09_regslice_to_m09_couplers_WVALID,
      s_axi_araddr(8 downto 0) => m09_couplers_to_m09_regslice_ARADDR(8 downto 0),
      s_axi_arprot(2 downto 0) => m09_couplers_to_m09_regslice_ARPROT(2 downto 0),
      s_axi_arready => m09_couplers_to_m09_regslice_ARREADY,
      s_axi_arvalid => m09_couplers_to_m09_regslice_ARVALID,
      s_axi_awaddr(8 downto 0) => m09_couplers_to_m09_regslice_AWADDR(8 downto 0),
      s_axi_awprot(2 downto 0) => m09_couplers_to_m09_regslice_AWPROT(2 downto 0),
      s_axi_awready => m09_couplers_to_m09_regslice_AWREADY,
      s_axi_awvalid => m09_couplers_to_m09_regslice_AWVALID,
      s_axi_bready => m09_couplers_to_m09_regslice_BREADY,
      s_axi_bresp(1 downto 0) => m09_couplers_to_m09_regslice_BRESP(1 downto 0),
      s_axi_bvalid => m09_couplers_to_m09_regslice_BVALID,
      s_axi_rdata(31 downto 0) => m09_couplers_to_m09_regslice_RDATA(31 downto 0),
      s_axi_rready => m09_couplers_to_m09_regslice_RREADY,
      s_axi_rresp(1 downto 0) => m09_couplers_to_m09_regslice_RRESP(1 downto 0),
      s_axi_rvalid => m09_couplers_to_m09_regslice_RVALID,
      s_axi_wdata(31 downto 0) => m09_couplers_to_m09_regslice_WDATA(31 downto 0),
      s_axi_wready => m09_couplers_to_m09_regslice_WREADY,
      s_axi_wstrb(3 downto 0) => m09_couplers_to_m09_regslice_WSTRB(3 downto 0),
      s_axi_wvalid => m09_couplers_to_m09_regslice_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s00_couplers_imp_1OPDNLR is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end s00_couplers_imp_1OPDNLR;

architecture STRUCTURE of s00_couplers_imp_1OPDNLR is
  component base_s00_regslice_32 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component base_s00_regslice_32;
  component base_auto_pc_3 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component base_auto_pc_3;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_pc_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_s00_couplers_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal auto_pc_to_s00_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_pc_to_s00_couplers_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_pc_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_s00_couplers_ARREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s00_couplers_ARVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_s00_couplers_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal auto_pc_to_s00_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_pc_to_s00_couplers_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_pc_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_s00_couplers_AWREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s00_couplers_AWVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal auto_pc_to_s00_couplers_BREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s00_couplers_BVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal auto_pc_to_s00_couplers_RLAST : STD_LOGIC;
  signal auto_pc_to_s00_couplers_RREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s00_couplers_RVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_WLAST : STD_LOGIC;
  signal auto_pc_to_s00_couplers_WREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_s00_couplers_WVALID : STD_LOGIC;
  signal s00_couplers_to_s00_regslice_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_regslice_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_s00_regslice_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_s00_regslice_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_s00_regslice_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_s00_regslice_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_s00_regslice_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_s00_regslice_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_s00_regslice_ARREADY : STD_LOGIC;
  signal s00_couplers_to_s00_regslice_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_s00_regslice_ARVALID : STD_LOGIC;
  signal s00_couplers_to_s00_regslice_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_regslice_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_s00_regslice_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_s00_regslice_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_s00_regslice_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_s00_regslice_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_s00_regslice_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_s00_regslice_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_s00_regslice_AWREADY : STD_LOGIC;
  signal s00_couplers_to_s00_regslice_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_s00_regslice_AWVALID : STD_LOGIC;
  signal s00_couplers_to_s00_regslice_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_s00_regslice_BREADY : STD_LOGIC;
  signal s00_couplers_to_s00_regslice_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_s00_regslice_BVALID : STD_LOGIC;
  signal s00_couplers_to_s00_regslice_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_regslice_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_s00_regslice_RLAST : STD_LOGIC;
  signal s00_couplers_to_s00_regslice_RREADY : STD_LOGIC;
  signal s00_couplers_to_s00_regslice_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_s00_regslice_RVALID : STD_LOGIC;
  signal s00_couplers_to_s00_regslice_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_regslice_WID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_s00_regslice_WLAST : STD_LOGIC;
  signal s00_couplers_to_s00_regslice_WREADY : STD_LOGIC;
  signal s00_couplers_to_s00_regslice_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_s00_regslice_WVALID : STD_LOGIC;
  signal s00_regslice_to_auto_pc_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_regslice_to_auto_pc_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_regslice_to_auto_pc_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_regslice_to_auto_pc_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_regslice_to_auto_pc_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_regslice_to_auto_pc_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_regslice_to_auto_pc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_regslice_to_auto_pc_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_regslice_to_auto_pc_ARREADY : STD_LOGIC;
  signal s00_regslice_to_auto_pc_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_regslice_to_auto_pc_ARVALID : STD_LOGIC;
  signal s00_regslice_to_auto_pc_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_regslice_to_auto_pc_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_regslice_to_auto_pc_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_regslice_to_auto_pc_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_regslice_to_auto_pc_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_regslice_to_auto_pc_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_regslice_to_auto_pc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_regslice_to_auto_pc_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_regslice_to_auto_pc_AWREADY : STD_LOGIC;
  signal s00_regslice_to_auto_pc_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_regslice_to_auto_pc_AWVALID : STD_LOGIC;
  signal s00_regslice_to_auto_pc_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_regslice_to_auto_pc_BREADY : STD_LOGIC;
  signal s00_regslice_to_auto_pc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_regslice_to_auto_pc_BVALID : STD_LOGIC;
  signal s00_regslice_to_auto_pc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_regslice_to_auto_pc_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_regslice_to_auto_pc_RLAST : STD_LOGIC;
  signal s00_regslice_to_auto_pc_RREADY : STD_LOGIC;
  signal s00_regslice_to_auto_pc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_regslice_to_auto_pc_RVALID : STD_LOGIC;
  signal s00_regslice_to_auto_pc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_regslice_to_auto_pc_WID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_regslice_to_auto_pc_WLAST : STD_LOGIC;
  signal s00_regslice_to_auto_pc_WREADY : STD_LOGIC;
  signal s00_regslice_to_auto_pc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_regslice_to_auto_pc_WVALID : STD_LOGIC;
  signal NLW_auto_pc_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_auto_pc_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  M_AXI_araddr(31 downto 0) <= auto_pc_to_s00_couplers_ARADDR(31 downto 0);
  M_AXI_arburst(1 downto 0) <= auto_pc_to_s00_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= auto_pc_to_s00_couplers_ARCACHE(3 downto 0);
  M_AXI_arid(11 downto 0) <= auto_pc_to_s00_couplers_ARID(11 downto 0);
  M_AXI_arlen(7 downto 0) <= auto_pc_to_s00_couplers_ARLEN(7 downto 0);
  M_AXI_arlock(0) <= auto_pc_to_s00_couplers_ARLOCK(0);
  M_AXI_arprot(2 downto 0) <= auto_pc_to_s00_couplers_ARPROT(2 downto 0);
  M_AXI_arqos(3 downto 0) <= auto_pc_to_s00_couplers_ARQOS(3 downto 0);
  M_AXI_arsize(2 downto 0) <= auto_pc_to_s00_couplers_ARSIZE(2 downto 0);
  M_AXI_arvalid <= auto_pc_to_s00_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= auto_pc_to_s00_couplers_AWADDR(31 downto 0);
  M_AXI_awburst(1 downto 0) <= auto_pc_to_s00_couplers_AWBURST(1 downto 0);
  M_AXI_awcache(3 downto 0) <= auto_pc_to_s00_couplers_AWCACHE(3 downto 0);
  M_AXI_awid(11 downto 0) <= auto_pc_to_s00_couplers_AWID(11 downto 0);
  M_AXI_awlen(7 downto 0) <= auto_pc_to_s00_couplers_AWLEN(7 downto 0);
  M_AXI_awlock(0) <= auto_pc_to_s00_couplers_AWLOCK(0);
  M_AXI_awprot(2 downto 0) <= auto_pc_to_s00_couplers_AWPROT(2 downto 0);
  M_AXI_awqos(3 downto 0) <= auto_pc_to_s00_couplers_AWQOS(3 downto 0);
  M_AXI_awsize(2 downto 0) <= auto_pc_to_s00_couplers_AWSIZE(2 downto 0);
  M_AXI_awvalid <= auto_pc_to_s00_couplers_AWVALID;
  M_AXI_bready <= auto_pc_to_s00_couplers_BREADY;
  M_AXI_rready <= auto_pc_to_s00_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= auto_pc_to_s00_couplers_WDATA(31 downto 0);
  M_AXI_wlast <= auto_pc_to_s00_couplers_WLAST;
  M_AXI_wstrb(3 downto 0) <= auto_pc_to_s00_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= auto_pc_to_s00_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= s00_couplers_to_s00_regslice_ARREADY;
  S_AXI_awready <= s00_couplers_to_s00_regslice_AWREADY;
  S_AXI_bid(11 downto 0) <= s00_couplers_to_s00_regslice_BID(11 downto 0);
  S_AXI_bresp(1 downto 0) <= s00_couplers_to_s00_regslice_BRESP(1 downto 0);
  S_AXI_bvalid <= s00_couplers_to_s00_regslice_BVALID;
  S_AXI_rdata(31 downto 0) <= s00_couplers_to_s00_regslice_RDATA(31 downto 0);
  S_AXI_rid(11 downto 0) <= s00_couplers_to_s00_regslice_RID(11 downto 0);
  S_AXI_rlast <= s00_couplers_to_s00_regslice_RLAST;
  S_AXI_rresp(1 downto 0) <= s00_couplers_to_s00_regslice_RRESP(1 downto 0);
  S_AXI_rvalid <= s00_couplers_to_s00_regslice_RVALID;
  S_AXI_wready <= s00_couplers_to_s00_regslice_WREADY;
  auto_pc_to_s00_couplers_ARREADY <= M_AXI_arready;
  auto_pc_to_s00_couplers_AWREADY <= M_AXI_awready;
  auto_pc_to_s00_couplers_BID(11 downto 0) <= M_AXI_bid(11 downto 0);
  auto_pc_to_s00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_pc_to_s00_couplers_BVALID <= M_AXI_bvalid;
  auto_pc_to_s00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  auto_pc_to_s00_couplers_RID(11 downto 0) <= M_AXI_rid(11 downto 0);
  auto_pc_to_s00_couplers_RLAST <= M_AXI_rlast;
  auto_pc_to_s00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_pc_to_s00_couplers_RVALID <= M_AXI_rvalid;
  auto_pc_to_s00_couplers_WREADY <= M_AXI_wready;
  s00_couplers_to_s00_regslice_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  s00_couplers_to_s00_regslice_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  s00_couplers_to_s00_regslice_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  s00_couplers_to_s00_regslice_ARID(11 downto 0) <= S_AXI_arid(11 downto 0);
  s00_couplers_to_s00_regslice_ARLEN(3 downto 0) <= S_AXI_arlen(3 downto 0);
  s00_couplers_to_s00_regslice_ARLOCK(1 downto 0) <= S_AXI_arlock(1 downto 0);
  s00_couplers_to_s00_regslice_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s00_couplers_to_s00_regslice_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  s00_couplers_to_s00_regslice_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  s00_couplers_to_s00_regslice_ARVALID <= S_AXI_arvalid;
  s00_couplers_to_s00_regslice_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  s00_couplers_to_s00_regslice_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  s00_couplers_to_s00_regslice_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  s00_couplers_to_s00_regslice_AWID(11 downto 0) <= S_AXI_awid(11 downto 0);
  s00_couplers_to_s00_regslice_AWLEN(3 downto 0) <= S_AXI_awlen(3 downto 0);
  s00_couplers_to_s00_regslice_AWLOCK(1 downto 0) <= S_AXI_awlock(1 downto 0);
  s00_couplers_to_s00_regslice_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s00_couplers_to_s00_regslice_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  s00_couplers_to_s00_regslice_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  s00_couplers_to_s00_regslice_AWVALID <= S_AXI_awvalid;
  s00_couplers_to_s00_regslice_BREADY <= S_AXI_bready;
  s00_couplers_to_s00_regslice_RREADY <= S_AXI_rready;
  s00_couplers_to_s00_regslice_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  s00_couplers_to_s00_regslice_WID(11 downto 0) <= S_AXI_wid(11 downto 0);
  s00_couplers_to_s00_regslice_WLAST <= S_AXI_wlast;
  s00_couplers_to_s00_regslice_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  s00_couplers_to_s00_regslice_WVALID <= S_AXI_wvalid;
auto_pc: component base_auto_pc_3
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1,
      m_axi_araddr(31 downto 0) => auto_pc_to_s00_couplers_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => auto_pc_to_s00_couplers_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => auto_pc_to_s00_couplers_ARCACHE(3 downto 0),
      m_axi_arid(11 downto 0) => auto_pc_to_s00_couplers_ARID(11 downto 0),
      m_axi_arlen(7 downto 0) => auto_pc_to_s00_couplers_ARLEN(7 downto 0),
      m_axi_arlock(0) => auto_pc_to_s00_couplers_ARLOCK(0),
      m_axi_arprot(2 downto 0) => auto_pc_to_s00_couplers_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => auto_pc_to_s00_couplers_ARQOS(3 downto 0),
      m_axi_arready => auto_pc_to_s00_couplers_ARREADY,
      m_axi_arregion(3 downto 0) => NLW_auto_pc_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => auto_pc_to_s00_couplers_ARSIZE(2 downto 0),
      m_axi_arvalid => auto_pc_to_s00_couplers_ARVALID,
      m_axi_awaddr(31 downto 0) => auto_pc_to_s00_couplers_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => auto_pc_to_s00_couplers_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => auto_pc_to_s00_couplers_AWCACHE(3 downto 0),
      m_axi_awid(11 downto 0) => auto_pc_to_s00_couplers_AWID(11 downto 0),
      m_axi_awlen(7 downto 0) => auto_pc_to_s00_couplers_AWLEN(7 downto 0),
      m_axi_awlock(0) => auto_pc_to_s00_couplers_AWLOCK(0),
      m_axi_awprot(2 downto 0) => auto_pc_to_s00_couplers_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => auto_pc_to_s00_couplers_AWQOS(3 downto 0),
      m_axi_awready => auto_pc_to_s00_couplers_AWREADY,
      m_axi_awregion(3 downto 0) => NLW_auto_pc_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awsize(2 downto 0) => auto_pc_to_s00_couplers_AWSIZE(2 downto 0),
      m_axi_awvalid => auto_pc_to_s00_couplers_AWVALID,
      m_axi_bid(11 downto 0) => auto_pc_to_s00_couplers_BID(11 downto 0),
      m_axi_bready => auto_pc_to_s00_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_pc_to_s00_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_pc_to_s00_couplers_BVALID,
      m_axi_rdata(31 downto 0) => auto_pc_to_s00_couplers_RDATA(31 downto 0),
      m_axi_rid(11 downto 0) => auto_pc_to_s00_couplers_RID(11 downto 0),
      m_axi_rlast => auto_pc_to_s00_couplers_RLAST,
      m_axi_rready => auto_pc_to_s00_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_pc_to_s00_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_pc_to_s00_couplers_RVALID,
      m_axi_wdata(31 downto 0) => auto_pc_to_s00_couplers_WDATA(31 downto 0),
      m_axi_wlast => auto_pc_to_s00_couplers_WLAST,
      m_axi_wready => auto_pc_to_s00_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => auto_pc_to_s00_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => auto_pc_to_s00_couplers_WVALID,
      s_axi_araddr(31 downto 0) => s00_regslice_to_auto_pc_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => s00_regslice_to_auto_pc_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => s00_regslice_to_auto_pc_ARCACHE(3 downto 0),
      s_axi_arid(11 downto 0) => s00_regslice_to_auto_pc_ARID(11 downto 0),
      s_axi_arlen(3 downto 0) => s00_regslice_to_auto_pc_ARLEN(3 downto 0),
      s_axi_arlock(1 downto 0) => s00_regslice_to_auto_pc_ARLOCK(1 downto 0),
      s_axi_arprot(2 downto 0) => s00_regslice_to_auto_pc_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => s00_regslice_to_auto_pc_ARQOS(3 downto 0),
      s_axi_arready => s00_regslice_to_auto_pc_ARREADY,
      s_axi_arsize(2 downto 0) => s00_regslice_to_auto_pc_ARSIZE(2 downto 0),
      s_axi_arvalid => s00_regslice_to_auto_pc_ARVALID,
      s_axi_awaddr(31 downto 0) => s00_regslice_to_auto_pc_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => s00_regslice_to_auto_pc_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => s00_regslice_to_auto_pc_AWCACHE(3 downto 0),
      s_axi_awid(11 downto 0) => s00_regslice_to_auto_pc_AWID(11 downto 0),
      s_axi_awlen(3 downto 0) => s00_regslice_to_auto_pc_AWLEN(3 downto 0),
      s_axi_awlock(1 downto 0) => s00_regslice_to_auto_pc_AWLOCK(1 downto 0),
      s_axi_awprot(2 downto 0) => s00_regslice_to_auto_pc_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => s00_regslice_to_auto_pc_AWQOS(3 downto 0),
      s_axi_awready => s00_regslice_to_auto_pc_AWREADY,
      s_axi_awsize(2 downto 0) => s00_regslice_to_auto_pc_AWSIZE(2 downto 0),
      s_axi_awvalid => s00_regslice_to_auto_pc_AWVALID,
      s_axi_bid(11 downto 0) => s00_regslice_to_auto_pc_BID(11 downto 0),
      s_axi_bready => s00_regslice_to_auto_pc_BREADY,
      s_axi_bresp(1 downto 0) => s00_regslice_to_auto_pc_BRESP(1 downto 0),
      s_axi_bvalid => s00_regslice_to_auto_pc_BVALID,
      s_axi_rdata(31 downto 0) => s00_regslice_to_auto_pc_RDATA(31 downto 0),
      s_axi_rid(11 downto 0) => s00_regslice_to_auto_pc_RID(11 downto 0),
      s_axi_rlast => s00_regslice_to_auto_pc_RLAST,
      s_axi_rready => s00_regslice_to_auto_pc_RREADY,
      s_axi_rresp(1 downto 0) => s00_regslice_to_auto_pc_RRESP(1 downto 0),
      s_axi_rvalid => s00_regslice_to_auto_pc_RVALID,
      s_axi_wdata(31 downto 0) => s00_regslice_to_auto_pc_WDATA(31 downto 0),
      s_axi_wid(11 downto 0) => s00_regslice_to_auto_pc_WID(11 downto 0),
      s_axi_wlast => s00_regslice_to_auto_pc_WLAST,
      s_axi_wready => s00_regslice_to_auto_pc_WREADY,
      s_axi_wstrb(3 downto 0) => s00_regslice_to_auto_pc_WSTRB(3 downto 0),
      s_axi_wvalid => s00_regslice_to_auto_pc_WVALID
    );
s00_regslice: component base_s00_regslice_32
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1,
      m_axi_araddr(31 downto 0) => s00_regslice_to_auto_pc_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => s00_regslice_to_auto_pc_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => s00_regslice_to_auto_pc_ARCACHE(3 downto 0),
      m_axi_arid(11 downto 0) => s00_regslice_to_auto_pc_ARID(11 downto 0),
      m_axi_arlen(3 downto 0) => s00_regslice_to_auto_pc_ARLEN(3 downto 0),
      m_axi_arlock(1 downto 0) => s00_regslice_to_auto_pc_ARLOCK(1 downto 0),
      m_axi_arprot(2 downto 0) => s00_regslice_to_auto_pc_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => s00_regslice_to_auto_pc_ARQOS(3 downto 0),
      m_axi_arready => s00_regslice_to_auto_pc_ARREADY,
      m_axi_arsize(2 downto 0) => s00_regslice_to_auto_pc_ARSIZE(2 downto 0),
      m_axi_arvalid => s00_regslice_to_auto_pc_ARVALID,
      m_axi_awaddr(31 downto 0) => s00_regslice_to_auto_pc_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => s00_regslice_to_auto_pc_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => s00_regslice_to_auto_pc_AWCACHE(3 downto 0),
      m_axi_awid(11 downto 0) => s00_regslice_to_auto_pc_AWID(11 downto 0),
      m_axi_awlen(3 downto 0) => s00_regslice_to_auto_pc_AWLEN(3 downto 0),
      m_axi_awlock(1 downto 0) => s00_regslice_to_auto_pc_AWLOCK(1 downto 0),
      m_axi_awprot(2 downto 0) => s00_regslice_to_auto_pc_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => s00_regslice_to_auto_pc_AWQOS(3 downto 0),
      m_axi_awready => s00_regslice_to_auto_pc_AWREADY,
      m_axi_awsize(2 downto 0) => s00_regslice_to_auto_pc_AWSIZE(2 downto 0),
      m_axi_awvalid => s00_regslice_to_auto_pc_AWVALID,
      m_axi_bid(11 downto 0) => s00_regslice_to_auto_pc_BID(11 downto 0),
      m_axi_bready => s00_regslice_to_auto_pc_BREADY,
      m_axi_bresp(1 downto 0) => s00_regslice_to_auto_pc_BRESP(1 downto 0),
      m_axi_bvalid => s00_regslice_to_auto_pc_BVALID,
      m_axi_rdata(31 downto 0) => s00_regslice_to_auto_pc_RDATA(31 downto 0),
      m_axi_rid(11 downto 0) => s00_regslice_to_auto_pc_RID(11 downto 0),
      m_axi_rlast => s00_regslice_to_auto_pc_RLAST,
      m_axi_rready => s00_regslice_to_auto_pc_RREADY,
      m_axi_rresp(1 downto 0) => s00_regslice_to_auto_pc_RRESP(1 downto 0),
      m_axi_rvalid => s00_regslice_to_auto_pc_RVALID,
      m_axi_wdata(31 downto 0) => s00_regslice_to_auto_pc_WDATA(31 downto 0),
      m_axi_wid(11 downto 0) => s00_regslice_to_auto_pc_WID(11 downto 0),
      m_axi_wlast => s00_regslice_to_auto_pc_WLAST,
      m_axi_wready => s00_regslice_to_auto_pc_WREADY,
      m_axi_wstrb(3 downto 0) => s00_regslice_to_auto_pc_WSTRB(3 downto 0),
      m_axi_wvalid => s00_regslice_to_auto_pc_WVALID,
      s_axi_araddr(31 downto 0) => s00_couplers_to_s00_regslice_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => s00_couplers_to_s00_regslice_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => s00_couplers_to_s00_regslice_ARCACHE(3 downto 0),
      s_axi_arid(11 downto 0) => s00_couplers_to_s00_regslice_ARID(11 downto 0),
      s_axi_arlen(3 downto 0) => s00_couplers_to_s00_regslice_ARLEN(3 downto 0),
      s_axi_arlock(1 downto 0) => s00_couplers_to_s00_regslice_ARLOCK(1 downto 0),
      s_axi_arprot(2 downto 0) => s00_couplers_to_s00_regslice_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => s00_couplers_to_s00_regslice_ARQOS(3 downto 0),
      s_axi_arready => s00_couplers_to_s00_regslice_ARREADY,
      s_axi_arsize(2 downto 0) => s00_couplers_to_s00_regslice_ARSIZE(2 downto 0),
      s_axi_arvalid => s00_couplers_to_s00_regslice_ARVALID,
      s_axi_awaddr(31 downto 0) => s00_couplers_to_s00_regslice_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => s00_couplers_to_s00_regslice_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => s00_couplers_to_s00_regslice_AWCACHE(3 downto 0),
      s_axi_awid(11 downto 0) => s00_couplers_to_s00_regslice_AWID(11 downto 0),
      s_axi_awlen(3 downto 0) => s00_couplers_to_s00_regslice_AWLEN(3 downto 0),
      s_axi_awlock(1 downto 0) => s00_couplers_to_s00_regslice_AWLOCK(1 downto 0),
      s_axi_awprot(2 downto 0) => s00_couplers_to_s00_regslice_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => s00_couplers_to_s00_regslice_AWQOS(3 downto 0),
      s_axi_awready => s00_couplers_to_s00_regslice_AWREADY,
      s_axi_awsize(2 downto 0) => s00_couplers_to_s00_regslice_AWSIZE(2 downto 0),
      s_axi_awvalid => s00_couplers_to_s00_regslice_AWVALID,
      s_axi_bid(11 downto 0) => s00_couplers_to_s00_regslice_BID(11 downto 0),
      s_axi_bready => s00_couplers_to_s00_regslice_BREADY,
      s_axi_bresp(1 downto 0) => s00_couplers_to_s00_regslice_BRESP(1 downto 0),
      s_axi_bvalid => s00_couplers_to_s00_regslice_BVALID,
      s_axi_rdata(31 downto 0) => s00_couplers_to_s00_regslice_RDATA(31 downto 0),
      s_axi_rid(11 downto 0) => s00_couplers_to_s00_regslice_RID(11 downto 0),
      s_axi_rlast => s00_couplers_to_s00_regslice_RLAST,
      s_axi_rready => s00_couplers_to_s00_regslice_RREADY,
      s_axi_rresp(1 downto 0) => s00_couplers_to_s00_regslice_RRESP(1 downto 0),
      s_axi_rvalid => s00_couplers_to_s00_regslice_RVALID,
      s_axi_wdata(31 downto 0) => s00_couplers_to_s00_regslice_WDATA(31 downto 0),
      s_axi_wid(11 downto 0) => s00_couplers_to_s00_regslice_WID(11 downto 0),
      s_axi_wlast => s00_couplers_to_s00_regslice_WLAST,
      s_axi_wready => s00_couplers_to_s00_regslice_WREADY,
      s_axi_wstrb(3 downto 0) => s00_couplers_to_s00_regslice_WSTRB(3 downto 0),
      s_axi_wvalid => s00_couplers_to_s00_regslice_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s00_couplers_imp_F85G6R is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end s00_couplers_imp_F85G6R;

architecture STRUCTURE of s00_couplers_imp_F85G6R is
  signal s00_couplers_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_s00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_s00_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_s00_couplers_AWREADY : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_s00_couplers_AWVALID : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_BREADY : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_s00_couplers_BVALID : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s00_couplers_to_s00_couplers_WLAST : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_WREADY : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_s00_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_awaddr(31 downto 0) <= s00_couplers_to_s00_couplers_AWADDR(31 downto 0);
  M_AXI_awburst(1 downto 0) <= s00_couplers_to_s00_couplers_AWBURST(1 downto 0);
  M_AXI_awcache(3 downto 0) <= s00_couplers_to_s00_couplers_AWCACHE(3 downto 0);
  M_AXI_awlen(7 downto 0) <= s00_couplers_to_s00_couplers_AWLEN(7 downto 0);
  M_AXI_awprot(2 downto 0) <= s00_couplers_to_s00_couplers_AWPROT(2 downto 0);
  M_AXI_awsize(2 downto 0) <= s00_couplers_to_s00_couplers_AWSIZE(2 downto 0);
  M_AXI_awvalid <= s00_couplers_to_s00_couplers_AWVALID;
  M_AXI_bready <= s00_couplers_to_s00_couplers_BREADY;
  M_AXI_wdata(63 downto 0) <= s00_couplers_to_s00_couplers_WDATA(63 downto 0);
  M_AXI_wlast <= s00_couplers_to_s00_couplers_WLAST;
  M_AXI_wstrb(7 downto 0) <= s00_couplers_to_s00_couplers_WSTRB(7 downto 0);
  M_AXI_wvalid <= s00_couplers_to_s00_couplers_WVALID;
  S_AXI_awready <= s00_couplers_to_s00_couplers_AWREADY;
  S_AXI_bresp(1 downto 0) <= s00_couplers_to_s00_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= s00_couplers_to_s00_couplers_BVALID;
  S_AXI_wready <= s00_couplers_to_s00_couplers_WREADY;
  s00_couplers_to_s00_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  s00_couplers_to_s00_couplers_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  s00_couplers_to_s00_couplers_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  s00_couplers_to_s00_couplers_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  s00_couplers_to_s00_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s00_couplers_to_s00_couplers_AWREADY <= M_AXI_awready;
  s00_couplers_to_s00_couplers_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  s00_couplers_to_s00_couplers_AWVALID <= S_AXI_awvalid;
  s00_couplers_to_s00_couplers_BREADY <= S_AXI_bready;
  s00_couplers_to_s00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  s00_couplers_to_s00_couplers_BVALID <= M_AXI_bvalid;
  s00_couplers_to_s00_couplers_WDATA(63 downto 0) <= S_AXI_wdata(63 downto 0);
  s00_couplers_to_s00_couplers_WLAST <= S_AXI_wlast;
  s00_couplers_to_s00_couplers_WREADY <= M_AXI_wready;
  s00_couplers_to_s00_couplers_WSTRB(7 downto 0) <= S_AXI_wstrb(7 downto 0);
  s00_couplers_to_s00_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s00_couplers_imp_YXTABC is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end s00_couplers_imp_YXTABC;

architecture STRUCTURE of s00_couplers_imp_YXTABC is
  component base_s00_regslice_33 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component base_s00_regslice_33;
  component base_auto_pc_4 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component base_auto_pc_4;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_pc_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s00_couplers_ARREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_ARVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s00_couplers_AWREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_AWVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_BREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s00_couplers_BVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_RREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s00_couplers_RVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_WREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_s00_couplers_WVALID : STD_LOGIC;
  signal s00_couplers_to_s00_regslice_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_regslice_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_s00_regslice_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_s00_regslice_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_s00_regslice_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_s00_regslice_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_regslice_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_s00_regslice_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_s00_regslice_ARREADY : STD_LOGIC;
  signal s00_couplers_to_s00_regslice_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_s00_regslice_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_s00_regslice_ARVALID : STD_LOGIC;
  signal s00_couplers_to_s00_regslice_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_regslice_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_s00_regslice_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_s00_regslice_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_s00_regslice_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_s00_regslice_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_regslice_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_s00_regslice_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_s00_regslice_AWREADY : STD_LOGIC;
  signal s00_couplers_to_s00_regslice_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_s00_regslice_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_s00_regslice_AWVALID : STD_LOGIC;
  signal s00_couplers_to_s00_regslice_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_s00_regslice_BREADY : STD_LOGIC;
  signal s00_couplers_to_s00_regslice_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_s00_regslice_BVALID : STD_LOGIC;
  signal s00_couplers_to_s00_regslice_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_regslice_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_s00_regslice_RLAST : STD_LOGIC;
  signal s00_couplers_to_s00_regslice_RREADY : STD_LOGIC;
  signal s00_couplers_to_s00_regslice_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_s00_regslice_RVALID : STD_LOGIC;
  signal s00_couplers_to_s00_regslice_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_regslice_WLAST : STD_LOGIC;
  signal s00_couplers_to_s00_regslice_WREADY : STD_LOGIC;
  signal s00_couplers_to_s00_regslice_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_s00_regslice_WVALID : STD_LOGIC;
  signal s00_regslice_to_auto_pc_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_regslice_to_auto_pc_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_regslice_to_auto_pc_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_regslice_to_auto_pc_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_regslice_to_auto_pc_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_regslice_to_auto_pc_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_regslice_to_auto_pc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_regslice_to_auto_pc_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_regslice_to_auto_pc_ARREADY : STD_LOGIC;
  signal s00_regslice_to_auto_pc_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_regslice_to_auto_pc_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_regslice_to_auto_pc_ARVALID : STD_LOGIC;
  signal s00_regslice_to_auto_pc_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_regslice_to_auto_pc_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_regslice_to_auto_pc_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_regslice_to_auto_pc_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_regslice_to_auto_pc_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_regslice_to_auto_pc_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_regslice_to_auto_pc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_regslice_to_auto_pc_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_regslice_to_auto_pc_AWREADY : STD_LOGIC;
  signal s00_regslice_to_auto_pc_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_regslice_to_auto_pc_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_regslice_to_auto_pc_AWVALID : STD_LOGIC;
  signal s00_regslice_to_auto_pc_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_regslice_to_auto_pc_BREADY : STD_LOGIC;
  signal s00_regslice_to_auto_pc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_regslice_to_auto_pc_BVALID : STD_LOGIC;
  signal s00_regslice_to_auto_pc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_regslice_to_auto_pc_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_regslice_to_auto_pc_RLAST : STD_LOGIC;
  signal s00_regslice_to_auto_pc_RREADY : STD_LOGIC;
  signal s00_regslice_to_auto_pc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_regslice_to_auto_pc_RVALID : STD_LOGIC;
  signal s00_regslice_to_auto_pc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_regslice_to_auto_pc_WLAST : STD_LOGIC;
  signal s00_regslice_to_auto_pc_WREADY : STD_LOGIC;
  signal s00_regslice_to_auto_pc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_regslice_to_auto_pc_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= auto_pc_to_s00_couplers_ARADDR(31 downto 0);
  M_AXI_arprot(2 downto 0) <= auto_pc_to_s00_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid <= auto_pc_to_s00_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= auto_pc_to_s00_couplers_AWADDR(31 downto 0);
  M_AXI_awprot(2 downto 0) <= auto_pc_to_s00_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid <= auto_pc_to_s00_couplers_AWVALID;
  M_AXI_bready <= auto_pc_to_s00_couplers_BREADY;
  M_AXI_rready <= auto_pc_to_s00_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= auto_pc_to_s00_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= auto_pc_to_s00_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= auto_pc_to_s00_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= s00_couplers_to_s00_regslice_ARREADY;
  S_AXI_awready <= s00_couplers_to_s00_regslice_AWREADY;
  S_AXI_bid(11 downto 0) <= s00_couplers_to_s00_regslice_BID(11 downto 0);
  S_AXI_bresp(1 downto 0) <= s00_couplers_to_s00_regslice_BRESP(1 downto 0);
  S_AXI_bvalid <= s00_couplers_to_s00_regslice_BVALID;
  S_AXI_rdata(31 downto 0) <= s00_couplers_to_s00_regslice_RDATA(31 downto 0);
  S_AXI_rid(11 downto 0) <= s00_couplers_to_s00_regslice_RID(11 downto 0);
  S_AXI_rlast <= s00_couplers_to_s00_regslice_RLAST;
  S_AXI_rresp(1 downto 0) <= s00_couplers_to_s00_regslice_RRESP(1 downto 0);
  S_AXI_rvalid <= s00_couplers_to_s00_regslice_RVALID;
  S_AXI_wready <= s00_couplers_to_s00_regslice_WREADY;
  auto_pc_to_s00_couplers_ARREADY <= M_AXI_arready;
  auto_pc_to_s00_couplers_AWREADY <= M_AXI_awready;
  auto_pc_to_s00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_pc_to_s00_couplers_BVALID <= M_AXI_bvalid;
  auto_pc_to_s00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  auto_pc_to_s00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_pc_to_s00_couplers_RVALID <= M_AXI_rvalid;
  auto_pc_to_s00_couplers_WREADY <= M_AXI_wready;
  s00_couplers_to_s00_regslice_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  s00_couplers_to_s00_regslice_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  s00_couplers_to_s00_regslice_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  s00_couplers_to_s00_regslice_ARID(11 downto 0) <= S_AXI_arid(11 downto 0);
  s00_couplers_to_s00_regslice_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  s00_couplers_to_s00_regslice_ARLOCK(0) <= S_AXI_arlock(0);
  s00_couplers_to_s00_regslice_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s00_couplers_to_s00_regslice_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  s00_couplers_to_s00_regslice_ARREGION(3 downto 0) <= S_AXI_arregion(3 downto 0);
  s00_couplers_to_s00_regslice_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  s00_couplers_to_s00_regslice_ARVALID <= S_AXI_arvalid;
  s00_couplers_to_s00_regslice_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  s00_couplers_to_s00_regslice_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  s00_couplers_to_s00_regslice_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  s00_couplers_to_s00_regslice_AWID(11 downto 0) <= S_AXI_awid(11 downto 0);
  s00_couplers_to_s00_regslice_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  s00_couplers_to_s00_regslice_AWLOCK(0) <= S_AXI_awlock(0);
  s00_couplers_to_s00_regslice_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s00_couplers_to_s00_regslice_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  s00_couplers_to_s00_regslice_AWREGION(3 downto 0) <= S_AXI_awregion(3 downto 0);
  s00_couplers_to_s00_regslice_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  s00_couplers_to_s00_regslice_AWVALID <= S_AXI_awvalid;
  s00_couplers_to_s00_regslice_BREADY <= S_AXI_bready;
  s00_couplers_to_s00_regslice_RREADY <= S_AXI_rready;
  s00_couplers_to_s00_regslice_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  s00_couplers_to_s00_regslice_WLAST <= S_AXI_wlast;
  s00_couplers_to_s00_regslice_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  s00_couplers_to_s00_regslice_WVALID <= S_AXI_wvalid;
auto_pc: component base_auto_pc_4
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1,
      m_axi_araddr(31 downto 0) => auto_pc_to_s00_couplers_ARADDR(31 downto 0),
      m_axi_arprot(2 downto 0) => auto_pc_to_s00_couplers_ARPROT(2 downto 0),
      m_axi_arready => auto_pc_to_s00_couplers_ARREADY,
      m_axi_arvalid => auto_pc_to_s00_couplers_ARVALID,
      m_axi_awaddr(31 downto 0) => auto_pc_to_s00_couplers_AWADDR(31 downto 0),
      m_axi_awprot(2 downto 0) => auto_pc_to_s00_couplers_AWPROT(2 downto 0),
      m_axi_awready => auto_pc_to_s00_couplers_AWREADY,
      m_axi_awvalid => auto_pc_to_s00_couplers_AWVALID,
      m_axi_bready => auto_pc_to_s00_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_pc_to_s00_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_pc_to_s00_couplers_BVALID,
      m_axi_rdata(31 downto 0) => auto_pc_to_s00_couplers_RDATA(31 downto 0),
      m_axi_rready => auto_pc_to_s00_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_pc_to_s00_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_pc_to_s00_couplers_RVALID,
      m_axi_wdata(31 downto 0) => auto_pc_to_s00_couplers_WDATA(31 downto 0),
      m_axi_wready => auto_pc_to_s00_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => auto_pc_to_s00_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => auto_pc_to_s00_couplers_WVALID,
      s_axi_araddr(31 downto 0) => s00_regslice_to_auto_pc_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => s00_regslice_to_auto_pc_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => s00_regslice_to_auto_pc_ARCACHE(3 downto 0),
      s_axi_arid(11 downto 0) => s00_regslice_to_auto_pc_ARID(11 downto 0),
      s_axi_arlen(7 downto 0) => s00_regslice_to_auto_pc_ARLEN(7 downto 0),
      s_axi_arlock(0) => s00_regslice_to_auto_pc_ARLOCK(0),
      s_axi_arprot(2 downto 0) => s00_regslice_to_auto_pc_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => s00_regslice_to_auto_pc_ARQOS(3 downto 0),
      s_axi_arready => s00_regslice_to_auto_pc_ARREADY,
      s_axi_arregion(3 downto 0) => s00_regslice_to_auto_pc_ARREGION(3 downto 0),
      s_axi_arsize(2 downto 0) => s00_regslice_to_auto_pc_ARSIZE(2 downto 0),
      s_axi_arvalid => s00_regslice_to_auto_pc_ARVALID,
      s_axi_awaddr(31 downto 0) => s00_regslice_to_auto_pc_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => s00_regslice_to_auto_pc_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => s00_regslice_to_auto_pc_AWCACHE(3 downto 0),
      s_axi_awid(11 downto 0) => s00_regslice_to_auto_pc_AWID(11 downto 0),
      s_axi_awlen(7 downto 0) => s00_regslice_to_auto_pc_AWLEN(7 downto 0),
      s_axi_awlock(0) => s00_regslice_to_auto_pc_AWLOCK(0),
      s_axi_awprot(2 downto 0) => s00_regslice_to_auto_pc_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => s00_regslice_to_auto_pc_AWQOS(3 downto 0),
      s_axi_awready => s00_regslice_to_auto_pc_AWREADY,
      s_axi_awregion(3 downto 0) => s00_regslice_to_auto_pc_AWREGION(3 downto 0),
      s_axi_awsize(2 downto 0) => s00_regslice_to_auto_pc_AWSIZE(2 downto 0),
      s_axi_awvalid => s00_regslice_to_auto_pc_AWVALID,
      s_axi_bid(11 downto 0) => s00_regslice_to_auto_pc_BID(11 downto 0),
      s_axi_bready => s00_regslice_to_auto_pc_BREADY,
      s_axi_bresp(1 downto 0) => s00_regslice_to_auto_pc_BRESP(1 downto 0),
      s_axi_bvalid => s00_regslice_to_auto_pc_BVALID,
      s_axi_rdata(31 downto 0) => s00_regslice_to_auto_pc_RDATA(31 downto 0),
      s_axi_rid(11 downto 0) => s00_regslice_to_auto_pc_RID(11 downto 0),
      s_axi_rlast => s00_regslice_to_auto_pc_RLAST,
      s_axi_rready => s00_regslice_to_auto_pc_RREADY,
      s_axi_rresp(1 downto 0) => s00_regslice_to_auto_pc_RRESP(1 downto 0),
      s_axi_rvalid => s00_regslice_to_auto_pc_RVALID,
      s_axi_wdata(31 downto 0) => s00_regslice_to_auto_pc_WDATA(31 downto 0),
      s_axi_wlast => s00_regslice_to_auto_pc_WLAST,
      s_axi_wready => s00_regslice_to_auto_pc_WREADY,
      s_axi_wstrb(3 downto 0) => s00_regslice_to_auto_pc_WSTRB(3 downto 0),
      s_axi_wvalid => s00_regslice_to_auto_pc_WVALID
    );
s00_regslice: component base_s00_regslice_33
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1,
      m_axi_araddr(31 downto 0) => s00_regslice_to_auto_pc_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => s00_regslice_to_auto_pc_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => s00_regslice_to_auto_pc_ARCACHE(3 downto 0),
      m_axi_arid(11 downto 0) => s00_regslice_to_auto_pc_ARID(11 downto 0),
      m_axi_arlen(7 downto 0) => s00_regslice_to_auto_pc_ARLEN(7 downto 0),
      m_axi_arlock(0) => s00_regslice_to_auto_pc_ARLOCK(0),
      m_axi_arprot(2 downto 0) => s00_regslice_to_auto_pc_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => s00_regslice_to_auto_pc_ARQOS(3 downto 0),
      m_axi_arready => s00_regslice_to_auto_pc_ARREADY,
      m_axi_arregion(3 downto 0) => s00_regslice_to_auto_pc_ARREGION(3 downto 0),
      m_axi_arsize(2 downto 0) => s00_regslice_to_auto_pc_ARSIZE(2 downto 0),
      m_axi_arvalid => s00_regslice_to_auto_pc_ARVALID,
      m_axi_awaddr(31 downto 0) => s00_regslice_to_auto_pc_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => s00_regslice_to_auto_pc_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => s00_regslice_to_auto_pc_AWCACHE(3 downto 0),
      m_axi_awid(11 downto 0) => s00_regslice_to_auto_pc_AWID(11 downto 0),
      m_axi_awlen(7 downto 0) => s00_regslice_to_auto_pc_AWLEN(7 downto 0),
      m_axi_awlock(0) => s00_regslice_to_auto_pc_AWLOCK(0),
      m_axi_awprot(2 downto 0) => s00_regslice_to_auto_pc_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => s00_regslice_to_auto_pc_AWQOS(3 downto 0),
      m_axi_awready => s00_regslice_to_auto_pc_AWREADY,
      m_axi_awregion(3 downto 0) => s00_regslice_to_auto_pc_AWREGION(3 downto 0),
      m_axi_awsize(2 downto 0) => s00_regslice_to_auto_pc_AWSIZE(2 downto 0),
      m_axi_awvalid => s00_regslice_to_auto_pc_AWVALID,
      m_axi_bid(11 downto 0) => s00_regslice_to_auto_pc_BID(11 downto 0),
      m_axi_bready => s00_regslice_to_auto_pc_BREADY,
      m_axi_bresp(1 downto 0) => s00_regslice_to_auto_pc_BRESP(1 downto 0),
      m_axi_bvalid => s00_regslice_to_auto_pc_BVALID,
      m_axi_rdata(31 downto 0) => s00_regslice_to_auto_pc_RDATA(31 downto 0),
      m_axi_rid(11 downto 0) => s00_regslice_to_auto_pc_RID(11 downto 0),
      m_axi_rlast => s00_regslice_to_auto_pc_RLAST,
      m_axi_rready => s00_regslice_to_auto_pc_RREADY,
      m_axi_rresp(1 downto 0) => s00_regslice_to_auto_pc_RRESP(1 downto 0),
      m_axi_rvalid => s00_regslice_to_auto_pc_RVALID,
      m_axi_wdata(31 downto 0) => s00_regslice_to_auto_pc_WDATA(31 downto 0),
      m_axi_wlast => s00_regslice_to_auto_pc_WLAST,
      m_axi_wready => s00_regslice_to_auto_pc_WREADY,
      m_axi_wstrb(3 downto 0) => s00_regslice_to_auto_pc_WSTRB(3 downto 0),
      m_axi_wvalid => s00_regslice_to_auto_pc_WVALID,
      s_axi_araddr(31 downto 0) => s00_couplers_to_s00_regslice_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => s00_couplers_to_s00_regslice_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => s00_couplers_to_s00_regslice_ARCACHE(3 downto 0),
      s_axi_arid(11 downto 0) => s00_couplers_to_s00_regslice_ARID(11 downto 0),
      s_axi_arlen(7 downto 0) => s00_couplers_to_s00_regslice_ARLEN(7 downto 0),
      s_axi_arlock(0) => s00_couplers_to_s00_regslice_ARLOCK(0),
      s_axi_arprot(2 downto 0) => s00_couplers_to_s00_regslice_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => s00_couplers_to_s00_regslice_ARQOS(3 downto 0),
      s_axi_arready => s00_couplers_to_s00_regslice_ARREADY,
      s_axi_arregion(3 downto 0) => s00_couplers_to_s00_regslice_ARREGION(3 downto 0),
      s_axi_arsize(2 downto 0) => s00_couplers_to_s00_regslice_ARSIZE(2 downto 0),
      s_axi_arvalid => s00_couplers_to_s00_regslice_ARVALID,
      s_axi_awaddr(31 downto 0) => s00_couplers_to_s00_regslice_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => s00_couplers_to_s00_regslice_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => s00_couplers_to_s00_regslice_AWCACHE(3 downto 0),
      s_axi_awid(11 downto 0) => s00_couplers_to_s00_regslice_AWID(11 downto 0),
      s_axi_awlen(7 downto 0) => s00_couplers_to_s00_regslice_AWLEN(7 downto 0),
      s_axi_awlock(0) => s00_couplers_to_s00_regslice_AWLOCK(0),
      s_axi_awprot(2 downto 0) => s00_couplers_to_s00_regslice_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => s00_couplers_to_s00_regslice_AWQOS(3 downto 0),
      s_axi_awready => s00_couplers_to_s00_regslice_AWREADY,
      s_axi_awregion(3 downto 0) => s00_couplers_to_s00_regslice_AWREGION(3 downto 0),
      s_axi_awsize(2 downto 0) => s00_couplers_to_s00_regslice_AWSIZE(2 downto 0),
      s_axi_awvalid => s00_couplers_to_s00_regslice_AWVALID,
      s_axi_bid(11 downto 0) => s00_couplers_to_s00_regslice_BID(11 downto 0),
      s_axi_bready => s00_couplers_to_s00_regslice_BREADY,
      s_axi_bresp(1 downto 0) => s00_couplers_to_s00_regslice_BRESP(1 downto 0),
      s_axi_bvalid => s00_couplers_to_s00_regslice_BVALID,
      s_axi_rdata(31 downto 0) => s00_couplers_to_s00_regslice_RDATA(31 downto 0),
      s_axi_rid(11 downto 0) => s00_couplers_to_s00_regslice_RID(11 downto 0),
      s_axi_rlast => s00_couplers_to_s00_regslice_RLAST,
      s_axi_rready => s00_couplers_to_s00_regslice_RREADY,
      s_axi_rresp(1 downto 0) => s00_couplers_to_s00_regslice_RRESP(1 downto 0),
      s_axi_rvalid => s00_couplers_to_s00_regslice_RVALID,
      s_axi_wdata(31 downto 0) => s00_couplers_to_s00_regslice_WDATA(31 downto 0),
      s_axi_wlast => s00_couplers_to_s00_regslice_WLAST,
      s_axi_wready => s00_couplers_to_s00_regslice_WREADY,
      s_axi_wstrb(3 downto 0) => s00_couplers_to_s00_regslice_WSTRB(3 downto 0),
      s_axi_wvalid => s00_couplers_to_s00_regslice_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s01_couplers_imp_1BPETZ9 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC
  );
end s01_couplers_imp_1BPETZ9;

architecture STRUCTURE of s01_couplers_imp_1BPETZ9 is
  component base_auto_us_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component base_auto_us_0;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_us_to_s01_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_us_to_s01_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_us_to_s01_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_us_to_s01_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_us_to_s01_couplers_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_us_to_s01_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_us_to_s01_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_us_to_s01_couplers_ARREADY : STD_LOGIC;
  signal auto_us_to_s01_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_us_to_s01_couplers_ARVALID : STD_LOGIC;
  signal auto_us_to_s01_couplers_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal auto_us_to_s01_couplers_RLAST : STD_LOGIC;
  signal auto_us_to_s01_couplers_RREADY : STD_LOGIC;
  signal auto_us_to_s01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_us_to_s01_couplers_RVALID : STD_LOGIC;
  signal s01_couplers_to_auto_us_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_auto_us_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_couplers_to_auto_us_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_auto_us_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s01_couplers_to_auto_us_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_auto_us_ARREADY : STD_LOGIC;
  signal s01_couplers_to_auto_us_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_auto_us_ARVALID : STD_LOGIC;
  signal s01_couplers_to_auto_us_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_auto_us_RLAST : STD_LOGIC;
  signal s01_couplers_to_auto_us_RREADY : STD_LOGIC;
  signal s01_couplers_to_auto_us_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_couplers_to_auto_us_RVALID : STD_LOGIC;
  signal NLW_auto_us_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  M_AXI_araddr(31 downto 0) <= auto_us_to_s01_couplers_ARADDR(31 downto 0);
  M_AXI_arburst(1 downto 0) <= auto_us_to_s01_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= auto_us_to_s01_couplers_ARCACHE(3 downto 0);
  M_AXI_arlen(7 downto 0) <= auto_us_to_s01_couplers_ARLEN(7 downto 0);
  M_AXI_arlock(0) <= auto_us_to_s01_couplers_ARLOCK(0);
  M_AXI_arprot(2 downto 0) <= auto_us_to_s01_couplers_ARPROT(2 downto 0);
  M_AXI_arqos(3 downto 0) <= auto_us_to_s01_couplers_ARQOS(3 downto 0);
  M_AXI_arsize(2 downto 0) <= auto_us_to_s01_couplers_ARSIZE(2 downto 0);
  M_AXI_arvalid <= auto_us_to_s01_couplers_ARVALID;
  M_AXI_rready <= auto_us_to_s01_couplers_RREADY;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= s01_couplers_to_auto_us_ARREADY;
  S_AXI_rdata(31 downto 0) <= s01_couplers_to_auto_us_RDATA(31 downto 0);
  S_AXI_rlast <= s01_couplers_to_auto_us_RLAST;
  S_AXI_rresp(1 downto 0) <= s01_couplers_to_auto_us_RRESP(1 downto 0);
  S_AXI_rvalid <= s01_couplers_to_auto_us_RVALID;
  auto_us_to_s01_couplers_ARREADY <= M_AXI_arready;
  auto_us_to_s01_couplers_RDATA(63 downto 0) <= M_AXI_rdata(63 downto 0);
  auto_us_to_s01_couplers_RLAST <= M_AXI_rlast;
  auto_us_to_s01_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_us_to_s01_couplers_RVALID <= M_AXI_rvalid;
  s01_couplers_to_auto_us_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  s01_couplers_to_auto_us_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  s01_couplers_to_auto_us_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  s01_couplers_to_auto_us_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  s01_couplers_to_auto_us_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s01_couplers_to_auto_us_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  s01_couplers_to_auto_us_ARVALID <= S_AXI_arvalid;
  s01_couplers_to_auto_us_RREADY <= S_AXI_rready;
auto_us: component base_auto_us_0
     port map (
      m_axi_araddr(31 downto 0) => auto_us_to_s01_couplers_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => auto_us_to_s01_couplers_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => auto_us_to_s01_couplers_ARCACHE(3 downto 0),
      m_axi_arlen(7 downto 0) => auto_us_to_s01_couplers_ARLEN(7 downto 0),
      m_axi_arlock(0) => auto_us_to_s01_couplers_ARLOCK(0),
      m_axi_arprot(2 downto 0) => auto_us_to_s01_couplers_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => auto_us_to_s01_couplers_ARQOS(3 downto 0),
      m_axi_arready => auto_us_to_s01_couplers_ARREADY,
      m_axi_arregion(3 downto 0) => NLW_auto_us_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => auto_us_to_s01_couplers_ARSIZE(2 downto 0),
      m_axi_arvalid => auto_us_to_s01_couplers_ARVALID,
      m_axi_rdata(63 downto 0) => auto_us_to_s01_couplers_RDATA(63 downto 0),
      m_axi_rlast => auto_us_to_s01_couplers_RLAST,
      m_axi_rready => auto_us_to_s01_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_us_to_s01_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_us_to_s01_couplers_RVALID,
      s_axi_aclk => S_ACLK_1,
      s_axi_araddr(31 downto 0) => s01_couplers_to_auto_us_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => s01_couplers_to_auto_us_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => s01_couplers_to_auto_us_ARCACHE(3 downto 0),
      s_axi_aresetn => S_ARESETN_1,
      s_axi_arlen(7 downto 0) => s01_couplers_to_auto_us_ARLEN(7 downto 0),
      s_axi_arlock(0) => '0',
      s_axi_arprot(2 downto 0) => s01_couplers_to_auto_us_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => B"0000",
      s_axi_arready => s01_couplers_to_auto_us_ARREADY,
      s_axi_arregion(3 downto 0) => B"0000",
      s_axi_arsize(2 downto 0) => s01_couplers_to_auto_us_ARSIZE(2 downto 0),
      s_axi_arvalid => s01_couplers_to_auto_us_ARVALID,
      s_axi_rdata(31 downto 0) => s01_couplers_to_auto_us_RDATA(31 downto 0),
      s_axi_rlast => s01_couplers_to_auto_us_RLAST,
      s_axi_rready => s01_couplers_to_auto_us_RREADY,
      s_axi_rresp(1 downto 0) => s01_couplers_to_auto_us_RRESP(1 downto 0),
      s_axi_rvalid => s01_couplers_to_auto_us_RVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity base_axi_interconnect_0_1 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_rready : out STD_LOGIC;
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_wvalid : out STD_LOGIC;
    M01_ACLK : in STD_LOGIC;
    M01_ARESETN : in STD_LOGIC;
    M01_AXI_araddr : out STD_LOGIC_VECTOR ( 4 downto 0 );
    M01_AXI_arready : in STD_LOGIC;
    M01_AXI_arvalid : out STD_LOGIC;
    M01_AXI_awaddr : out STD_LOGIC_VECTOR ( 4 downto 0 );
    M01_AXI_awready : in STD_LOGIC;
    M01_AXI_awvalid : out STD_LOGIC;
    M01_AXI_bready : out STD_LOGIC;
    M01_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_bvalid : in STD_LOGIC;
    M01_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_rready : out STD_LOGIC;
    M01_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_rvalid : in STD_LOGIC;
    M01_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_wready : in STD_LOGIC;
    M01_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_wvalid : out STD_LOGIC;
    M02_ACLK : in STD_LOGIC;
    M02_ARESETN : in STD_LOGIC;
    M02_AXI_araddr : out STD_LOGIC_VECTOR ( 6 downto 0 );
    M02_AXI_arready : in STD_LOGIC;
    M02_AXI_arvalid : out STD_LOGIC;
    M02_AXI_awaddr : out STD_LOGIC_VECTOR ( 6 downto 0 );
    M02_AXI_awready : in STD_LOGIC;
    M02_AXI_awvalid : out STD_LOGIC;
    M02_AXI_bready : out STD_LOGIC;
    M02_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_bvalid : in STD_LOGIC;
    M02_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_rready : out STD_LOGIC;
    M02_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_rvalid : in STD_LOGIC;
    M02_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_wready : in STD_LOGIC;
    M02_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M02_AXI_wvalid : out STD_LOGIC;
    M03_ACLK : in STD_LOGIC;
    M03_ARESETN : in STD_LOGIC;
    M03_AXI_araddr : out STD_LOGIC_VECTOR ( 4 downto 0 );
    M03_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M03_AXI_arready : in STD_LOGIC;
    M03_AXI_arvalid : out STD_LOGIC;
    M03_AXI_awaddr : out STD_LOGIC_VECTOR ( 4 downto 0 );
    M03_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M03_AXI_awready : in STD_LOGIC;
    M03_AXI_awvalid : out STD_LOGIC;
    M03_AXI_bready : out STD_LOGIC;
    M03_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M03_AXI_bvalid : in STD_LOGIC;
    M03_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_rready : out STD_LOGIC;
    M03_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M03_AXI_rvalid : in STD_LOGIC;
    M03_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_wready : in STD_LOGIC;
    M03_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M03_AXI_wvalid : out STD_LOGIC;
    M04_ACLK : in STD_LOGIC;
    M04_ARESETN : in STD_LOGIC;
    M04_AXI_araddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M04_AXI_arready : in STD_LOGIC;
    M04_AXI_arvalid : out STD_LOGIC;
    M04_AXI_awaddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M04_AXI_awready : in STD_LOGIC;
    M04_AXI_awvalid : out STD_LOGIC;
    M04_AXI_bready : out STD_LOGIC;
    M04_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M04_AXI_bvalid : in STD_LOGIC;
    M04_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_rready : out STD_LOGIC;
    M04_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M04_AXI_rvalid : in STD_LOGIC;
    M04_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_wready : in STD_LOGIC;
    M04_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M04_AXI_wvalid : out STD_LOGIC;
    M05_ACLK : in STD_LOGIC;
    M05_ARESETN : in STD_LOGIC;
    M05_AXI_araddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M05_AXI_arready : in STD_LOGIC;
    M05_AXI_arvalid : out STD_LOGIC;
    M05_AXI_awaddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M05_AXI_awready : in STD_LOGIC;
    M05_AXI_awvalid : out STD_LOGIC;
    M05_AXI_bready : out STD_LOGIC;
    M05_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M05_AXI_bvalid : in STD_LOGIC;
    M05_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_rready : out STD_LOGIC;
    M05_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M05_AXI_rvalid : in STD_LOGIC;
    M05_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_wready : in STD_LOGIC;
    M05_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M05_AXI_wvalid : out STD_LOGIC;
    M06_ACLK : in STD_LOGIC;
    M06_ARESETN : in STD_LOGIC;
    M06_AXI_araddr : out STD_LOGIC_VECTOR ( 6 downto 0 );
    M06_AXI_arready : in STD_LOGIC;
    M06_AXI_arvalid : out STD_LOGIC;
    M06_AXI_awaddr : out STD_LOGIC_VECTOR ( 6 downto 0 );
    M06_AXI_awready : in STD_LOGIC;
    M06_AXI_awvalid : out STD_LOGIC;
    M06_AXI_bready : out STD_LOGIC;
    M06_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M06_AXI_bvalid : in STD_LOGIC;
    M06_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M06_AXI_rready : out STD_LOGIC;
    M06_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M06_AXI_rvalid : in STD_LOGIC;
    M06_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M06_AXI_wready : in STD_LOGIC;
    M06_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M06_AXI_wvalid : out STD_LOGIC;
    M07_ACLK : in STD_LOGIC;
    M07_ARESETN : in STD_LOGIC;
    M07_AXI_araddr : out STD_LOGIC_VECTOR ( 4 downto 0 );
    M07_AXI_arready : in STD_LOGIC;
    M07_AXI_arvalid : out STD_LOGIC;
    M07_AXI_awaddr : out STD_LOGIC_VECTOR ( 4 downto 0 );
    M07_AXI_awready : in STD_LOGIC;
    M07_AXI_awvalid : out STD_LOGIC;
    M07_AXI_bready : out STD_LOGIC;
    M07_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M07_AXI_bvalid : in STD_LOGIC;
    M07_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M07_AXI_rready : out STD_LOGIC;
    M07_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M07_AXI_rvalid : in STD_LOGIC;
    M07_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M07_AXI_wready : in STD_LOGIC;
    M07_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M07_AXI_wvalid : out STD_LOGIC;
    M08_ACLK : in STD_LOGIC;
    M08_ARESETN : in STD_LOGIC;
    M08_AXI_araddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M08_AXI_arready : in STD_LOGIC;
    M08_AXI_arvalid : out STD_LOGIC;
    M08_AXI_awaddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M08_AXI_awready : in STD_LOGIC;
    M08_AXI_awvalid : out STD_LOGIC;
    M08_AXI_bready : out STD_LOGIC;
    M08_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M08_AXI_bvalid : in STD_LOGIC;
    M08_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M08_AXI_rready : out STD_LOGIC;
    M08_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M08_AXI_rvalid : in STD_LOGIC;
    M08_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M08_AXI_wready : in STD_LOGIC;
    M08_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M08_AXI_wvalid : out STD_LOGIC;
    M09_ACLK : in STD_LOGIC;
    M09_ARESETN : in STD_LOGIC;
    M09_AXI_araddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M09_AXI_arready : in STD_LOGIC;
    M09_AXI_arvalid : out STD_LOGIC;
    M09_AXI_awaddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M09_AXI_awready : in STD_LOGIC;
    M09_AXI_awvalid : out STD_LOGIC;
    M09_AXI_bready : out STD_LOGIC;
    M09_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M09_AXI_bvalid : in STD_LOGIC;
    M09_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M09_AXI_rready : out STD_LOGIC;
    M09_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M09_AXI_rvalid : in STD_LOGIC;
    M09_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M09_AXI_wready : in STD_LOGIC;
    M09_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M09_AXI_wvalid : out STD_LOGIC;
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_rlast : out STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wlast : in STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC
  );
end base_axi_interconnect_0_1;

architecture STRUCTURE of base_axi_interconnect_0_1 is
  component base_xbar_9 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 319 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 29 downto 0 );
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 9 downto 0 );
    m_axi_awready : in STD_LOGIC_VECTOR ( 9 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 319 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 39 downto 0 );
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 9 downto 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 9 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 19 downto 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 9 downto 0 );
    m_axi_bready : out STD_LOGIC_VECTOR ( 9 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 319 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 29 downto 0 );
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 9 downto 0 );
    m_axi_arready : in STD_LOGIC_VECTOR ( 9 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 319 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 19 downto 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 9 downto 0 );
    m_axi_rready : out STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  end component base_xbar_9;
  signal M00_ACLK_1 : STD_LOGIC;
  signal M00_ARESETN_1 : STD_LOGIC;
  signal M01_ACLK_1 : STD_LOGIC;
  signal M01_ARESETN_1 : STD_LOGIC;
  signal M02_ACLK_1 : STD_LOGIC;
  signal M02_ARESETN_1 : STD_LOGIC;
  signal M03_ACLK_1 : STD_LOGIC;
  signal M03_ARESETN_1 : STD_LOGIC;
  signal M04_ACLK_1 : STD_LOGIC;
  signal M04_ARESETN_1 : STD_LOGIC;
  signal M05_ACLK_1 : STD_LOGIC;
  signal M05_ARESETN_1 : STD_LOGIC;
  signal M06_ACLK_1 : STD_LOGIC;
  signal M06_ARESETN_1 : STD_LOGIC;
  signal M07_ACLK_1 : STD_LOGIC;
  signal M07_ARESETN_1 : STD_LOGIC;
  signal M08_ACLK_1 : STD_LOGIC;
  signal M08_ARESETN_1 : STD_LOGIC;
  signal M09_ACLK_1 : STD_LOGIC;
  signal M09_ARESETN_1 : STD_LOGIC;
  signal S00_ACLK_1 : STD_LOGIC;
  signal S00_ARESETN_1 : STD_LOGIC;
  signal axi_interconnect_0_ACLK_net : STD_LOGIC;
  signal axi_interconnect_0_ARESETN_net : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_ARREADY : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_ARVALID : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_AWREADY : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_AWVALID : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_BREADY : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_BVALID : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_RLAST : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_RREADY : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_RVALID : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_WLAST : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_WREADY : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_WVALID : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_ARADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_ARREADY : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_ARVALID : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_AWADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_AWREADY : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_AWVALID : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_BREADY : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_BVALID : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_RREADY : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_RVALID : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_WREADY : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_WVALID : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_ARADDR : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal m01_couplers_to_axi_interconnect_0_ARREADY : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_ARVALID : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_AWADDR : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal m01_couplers_to_axi_interconnect_0_AWREADY : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_AWVALID : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_BREADY : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_axi_interconnect_0_BVALID : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_axi_interconnect_0_RREADY : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_axi_interconnect_0_RVALID : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_axi_interconnect_0_WREADY : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_axi_interconnect_0_WVALID : STD_LOGIC;
  signal m02_couplers_to_axi_interconnect_0_ARADDR : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal m02_couplers_to_axi_interconnect_0_ARREADY : STD_LOGIC;
  signal m02_couplers_to_axi_interconnect_0_ARVALID : STD_LOGIC;
  signal m02_couplers_to_axi_interconnect_0_AWADDR : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal m02_couplers_to_axi_interconnect_0_AWREADY : STD_LOGIC;
  signal m02_couplers_to_axi_interconnect_0_AWVALID : STD_LOGIC;
  signal m02_couplers_to_axi_interconnect_0_BREADY : STD_LOGIC;
  signal m02_couplers_to_axi_interconnect_0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_axi_interconnect_0_BVALID : STD_LOGIC;
  signal m02_couplers_to_axi_interconnect_0_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_axi_interconnect_0_RREADY : STD_LOGIC;
  signal m02_couplers_to_axi_interconnect_0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_axi_interconnect_0_RVALID : STD_LOGIC;
  signal m02_couplers_to_axi_interconnect_0_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_axi_interconnect_0_WREADY : STD_LOGIC;
  signal m02_couplers_to_axi_interconnect_0_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_axi_interconnect_0_WVALID : STD_LOGIC;
  signal m03_couplers_to_axi_interconnect_0_ARADDR : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal m03_couplers_to_axi_interconnect_0_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m03_couplers_to_axi_interconnect_0_ARREADY : STD_LOGIC;
  signal m03_couplers_to_axi_interconnect_0_ARVALID : STD_LOGIC;
  signal m03_couplers_to_axi_interconnect_0_AWADDR : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal m03_couplers_to_axi_interconnect_0_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m03_couplers_to_axi_interconnect_0_AWREADY : STD_LOGIC;
  signal m03_couplers_to_axi_interconnect_0_AWVALID : STD_LOGIC;
  signal m03_couplers_to_axi_interconnect_0_BREADY : STD_LOGIC;
  signal m03_couplers_to_axi_interconnect_0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_axi_interconnect_0_BVALID : STD_LOGIC;
  signal m03_couplers_to_axi_interconnect_0_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_axi_interconnect_0_RREADY : STD_LOGIC;
  signal m03_couplers_to_axi_interconnect_0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_axi_interconnect_0_RVALID : STD_LOGIC;
  signal m03_couplers_to_axi_interconnect_0_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_axi_interconnect_0_WREADY : STD_LOGIC;
  signal m03_couplers_to_axi_interconnect_0_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m03_couplers_to_axi_interconnect_0_WVALID : STD_LOGIC;
  signal m04_couplers_to_axi_interconnect_0_ARADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal m04_couplers_to_axi_interconnect_0_ARREADY : STD_LOGIC;
  signal m04_couplers_to_axi_interconnect_0_ARVALID : STD_LOGIC;
  signal m04_couplers_to_axi_interconnect_0_AWADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal m04_couplers_to_axi_interconnect_0_AWREADY : STD_LOGIC;
  signal m04_couplers_to_axi_interconnect_0_AWVALID : STD_LOGIC;
  signal m04_couplers_to_axi_interconnect_0_BREADY : STD_LOGIC;
  signal m04_couplers_to_axi_interconnect_0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_axi_interconnect_0_BVALID : STD_LOGIC;
  signal m04_couplers_to_axi_interconnect_0_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_axi_interconnect_0_RREADY : STD_LOGIC;
  signal m04_couplers_to_axi_interconnect_0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_axi_interconnect_0_RVALID : STD_LOGIC;
  signal m04_couplers_to_axi_interconnect_0_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_axi_interconnect_0_WREADY : STD_LOGIC;
  signal m04_couplers_to_axi_interconnect_0_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m04_couplers_to_axi_interconnect_0_WVALID : STD_LOGIC;
  signal m05_couplers_to_axi_interconnect_0_ARADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal m05_couplers_to_axi_interconnect_0_ARREADY : STD_LOGIC;
  signal m05_couplers_to_axi_interconnect_0_ARVALID : STD_LOGIC;
  signal m05_couplers_to_axi_interconnect_0_AWADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal m05_couplers_to_axi_interconnect_0_AWREADY : STD_LOGIC;
  signal m05_couplers_to_axi_interconnect_0_AWVALID : STD_LOGIC;
  signal m05_couplers_to_axi_interconnect_0_BREADY : STD_LOGIC;
  signal m05_couplers_to_axi_interconnect_0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_axi_interconnect_0_BVALID : STD_LOGIC;
  signal m05_couplers_to_axi_interconnect_0_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_axi_interconnect_0_RREADY : STD_LOGIC;
  signal m05_couplers_to_axi_interconnect_0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_axi_interconnect_0_RVALID : STD_LOGIC;
  signal m05_couplers_to_axi_interconnect_0_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_axi_interconnect_0_WREADY : STD_LOGIC;
  signal m05_couplers_to_axi_interconnect_0_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m05_couplers_to_axi_interconnect_0_WVALID : STD_LOGIC;
  signal m06_couplers_to_axi_interconnect_0_ARADDR : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal m06_couplers_to_axi_interconnect_0_ARREADY : STD_LOGIC;
  signal m06_couplers_to_axi_interconnect_0_ARVALID : STD_LOGIC;
  signal m06_couplers_to_axi_interconnect_0_AWADDR : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal m06_couplers_to_axi_interconnect_0_AWREADY : STD_LOGIC;
  signal m06_couplers_to_axi_interconnect_0_AWVALID : STD_LOGIC;
  signal m06_couplers_to_axi_interconnect_0_BREADY : STD_LOGIC;
  signal m06_couplers_to_axi_interconnect_0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m06_couplers_to_axi_interconnect_0_BVALID : STD_LOGIC;
  signal m06_couplers_to_axi_interconnect_0_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_axi_interconnect_0_RREADY : STD_LOGIC;
  signal m06_couplers_to_axi_interconnect_0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m06_couplers_to_axi_interconnect_0_RVALID : STD_LOGIC;
  signal m06_couplers_to_axi_interconnect_0_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_axi_interconnect_0_WREADY : STD_LOGIC;
  signal m06_couplers_to_axi_interconnect_0_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m06_couplers_to_axi_interconnect_0_WVALID : STD_LOGIC;
  signal m07_couplers_to_axi_interconnect_0_ARADDR : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal m07_couplers_to_axi_interconnect_0_ARREADY : STD_LOGIC;
  signal m07_couplers_to_axi_interconnect_0_ARVALID : STD_LOGIC;
  signal m07_couplers_to_axi_interconnect_0_AWADDR : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal m07_couplers_to_axi_interconnect_0_AWREADY : STD_LOGIC;
  signal m07_couplers_to_axi_interconnect_0_AWVALID : STD_LOGIC;
  signal m07_couplers_to_axi_interconnect_0_BREADY : STD_LOGIC;
  signal m07_couplers_to_axi_interconnect_0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m07_couplers_to_axi_interconnect_0_BVALID : STD_LOGIC;
  signal m07_couplers_to_axi_interconnect_0_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m07_couplers_to_axi_interconnect_0_RREADY : STD_LOGIC;
  signal m07_couplers_to_axi_interconnect_0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m07_couplers_to_axi_interconnect_0_RVALID : STD_LOGIC;
  signal m07_couplers_to_axi_interconnect_0_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m07_couplers_to_axi_interconnect_0_WREADY : STD_LOGIC;
  signal m07_couplers_to_axi_interconnect_0_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m07_couplers_to_axi_interconnect_0_WVALID : STD_LOGIC;
  signal m08_couplers_to_axi_interconnect_0_ARADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal m08_couplers_to_axi_interconnect_0_ARREADY : STD_LOGIC;
  signal m08_couplers_to_axi_interconnect_0_ARVALID : STD_LOGIC;
  signal m08_couplers_to_axi_interconnect_0_AWADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal m08_couplers_to_axi_interconnect_0_AWREADY : STD_LOGIC;
  signal m08_couplers_to_axi_interconnect_0_AWVALID : STD_LOGIC;
  signal m08_couplers_to_axi_interconnect_0_BREADY : STD_LOGIC;
  signal m08_couplers_to_axi_interconnect_0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m08_couplers_to_axi_interconnect_0_BVALID : STD_LOGIC;
  signal m08_couplers_to_axi_interconnect_0_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m08_couplers_to_axi_interconnect_0_RREADY : STD_LOGIC;
  signal m08_couplers_to_axi_interconnect_0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m08_couplers_to_axi_interconnect_0_RVALID : STD_LOGIC;
  signal m08_couplers_to_axi_interconnect_0_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m08_couplers_to_axi_interconnect_0_WREADY : STD_LOGIC;
  signal m08_couplers_to_axi_interconnect_0_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m08_couplers_to_axi_interconnect_0_WVALID : STD_LOGIC;
  signal m09_couplers_to_axi_interconnect_0_ARADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal m09_couplers_to_axi_interconnect_0_ARREADY : STD_LOGIC;
  signal m09_couplers_to_axi_interconnect_0_ARVALID : STD_LOGIC;
  signal m09_couplers_to_axi_interconnect_0_AWADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal m09_couplers_to_axi_interconnect_0_AWREADY : STD_LOGIC;
  signal m09_couplers_to_axi_interconnect_0_AWVALID : STD_LOGIC;
  signal m09_couplers_to_axi_interconnect_0_BREADY : STD_LOGIC;
  signal m09_couplers_to_axi_interconnect_0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m09_couplers_to_axi_interconnect_0_BVALID : STD_LOGIC;
  signal m09_couplers_to_axi_interconnect_0_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m09_couplers_to_axi_interconnect_0_RREADY : STD_LOGIC;
  signal m09_couplers_to_axi_interconnect_0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m09_couplers_to_axi_interconnect_0_RVALID : STD_LOGIC;
  signal m09_couplers_to_axi_interconnect_0_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m09_couplers_to_axi_interconnect_0_WREADY : STD_LOGIC;
  signal m09_couplers_to_axi_interconnect_0_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m09_couplers_to_axi_interconnect_0_WVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_ARVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_AWVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_BREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_RREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_WVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_ARADDR : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_ARPROT : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal xbar_to_m01_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_ARVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_AWADDR : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_AWPROT : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal xbar_to_m01_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_AWVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_BREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m01_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m01_couplers_RREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m01_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m01_couplers_WDATA : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_WSTRB : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_WVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m02_couplers_ARADDR : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_m02_couplers_ARPROT : STD_LOGIC_VECTOR ( 8 downto 6 );
  signal xbar_to_m02_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m02_couplers_ARVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_AWADDR : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_m02_couplers_AWPROT : STD_LOGIC_VECTOR ( 8 downto 6 );
  signal xbar_to_m02_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m02_couplers_AWVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_BREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m02_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m02_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m02_couplers_RREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m02_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m02_couplers_WDATA : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_m02_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m02_couplers_WSTRB : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal xbar_to_m02_couplers_WVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m03_couplers_ARADDR : STD_LOGIC_VECTOR ( 127 downto 96 );
  signal xbar_to_m03_couplers_ARPROT : STD_LOGIC_VECTOR ( 11 downto 9 );
  signal xbar_to_m03_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m03_couplers_ARVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_AWADDR : STD_LOGIC_VECTOR ( 127 downto 96 );
  signal xbar_to_m03_couplers_AWPROT : STD_LOGIC_VECTOR ( 11 downto 9 );
  signal xbar_to_m03_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m03_couplers_AWVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_BREADY : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m03_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m03_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m03_couplers_RREADY : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m03_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m03_couplers_WDATA : STD_LOGIC_VECTOR ( 127 downto 96 );
  signal xbar_to_m03_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m03_couplers_WSTRB : STD_LOGIC_VECTOR ( 15 downto 12 );
  signal xbar_to_m03_couplers_WVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m04_couplers_ARADDR : STD_LOGIC_VECTOR ( 159 downto 128 );
  signal xbar_to_m04_couplers_ARPROT : STD_LOGIC_VECTOR ( 14 downto 12 );
  signal xbar_to_m04_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m04_couplers_ARVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_AWADDR : STD_LOGIC_VECTOR ( 159 downto 128 );
  signal xbar_to_m04_couplers_AWPROT : STD_LOGIC_VECTOR ( 14 downto 12 );
  signal xbar_to_m04_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m04_couplers_AWVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_BREADY : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m04_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m04_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m04_couplers_RREADY : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m04_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m04_couplers_WDATA : STD_LOGIC_VECTOR ( 159 downto 128 );
  signal xbar_to_m04_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m04_couplers_WSTRB : STD_LOGIC_VECTOR ( 19 downto 16 );
  signal xbar_to_m04_couplers_WVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m05_couplers_ARADDR : STD_LOGIC_VECTOR ( 191 downto 160 );
  signal xbar_to_m05_couplers_ARPROT : STD_LOGIC_VECTOR ( 17 downto 15 );
  signal xbar_to_m05_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m05_couplers_ARVALID : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_AWADDR : STD_LOGIC_VECTOR ( 191 downto 160 );
  signal xbar_to_m05_couplers_AWPROT : STD_LOGIC_VECTOR ( 17 downto 15 );
  signal xbar_to_m05_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m05_couplers_AWVALID : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_BREADY : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m05_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m05_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m05_couplers_RREADY : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m05_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m05_couplers_WDATA : STD_LOGIC_VECTOR ( 191 downto 160 );
  signal xbar_to_m05_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m05_couplers_WSTRB : STD_LOGIC_VECTOR ( 23 downto 20 );
  signal xbar_to_m05_couplers_WVALID : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m06_couplers_ARADDR : STD_LOGIC_VECTOR ( 223 downto 192 );
  signal xbar_to_m06_couplers_ARPROT : STD_LOGIC_VECTOR ( 20 downto 18 );
  signal xbar_to_m06_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m06_couplers_ARVALID : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_AWADDR : STD_LOGIC_VECTOR ( 223 downto 192 );
  signal xbar_to_m06_couplers_AWPROT : STD_LOGIC_VECTOR ( 20 downto 18 );
  signal xbar_to_m06_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m06_couplers_AWVALID : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_BREADY : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m06_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m06_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m06_couplers_RREADY : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m06_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m06_couplers_WDATA : STD_LOGIC_VECTOR ( 223 downto 192 );
  signal xbar_to_m06_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m06_couplers_WSTRB : STD_LOGIC_VECTOR ( 27 downto 24 );
  signal xbar_to_m06_couplers_WVALID : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m07_couplers_ARADDR : STD_LOGIC_VECTOR ( 255 downto 224 );
  signal xbar_to_m07_couplers_ARPROT : STD_LOGIC_VECTOR ( 23 downto 21 );
  signal xbar_to_m07_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m07_couplers_ARVALID : STD_LOGIC_VECTOR ( 7 to 7 );
  signal xbar_to_m07_couplers_AWADDR : STD_LOGIC_VECTOR ( 255 downto 224 );
  signal xbar_to_m07_couplers_AWPROT : STD_LOGIC_VECTOR ( 23 downto 21 );
  signal xbar_to_m07_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m07_couplers_AWVALID : STD_LOGIC_VECTOR ( 7 to 7 );
  signal xbar_to_m07_couplers_BREADY : STD_LOGIC_VECTOR ( 7 to 7 );
  signal xbar_to_m07_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m07_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m07_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m07_couplers_RREADY : STD_LOGIC_VECTOR ( 7 to 7 );
  signal xbar_to_m07_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m07_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m07_couplers_WDATA : STD_LOGIC_VECTOR ( 255 downto 224 );
  signal xbar_to_m07_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m07_couplers_WSTRB : STD_LOGIC_VECTOR ( 31 downto 28 );
  signal xbar_to_m07_couplers_WVALID : STD_LOGIC_VECTOR ( 7 to 7 );
  signal xbar_to_m08_couplers_ARADDR : STD_LOGIC_VECTOR ( 287 downto 256 );
  signal xbar_to_m08_couplers_ARPROT : STD_LOGIC_VECTOR ( 26 downto 24 );
  signal xbar_to_m08_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m08_couplers_ARVALID : STD_LOGIC_VECTOR ( 8 to 8 );
  signal xbar_to_m08_couplers_AWADDR : STD_LOGIC_VECTOR ( 287 downto 256 );
  signal xbar_to_m08_couplers_AWPROT : STD_LOGIC_VECTOR ( 26 downto 24 );
  signal xbar_to_m08_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m08_couplers_AWVALID : STD_LOGIC_VECTOR ( 8 to 8 );
  signal xbar_to_m08_couplers_BREADY : STD_LOGIC_VECTOR ( 8 to 8 );
  signal xbar_to_m08_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m08_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m08_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m08_couplers_RREADY : STD_LOGIC_VECTOR ( 8 to 8 );
  signal xbar_to_m08_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m08_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m08_couplers_WDATA : STD_LOGIC_VECTOR ( 287 downto 256 );
  signal xbar_to_m08_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m08_couplers_WSTRB : STD_LOGIC_VECTOR ( 35 downto 32 );
  signal xbar_to_m08_couplers_WVALID : STD_LOGIC_VECTOR ( 8 to 8 );
  signal xbar_to_m09_couplers_ARADDR : STD_LOGIC_VECTOR ( 319 downto 288 );
  signal xbar_to_m09_couplers_ARPROT : STD_LOGIC_VECTOR ( 29 downto 27 );
  signal xbar_to_m09_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m09_couplers_ARVALID : STD_LOGIC_VECTOR ( 9 to 9 );
  signal xbar_to_m09_couplers_AWADDR : STD_LOGIC_VECTOR ( 319 downto 288 );
  signal xbar_to_m09_couplers_AWPROT : STD_LOGIC_VECTOR ( 29 downto 27 );
  signal xbar_to_m09_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m09_couplers_AWVALID : STD_LOGIC_VECTOR ( 9 to 9 );
  signal xbar_to_m09_couplers_BREADY : STD_LOGIC_VECTOR ( 9 to 9 );
  signal xbar_to_m09_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m09_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m09_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m09_couplers_RREADY : STD_LOGIC_VECTOR ( 9 to 9 );
  signal xbar_to_m09_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m09_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m09_couplers_WDATA : STD_LOGIC_VECTOR ( 319 downto 288 );
  signal xbar_to_m09_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m09_couplers_WSTRB : STD_LOGIC_VECTOR ( 39 downto 36 );
  signal xbar_to_m09_couplers_WVALID : STD_LOGIC_VECTOR ( 9 to 9 );
begin
  M00_ACLK_1 <= M00_ACLK;
  M00_ARESETN_1 <= M00_ARESETN;
  M00_AXI_araddr(8 downto 0) <= m00_couplers_to_axi_interconnect_0_ARADDR(8 downto 0);
  M00_AXI_arvalid <= m00_couplers_to_axi_interconnect_0_ARVALID;
  M00_AXI_awaddr(8 downto 0) <= m00_couplers_to_axi_interconnect_0_AWADDR(8 downto 0);
  M00_AXI_awvalid <= m00_couplers_to_axi_interconnect_0_AWVALID;
  M00_AXI_bready <= m00_couplers_to_axi_interconnect_0_BREADY;
  M00_AXI_rready <= m00_couplers_to_axi_interconnect_0_RREADY;
  M00_AXI_wdata(31 downto 0) <= m00_couplers_to_axi_interconnect_0_WDATA(31 downto 0);
  M00_AXI_wvalid <= m00_couplers_to_axi_interconnect_0_WVALID;
  M01_ACLK_1 <= M01_ACLK;
  M01_ARESETN_1 <= M01_ARESETN;
  M01_AXI_araddr(4 downto 0) <= m01_couplers_to_axi_interconnect_0_ARADDR(4 downto 0);
  M01_AXI_arvalid <= m01_couplers_to_axi_interconnect_0_ARVALID;
  M01_AXI_awaddr(4 downto 0) <= m01_couplers_to_axi_interconnect_0_AWADDR(4 downto 0);
  M01_AXI_awvalid <= m01_couplers_to_axi_interconnect_0_AWVALID;
  M01_AXI_bready <= m01_couplers_to_axi_interconnect_0_BREADY;
  M01_AXI_rready <= m01_couplers_to_axi_interconnect_0_RREADY;
  M01_AXI_wdata(31 downto 0) <= m01_couplers_to_axi_interconnect_0_WDATA(31 downto 0);
  M01_AXI_wstrb(3 downto 0) <= m01_couplers_to_axi_interconnect_0_WSTRB(3 downto 0);
  M01_AXI_wvalid <= m01_couplers_to_axi_interconnect_0_WVALID;
  M02_ACLK_1 <= M02_ACLK;
  M02_ARESETN_1 <= M02_ARESETN;
  M02_AXI_araddr(6 downto 0) <= m02_couplers_to_axi_interconnect_0_ARADDR(6 downto 0);
  M02_AXI_arvalid <= m02_couplers_to_axi_interconnect_0_ARVALID;
  M02_AXI_awaddr(6 downto 0) <= m02_couplers_to_axi_interconnect_0_AWADDR(6 downto 0);
  M02_AXI_awvalid <= m02_couplers_to_axi_interconnect_0_AWVALID;
  M02_AXI_bready <= m02_couplers_to_axi_interconnect_0_BREADY;
  M02_AXI_rready <= m02_couplers_to_axi_interconnect_0_RREADY;
  M02_AXI_wdata(31 downto 0) <= m02_couplers_to_axi_interconnect_0_WDATA(31 downto 0);
  M02_AXI_wstrb(3 downto 0) <= m02_couplers_to_axi_interconnect_0_WSTRB(3 downto 0);
  M02_AXI_wvalid <= m02_couplers_to_axi_interconnect_0_WVALID;
  M03_ACLK_1 <= M03_ACLK;
  M03_ARESETN_1 <= M03_ARESETN;
  M03_AXI_araddr(4 downto 0) <= m03_couplers_to_axi_interconnect_0_ARADDR(4 downto 0);
  M03_AXI_arprot(2 downto 0) <= m03_couplers_to_axi_interconnect_0_ARPROT(2 downto 0);
  M03_AXI_arvalid <= m03_couplers_to_axi_interconnect_0_ARVALID;
  M03_AXI_awaddr(4 downto 0) <= m03_couplers_to_axi_interconnect_0_AWADDR(4 downto 0);
  M03_AXI_awprot(2 downto 0) <= m03_couplers_to_axi_interconnect_0_AWPROT(2 downto 0);
  M03_AXI_awvalid <= m03_couplers_to_axi_interconnect_0_AWVALID;
  M03_AXI_bready <= m03_couplers_to_axi_interconnect_0_BREADY;
  M03_AXI_rready <= m03_couplers_to_axi_interconnect_0_RREADY;
  M03_AXI_wdata(31 downto 0) <= m03_couplers_to_axi_interconnect_0_WDATA(31 downto 0);
  M03_AXI_wstrb(3 downto 0) <= m03_couplers_to_axi_interconnect_0_WSTRB(3 downto 0);
  M03_AXI_wvalid <= m03_couplers_to_axi_interconnect_0_WVALID;
  M04_ACLK_1 <= M04_ACLK;
  M04_ARESETN_1 <= M04_ARESETN;
  M04_AXI_araddr(8 downto 0) <= m04_couplers_to_axi_interconnect_0_ARADDR(8 downto 0);
  M04_AXI_arvalid <= m04_couplers_to_axi_interconnect_0_ARVALID;
  M04_AXI_awaddr(8 downto 0) <= m04_couplers_to_axi_interconnect_0_AWADDR(8 downto 0);
  M04_AXI_awvalid <= m04_couplers_to_axi_interconnect_0_AWVALID;
  M04_AXI_bready <= m04_couplers_to_axi_interconnect_0_BREADY;
  M04_AXI_rready <= m04_couplers_to_axi_interconnect_0_RREADY;
  M04_AXI_wdata(31 downto 0) <= m04_couplers_to_axi_interconnect_0_WDATA(31 downto 0);
  M04_AXI_wstrb(3 downto 0) <= m04_couplers_to_axi_interconnect_0_WSTRB(3 downto 0);
  M04_AXI_wvalid <= m04_couplers_to_axi_interconnect_0_WVALID;
  M05_ACLK_1 <= M05_ACLK;
  M05_ARESETN_1 <= M05_ARESETN;
  M05_AXI_araddr(8 downto 0) <= m05_couplers_to_axi_interconnect_0_ARADDR(8 downto 0);
  M05_AXI_arvalid <= m05_couplers_to_axi_interconnect_0_ARVALID;
  M05_AXI_awaddr(8 downto 0) <= m05_couplers_to_axi_interconnect_0_AWADDR(8 downto 0);
  M05_AXI_awvalid <= m05_couplers_to_axi_interconnect_0_AWVALID;
  M05_AXI_bready <= m05_couplers_to_axi_interconnect_0_BREADY;
  M05_AXI_rready <= m05_couplers_to_axi_interconnect_0_RREADY;
  M05_AXI_wdata(31 downto 0) <= m05_couplers_to_axi_interconnect_0_WDATA(31 downto 0);
  M05_AXI_wstrb(3 downto 0) <= m05_couplers_to_axi_interconnect_0_WSTRB(3 downto 0);
  M05_AXI_wvalid <= m05_couplers_to_axi_interconnect_0_WVALID;
  M06_ACLK_1 <= M06_ACLK;
  M06_ARESETN_1 <= M06_ARESETN;
  M06_AXI_araddr(6 downto 0) <= m06_couplers_to_axi_interconnect_0_ARADDR(6 downto 0);
  M06_AXI_arvalid <= m06_couplers_to_axi_interconnect_0_ARVALID;
  M06_AXI_awaddr(6 downto 0) <= m06_couplers_to_axi_interconnect_0_AWADDR(6 downto 0);
  M06_AXI_awvalid <= m06_couplers_to_axi_interconnect_0_AWVALID;
  M06_AXI_bready <= m06_couplers_to_axi_interconnect_0_BREADY;
  M06_AXI_rready <= m06_couplers_to_axi_interconnect_0_RREADY;
  M06_AXI_wdata(31 downto 0) <= m06_couplers_to_axi_interconnect_0_WDATA(31 downto 0);
  M06_AXI_wstrb(3 downto 0) <= m06_couplers_to_axi_interconnect_0_WSTRB(3 downto 0);
  M06_AXI_wvalid <= m06_couplers_to_axi_interconnect_0_WVALID;
  M07_ACLK_1 <= M07_ACLK;
  M07_ARESETN_1 <= M07_ARESETN;
  M07_AXI_araddr(4 downto 0) <= m07_couplers_to_axi_interconnect_0_ARADDR(4 downto 0);
  M07_AXI_arvalid <= m07_couplers_to_axi_interconnect_0_ARVALID;
  M07_AXI_awaddr(4 downto 0) <= m07_couplers_to_axi_interconnect_0_AWADDR(4 downto 0);
  M07_AXI_awvalid <= m07_couplers_to_axi_interconnect_0_AWVALID;
  M07_AXI_bready <= m07_couplers_to_axi_interconnect_0_BREADY;
  M07_AXI_rready <= m07_couplers_to_axi_interconnect_0_RREADY;
  M07_AXI_wdata(31 downto 0) <= m07_couplers_to_axi_interconnect_0_WDATA(31 downto 0);
  M07_AXI_wstrb(3 downto 0) <= m07_couplers_to_axi_interconnect_0_WSTRB(3 downto 0);
  M07_AXI_wvalid <= m07_couplers_to_axi_interconnect_0_WVALID;
  M08_ACLK_1 <= M08_ACLK;
  M08_ARESETN_1 <= M08_ARESETN;
  M08_AXI_araddr(8 downto 0) <= m08_couplers_to_axi_interconnect_0_ARADDR(8 downto 0);
  M08_AXI_arvalid <= m08_couplers_to_axi_interconnect_0_ARVALID;
  M08_AXI_awaddr(8 downto 0) <= m08_couplers_to_axi_interconnect_0_AWADDR(8 downto 0);
  M08_AXI_awvalid <= m08_couplers_to_axi_interconnect_0_AWVALID;
  M08_AXI_bready <= m08_couplers_to_axi_interconnect_0_BREADY;
  M08_AXI_rready <= m08_couplers_to_axi_interconnect_0_RREADY;
  M08_AXI_wdata(31 downto 0) <= m08_couplers_to_axi_interconnect_0_WDATA(31 downto 0);
  M08_AXI_wstrb(3 downto 0) <= m08_couplers_to_axi_interconnect_0_WSTRB(3 downto 0);
  M08_AXI_wvalid <= m08_couplers_to_axi_interconnect_0_WVALID;
  M09_ACLK_1 <= M09_ACLK;
  M09_ARESETN_1 <= M09_ARESETN;
  M09_AXI_araddr(8 downto 0) <= m09_couplers_to_axi_interconnect_0_ARADDR(8 downto 0);
  M09_AXI_arvalid <= m09_couplers_to_axi_interconnect_0_ARVALID;
  M09_AXI_awaddr(8 downto 0) <= m09_couplers_to_axi_interconnect_0_AWADDR(8 downto 0);
  M09_AXI_awvalid <= m09_couplers_to_axi_interconnect_0_AWVALID;
  M09_AXI_bready <= m09_couplers_to_axi_interconnect_0_BREADY;
  M09_AXI_rready <= m09_couplers_to_axi_interconnect_0_RREADY;
  M09_AXI_wdata(31 downto 0) <= m09_couplers_to_axi_interconnect_0_WDATA(31 downto 0);
  M09_AXI_wstrb(3 downto 0) <= m09_couplers_to_axi_interconnect_0_WSTRB(3 downto 0);
  M09_AXI_wvalid <= m09_couplers_to_axi_interconnect_0_WVALID;
  S00_ACLK_1 <= S00_ACLK;
  S00_ARESETN_1 <= S00_ARESETN;
  S00_AXI_arready <= axi_interconnect_0_to_s00_couplers_ARREADY;
  S00_AXI_awready <= axi_interconnect_0_to_s00_couplers_AWREADY;
  S00_AXI_bid(11 downto 0) <= axi_interconnect_0_to_s00_couplers_BID(11 downto 0);
  S00_AXI_bresp(1 downto 0) <= axi_interconnect_0_to_s00_couplers_BRESP(1 downto 0);
  S00_AXI_bvalid <= axi_interconnect_0_to_s00_couplers_BVALID;
  S00_AXI_rdata(31 downto 0) <= axi_interconnect_0_to_s00_couplers_RDATA(31 downto 0);
  S00_AXI_rid(11 downto 0) <= axi_interconnect_0_to_s00_couplers_RID(11 downto 0);
  S00_AXI_rlast <= axi_interconnect_0_to_s00_couplers_RLAST;
  S00_AXI_rresp(1 downto 0) <= axi_interconnect_0_to_s00_couplers_RRESP(1 downto 0);
  S00_AXI_rvalid <= axi_interconnect_0_to_s00_couplers_RVALID;
  S00_AXI_wready <= axi_interconnect_0_to_s00_couplers_WREADY;
  axi_interconnect_0_ACLK_net <= ACLK;
  axi_interconnect_0_ARESETN_net <= ARESETN;
  axi_interconnect_0_to_s00_couplers_ARADDR(31 downto 0) <= S00_AXI_araddr(31 downto 0);
  axi_interconnect_0_to_s00_couplers_ARBURST(1 downto 0) <= S00_AXI_arburst(1 downto 0);
  axi_interconnect_0_to_s00_couplers_ARCACHE(3 downto 0) <= S00_AXI_arcache(3 downto 0);
  axi_interconnect_0_to_s00_couplers_ARID(11 downto 0) <= S00_AXI_arid(11 downto 0);
  axi_interconnect_0_to_s00_couplers_ARLEN(7 downto 0) <= S00_AXI_arlen(7 downto 0);
  axi_interconnect_0_to_s00_couplers_ARLOCK(0) <= S00_AXI_arlock(0);
  axi_interconnect_0_to_s00_couplers_ARPROT(2 downto 0) <= S00_AXI_arprot(2 downto 0);
  axi_interconnect_0_to_s00_couplers_ARQOS(3 downto 0) <= S00_AXI_arqos(3 downto 0);
  axi_interconnect_0_to_s00_couplers_ARREGION(3 downto 0) <= S00_AXI_arregion(3 downto 0);
  axi_interconnect_0_to_s00_couplers_ARSIZE(2 downto 0) <= S00_AXI_arsize(2 downto 0);
  axi_interconnect_0_to_s00_couplers_ARVALID <= S00_AXI_arvalid;
  axi_interconnect_0_to_s00_couplers_AWADDR(31 downto 0) <= S00_AXI_awaddr(31 downto 0);
  axi_interconnect_0_to_s00_couplers_AWBURST(1 downto 0) <= S00_AXI_awburst(1 downto 0);
  axi_interconnect_0_to_s00_couplers_AWCACHE(3 downto 0) <= S00_AXI_awcache(3 downto 0);
  axi_interconnect_0_to_s00_couplers_AWID(11 downto 0) <= S00_AXI_awid(11 downto 0);
  axi_interconnect_0_to_s00_couplers_AWLEN(7 downto 0) <= S00_AXI_awlen(7 downto 0);
  axi_interconnect_0_to_s00_couplers_AWLOCK(0) <= S00_AXI_awlock(0);
  axi_interconnect_0_to_s00_couplers_AWPROT(2 downto 0) <= S00_AXI_awprot(2 downto 0);
  axi_interconnect_0_to_s00_couplers_AWQOS(3 downto 0) <= S00_AXI_awqos(3 downto 0);
  axi_interconnect_0_to_s00_couplers_AWREGION(3 downto 0) <= S00_AXI_awregion(3 downto 0);
  axi_interconnect_0_to_s00_couplers_AWSIZE(2 downto 0) <= S00_AXI_awsize(2 downto 0);
  axi_interconnect_0_to_s00_couplers_AWVALID <= S00_AXI_awvalid;
  axi_interconnect_0_to_s00_couplers_BREADY <= S00_AXI_bready;
  axi_interconnect_0_to_s00_couplers_RREADY <= S00_AXI_rready;
  axi_interconnect_0_to_s00_couplers_WDATA(31 downto 0) <= S00_AXI_wdata(31 downto 0);
  axi_interconnect_0_to_s00_couplers_WLAST <= S00_AXI_wlast;
  axi_interconnect_0_to_s00_couplers_WSTRB(3 downto 0) <= S00_AXI_wstrb(3 downto 0);
  axi_interconnect_0_to_s00_couplers_WVALID <= S00_AXI_wvalid;
  m00_couplers_to_axi_interconnect_0_ARREADY <= M00_AXI_arready;
  m00_couplers_to_axi_interconnect_0_AWREADY <= M00_AXI_awready;
  m00_couplers_to_axi_interconnect_0_BRESP(1 downto 0) <= M00_AXI_bresp(1 downto 0);
  m00_couplers_to_axi_interconnect_0_BVALID <= M00_AXI_bvalid;
  m00_couplers_to_axi_interconnect_0_RDATA(31 downto 0) <= M00_AXI_rdata(31 downto 0);
  m00_couplers_to_axi_interconnect_0_RRESP(1 downto 0) <= M00_AXI_rresp(1 downto 0);
  m00_couplers_to_axi_interconnect_0_RVALID <= M00_AXI_rvalid;
  m00_couplers_to_axi_interconnect_0_WREADY <= M00_AXI_wready;
  m01_couplers_to_axi_interconnect_0_ARREADY <= M01_AXI_arready;
  m01_couplers_to_axi_interconnect_0_AWREADY <= M01_AXI_awready;
  m01_couplers_to_axi_interconnect_0_BRESP(1 downto 0) <= M01_AXI_bresp(1 downto 0);
  m01_couplers_to_axi_interconnect_0_BVALID <= M01_AXI_bvalid;
  m01_couplers_to_axi_interconnect_0_RDATA(31 downto 0) <= M01_AXI_rdata(31 downto 0);
  m01_couplers_to_axi_interconnect_0_RRESP(1 downto 0) <= M01_AXI_rresp(1 downto 0);
  m01_couplers_to_axi_interconnect_0_RVALID <= M01_AXI_rvalid;
  m01_couplers_to_axi_interconnect_0_WREADY <= M01_AXI_wready;
  m02_couplers_to_axi_interconnect_0_ARREADY <= M02_AXI_arready;
  m02_couplers_to_axi_interconnect_0_AWREADY <= M02_AXI_awready;
  m02_couplers_to_axi_interconnect_0_BRESP(1 downto 0) <= M02_AXI_bresp(1 downto 0);
  m02_couplers_to_axi_interconnect_0_BVALID <= M02_AXI_bvalid;
  m02_couplers_to_axi_interconnect_0_RDATA(31 downto 0) <= M02_AXI_rdata(31 downto 0);
  m02_couplers_to_axi_interconnect_0_RRESP(1 downto 0) <= M02_AXI_rresp(1 downto 0);
  m02_couplers_to_axi_interconnect_0_RVALID <= M02_AXI_rvalid;
  m02_couplers_to_axi_interconnect_0_WREADY <= M02_AXI_wready;
  m03_couplers_to_axi_interconnect_0_ARREADY <= M03_AXI_arready;
  m03_couplers_to_axi_interconnect_0_AWREADY <= M03_AXI_awready;
  m03_couplers_to_axi_interconnect_0_BRESP(1 downto 0) <= M03_AXI_bresp(1 downto 0);
  m03_couplers_to_axi_interconnect_0_BVALID <= M03_AXI_bvalid;
  m03_couplers_to_axi_interconnect_0_RDATA(31 downto 0) <= M03_AXI_rdata(31 downto 0);
  m03_couplers_to_axi_interconnect_0_RRESP(1 downto 0) <= M03_AXI_rresp(1 downto 0);
  m03_couplers_to_axi_interconnect_0_RVALID <= M03_AXI_rvalid;
  m03_couplers_to_axi_interconnect_0_WREADY <= M03_AXI_wready;
  m04_couplers_to_axi_interconnect_0_ARREADY <= M04_AXI_arready;
  m04_couplers_to_axi_interconnect_0_AWREADY <= M04_AXI_awready;
  m04_couplers_to_axi_interconnect_0_BRESP(1 downto 0) <= M04_AXI_bresp(1 downto 0);
  m04_couplers_to_axi_interconnect_0_BVALID <= M04_AXI_bvalid;
  m04_couplers_to_axi_interconnect_0_RDATA(31 downto 0) <= M04_AXI_rdata(31 downto 0);
  m04_couplers_to_axi_interconnect_0_RRESP(1 downto 0) <= M04_AXI_rresp(1 downto 0);
  m04_couplers_to_axi_interconnect_0_RVALID <= M04_AXI_rvalid;
  m04_couplers_to_axi_interconnect_0_WREADY <= M04_AXI_wready;
  m05_couplers_to_axi_interconnect_0_ARREADY <= M05_AXI_arready;
  m05_couplers_to_axi_interconnect_0_AWREADY <= M05_AXI_awready;
  m05_couplers_to_axi_interconnect_0_BRESP(1 downto 0) <= M05_AXI_bresp(1 downto 0);
  m05_couplers_to_axi_interconnect_0_BVALID <= M05_AXI_bvalid;
  m05_couplers_to_axi_interconnect_0_RDATA(31 downto 0) <= M05_AXI_rdata(31 downto 0);
  m05_couplers_to_axi_interconnect_0_RRESP(1 downto 0) <= M05_AXI_rresp(1 downto 0);
  m05_couplers_to_axi_interconnect_0_RVALID <= M05_AXI_rvalid;
  m05_couplers_to_axi_interconnect_0_WREADY <= M05_AXI_wready;
  m06_couplers_to_axi_interconnect_0_ARREADY <= M06_AXI_arready;
  m06_couplers_to_axi_interconnect_0_AWREADY <= M06_AXI_awready;
  m06_couplers_to_axi_interconnect_0_BRESP(1 downto 0) <= M06_AXI_bresp(1 downto 0);
  m06_couplers_to_axi_interconnect_0_BVALID <= M06_AXI_bvalid;
  m06_couplers_to_axi_interconnect_0_RDATA(31 downto 0) <= M06_AXI_rdata(31 downto 0);
  m06_couplers_to_axi_interconnect_0_RRESP(1 downto 0) <= M06_AXI_rresp(1 downto 0);
  m06_couplers_to_axi_interconnect_0_RVALID <= M06_AXI_rvalid;
  m06_couplers_to_axi_interconnect_0_WREADY <= M06_AXI_wready;
  m07_couplers_to_axi_interconnect_0_ARREADY <= M07_AXI_arready;
  m07_couplers_to_axi_interconnect_0_AWREADY <= M07_AXI_awready;
  m07_couplers_to_axi_interconnect_0_BRESP(1 downto 0) <= M07_AXI_bresp(1 downto 0);
  m07_couplers_to_axi_interconnect_0_BVALID <= M07_AXI_bvalid;
  m07_couplers_to_axi_interconnect_0_RDATA(31 downto 0) <= M07_AXI_rdata(31 downto 0);
  m07_couplers_to_axi_interconnect_0_RRESP(1 downto 0) <= M07_AXI_rresp(1 downto 0);
  m07_couplers_to_axi_interconnect_0_RVALID <= M07_AXI_rvalid;
  m07_couplers_to_axi_interconnect_0_WREADY <= M07_AXI_wready;
  m08_couplers_to_axi_interconnect_0_ARREADY <= M08_AXI_arready;
  m08_couplers_to_axi_interconnect_0_AWREADY <= M08_AXI_awready;
  m08_couplers_to_axi_interconnect_0_BRESP(1 downto 0) <= M08_AXI_bresp(1 downto 0);
  m08_couplers_to_axi_interconnect_0_BVALID <= M08_AXI_bvalid;
  m08_couplers_to_axi_interconnect_0_RDATA(31 downto 0) <= M08_AXI_rdata(31 downto 0);
  m08_couplers_to_axi_interconnect_0_RRESP(1 downto 0) <= M08_AXI_rresp(1 downto 0);
  m08_couplers_to_axi_interconnect_0_RVALID <= M08_AXI_rvalid;
  m08_couplers_to_axi_interconnect_0_WREADY <= M08_AXI_wready;
  m09_couplers_to_axi_interconnect_0_ARREADY <= M09_AXI_arready;
  m09_couplers_to_axi_interconnect_0_AWREADY <= M09_AXI_awready;
  m09_couplers_to_axi_interconnect_0_BRESP(1 downto 0) <= M09_AXI_bresp(1 downto 0);
  m09_couplers_to_axi_interconnect_0_BVALID <= M09_AXI_bvalid;
  m09_couplers_to_axi_interconnect_0_RDATA(31 downto 0) <= M09_AXI_rdata(31 downto 0);
  m09_couplers_to_axi_interconnect_0_RRESP(1 downto 0) <= M09_AXI_rresp(1 downto 0);
  m09_couplers_to_axi_interconnect_0_RVALID <= M09_AXI_rvalid;
  m09_couplers_to_axi_interconnect_0_WREADY <= M09_AXI_wready;
m00_couplers: entity work.m00_couplers_imp_1FYRJNX
     port map (
      M_ACLK => M00_ACLK_1,
      M_ARESETN => M00_ARESETN_1,
      M_AXI_araddr(8 downto 0) => m00_couplers_to_axi_interconnect_0_ARADDR(8 downto 0),
      M_AXI_arready => m00_couplers_to_axi_interconnect_0_ARREADY,
      M_AXI_arvalid => m00_couplers_to_axi_interconnect_0_ARVALID,
      M_AXI_awaddr(8 downto 0) => m00_couplers_to_axi_interconnect_0_AWADDR(8 downto 0),
      M_AXI_awready => m00_couplers_to_axi_interconnect_0_AWREADY,
      M_AXI_awvalid => m00_couplers_to_axi_interconnect_0_AWVALID,
      M_AXI_bready => m00_couplers_to_axi_interconnect_0_BREADY,
      M_AXI_bresp(1 downto 0) => m00_couplers_to_axi_interconnect_0_BRESP(1 downto 0),
      M_AXI_bvalid => m00_couplers_to_axi_interconnect_0_BVALID,
      M_AXI_rdata(31 downto 0) => m00_couplers_to_axi_interconnect_0_RDATA(31 downto 0),
      M_AXI_rready => m00_couplers_to_axi_interconnect_0_RREADY,
      M_AXI_rresp(1 downto 0) => m00_couplers_to_axi_interconnect_0_RRESP(1 downto 0),
      M_AXI_rvalid => m00_couplers_to_axi_interconnect_0_RVALID,
      M_AXI_wdata(31 downto 0) => m00_couplers_to_axi_interconnect_0_WDATA(31 downto 0),
      M_AXI_wready => m00_couplers_to_axi_interconnect_0_WREADY,
      M_AXI_wvalid => m00_couplers_to_axi_interconnect_0_WVALID,
      S_ACLK => axi_interconnect_0_ACLK_net,
      S_ARESETN => axi_interconnect_0_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m00_couplers_ARADDR(31 downto 0),
      S_AXI_arprot(2 downto 0) => xbar_to_m00_couplers_ARPROT(2 downto 0),
      S_AXI_arready => xbar_to_m00_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m00_couplers_ARVALID(0),
      S_AXI_awaddr(31 downto 0) => xbar_to_m00_couplers_AWADDR(31 downto 0),
      S_AXI_awprot(2 downto 0) => xbar_to_m00_couplers_AWPROT(2 downto 0),
      S_AXI_awready => xbar_to_m00_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m00_couplers_AWVALID(0),
      S_AXI_bready => xbar_to_m00_couplers_BREADY(0),
      S_AXI_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m00_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m00_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m00_couplers_RREADY(0),
      S_AXI_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m00_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m00_couplers_WDATA(31 downto 0),
      S_AXI_wready => xbar_to_m00_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m00_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid => xbar_to_m00_couplers_WVALID(0)
    );
m01_couplers: entity work.m01_couplers_imp_AMBB5N
     port map (
      M_ACLK => M01_ACLK_1,
      M_ARESETN => M01_ARESETN_1,
      M_AXI_araddr(4 downto 0) => m01_couplers_to_axi_interconnect_0_ARADDR(4 downto 0),
      M_AXI_arready => m01_couplers_to_axi_interconnect_0_ARREADY,
      M_AXI_arvalid => m01_couplers_to_axi_interconnect_0_ARVALID,
      M_AXI_awaddr(4 downto 0) => m01_couplers_to_axi_interconnect_0_AWADDR(4 downto 0),
      M_AXI_awready => m01_couplers_to_axi_interconnect_0_AWREADY,
      M_AXI_awvalid => m01_couplers_to_axi_interconnect_0_AWVALID,
      M_AXI_bready => m01_couplers_to_axi_interconnect_0_BREADY,
      M_AXI_bresp(1 downto 0) => m01_couplers_to_axi_interconnect_0_BRESP(1 downto 0),
      M_AXI_bvalid => m01_couplers_to_axi_interconnect_0_BVALID,
      M_AXI_rdata(31 downto 0) => m01_couplers_to_axi_interconnect_0_RDATA(31 downto 0),
      M_AXI_rready => m01_couplers_to_axi_interconnect_0_RREADY,
      M_AXI_rresp(1 downto 0) => m01_couplers_to_axi_interconnect_0_RRESP(1 downto 0),
      M_AXI_rvalid => m01_couplers_to_axi_interconnect_0_RVALID,
      M_AXI_wdata(31 downto 0) => m01_couplers_to_axi_interconnect_0_WDATA(31 downto 0),
      M_AXI_wready => m01_couplers_to_axi_interconnect_0_WREADY,
      M_AXI_wstrb(3 downto 0) => m01_couplers_to_axi_interconnect_0_WSTRB(3 downto 0),
      M_AXI_wvalid => m01_couplers_to_axi_interconnect_0_WVALID,
      S_ACLK => axi_interconnect_0_ACLK_net,
      S_ARESETN => axi_interconnect_0_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m01_couplers_ARADDR(63 downto 32),
      S_AXI_arprot(2 downto 0) => xbar_to_m01_couplers_ARPROT(5 downto 3),
      S_AXI_arready => xbar_to_m01_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m01_couplers_ARVALID(1),
      S_AXI_awaddr(31 downto 0) => xbar_to_m01_couplers_AWADDR(63 downto 32),
      S_AXI_awprot(2 downto 0) => xbar_to_m01_couplers_AWPROT(5 downto 3),
      S_AXI_awready => xbar_to_m01_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m01_couplers_AWVALID(1),
      S_AXI_bready => xbar_to_m01_couplers_BREADY(1),
      S_AXI_bresp(1 downto 0) => xbar_to_m01_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m01_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m01_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m01_couplers_RREADY(1),
      S_AXI_rresp(1 downto 0) => xbar_to_m01_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m01_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m01_couplers_WDATA(63 downto 32),
      S_AXI_wready => xbar_to_m01_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m01_couplers_WSTRB(7 downto 4),
      S_AXI_wvalid => xbar_to_m01_couplers_WVALID(1)
    );
m02_couplers: entity work.m02_couplers_imp_P0IUHS
     port map (
      M_ACLK => M02_ACLK_1,
      M_ARESETN => M02_ARESETN_1,
      M_AXI_araddr(6 downto 0) => m02_couplers_to_axi_interconnect_0_ARADDR(6 downto 0),
      M_AXI_arready => m02_couplers_to_axi_interconnect_0_ARREADY,
      M_AXI_arvalid => m02_couplers_to_axi_interconnect_0_ARVALID,
      M_AXI_awaddr(6 downto 0) => m02_couplers_to_axi_interconnect_0_AWADDR(6 downto 0),
      M_AXI_awready => m02_couplers_to_axi_interconnect_0_AWREADY,
      M_AXI_awvalid => m02_couplers_to_axi_interconnect_0_AWVALID,
      M_AXI_bready => m02_couplers_to_axi_interconnect_0_BREADY,
      M_AXI_bresp(1 downto 0) => m02_couplers_to_axi_interconnect_0_BRESP(1 downto 0),
      M_AXI_bvalid => m02_couplers_to_axi_interconnect_0_BVALID,
      M_AXI_rdata(31 downto 0) => m02_couplers_to_axi_interconnect_0_RDATA(31 downto 0),
      M_AXI_rready => m02_couplers_to_axi_interconnect_0_RREADY,
      M_AXI_rresp(1 downto 0) => m02_couplers_to_axi_interconnect_0_RRESP(1 downto 0),
      M_AXI_rvalid => m02_couplers_to_axi_interconnect_0_RVALID,
      M_AXI_wdata(31 downto 0) => m02_couplers_to_axi_interconnect_0_WDATA(31 downto 0),
      M_AXI_wready => m02_couplers_to_axi_interconnect_0_WREADY,
      M_AXI_wstrb(3 downto 0) => m02_couplers_to_axi_interconnect_0_WSTRB(3 downto 0),
      M_AXI_wvalid => m02_couplers_to_axi_interconnect_0_WVALID,
      S_ACLK => axi_interconnect_0_ACLK_net,
      S_ARESETN => axi_interconnect_0_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m02_couplers_ARADDR(95 downto 64),
      S_AXI_arprot(2 downto 0) => xbar_to_m02_couplers_ARPROT(8 downto 6),
      S_AXI_arready => xbar_to_m02_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m02_couplers_ARVALID(2),
      S_AXI_awaddr(31 downto 0) => xbar_to_m02_couplers_AWADDR(95 downto 64),
      S_AXI_awprot(2 downto 0) => xbar_to_m02_couplers_AWPROT(8 downto 6),
      S_AXI_awready => xbar_to_m02_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m02_couplers_AWVALID(2),
      S_AXI_bready => xbar_to_m02_couplers_BREADY(2),
      S_AXI_bresp(1 downto 0) => xbar_to_m02_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m02_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m02_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m02_couplers_RREADY(2),
      S_AXI_rresp(1 downto 0) => xbar_to_m02_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m02_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m02_couplers_WDATA(95 downto 64),
      S_AXI_wready => xbar_to_m02_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m02_couplers_WSTRB(11 downto 8),
      S_AXI_wvalid => xbar_to_m02_couplers_WVALID(2)
    );
m03_couplers: entity work.m03_couplers_imp_1J9C68M
     port map (
      M_ACLK => M03_ACLK_1,
      M_ARESETN => M03_ARESETN_1,
      M_AXI_araddr(4 downto 0) => m03_couplers_to_axi_interconnect_0_ARADDR(4 downto 0),
      M_AXI_arprot(2 downto 0) => m03_couplers_to_axi_interconnect_0_ARPROT(2 downto 0),
      M_AXI_arready => m03_couplers_to_axi_interconnect_0_ARREADY,
      M_AXI_arvalid => m03_couplers_to_axi_interconnect_0_ARVALID,
      M_AXI_awaddr(4 downto 0) => m03_couplers_to_axi_interconnect_0_AWADDR(4 downto 0),
      M_AXI_awprot(2 downto 0) => m03_couplers_to_axi_interconnect_0_AWPROT(2 downto 0),
      M_AXI_awready => m03_couplers_to_axi_interconnect_0_AWREADY,
      M_AXI_awvalid => m03_couplers_to_axi_interconnect_0_AWVALID,
      M_AXI_bready => m03_couplers_to_axi_interconnect_0_BREADY,
      M_AXI_bresp(1 downto 0) => m03_couplers_to_axi_interconnect_0_BRESP(1 downto 0),
      M_AXI_bvalid => m03_couplers_to_axi_interconnect_0_BVALID,
      M_AXI_rdata(31 downto 0) => m03_couplers_to_axi_interconnect_0_RDATA(31 downto 0),
      M_AXI_rready => m03_couplers_to_axi_interconnect_0_RREADY,
      M_AXI_rresp(1 downto 0) => m03_couplers_to_axi_interconnect_0_RRESP(1 downto 0),
      M_AXI_rvalid => m03_couplers_to_axi_interconnect_0_RVALID,
      M_AXI_wdata(31 downto 0) => m03_couplers_to_axi_interconnect_0_WDATA(31 downto 0),
      M_AXI_wready => m03_couplers_to_axi_interconnect_0_WREADY,
      M_AXI_wstrb(3 downto 0) => m03_couplers_to_axi_interconnect_0_WSTRB(3 downto 0),
      M_AXI_wvalid => m03_couplers_to_axi_interconnect_0_WVALID,
      S_ACLK => axi_interconnect_0_ACLK_net,
      S_ARESETN => axi_interconnect_0_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m03_couplers_ARADDR(127 downto 96),
      S_AXI_arprot(2 downto 0) => xbar_to_m03_couplers_ARPROT(11 downto 9),
      S_AXI_arready => xbar_to_m03_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m03_couplers_ARVALID(3),
      S_AXI_awaddr(31 downto 0) => xbar_to_m03_couplers_AWADDR(127 downto 96),
      S_AXI_awprot(2 downto 0) => xbar_to_m03_couplers_AWPROT(11 downto 9),
      S_AXI_awready => xbar_to_m03_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m03_couplers_AWVALID(3),
      S_AXI_bready => xbar_to_m03_couplers_BREADY(3),
      S_AXI_bresp(1 downto 0) => xbar_to_m03_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m03_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m03_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m03_couplers_RREADY(3),
      S_AXI_rresp(1 downto 0) => xbar_to_m03_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m03_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m03_couplers_WDATA(127 downto 96),
      S_AXI_wready => xbar_to_m03_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m03_couplers_WSTRB(15 downto 12),
      S_AXI_wvalid => xbar_to_m03_couplers_WVALID(3)
    );
m04_couplers: entity work.m04_couplers_imp_19743FA
     port map (
      M_ACLK => M04_ACLK_1,
      M_ARESETN => M04_ARESETN_1,
      M_AXI_araddr(8 downto 0) => m04_couplers_to_axi_interconnect_0_ARADDR(8 downto 0),
      M_AXI_arready => m04_couplers_to_axi_interconnect_0_ARREADY,
      M_AXI_arvalid => m04_couplers_to_axi_interconnect_0_ARVALID,
      M_AXI_awaddr(8 downto 0) => m04_couplers_to_axi_interconnect_0_AWADDR(8 downto 0),
      M_AXI_awready => m04_couplers_to_axi_interconnect_0_AWREADY,
      M_AXI_awvalid => m04_couplers_to_axi_interconnect_0_AWVALID,
      M_AXI_bready => m04_couplers_to_axi_interconnect_0_BREADY,
      M_AXI_bresp(1 downto 0) => m04_couplers_to_axi_interconnect_0_BRESP(1 downto 0),
      M_AXI_bvalid => m04_couplers_to_axi_interconnect_0_BVALID,
      M_AXI_rdata(31 downto 0) => m04_couplers_to_axi_interconnect_0_RDATA(31 downto 0),
      M_AXI_rready => m04_couplers_to_axi_interconnect_0_RREADY,
      M_AXI_rresp(1 downto 0) => m04_couplers_to_axi_interconnect_0_RRESP(1 downto 0),
      M_AXI_rvalid => m04_couplers_to_axi_interconnect_0_RVALID,
      M_AXI_wdata(31 downto 0) => m04_couplers_to_axi_interconnect_0_WDATA(31 downto 0),
      M_AXI_wready => m04_couplers_to_axi_interconnect_0_WREADY,
      M_AXI_wstrb(3 downto 0) => m04_couplers_to_axi_interconnect_0_WSTRB(3 downto 0),
      M_AXI_wvalid => m04_couplers_to_axi_interconnect_0_WVALID,
      S_ACLK => axi_interconnect_0_ACLK_net,
      S_ARESETN => axi_interconnect_0_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m04_couplers_ARADDR(159 downto 128),
      S_AXI_arprot(2 downto 0) => xbar_to_m04_couplers_ARPROT(14 downto 12),
      S_AXI_arready => xbar_to_m04_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m04_couplers_ARVALID(4),
      S_AXI_awaddr(31 downto 0) => xbar_to_m04_couplers_AWADDR(159 downto 128),
      S_AXI_awprot(2 downto 0) => xbar_to_m04_couplers_AWPROT(14 downto 12),
      S_AXI_awready => xbar_to_m04_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m04_couplers_AWVALID(4),
      S_AXI_bready => xbar_to_m04_couplers_BREADY(4),
      S_AXI_bresp(1 downto 0) => xbar_to_m04_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m04_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m04_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m04_couplers_RREADY(4),
      S_AXI_rresp(1 downto 0) => xbar_to_m04_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m04_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m04_couplers_WDATA(159 downto 128),
      S_AXI_wready => xbar_to_m04_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m04_couplers_WSTRB(19 downto 16),
      S_AXI_wvalid => xbar_to_m04_couplers_WVALID(4)
    );
m05_couplers: entity work.m05_couplers_imp_HQG6QO
     port map (
      M_ACLK => M05_ACLK_1,
      M_ARESETN => M05_ARESETN_1,
      M_AXI_araddr(8 downto 0) => m05_couplers_to_axi_interconnect_0_ARADDR(8 downto 0),
      M_AXI_arready => m05_couplers_to_axi_interconnect_0_ARREADY,
      M_AXI_arvalid => m05_couplers_to_axi_interconnect_0_ARVALID,
      M_AXI_awaddr(8 downto 0) => m05_couplers_to_axi_interconnect_0_AWADDR(8 downto 0),
      M_AXI_awready => m05_couplers_to_axi_interconnect_0_AWREADY,
      M_AXI_awvalid => m05_couplers_to_axi_interconnect_0_AWVALID,
      M_AXI_bready => m05_couplers_to_axi_interconnect_0_BREADY,
      M_AXI_bresp(1 downto 0) => m05_couplers_to_axi_interconnect_0_BRESP(1 downto 0),
      M_AXI_bvalid => m05_couplers_to_axi_interconnect_0_BVALID,
      M_AXI_rdata(31 downto 0) => m05_couplers_to_axi_interconnect_0_RDATA(31 downto 0),
      M_AXI_rready => m05_couplers_to_axi_interconnect_0_RREADY,
      M_AXI_rresp(1 downto 0) => m05_couplers_to_axi_interconnect_0_RRESP(1 downto 0),
      M_AXI_rvalid => m05_couplers_to_axi_interconnect_0_RVALID,
      M_AXI_wdata(31 downto 0) => m05_couplers_to_axi_interconnect_0_WDATA(31 downto 0),
      M_AXI_wready => m05_couplers_to_axi_interconnect_0_WREADY,
      M_AXI_wstrb(3 downto 0) => m05_couplers_to_axi_interconnect_0_WSTRB(3 downto 0),
      M_AXI_wvalid => m05_couplers_to_axi_interconnect_0_WVALID,
      S_ACLK => axi_interconnect_0_ACLK_net,
      S_ARESETN => axi_interconnect_0_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m05_couplers_ARADDR(191 downto 160),
      S_AXI_arprot(2 downto 0) => xbar_to_m05_couplers_ARPROT(17 downto 15),
      S_AXI_arready => xbar_to_m05_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m05_couplers_ARVALID(5),
      S_AXI_awaddr(31 downto 0) => xbar_to_m05_couplers_AWADDR(191 downto 160),
      S_AXI_awprot(2 downto 0) => xbar_to_m05_couplers_AWPROT(17 downto 15),
      S_AXI_awready => xbar_to_m05_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m05_couplers_AWVALID(5),
      S_AXI_bready => xbar_to_m05_couplers_BREADY(5),
      S_AXI_bresp(1 downto 0) => xbar_to_m05_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m05_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m05_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m05_couplers_RREADY(5),
      S_AXI_rresp(1 downto 0) => xbar_to_m05_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m05_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m05_couplers_WDATA(191 downto 160),
      S_AXI_wready => xbar_to_m05_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m05_couplers_WSTRB(23 downto 20),
      S_AXI_wvalid => xbar_to_m05_couplers_WVALID(5)
    );
m06_couplers: entity work.m06_couplers_imp_IQPA7V
     port map (
      M_ACLK => M06_ACLK_1,
      M_ARESETN => M06_ARESETN_1,
      M_AXI_araddr(6 downto 0) => m06_couplers_to_axi_interconnect_0_ARADDR(6 downto 0),
      M_AXI_arready => m06_couplers_to_axi_interconnect_0_ARREADY,
      M_AXI_arvalid => m06_couplers_to_axi_interconnect_0_ARVALID,
      M_AXI_awaddr(6 downto 0) => m06_couplers_to_axi_interconnect_0_AWADDR(6 downto 0),
      M_AXI_awready => m06_couplers_to_axi_interconnect_0_AWREADY,
      M_AXI_awvalid => m06_couplers_to_axi_interconnect_0_AWVALID,
      M_AXI_bready => m06_couplers_to_axi_interconnect_0_BREADY,
      M_AXI_bresp(1 downto 0) => m06_couplers_to_axi_interconnect_0_BRESP(1 downto 0),
      M_AXI_bvalid => m06_couplers_to_axi_interconnect_0_BVALID,
      M_AXI_rdata(31 downto 0) => m06_couplers_to_axi_interconnect_0_RDATA(31 downto 0),
      M_AXI_rready => m06_couplers_to_axi_interconnect_0_RREADY,
      M_AXI_rresp(1 downto 0) => m06_couplers_to_axi_interconnect_0_RRESP(1 downto 0),
      M_AXI_rvalid => m06_couplers_to_axi_interconnect_0_RVALID,
      M_AXI_wdata(31 downto 0) => m06_couplers_to_axi_interconnect_0_WDATA(31 downto 0),
      M_AXI_wready => m06_couplers_to_axi_interconnect_0_WREADY,
      M_AXI_wstrb(3 downto 0) => m06_couplers_to_axi_interconnect_0_WSTRB(3 downto 0),
      M_AXI_wvalid => m06_couplers_to_axi_interconnect_0_WVALID,
      S_ACLK => axi_interconnect_0_ACLK_net,
      S_ARESETN => axi_interconnect_0_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m06_couplers_ARADDR(223 downto 192),
      S_AXI_arprot(2 downto 0) => xbar_to_m06_couplers_ARPROT(20 downto 18),
      S_AXI_arready => xbar_to_m06_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m06_couplers_ARVALID(6),
      S_AXI_awaddr(31 downto 0) => xbar_to_m06_couplers_AWADDR(223 downto 192),
      S_AXI_awprot(2 downto 0) => xbar_to_m06_couplers_AWPROT(20 downto 18),
      S_AXI_awready => xbar_to_m06_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m06_couplers_AWVALID(6),
      S_AXI_bready => xbar_to_m06_couplers_BREADY(6),
      S_AXI_bresp(1 downto 0) => xbar_to_m06_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m06_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m06_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m06_couplers_RREADY(6),
      S_AXI_rresp(1 downto 0) => xbar_to_m06_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m06_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m06_couplers_WDATA(223 downto 192),
      S_AXI_wready => xbar_to_m06_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m06_couplers_WSTRB(27 downto 24),
      S_AXI_wvalid => xbar_to_m06_couplers_WVALID(6)
    );
m07_couplers: entity work.m07_couplers_imp_1PQNA19
     port map (
      M_ACLK => M07_ACLK_1,
      M_ARESETN => M07_ARESETN_1,
      M_AXI_araddr(4 downto 0) => m07_couplers_to_axi_interconnect_0_ARADDR(4 downto 0),
      M_AXI_arready => m07_couplers_to_axi_interconnect_0_ARREADY,
      M_AXI_arvalid => m07_couplers_to_axi_interconnect_0_ARVALID,
      M_AXI_awaddr(4 downto 0) => m07_couplers_to_axi_interconnect_0_AWADDR(4 downto 0),
      M_AXI_awready => m07_couplers_to_axi_interconnect_0_AWREADY,
      M_AXI_awvalid => m07_couplers_to_axi_interconnect_0_AWVALID,
      M_AXI_bready => m07_couplers_to_axi_interconnect_0_BREADY,
      M_AXI_bresp(1 downto 0) => m07_couplers_to_axi_interconnect_0_BRESP(1 downto 0),
      M_AXI_bvalid => m07_couplers_to_axi_interconnect_0_BVALID,
      M_AXI_rdata(31 downto 0) => m07_couplers_to_axi_interconnect_0_RDATA(31 downto 0),
      M_AXI_rready => m07_couplers_to_axi_interconnect_0_RREADY,
      M_AXI_rresp(1 downto 0) => m07_couplers_to_axi_interconnect_0_RRESP(1 downto 0),
      M_AXI_rvalid => m07_couplers_to_axi_interconnect_0_RVALID,
      M_AXI_wdata(31 downto 0) => m07_couplers_to_axi_interconnect_0_WDATA(31 downto 0),
      M_AXI_wready => m07_couplers_to_axi_interconnect_0_WREADY,
      M_AXI_wstrb(3 downto 0) => m07_couplers_to_axi_interconnect_0_WSTRB(3 downto 0),
      M_AXI_wvalid => m07_couplers_to_axi_interconnect_0_WVALID,
      S_ACLK => axi_interconnect_0_ACLK_net,
      S_ARESETN => axi_interconnect_0_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m07_couplers_ARADDR(255 downto 224),
      S_AXI_arprot(2 downto 0) => xbar_to_m07_couplers_ARPROT(23 downto 21),
      S_AXI_arready => xbar_to_m07_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m07_couplers_ARVALID(7),
      S_AXI_awaddr(31 downto 0) => xbar_to_m07_couplers_AWADDR(255 downto 224),
      S_AXI_awprot(2 downto 0) => xbar_to_m07_couplers_AWPROT(23 downto 21),
      S_AXI_awready => xbar_to_m07_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m07_couplers_AWVALID(7),
      S_AXI_bready => xbar_to_m07_couplers_BREADY(7),
      S_AXI_bresp(1 downto 0) => xbar_to_m07_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m07_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m07_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m07_couplers_RREADY(7),
      S_AXI_rresp(1 downto 0) => xbar_to_m07_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m07_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m07_couplers_WDATA(255 downto 224),
      S_AXI_wready => xbar_to_m07_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m07_couplers_WSTRB(31 downto 28),
      S_AXI_wvalid => xbar_to_m07_couplers_WVALID(7)
    );
m08_couplers: entity work.m08_couplers_imp_11R48SB
     port map (
      M_ACLK => M08_ACLK_1,
      M_ARESETN => M08_ARESETN_1,
      M_AXI_araddr(8 downto 0) => m08_couplers_to_axi_interconnect_0_ARADDR(8 downto 0),
      M_AXI_arready => m08_couplers_to_axi_interconnect_0_ARREADY,
      M_AXI_arvalid => m08_couplers_to_axi_interconnect_0_ARVALID,
      M_AXI_awaddr(8 downto 0) => m08_couplers_to_axi_interconnect_0_AWADDR(8 downto 0),
      M_AXI_awready => m08_couplers_to_axi_interconnect_0_AWREADY,
      M_AXI_awvalid => m08_couplers_to_axi_interconnect_0_AWVALID,
      M_AXI_bready => m08_couplers_to_axi_interconnect_0_BREADY,
      M_AXI_bresp(1 downto 0) => m08_couplers_to_axi_interconnect_0_BRESP(1 downto 0),
      M_AXI_bvalid => m08_couplers_to_axi_interconnect_0_BVALID,
      M_AXI_rdata(31 downto 0) => m08_couplers_to_axi_interconnect_0_RDATA(31 downto 0),
      M_AXI_rready => m08_couplers_to_axi_interconnect_0_RREADY,
      M_AXI_rresp(1 downto 0) => m08_couplers_to_axi_interconnect_0_RRESP(1 downto 0),
      M_AXI_rvalid => m08_couplers_to_axi_interconnect_0_RVALID,
      M_AXI_wdata(31 downto 0) => m08_couplers_to_axi_interconnect_0_WDATA(31 downto 0),
      M_AXI_wready => m08_couplers_to_axi_interconnect_0_WREADY,
      M_AXI_wstrb(3 downto 0) => m08_couplers_to_axi_interconnect_0_WSTRB(3 downto 0),
      M_AXI_wvalid => m08_couplers_to_axi_interconnect_0_WVALID,
      S_ACLK => axi_interconnect_0_ACLK_net,
      S_ARESETN => axi_interconnect_0_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m08_couplers_ARADDR(287 downto 256),
      S_AXI_arprot(2 downto 0) => xbar_to_m08_couplers_ARPROT(26 downto 24),
      S_AXI_arready => xbar_to_m08_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m08_couplers_ARVALID(8),
      S_AXI_awaddr(31 downto 0) => xbar_to_m08_couplers_AWADDR(287 downto 256),
      S_AXI_awprot(2 downto 0) => xbar_to_m08_couplers_AWPROT(26 downto 24),
      S_AXI_awready => xbar_to_m08_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m08_couplers_AWVALID(8),
      S_AXI_bready => xbar_to_m08_couplers_BREADY(8),
      S_AXI_bresp(1 downto 0) => xbar_to_m08_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m08_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m08_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m08_couplers_RREADY(8),
      S_AXI_rresp(1 downto 0) => xbar_to_m08_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m08_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m08_couplers_WDATA(287 downto 256),
      S_AXI_wready => xbar_to_m08_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m08_couplers_WSTRB(35 downto 32),
      S_AXI_wvalid => xbar_to_m08_couplers_WVALID(8)
    );
m09_couplers: entity work.m09_couplers_imp_5UZHFX
     port map (
      M_ACLK => M09_ACLK_1,
      M_ARESETN => M09_ARESETN_1,
      M_AXI_araddr(8 downto 0) => m09_couplers_to_axi_interconnect_0_ARADDR(8 downto 0),
      M_AXI_arready => m09_couplers_to_axi_interconnect_0_ARREADY,
      M_AXI_arvalid => m09_couplers_to_axi_interconnect_0_ARVALID,
      M_AXI_awaddr(8 downto 0) => m09_couplers_to_axi_interconnect_0_AWADDR(8 downto 0),
      M_AXI_awready => m09_couplers_to_axi_interconnect_0_AWREADY,
      M_AXI_awvalid => m09_couplers_to_axi_interconnect_0_AWVALID,
      M_AXI_bready => m09_couplers_to_axi_interconnect_0_BREADY,
      M_AXI_bresp(1 downto 0) => m09_couplers_to_axi_interconnect_0_BRESP(1 downto 0),
      M_AXI_bvalid => m09_couplers_to_axi_interconnect_0_BVALID,
      M_AXI_rdata(31 downto 0) => m09_couplers_to_axi_interconnect_0_RDATA(31 downto 0),
      M_AXI_rready => m09_couplers_to_axi_interconnect_0_RREADY,
      M_AXI_rresp(1 downto 0) => m09_couplers_to_axi_interconnect_0_RRESP(1 downto 0),
      M_AXI_rvalid => m09_couplers_to_axi_interconnect_0_RVALID,
      M_AXI_wdata(31 downto 0) => m09_couplers_to_axi_interconnect_0_WDATA(31 downto 0),
      M_AXI_wready => m09_couplers_to_axi_interconnect_0_WREADY,
      M_AXI_wstrb(3 downto 0) => m09_couplers_to_axi_interconnect_0_WSTRB(3 downto 0),
      M_AXI_wvalid => m09_couplers_to_axi_interconnect_0_WVALID,
      S_ACLK => axi_interconnect_0_ACLK_net,
      S_ARESETN => axi_interconnect_0_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m09_couplers_ARADDR(319 downto 288),
      S_AXI_arprot(2 downto 0) => xbar_to_m09_couplers_ARPROT(29 downto 27),
      S_AXI_arready => xbar_to_m09_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m09_couplers_ARVALID(9),
      S_AXI_awaddr(31 downto 0) => xbar_to_m09_couplers_AWADDR(319 downto 288),
      S_AXI_awprot(2 downto 0) => xbar_to_m09_couplers_AWPROT(29 downto 27),
      S_AXI_awready => xbar_to_m09_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m09_couplers_AWVALID(9),
      S_AXI_bready => xbar_to_m09_couplers_BREADY(9),
      S_AXI_bresp(1 downto 0) => xbar_to_m09_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m09_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m09_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m09_couplers_RREADY(9),
      S_AXI_rresp(1 downto 0) => xbar_to_m09_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m09_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m09_couplers_WDATA(319 downto 288),
      S_AXI_wready => xbar_to_m09_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m09_couplers_WSTRB(39 downto 36),
      S_AXI_wvalid => xbar_to_m09_couplers_WVALID(9)
    );
s00_couplers: entity work.s00_couplers_imp_YXTABC
     port map (
      M_ACLK => axi_interconnect_0_ACLK_net,
      M_ARESETN => axi_interconnect_0_ARESETN_net,
      M_AXI_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      M_AXI_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      M_AXI_arready => s00_couplers_to_xbar_ARREADY(0),
      M_AXI_arvalid => s00_couplers_to_xbar_ARVALID,
      M_AXI_awaddr(31 downto 0) => s00_couplers_to_xbar_AWADDR(31 downto 0),
      M_AXI_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      M_AXI_awready => s00_couplers_to_xbar_AWREADY(0),
      M_AXI_awvalid => s00_couplers_to_xbar_AWVALID,
      M_AXI_bready => s00_couplers_to_xbar_BREADY,
      M_AXI_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      M_AXI_bvalid => s00_couplers_to_xbar_BVALID(0),
      M_AXI_rdata(31 downto 0) => s00_couplers_to_xbar_RDATA(31 downto 0),
      M_AXI_rready => s00_couplers_to_xbar_RREADY,
      M_AXI_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      M_AXI_rvalid => s00_couplers_to_xbar_RVALID(0),
      M_AXI_wdata(31 downto 0) => s00_couplers_to_xbar_WDATA(31 downto 0),
      M_AXI_wready => s00_couplers_to_xbar_WREADY(0),
      M_AXI_wstrb(3 downto 0) => s00_couplers_to_xbar_WSTRB(3 downto 0),
      M_AXI_wvalid => s00_couplers_to_xbar_WVALID,
      S_ACLK => S00_ACLK_1,
      S_ARESETN => S00_ARESETN_1,
      S_AXI_araddr(31 downto 0) => axi_interconnect_0_to_s00_couplers_ARADDR(31 downto 0),
      S_AXI_arburst(1 downto 0) => axi_interconnect_0_to_s00_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => axi_interconnect_0_to_s00_couplers_ARCACHE(3 downto 0),
      S_AXI_arid(11 downto 0) => axi_interconnect_0_to_s00_couplers_ARID(11 downto 0),
      S_AXI_arlen(7 downto 0) => axi_interconnect_0_to_s00_couplers_ARLEN(7 downto 0),
      S_AXI_arlock(0) => axi_interconnect_0_to_s00_couplers_ARLOCK(0),
      S_AXI_arprot(2 downto 0) => axi_interconnect_0_to_s00_couplers_ARPROT(2 downto 0),
      S_AXI_arqos(3 downto 0) => axi_interconnect_0_to_s00_couplers_ARQOS(3 downto 0),
      S_AXI_arready => axi_interconnect_0_to_s00_couplers_ARREADY,
      S_AXI_arregion(3 downto 0) => axi_interconnect_0_to_s00_couplers_ARREGION(3 downto 0),
      S_AXI_arsize(2 downto 0) => axi_interconnect_0_to_s00_couplers_ARSIZE(2 downto 0),
      S_AXI_arvalid => axi_interconnect_0_to_s00_couplers_ARVALID,
      S_AXI_awaddr(31 downto 0) => axi_interconnect_0_to_s00_couplers_AWADDR(31 downto 0),
      S_AXI_awburst(1 downto 0) => axi_interconnect_0_to_s00_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => axi_interconnect_0_to_s00_couplers_AWCACHE(3 downto 0),
      S_AXI_awid(11 downto 0) => axi_interconnect_0_to_s00_couplers_AWID(11 downto 0),
      S_AXI_awlen(7 downto 0) => axi_interconnect_0_to_s00_couplers_AWLEN(7 downto 0),
      S_AXI_awlock(0) => axi_interconnect_0_to_s00_couplers_AWLOCK(0),
      S_AXI_awprot(2 downto 0) => axi_interconnect_0_to_s00_couplers_AWPROT(2 downto 0),
      S_AXI_awqos(3 downto 0) => axi_interconnect_0_to_s00_couplers_AWQOS(3 downto 0),
      S_AXI_awready => axi_interconnect_0_to_s00_couplers_AWREADY,
      S_AXI_awregion(3 downto 0) => axi_interconnect_0_to_s00_couplers_AWREGION(3 downto 0),
      S_AXI_awsize(2 downto 0) => axi_interconnect_0_to_s00_couplers_AWSIZE(2 downto 0),
      S_AXI_awvalid => axi_interconnect_0_to_s00_couplers_AWVALID,
      S_AXI_bid(11 downto 0) => axi_interconnect_0_to_s00_couplers_BID(11 downto 0),
      S_AXI_bready => axi_interconnect_0_to_s00_couplers_BREADY,
      S_AXI_bresp(1 downto 0) => axi_interconnect_0_to_s00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => axi_interconnect_0_to_s00_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => axi_interconnect_0_to_s00_couplers_RDATA(31 downto 0),
      S_AXI_rid(11 downto 0) => axi_interconnect_0_to_s00_couplers_RID(11 downto 0),
      S_AXI_rlast => axi_interconnect_0_to_s00_couplers_RLAST,
      S_AXI_rready => axi_interconnect_0_to_s00_couplers_RREADY,
      S_AXI_rresp(1 downto 0) => axi_interconnect_0_to_s00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => axi_interconnect_0_to_s00_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => axi_interconnect_0_to_s00_couplers_WDATA(31 downto 0),
      S_AXI_wlast => axi_interconnect_0_to_s00_couplers_WLAST,
      S_AXI_wready => axi_interconnect_0_to_s00_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => axi_interconnect_0_to_s00_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid => axi_interconnect_0_to_s00_couplers_WVALID
    );
xbar: component base_xbar_9
     port map (
      aclk => axi_interconnect_0_ACLK_net,
      aresetn => axi_interconnect_0_ARESETN_net,
      m_axi_araddr(319 downto 288) => xbar_to_m09_couplers_ARADDR(319 downto 288),
      m_axi_araddr(287 downto 256) => xbar_to_m08_couplers_ARADDR(287 downto 256),
      m_axi_araddr(255 downto 224) => xbar_to_m07_couplers_ARADDR(255 downto 224),
      m_axi_araddr(223 downto 192) => xbar_to_m06_couplers_ARADDR(223 downto 192),
      m_axi_araddr(191 downto 160) => xbar_to_m05_couplers_ARADDR(191 downto 160),
      m_axi_araddr(159 downto 128) => xbar_to_m04_couplers_ARADDR(159 downto 128),
      m_axi_araddr(127 downto 96) => xbar_to_m03_couplers_ARADDR(127 downto 96),
      m_axi_araddr(95 downto 64) => xbar_to_m02_couplers_ARADDR(95 downto 64),
      m_axi_araddr(63 downto 32) => xbar_to_m01_couplers_ARADDR(63 downto 32),
      m_axi_araddr(31 downto 0) => xbar_to_m00_couplers_ARADDR(31 downto 0),
      m_axi_arprot(29 downto 27) => xbar_to_m09_couplers_ARPROT(29 downto 27),
      m_axi_arprot(26 downto 24) => xbar_to_m08_couplers_ARPROT(26 downto 24),
      m_axi_arprot(23 downto 21) => xbar_to_m07_couplers_ARPROT(23 downto 21),
      m_axi_arprot(20 downto 18) => xbar_to_m06_couplers_ARPROT(20 downto 18),
      m_axi_arprot(17 downto 15) => xbar_to_m05_couplers_ARPROT(17 downto 15),
      m_axi_arprot(14 downto 12) => xbar_to_m04_couplers_ARPROT(14 downto 12),
      m_axi_arprot(11 downto 9) => xbar_to_m03_couplers_ARPROT(11 downto 9),
      m_axi_arprot(8 downto 6) => xbar_to_m02_couplers_ARPROT(8 downto 6),
      m_axi_arprot(5 downto 3) => xbar_to_m01_couplers_ARPROT(5 downto 3),
      m_axi_arprot(2 downto 0) => xbar_to_m00_couplers_ARPROT(2 downto 0),
      m_axi_arready(9) => xbar_to_m09_couplers_ARREADY,
      m_axi_arready(8) => xbar_to_m08_couplers_ARREADY,
      m_axi_arready(7) => xbar_to_m07_couplers_ARREADY,
      m_axi_arready(6) => xbar_to_m06_couplers_ARREADY,
      m_axi_arready(5) => xbar_to_m05_couplers_ARREADY,
      m_axi_arready(4) => xbar_to_m04_couplers_ARREADY,
      m_axi_arready(3) => xbar_to_m03_couplers_ARREADY,
      m_axi_arready(2) => xbar_to_m02_couplers_ARREADY,
      m_axi_arready(1) => xbar_to_m01_couplers_ARREADY,
      m_axi_arready(0) => xbar_to_m00_couplers_ARREADY,
      m_axi_arvalid(9) => xbar_to_m09_couplers_ARVALID(9),
      m_axi_arvalid(8) => xbar_to_m08_couplers_ARVALID(8),
      m_axi_arvalid(7) => xbar_to_m07_couplers_ARVALID(7),
      m_axi_arvalid(6) => xbar_to_m06_couplers_ARVALID(6),
      m_axi_arvalid(5) => xbar_to_m05_couplers_ARVALID(5),
      m_axi_arvalid(4) => xbar_to_m04_couplers_ARVALID(4),
      m_axi_arvalid(3) => xbar_to_m03_couplers_ARVALID(3),
      m_axi_arvalid(2) => xbar_to_m02_couplers_ARVALID(2),
      m_axi_arvalid(1) => xbar_to_m01_couplers_ARVALID(1),
      m_axi_arvalid(0) => xbar_to_m00_couplers_ARVALID(0),
      m_axi_awaddr(319 downto 288) => xbar_to_m09_couplers_AWADDR(319 downto 288),
      m_axi_awaddr(287 downto 256) => xbar_to_m08_couplers_AWADDR(287 downto 256),
      m_axi_awaddr(255 downto 224) => xbar_to_m07_couplers_AWADDR(255 downto 224),
      m_axi_awaddr(223 downto 192) => xbar_to_m06_couplers_AWADDR(223 downto 192),
      m_axi_awaddr(191 downto 160) => xbar_to_m05_couplers_AWADDR(191 downto 160),
      m_axi_awaddr(159 downto 128) => xbar_to_m04_couplers_AWADDR(159 downto 128),
      m_axi_awaddr(127 downto 96) => xbar_to_m03_couplers_AWADDR(127 downto 96),
      m_axi_awaddr(95 downto 64) => xbar_to_m02_couplers_AWADDR(95 downto 64),
      m_axi_awaddr(63 downto 32) => xbar_to_m01_couplers_AWADDR(63 downto 32),
      m_axi_awaddr(31 downto 0) => xbar_to_m00_couplers_AWADDR(31 downto 0),
      m_axi_awprot(29 downto 27) => xbar_to_m09_couplers_AWPROT(29 downto 27),
      m_axi_awprot(26 downto 24) => xbar_to_m08_couplers_AWPROT(26 downto 24),
      m_axi_awprot(23 downto 21) => xbar_to_m07_couplers_AWPROT(23 downto 21),
      m_axi_awprot(20 downto 18) => xbar_to_m06_couplers_AWPROT(20 downto 18),
      m_axi_awprot(17 downto 15) => xbar_to_m05_couplers_AWPROT(17 downto 15),
      m_axi_awprot(14 downto 12) => xbar_to_m04_couplers_AWPROT(14 downto 12),
      m_axi_awprot(11 downto 9) => xbar_to_m03_couplers_AWPROT(11 downto 9),
      m_axi_awprot(8 downto 6) => xbar_to_m02_couplers_AWPROT(8 downto 6),
      m_axi_awprot(5 downto 3) => xbar_to_m01_couplers_AWPROT(5 downto 3),
      m_axi_awprot(2 downto 0) => xbar_to_m00_couplers_AWPROT(2 downto 0),
      m_axi_awready(9) => xbar_to_m09_couplers_AWREADY,
      m_axi_awready(8) => xbar_to_m08_couplers_AWREADY,
      m_axi_awready(7) => xbar_to_m07_couplers_AWREADY,
      m_axi_awready(6) => xbar_to_m06_couplers_AWREADY,
      m_axi_awready(5) => xbar_to_m05_couplers_AWREADY,
      m_axi_awready(4) => xbar_to_m04_couplers_AWREADY,
      m_axi_awready(3) => xbar_to_m03_couplers_AWREADY,
      m_axi_awready(2) => xbar_to_m02_couplers_AWREADY,
      m_axi_awready(1) => xbar_to_m01_couplers_AWREADY,
      m_axi_awready(0) => xbar_to_m00_couplers_AWREADY,
      m_axi_awvalid(9) => xbar_to_m09_couplers_AWVALID(9),
      m_axi_awvalid(8) => xbar_to_m08_couplers_AWVALID(8),
      m_axi_awvalid(7) => xbar_to_m07_couplers_AWVALID(7),
      m_axi_awvalid(6) => xbar_to_m06_couplers_AWVALID(6),
      m_axi_awvalid(5) => xbar_to_m05_couplers_AWVALID(5),
      m_axi_awvalid(4) => xbar_to_m04_couplers_AWVALID(4),
      m_axi_awvalid(3) => xbar_to_m03_couplers_AWVALID(3),
      m_axi_awvalid(2) => xbar_to_m02_couplers_AWVALID(2),
      m_axi_awvalid(1) => xbar_to_m01_couplers_AWVALID(1),
      m_axi_awvalid(0) => xbar_to_m00_couplers_AWVALID(0),
      m_axi_bready(9) => xbar_to_m09_couplers_BREADY(9),
      m_axi_bready(8) => xbar_to_m08_couplers_BREADY(8),
      m_axi_bready(7) => xbar_to_m07_couplers_BREADY(7),
      m_axi_bready(6) => xbar_to_m06_couplers_BREADY(6),
      m_axi_bready(5) => xbar_to_m05_couplers_BREADY(5),
      m_axi_bready(4) => xbar_to_m04_couplers_BREADY(4),
      m_axi_bready(3) => xbar_to_m03_couplers_BREADY(3),
      m_axi_bready(2) => xbar_to_m02_couplers_BREADY(2),
      m_axi_bready(1) => xbar_to_m01_couplers_BREADY(1),
      m_axi_bready(0) => xbar_to_m00_couplers_BREADY(0),
      m_axi_bresp(19 downto 18) => xbar_to_m09_couplers_BRESP(1 downto 0),
      m_axi_bresp(17 downto 16) => xbar_to_m08_couplers_BRESP(1 downto 0),
      m_axi_bresp(15 downto 14) => xbar_to_m07_couplers_BRESP(1 downto 0),
      m_axi_bresp(13 downto 12) => xbar_to_m06_couplers_BRESP(1 downto 0),
      m_axi_bresp(11 downto 10) => xbar_to_m05_couplers_BRESP(1 downto 0),
      m_axi_bresp(9 downto 8) => xbar_to_m04_couplers_BRESP(1 downto 0),
      m_axi_bresp(7 downto 6) => xbar_to_m03_couplers_BRESP(1 downto 0),
      m_axi_bresp(5 downto 4) => xbar_to_m02_couplers_BRESP(1 downto 0),
      m_axi_bresp(3 downto 2) => xbar_to_m01_couplers_BRESP(1 downto 0),
      m_axi_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      m_axi_bvalid(9) => xbar_to_m09_couplers_BVALID,
      m_axi_bvalid(8) => xbar_to_m08_couplers_BVALID,
      m_axi_bvalid(7) => xbar_to_m07_couplers_BVALID,
      m_axi_bvalid(6) => xbar_to_m06_couplers_BVALID,
      m_axi_bvalid(5) => xbar_to_m05_couplers_BVALID,
      m_axi_bvalid(4) => xbar_to_m04_couplers_BVALID,
      m_axi_bvalid(3) => xbar_to_m03_couplers_BVALID,
      m_axi_bvalid(2) => xbar_to_m02_couplers_BVALID,
      m_axi_bvalid(1) => xbar_to_m01_couplers_BVALID,
      m_axi_bvalid(0) => xbar_to_m00_couplers_BVALID,
      m_axi_rdata(319 downto 288) => xbar_to_m09_couplers_RDATA(31 downto 0),
      m_axi_rdata(287 downto 256) => xbar_to_m08_couplers_RDATA(31 downto 0),
      m_axi_rdata(255 downto 224) => xbar_to_m07_couplers_RDATA(31 downto 0),
      m_axi_rdata(223 downto 192) => xbar_to_m06_couplers_RDATA(31 downto 0),
      m_axi_rdata(191 downto 160) => xbar_to_m05_couplers_RDATA(31 downto 0),
      m_axi_rdata(159 downto 128) => xbar_to_m04_couplers_RDATA(31 downto 0),
      m_axi_rdata(127 downto 96) => xbar_to_m03_couplers_RDATA(31 downto 0),
      m_axi_rdata(95 downto 64) => xbar_to_m02_couplers_RDATA(31 downto 0),
      m_axi_rdata(63 downto 32) => xbar_to_m01_couplers_RDATA(31 downto 0),
      m_axi_rdata(31 downto 0) => xbar_to_m00_couplers_RDATA(31 downto 0),
      m_axi_rready(9) => xbar_to_m09_couplers_RREADY(9),
      m_axi_rready(8) => xbar_to_m08_couplers_RREADY(8),
      m_axi_rready(7) => xbar_to_m07_couplers_RREADY(7),
      m_axi_rready(6) => xbar_to_m06_couplers_RREADY(6),
      m_axi_rready(5) => xbar_to_m05_couplers_RREADY(5),
      m_axi_rready(4) => xbar_to_m04_couplers_RREADY(4),
      m_axi_rready(3) => xbar_to_m03_couplers_RREADY(3),
      m_axi_rready(2) => xbar_to_m02_couplers_RREADY(2),
      m_axi_rready(1) => xbar_to_m01_couplers_RREADY(1),
      m_axi_rready(0) => xbar_to_m00_couplers_RREADY(0),
      m_axi_rresp(19 downto 18) => xbar_to_m09_couplers_RRESP(1 downto 0),
      m_axi_rresp(17 downto 16) => xbar_to_m08_couplers_RRESP(1 downto 0),
      m_axi_rresp(15 downto 14) => xbar_to_m07_couplers_RRESP(1 downto 0),
      m_axi_rresp(13 downto 12) => xbar_to_m06_couplers_RRESP(1 downto 0),
      m_axi_rresp(11 downto 10) => xbar_to_m05_couplers_RRESP(1 downto 0),
      m_axi_rresp(9 downto 8) => xbar_to_m04_couplers_RRESP(1 downto 0),
      m_axi_rresp(7 downto 6) => xbar_to_m03_couplers_RRESP(1 downto 0),
      m_axi_rresp(5 downto 4) => xbar_to_m02_couplers_RRESP(1 downto 0),
      m_axi_rresp(3 downto 2) => xbar_to_m01_couplers_RRESP(1 downto 0),
      m_axi_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      m_axi_rvalid(9) => xbar_to_m09_couplers_RVALID,
      m_axi_rvalid(8) => xbar_to_m08_couplers_RVALID,
      m_axi_rvalid(7) => xbar_to_m07_couplers_RVALID,
      m_axi_rvalid(6) => xbar_to_m06_couplers_RVALID,
      m_axi_rvalid(5) => xbar_to_m05_couplers_RVALID,
      m_axi_rvalid(4) => xbar_to_m04_couplers_RVALID,
      m_axi_rvalid(3) => xbar_to_m03_couplers_RVALID,
      m_axi_rvalid(2) => xbar_to_m02_couplers_RVALID,
      m_axi_rvalid(1) => xbar_to_m01_couplers_RVALID,
      m_axi_rvalid(0) => xbar_to_m00_couplers_RVALID,
      m_axi_wdata(319 downto 288) => xbar_to_m09_couplers_WDATA(319 downto 288),
      m_axi_wdata(287 downto 256) => xbar_to_m08_couplers_WDATA(287 downto 256),
      m_axi_wdata(255 downto 224) => xbar_to_m07_couplers_WDATA(255 downto 224),
      m_axi_wdata(223 downto 192) => xbar_to_m06_couplers_WDATA(223 downto 192),
      m_axi_wdata(191 downto 160) => xbar_to_m05_couplers_WDATA(191 downto 160),
      m_axi_wdata(159 downto 128) => xbar_to_m04_couplers_WDATA(159 downto 128),
      m_axi_wdata(127 downto 96) => xbar_to_m03_couplers_WDATA(127 downto 96),
      m_axi_wdata(95 downto 64) => xbar_to_m02_couplers_WDATA(95 downto 64),
      m_axi_wdata(63 downto 32) => xbar_to_m01_couplers_WDATA(63 downto 32),
      m_axi_wdata(31 downto 0) => xbar_to_m00_couplers_WDATA(31 downto 0),
      m_axi_wready(9) => xbar_to_m09_couplers_WREADY,
      m_axi_wready(8) => xbar_to_m08_couplers_WREADY,
      m_axi_wready(7) => xbar_to_m07_couplers_WREADY,
      m_axi_wready(6) => xbar_to_m06_couplers_WREADY,
      m_axi_wready(5) => xbar_to_m05_couplers_WREADY,
      m_axi_wready(4) => xbar_to_m04_couplers_WREADY,
      m_axi_wready(3) => xbar_to_m03_couplers_WREADY,
      m_axi_wready(2) => xbar_to_m02_couplers_WREADY,
      m_axi_wready(1) => xbar_to_m01_couplers_WREADY,
      m_axi_wready(0) => xbar_to_m00_couplers_WREADY,
      m_axi_wstrb(39 downto 36) => xbar_to_m09_couplers_WSTRB(39 downto 36),
      m_axi_wstrb(35 downto 32) => xbar_to_m08_couplers_WSTRB(35 downto 32),
      m_axi_wstrb(31 downto 28) => xbar_to_m07_couplers_WSTRB(31 downto 28),
      m_axi_wstrb(27 downto 24) => xbar_to_m06_couplers_WSTRB(27 downto 24),
      m_axi_wstrb(23 downto 20) => xbar_to_m05_couplers_WSTRB(23 downto 20),
      m_axi_wstrb(19 downto 16) => xbar_to_m04_couplers_WSTRB(19 downto 16),
      m_axi_wstrb(15 downto 12) => xbar_to_m03_couplers_WSTRB(15 downto 12),
      m_axi_wstrb(11 downto 8) => xbar_to_m02_couplers_WSTRB(11 downto 8),
      m_axi_wstrb(7 downto 4) => xbar_to_m01_couplers_WSTRB(7 downto 4),
      m_axi_wstrb(3 downto 0) => xbar_to_m00_couplers_WSTRB(3 downto 0),
      m_axi_wvalid(9) => xbar_to_m09_couplers_WVALID(9),
      m_axi_wvalid(8) => xbar_to_m08_couplers_WVALID(8),
      m_axi_wvalid(7) => xbar_to_m07_couplers_WVALID(7),
      m_axi_wvalid(6) => xbar_to_m06_couplers_WVALID(6),
      m_axi_wvalid(5) => xbar_to_m05_couplers_WVALID(5),
      m_axi_wvalid(4) => xbar_to_m04_couplers_WVALID(4),
      m_axi_wvalid(3) => xbar_to_m03_couplers_WVALID(3),
      m_axi_wvalid(2) => xbar_to_m02_couplers_WVALID(2),
      m_axi_wvalid(1) => xbar_to_m01_couplers_WVALID(1),
      m_axi_wvalid(0) => xbar_to_m00_couplers_WVALID(0),
      s_axi_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      s_axi_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arready(0) => s00_couplers_to_xbar_ARREADY(0),
      s_axi_arvalid(0) => s00_couplers_to_xbar_ARVALID,
      s_axi_awaddr(31 downto 0) => s00_couplers_to_xbar_AWADDR(31 downto 0),
      s_axi_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awready(0) => s00_couplers_to_xbar_AWREADY(0),
      s_axi_awvalid(0) => s00_couplers_to_xbar_AWVALID,
      s_axi_bready(0) => s00_couplers_to_xbar_BREADY,
      s_axi_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      s_axi_bvalid(0) => s00_couplers_to_xbar_BVALID(0),
      s_axi_rdata(31 downto 0) => s00_couplers_to_xbar_RDATA(31 downto 0),
      s_axi_rready(0) => s00_couplers_to_xbar_RREADY,
      s_axi_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      s_axi_rvalid(0) => s00_couplers_to_xbar_RVALID(0),
      s_axi_wdata(31 downto 0) => s00_couplers_to_xbar_WDATA(31 downto 0),
      s_axi_wready(0) => s00_couplers_to_xbar_WREADY(0),
      s_axi_wstrb(3 downto 0) => s00_couplers_to_xbar_WSTRB(3 downto 0),
      s_axi_wvalid(0) => s00_couplers_to_xbar_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity base_axi_mem_intercon_1 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_bid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    M00_AXI_rid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    M00_AXI_rlast : in STD_LOGIC;
    M00_AXI_rready : out STD_LOGIC;
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M00_AXI_wid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_wlast : out STD_LOGIC;
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_wvalid : out STD_LOGIC;
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S00_AXI_wlast : in STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC;
    S01_ACLK : in STD_LOGIC;
    S01_ARESETN : in STD_LOGIC;
    S01_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S01_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_arready : out STD_LOGIC;
    S01_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_arvalid : in STD_LOGIC;
    S01_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXI_rlast : out STD_LOGIC;
    S01_AXI_rready : in STD_LOGIC;
    S01_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_rvalid : out STD_LOGIC
  );
end base_axi_mem_intercon_1;

architecture STRUCTURE of base_axi_mem_intercon_1 is
  component base_xbar_10 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_wlast : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arready : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rlast : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rready : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component base_xbar_10;
  signal M00_ACLK_1 : STD_LOGIC;
  signal M00_ARESETN_1 : STD_LOGIC;
  signal S00_ACLK_1 : STD_LOGIC;
  signal S00_ARESETN_1 : STD_LOGIC;
  signal S01_ACLK_1 : STD_LOGIC;
  signal S01_ARESETN_1 : STD_LOGIC;
  signal axi_mem_intercon_ACLK_net : STD_LOGIC;
  signal axi_mem_intercon_ARESETN_net : STD_LOGIC;
  signal axi_mem_intercon_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_mem_intercon_to_s00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_to_s00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_to_s00_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_mem_intercon_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_to_s00_couplers_AWREADY : STD_LOGIC;
  signal axi_mem_intercon_to_s00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_to_s00_couplers_AWVALID : STD_LOGIC;
  signal axi_mem_intercon_to_s00_couplers_BREADY : STD_LOGIC;
  signal axi_mem_intercon_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_to_s00_couplers_BVALID : STD_LOGIC;
  signal axi_mem_intercon_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal axi_mem_intercon_to_s00_couplers_WLAST : STD_LOGIC;
  signal axi_mem_intercon_to_s00_couplers_WREADY : STD_LOGIC;
  signal axi_mem_intercon_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_mem_intercon_to_s00_couplers_WVALID : STD_LOGIC;
  signal axi_mem_intercon_to_s01_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_mem_intercon_to_s01_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_to_s01_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_to_s01_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_mem_intercon_to_s01_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_to_s01_couplers_ARREADY : STD_LOGIC;
  signal axi_mem_intercon_to_s01_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_to_s01_couplers_ARVALID : STD_LOGIC;
  signal axi_mem_intercon_to_s01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_mem_intercon_to_s01_couplers_RLAST : STD_LOGIC;
  signal axi_mem_intercon_to_s01_couplers_RREADY : STD_LOGIC;
  signal axi_mem_intercon_to_s01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_to_s01_couplers_RVALID : STD_LOGIC;
  signal m00_couplers_to_axi_mem_intercon_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_axi_mem_intercon_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_ARREADY : STD_LOGIC;
  signal m00_couplers_to_axi_mem_intercon_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_ARVALID : STD_LOGIC;
  signal m00_couplers_to_axi_mem_intercon_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_axi_mem_intercon_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_AWREADY : STD_LOGIC;
  signal m00_couplers_to_axi_mem_intercon_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_AWVALID : STD_LOGIC;
  signal m00_couplers_to_axi_mem_intercon_BID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_BREADY : STD_LOGIC;
  signal m00_couplers_to_axi_mem_intercon_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_BVALID : STD_LOGIC;
  signal m00_couplers_to_axi_mem_intercon_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_RID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_RLAST : STD_LOGIC;
  signal m00_couplers_to_axi_mem_intercon_RREADY : STD_LOGIC;
  signal m00_couplers_to_axi_mem_intercon_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_RVALID : STD_LOGIC;
  signal m00_couplers_to_axi_mem_intercon_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_WID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_axi_mem_intercon_WLAST : STD_LOGIC;
  signal m00_couplers_to_axi_mem_intercon_WREADY : STD_LOGIC;
  signal m00_couplers_to_axi_mem_intercon_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_WVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_AWVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_BREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s00_couplers_to_xbar_WLAST : STD_LOGIC;
  signal s00_couplers_to_xbar_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_xbar_WVALID : STD_LOGIC;
  signal s01_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_xbar_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_couplers_to_xbar_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_xbar_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s01_couplers_to_xbar_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_xbar_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_xbar_ARVALID : STD_LOGIC;
  signal s01_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 127 downto 64 );
  signal s01_couplers_to_xbar_RLAST : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_RREADY : STD_LOGIC;
  signal s01_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal s01_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xbar_to_m00_couplers_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xbar_to_m00_couplers_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal xbar_to_m00_couplers_RID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_RLAST : STD_LOGIC;
  signal xbar_to_m00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal xbar_to_m00_couplers_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xbar_to_m00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_xbar_s_axi_arready_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_xbar_s_axi_awready_UNCONNECTED : STD_LOGIC_VECTOR ( 1 to 1 );
  signal NLW_xbar_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_xbar_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_xbar_s_axi_bvalid_UNCONNECTED : STD_LOGIC_VECTOR ( 1 to 1 );
  signal NLW_xbar_s_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_xbar_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_xbar_s_axi_rlast_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_xbar_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_xbar_s_axi_rvalid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_xbar_s_axi_wready_UNCONNECTED : STD_LOGIC_VECTOR ( 1 to 1 );
begin
  M00_ACLK_1 <= M00_ACLK;
  M00_ARESETN_1 <= M00_ARESETN;
  M00_AXI_araddr(31 downto 0) <= m00_couplers_to_axi_mem_intercon_ARADDR(31 downto 0);
  M00_AXI_arburst(1 downto 0) <= m00_couplers_to_axi_mem_intercon_ARBURST(1 downto 0);
  M00_AXI_arcache(3 downto 0) <= m00_couplers_to_axi_mem_intercon_ARCACHE(3 downto 0);
  M00_AXI_arid(0) <= m00_couplers_to_axi_mem_intercon_ARID(0);
  M00_AXI_arlen(3 downto 0) <= m00_couplers_to_axi_mem_intercon_ARLEN(3 downto 0);
  M00_AXI_arlock(1 downto 0) <= m00_couplers_to_axi_mem_intercon_ARLOCK(1 downto 0);
  M00_AXI_arprot(2 downto 0) <= m00_couplers_to_axi_mem_intercon_ARPROT(2 downto 0);
  M00_AXI_arqos(3 downto 0) <= m00_couplers_to_axi_mem_intercon_ARQOS(3 downto 0);
  M00_AXI_arsize(2 downto 0) <= m00_couplers_to_axi_mem_intercon_ARSIZE(2 downto 0);
  M00_AXI_arvalid <= m00_couplers_to_axi_mem_intercon_ARVALID;
  M00_AXI_awaddr(31 downto 0) <= m00_couplers_to_axi_mem_intercon_AWADDR(31 downto 0);
  M00_AXI_awburst(1 downto 0) <= m00_couplers_to_axi_mem_intercon_AWBURST(1 downto 0);
  M00_AXI_awcache(3 downto 0) <= m00_couplers_to_axi_mem_intercon_AWCACHE(3 downto 0);
  M00_AXI_awid(0) <= m00_couplers_to_axi_mem_intercon_AWID(0);
  M00_AXI_awlen(3 downto 0) <= m00_couplers_to_axi_mem_intercon_AWLEN(3 downto 0);
  M00_AXI_awlock(1 downto 0) <= m00_couplers_to_axi_mem_intercon_AWLOCK(1 downto 0);
  M00_AXI_awprot(2 downto 0) <= m00_couplers_to_axi_mem_intercon_AWPROT(2 downto 0);
  M00_AXI_awqos(3 downto 0) <= m00_couplers_to_axi_mem_intercon_AWQOS(3 downto 0);
  M00_AXI_awsize(2 downto 0) <= m00_couplers_to_axi_mem_intercon_AWSIZE(2 downto 0);
  M00_AXI_awvalid <= m00_couplers_to_axi_mem_intercon_AWVALID;
  M00_AXI_bready <= m00_couplers_to_axi_mem_intercon_BREADY;
  M00_AXI_rready <= m00_couplers_to_axi_mem_intercon_RREADY;
  M00_AXI_wdata(63 downto 0) <= m00_couplers_to_axi_mem_intercon_WDATA(63 downto 0);
  M00_AXI_wid(0) <= m00_couplers_to_axi_mem_intercon_WID(0);
  M00_AXI_wlast <= m00_couplers_to_axi_mem_intercon_WLAST;
  M00_AXI_wstrb(7 downto 0) <= m00_couplers_to_axi_mem_intercon_WSTRB(7 downto 0);
  M00_AXI_wvalid <= m00_couplers_to_axi_mem_intercon_WVALID;
  S00_ACLK_1 <= S00_ACLK;
  S00_ARESETN_1 <= S00_ARESETN;
  S00_AXI_awready <= axi_mem_intercon_to_s00_couplers_AWREADY;
  S00_AXI_bresp(1 downto 0) <= axi_mem_intercon_to_s00_couplers_BRESP(1 downto 0);
  S00_AXI_bvalid <= axi_mem_intercon_to_s00_couplers_BVALID;
  S00_AXI_wready <= axi_mem_intercon_to_s00_couplers_WREADY;
  S01_ACLK_1 <= S01_ACLK;
  S01_ARESETN_1 <= S01_ARESETN;
  S01_AXI_arready <= axi_mem_intercon_to_s01_couplers_ARREADY;
  S01_AXI_rdata(31 downto 0) <= axi_mem_intercon_to_s01_couplers_RDATA(31 downto 0);
  S01_AXI_rlast <= axi_mem_intercon_to_s01_couplers_RLAST;
  S01_AXI_rresp(1 downto 0) <= axi_mem_intercon_to_s01_couplers_RRESP(1 downto 0);
  S01_AXI_rvalid <= axi_mem_intercon_to_s01_couplers_RVALID;
  axi_mem_intercon_ACLK_net <= ACLK;
  axi_mem_intercon_ARESETN_net <= ARESETN;
  axi_mem_intercon_to_s00_couplers_AWADDR(31 downto 0) <= S00_AXI_awaddr(31 downto 0);
  axi_mem_intercon_to_s00_couplers_AWBURST(1 downto 0) <= S00_AXI_awburst(1 downto 0);
  axi_mem_intercon_to_s00_couplers_AWCACHE(3 downto 0) <= S00_AXI_awcache(3 downto 0);
  axi_mem_intercon_to_s00_couplers_AWLEN(7 downto 0) <= S00_AXI_awlen(7 downto 0);
  axi_mem_intercon_to_s00_couplers_AWPROT(2 downto 0) <= S00_AXI_awprot(2 downto 0);
  axi_mem_intercon_to_s00_couplers_AWSIZE(2 downto 0) <= S00_AXI_awsize(2 downto 0);
  axi_mem_intercon_to_s00_couplers_AWVALID <= S00_AXI_awvalid;
  axi_mem_intercon_to_s00_couplers_BREADY <= S00_AXI_bready;
  axi_mem_intercon_to_s00_couplers_WDATA(63 downto 0) <= S00_AXI_wdata(63 downto 0);
  axi_mem_intercon_to_s00_couplers_WLAST <= S00_AXI_wlast;
  axi_mem_intercon_to_s00_couplers_WSTRB(7 downto 0) <= S00_AXI_wstrb(7 downto 0);
  axi_mem_intercon_to_s00_couplers_WVALID <= S00_AXI_wvalid;
  axi_mem_intercon_to_s01_couplers_ARADDR(31 downto 0) <= S01_AXI_araddr(31 downto 0);
  axi_mem_intercon_to_s01_couplers_ARBURST(1 downto 0) <= S01_AXI_arburst(1 downto 0);
  axi_mem_intercon_to_s01_couplers_ARCACHE(3 downto 0) <= S01_AXI_arcache(3 downto 0);
  axi_mem_intercon_to_s01_couplers_ARLEN(7 downto 0) <= S01_AXI_arlen(7 downto 0);
  axi_mem_intercon_to_s01_couplers_ARPROT(2 downto 0) <= S01_AXI_arprot(2 downto 0);
  axi_mem_intercon_to_s01_couplers_ARSIZE(2 downto 0) <= S01_AXI_arsize(2 downto 0);
  axi_mem_intercon_to_s01_couplers_ARVALID <= S01_AXI_arvalid;
  axi_mem_intercon_to_s01_couplers_RREADY <= S01_AXI_rready;
  m00_couplers_to_axi_mem_intercon_ARREADY <= M00_AXI_arready;
  m00_couplers_to_axi_mem_intercon_AWREADY <= M00_AXI_awready;
  m00_couplers_to_axi_mem_intercon_BID(5 downto 0) <= M00_AXI_bid(5 downto 0);
  m00_couplers_to_axi_mem_intercon_BRESP(1 downto 0) <= M00_AXI_bresp(1 downto 0);
  m00_couplers_to_axi_mem_intercon_BVALID <= M00_AXI_bvalid;
  m00_couplers_to_axi_mem_intercon_RDATA(63 downto 0) <= M00_AXI_rdata(63 downto 0);
  m00_couplers_to_axi_mem_intercon_RID(5 downto 0) <= M00_AXI_rid(5 downto 0);
  m00_couplers_to_axi_mem_intercon_RLAST <= M00_AXI_rlast;
  m00_couplers_to_axi_mem_intercon_RRESP(1 downto 0) <= M00_AXI_rresp(1 downto 0);
  m00_couplers_to_axi_mem_intercon_RVALID <= M00_AXI_rvalid;
  m00_couplers_to_axi_mem_intercon_WREADY <= M00_AXI_wready;
m00_couplers: entity work.m00_couplers_imp_1UNZW92
     port map (
      M_ACLK => M00_ACLK_1,
      M_ARESETN => M00_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m00_couplers_to_axi_mem_intercon_ARADDR(31 downto 0),
      M_AXI_arburst(1 downto 0) => m00_couplers_to_axi_mem_intercon_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => m00_couplers_to_axi_mem_intercon_ARCACHE(3 downto 0),
      M_AXI_arid(0) => m00_couplers_to_axi_mem_intercon_ARID(0),
      M_AXI_arlen(3 downto 0) => m00_couplers_to_axi_mem_intercon_ARLEN(3 downto 0),
      M_AXI_arlock(1 downto 0) => m00_couplers_to_axi_mem_intercon_ARLOCK(1 downto 0),
      M_AXI_arprot(2 downto 0) => m00_couplers_to_axi_mem_intercon_ARPROT(2 downto 0),
      M_AXI_arqos(3 downto 0) => m00_couplers_to_axi_mem_intercon_ARQOS(3 downto 0),
      M_AXI_arready => m00_couplers_to_axi_mem_intercon_ARREADY,
      M_AXI_arsize(2 downto 0) => m00_couplers_to_axi_mem_intercon_ARSIZE(2 downto 0),
      M_AXI_arvalid => m00_couplers_to_axi_mem_intercon_ARVALID,
      M_AXI_awaddr(31 downto 0) => m00_couplers_to_axi_mem_intercon_AWADDR(31 downto 0),
      M_AXI_awburst(1 downto 0) => m00_couplers_to_axi_mem_intercon_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => m00_couplers_to_axi_mem_intercon_AWCACHE(3 downto 0),
      M_AXI_awid(0) => m00_couplers_to_axi_mem_intercon_AWID(0),
      M_AXI_awlen(3 downto 0) => m00_couplers_to_axi_mem_intercon_AWLEN(3 downto 0),
      M_AXI_awlock(1 downto 0) => m00_couplers_to_axi_mem_intercon_AWLOCK(1 downto 0),
      M_AXI_awprot(2 downto 0) => m00_couplers_to_axi_mem_intercon_AWPROT(2 downto 0),
      M_AXI_awqos(3 downto 0) => m00_couplers_to_axi_mem_intercon_AWQOS(3 downto 0),
      M_AXI_awready => m00_couplers_to_axi_mem_intercon_AWREADY,
      M_AXI_awsize(2 downto 0) => m00_couplers_to_axi_mem_intercon_AWSIZE(2 downto 0),
      M_AXI_awvalid => m00_couplers_to_axi_mem_intercon_AWVALID,
      M_AXI_bid(5 downto 0) => m00_couplers_to_axi_mem_intercon_BID(5 downto 0),
      M_AXI_bready => m00_couplers_to_axi_mem_intercon_BREADY,
      M_AXI_bresp(1 downto 0) => m00_couplers_to_axi_mem_intercon_BRESP(1 downto 0),
      M_AXI_bvalid => m00_couplers_to_axi_mem_intercon_BVALID,
      M_AXI_rdata(63 downto 0) => m00_couplers_to_axi_mem_intercon_RDATA(63 downto 0),
      M_AXI_rid(5 downto 0) => m00_couplers_to_axi_mem_intercon_RID(5 downto 0),
      M_AXI_rlast => m00_couplers_to_axi_mem_intercon_RLAST,
      M_AXI_rready => m00_couplers_to_axi_mem_intercon_RREADY,
      M_AXI_rresp(1 downto 0) => m00_couplers_to_axi_mem_intercon_RRESP(1 downto 0),
      M_AXI_rvalid => m00_couplers_to_axi_mem_intercon_RVALID,
      M_AXI_wdata(63 downto 0) => m00_couplers_to_axi_mem_intercon_WDATA(63 downto 0),
      M_AXI_wid(0) => m00_couplers_to_axi_mem_intercon_WID(0),
      M_AXI_wlast => m00_couplers_to_axi_mem_intercon_WLAST,
      M_AXI_wready => m00_couplers_to_axi_mem_intercon_WREADY,
      M_AXI_wstrb(7 downto 0) => m00_couplers_to_axi_mem_intercon_WSTRB(7 downto 0),
      M_AXI_wvalid => m00_couplers_to_axi_mem_intercon_WVALID,
      S_ACLK => axi_mem_intercon_ACLK_net,
      S_ARESETN => axi_mem_intercon_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m00_couplers_ARADDR(31 downto 0),
      S_AXI_arburst(1 downto 0) => xbar_to_m00_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => xbar_to_m00_couplers_ARCACHE(3 downto 0),
      S_AXI_arid(0) => xbar_to_m00_couplers_ARID(0),
      S_AXI_arlen(7 downto 0) => xbar_to_m00_couplers_ARLEN(7 downto 0),
      S_AXI_arlock(0) => xbar_to_m00_couplers_ARLOCK(0),
      S_AXI_arprot(2 downto 0) => xbar_to_m00_couplers_ARPROT(2 downto 0),
      S_AXI_arqos(3 downto 0) => xbar_to_m00_couplers_ARQOS(3 downto 0),
      S_AXI_arready => xbar_to_m00_couplers_ARREADY,
      S_AXI_arregion(3 downto 0) => xbar_to_m00_couplers_ARREGION(3 downto 0),
      S_AXI_arsize(2 downto 0) => xbar_to_m00_couplers_ARSIZE(2 downto 0),
      S_AXI_arvalid => xbar_to_m00_couplers_ARVALID(0),
      S_AXI_awaddr(31 downto 0) => xbar_to_m00_couplers_AWADDR(31 downto 0),
      S_AXI_awburst(1 downto 0) => xbar_to_m00_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => xbar_to_m00_couplers_AWCACHE(3 downto 0),
      S_AXI_awid(0) => xbar_to_m00_couplers_AWID(0),
      S_AXI_awlen(7 downto 0) => xbar_to_m00_couplers_AWLEN(7 downto 0),
      S_AXI_awlock(0) => xbar_to_m00_couplers_AWLOCK(0),
      S_AXI_awprot(2 downto 0) => xbar_to_m00_couplers_AWPROT(2 downto 0),
      S_AXI_awqos(3 downto 0) => xbar_to_m00_couplers_AWQOS(3 downto 0),
      S_AXI_awready => xbar_to_m00_couplers_AWREADY,
      S_AXI_awregion(3 downto 0) => xbar_to_m00_couplers_AWREGION(3 downto 0),
      S_AXI_awsize(2 downto 0) => xbar_to_m00_couplers_AWSIZE(2 downto 0),
      S_AXI_awvalid => xbar_to_m00_couplers_AWVALID(0),
      S_AXI_bid(0) => xbar_to_m00_couplers_BID(0),
      S_AXI_bready => xbar_to_m00_couplers_BREADY(0),
      S_AXI_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m00_couplers_BVALID,
      S_AXI_rdata(63 downto 0) => xbar_to_m00_couplers_RDATA(63 downto 0),
      S_AXI_rid(0) => xbar_to_m00_couplers_RID(0),
      S_AXI_rlast => xbar_to_m00_couplers_RLAST,
      S_AXI_rready => xbar_to_m00_couplers_RREADY(0),
      S_AXI_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m00_couplers_RVALID,
      S_AXI_wdata(63 downto 0) => xbar_to_m00_couplers_WDATA(63 downto 0),
      S_AXI_wlast => xbar_to_m00_couplers_WLAST(0),
      S_AXI_wready => xbar_to_m00_couplers_WREADY,
      S_AXI_wstrb(7 downto 0) => xbar_to_m00_couplers_WSTRB(7 downto 0),
      S_AXI_wvalid => xbar_to_m00_couplers_WVALID(0)
    );
s00_couplers: entity work.s00_couplers_imp_F85G6R
     port map (
      M_ACLK => axi_mem_intercon_ACLK_net,
      M_ARESETN => axi_mem_intercon_ARESETN_net,
      M_AXI_awaddr(31 downto 0) => s00_couplers_to_xbar_AWADDR(31 downto 0),
      M_AXI_awburst(1 downto 0) => s00_couplers_to_xbar_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => s00_couplers_to_xbar_AWCACHE(3 downto 0),
      M_AXI_awlen(7 downto 0) => s00_couplers_to_xbar_AWLEN(7 downto 0),
      M_AXI_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      M_AXI_awready => s00_couplers_to_xbar_AWREADY(0),
      M_AXI_awsize(2 downto 0) => s00_couplers_to_xbar_AWSIZE(2 downto 0),
      M_AXI_awvalid => s00_couplers_to_xbar_AWVALID,
      M_AXI_bready => s00_couplers_to_xbar_BREADY,
      M_AXI_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      M_AXI_bvalid => s00_couplers_to_xbar_BVALID(0),
      M_AXI_wdata(63 downto 0) => s00_couplers_to_xbar_WDATA(63 downto 0),
      M_AXI_wlast => s00_couplers_to_xbar_WLAST,
      M_AXI_wready => s00_couplers_to_xbar_WREADY(0),
      M_AXI_wstrb(7 downto 0) => s00_couplers_to_xbar_WSTRB(7 downto 0),
      M_AXI_wvalid => s00_couplers_to_xbar_WVALID,
      S_ACLK => S00_ACLK_1,
      S_ARESETN => S00_ARESETN_1,
      S_AXI_awaddr(31 downto 0) => axi_mem_intercon_to_s00_couplers_AWADDR(31 downto 0),
      S_AXI_awburst(1 downto 0) => axi_mem_intercon_to_s00_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => axi_mem_intercon_to_s00_couplers_AWCACHE(3 downto 0),
      S_AXI_awlen(7 downto 0) => axi_mem_intercon_to_s00_couplers_AWLEN(7 downto 0),
      S_AXI_awprot(2 downto 0) => axi_mem_intercon_to_s00_couplers_AWPROT(2 downto 0),
      S_AXI_awready => axi_mem_intercon_to_s00_couplers_AWREADY,
      S_AXI_awsize(2 downto 0) => axi_mem_intercon_to_s00_couplers_AWSIZE(2 downto 0),
      S_AXI_awvalid => axi_mem_intercon_to_s00_couplers_AWVALID,
      S_AXI_bready => axi_mem_intercon_to_s00_couplers_BREADY,
      S_AXI_bresp(1 downto 0) => axi_mem_intercon_to_s00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => axi_mem_intercon_to_s00_couplers_BVALID,
      S_AXI_wdata(63 downto 0) => axi_mem_intercon_to_s00_couplers_WDATA(63 downto 0),
      S_AXI_wlast => axi_mem_intercon_to_s00_couplers_WLAST,
      S_AXI_wready => axi_mem_intercon_to_s00_couplers_WREADY,
      S_AXI_wstrb(7 downto 0) => axi_mem_intercon_to_s00_couplers_WSTRB(7 downto 0),
      S_AXI_wvalid => axi_mem_intercon_to_s00_couplers_WVALID
    );
s01_couplers: entity work.s01_couplers_imp_1BPETZ9
     port map (
      M_ACLK => axi_mem_intercon_ACLK_net,
      M_ARESETN => axi_mem_intercon_ARESETN_net,
      M_AXI_araddr(31 downto 0) => s01_couplers_to_xbar_ARADDR(31 downto 0),
      M_AXI_arburst(1 downto 0) => s01_couplers_to_xbar_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => s01_couplers_to_xbar_ARCACHE(3 downto 0),
      M_AXI_arlen(7 downto 0) => s01_couplers_to_xbar_ARLEN(7 downto 0),
      M_AXI_arlock(0) => s01_couplers_to_xbar_ARLOCK(0),
      M_AXI_arprot(2 downto 0) => s01_couplers_to_xbar_ARPROT(2 downto 0),
      M_AXI_arqos(3 downto 0) => s01_couplers_to_xbar_ARQOS(3 downto 0),
      M_AXI_arready => s01_couplers_to_xbar_ARREADY(1),
      M_AXI_arsize(2 downto 0) => s01_couplers_to_xbar_ARSIZE(2 downto 0),
      M_AXI_arvalid => s01_couplers_to_xbar_ARVALID,
      M_AXI_rdata(63 downto 0) => s01_couplers_to_xbar_RDATA(127 downto 64),
      M_AXI_rlast => s01_couplers_to_xbar_RLAST(1),
      M_AXI_rready => s01_couplers_to_xbar_RREADY,
      M_AXI_rresp(1 downto 0) => s01_couplers_to_xbar_RRESP(3 downto 2),
      M_AXI_rvalid => s01_couplers_to_xbar_RVALID(1),
      S_ACLK => S01_ACLK_1,
      S_ARESETN => S01_ARESETN_1,
      S_AXI_araddr(31 downto 0) => axi_mem_intercon_to_s01_couplers_ARADDR(31 downto 0),
      S_AXI_arburst(1 downto 0) => axi_mem_intercon_to_s01_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => axi_mem_intercon_to_s01_couplers_ARCACHE(3 downto 0),
      S_AXI_arlen(7 downto 0) => axi_mem_intercon_to_s01_couplers_ARLEN(7 downto 0),
      S_AXI_arprot(2 downto 0) => axi_mem_intercon_to_s01_couplers_ARPROT(2 downto 0),
      S_AXI_arready => axi_mem_intercon_to_s01_couplers_ARREADY,
      S_AXI_arsize(2 downto 0) => axi_mem_intercon_to_s01_couplers_ARSIZE(2 downto 0),
      S_AXI_arvalid => axi_mem_intercon_to_s01_couplers_ARVALID,
      S_AXI_rdata(31 downto 0) => axi_mem_intercon_to_s01_couplers_RDATA(31 downto 0),
      S_AXI_rlast => axi_mem_intercon_to_s01_couplers_RLAST,
      S_AXI_rready => axi_mem_intercon_to_s01_couplers_RREADY,
      S_AXI_rresp(1 downto 0) => axi_mem_intercon_to_s01_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => axi_mem_intercon_to_s01_couplers_RVALID
    );
xbar: component base_xbar_10
     port map (
      aclk => axi_mem_intercon_ACLK_net,
      aresetn => axi_mem_intercon_ARESETN_net,
      m_axi_araddr(31 downto 0) => xbar_to_m00_couplers_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => xbar_to_m00_couplers_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => xbar_to_m00_couplers_ARCACHE(3 downto 0),
      m_axi_arid(0) => xbar_to_m00_couplers_ARID(0),
      m_axi_arlen(7 downto 0) => xbar_to_m00_couplers_ARLEN(7 downto 0),
      m_axi_arlock(0) => xbar_to_m00_couplers_ARLOCK(0),
      m_axi_arprot(2 downto 0) => xbar_to_m00_couplers_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => xbar_to_m00_couplers_ARQOS(3 downto 0),
      m_axi_arready(0) => xbar_to_m00_couplers_ARREADY,
      m_axi_arregion(3 downto 0) => xbar_to_m00_couplers_ARREGION(3 downto 0),
      m_axi_arsize(2 downto 0) => xbar_to_m00_couplers_ARSIZE(2 downto 0),
      m_axi_arvalid(0) => xbar_to_m00_couplers_ARVALID(0),
      m_axi_awaddr(31 downto 0) => xbar_to_m00_couplers_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => xbar_to_m00_couplers_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => xbar_to_m00_couplers_AWCACHE(3 downto 0),
      m_axi_awid(0) => xbar_to_m00_couplers_AWID(0),
      m_axi_awlen(7 downto 0) => xbar_to_m00_couplers_AWLEN(7 downto 0),
      m_axi_awlock(0) => xbar_to_m00_couplers_AWLOCK(0),
      m_axi_awprot(2 downto 0) => xbar_to_m00_couplers_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => xbar_to_m00_couplers_AWQOS(3 downto 0),
      m_axi_awready(0) => xbar_to_m00_couplers_AWREADY,
      m_axi_awregion(3 downto 0) => xbar_to_m00_couplers_AWREGION(3 downto 0),
      m_axi_awsize(2 downto 0) => xbar_to_m00_couplers_AWSIZE(2 downto 0),
      m_axi_awvalid(0) => xbar_to_m00_couplers_AWVALID(0),
      m_axi_bid(0) => xbar_to_m00_couplers_BID(0),
      m_axi_bready(0) => xbar_to_m00_couplers_BREADY(0),
      m_axi_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      m_axi_bvalid(0) => xbar_to_m00_couplers_BVALID,
      m_axi_rdata(63 downto 0) => xbar_to_m00_couplers_RDATA(63 downto 0),
      m_axi_rid(0) => xbar_to_m00_couplers_RID(0),
      m_axi_rlast(0) => xbar_to_m00_couplers_RLAST,
      m_axi_rready(0) => xbar_to_m00_couplers_RREADY(0),
      m_axi_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      m_axi_rvalid(0) => xbar_to_m00_couplers_RVALID,
      m_axi_wdata(63 downto 0) => xbar_to_m00_couplers_WDATA(63 downto 0),
      m_axi_wlast(0) => xbar_to_m00_couplers_WLAST(0),
      m_axi_wready(0) => xbar_to_m00_couplers_WREADY,
      m_axi_wstrb(7 downto 0) => xbar_to_m00_couplers_WSTRB(7 downto 0),
      m_axi_wvalid(0) => xbar_to_m00_couplers_WVALID(0),
      s_axi_araddr(63 downto 32) => s01_couplers_to_xbar_ARADDR(31 downto 0),
      s_axi_araddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_arburst(3 downto 2) => s01_couplers_to_xbar_ARBURST(1 downto 0),
      s_axi_arburst(1 downto 0) => B"01",
      s_axi_arcache(7 downto 4) => s01_couplers_to_xbar_ARCACHE(3 downto 0),
      s_axi_arcache(3 downto 0) => B"0011",
      s_axi_arid(1 downto 0) => B"00",
      s_axi_arlen(15 downto 8) => s01_couplers_to_xbar_ARLEN(7 downto 0),
      s_axi_arlen(7 downto 0) => B"00000000",
      s_axi_arlock(1) => s01_couplers_to_xbar_ARLOCK(0),
      s_axi_arlock(0) => '0',
      s_axi_arprot(5 downto 3) => s01_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arprot(2 downto 0) => B"000",
      s_axi_arqos(7 downto 4) => s01_couplers_to_xbar_ARQOS(3 downto 0),
      s_axi_arqos(3 downto 0) => B"0000",
      s_axi_arready(1) => s01_couplers_to_xbar_ARREADY(1),
      s_axi_arready(0) => NLW_xbar_s_axi_arready_UNCONNECTED(0),
      s_axi_arsize(5 downto 3) => s01_couplers_to_xbar_ARSIZE(2 downto 0),
      s_axi_arsize(2 downto 0) => B"011",
      s_axi_arvalid(1) => s01_couplers_to_xbar_ARVALID,
      s_axi_arvalid(0) => '0',
      s_axi_awaddr(63 downto 32) => B"00000000000000000000000000000000",
      s_axi_awaddr(31 downto 0) => s00_couplers_to_xbar_AWADDR(31 downto 0),
      s_axi_awburst(3 downto 2) => B"00",
      s_axi_awburst(1 downto 0) => s00_couplers_to_xbar_AWBURST(1 downto 0),
      s_axi_awcache(7 downto 4) => B"0000",
      s_axi_awcache(3 downto 0) => s00_couplers_to_xbar_AWCACHE(3 downto 0),
      s_axi_awid(1 downto 0) => B"00",
      s_axi_awlen(15 downto 8) => B"00000000",
      s_axi_awlen(7 downto 0) => s00_couplers_to_xbar_AWLEN(7 downto 0),
      s_axi_awlock(1 downto 0) => B"00",
      s_axi_awprot(5 downto 3) => B"000",
      s_axi_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awqos(7 downto 0) => B"00000000",
      s_axi_awready(1) => NLW_xbar_s_axi_awready_UNCONNECTED(1),
      s_axi_awready(0) => s00_couplers_to_xbar_AWREADY(0),
      s_axi_awsize(5 downto 3) => B"001",
      s_axi_awsize(2 downto 0) => s00_couplers_to_xbar_AWSIZE(2 downto 0),
      s_axi_awvalid(1) => '0',
      s_axi_awvalid(0) => s00_couplers_to_xbar_AWVALID,
      s_axi_bid(1 downto 0) => NLW_xbar_s_axi_bid_UNCONNECTED(1 downto 0),
      s_axi_bready(1) => '0',
      s_axi_bready(0) => s00_couplers_to_xbar_BREADY,
      s_axi_bresp(3 downto 2) => NLW_xbar_s_axi_bresp_UNCONNECTED(3 downto 2),
      s_axi_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      s_axi_bvalid(1) => NLW_xbar_s_axi_bvalid_UNCONNECTED(1),
      s_axi_bvalid(0) => s00_couplers_to_xbar_BVALID(0),
      s_axi_rdata(127 downto 64) => s01_couplers_to_xbar_RDATA(127 downto 64),
      s_axi_rdata(63 downto 0) => NLW_xbar_s_axi_rdata_UNCONNECTED(63 downto 0),
      s_axi_rid(1 downto 0) => NLW_xbar_s_axi_rid_UNCONNECTED(1 downto 0),
      s_axi_rlast(1) => s01_couplers_to_xbar_RLAST(1),
      s_axi_rlast(0) => NLW_xbar_s_axi_rlast_UNCONNECTED(0),
      s_axi_rready(1) => s01_couplers_to_xbar_RREADY,
      s_axi_rready(0) => '0',
      s_axi_rresp(3 downto 2) => s01_couplers_to_xbar_RRESP(3 downto 2),
      s_axi_rresp(1 downto 0) => NLW_xbar_s_axi_rresp_UNCONNECTED(1 downto 0),
      s_axi_rvalid(1) => s01_couplers_to_xbar_RVALID(1),
      s_axi_rvalid(0) => NLW_xbar_s_axi_rvalid_UNCONNECTED(0),
      s_axi_wdata(127 downto 64) => B"0000000000000000000000000000000000000000000000000000000000000000",
      s_axi_wdata(63 downto 0) => s00_couplers_to_xbar_WDATA(63 downto 0),
      s_axi_wlast(1) => '0',
      s_axi_wlast(0) => s00_couplers_to_xbar_WLAST,
      s_axi_wready(1) => NLW_xbar_s_axi_wready_UNCONNECTED(1),
      s_axi_wready(0) => s00_couplers_to_xbar_WREADY(0),
      s_axi_wstrb(15 downto 8) => B"11111111",
      s_axi_wstrb(7 downto 0) => s00_couplers_to_xbar_WSTRB(7 downto 0),
      s_axi_wvalid(1) => '0',
      s_axi_wvalid(0) => s00_couplers_to_xbar_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity base_ps7_0_axi_periph1_0 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 9 downto 0 );
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 9 downto 0 );
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_rready : out STD_LOGIC;
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_wvalid : out STD_LOGIC;
    M01_ACLK : in STD_LOGIC;
    M01_ARESETN : in STD_LOGIC;
    M01_AXI_araddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M01_AXI_arready : in STD_LOGIC;
    M01_AXI_arvalid : out STD_LOGIC;
    M01_AXI_awaddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M01_AXI_awready : in STD_LOGIC;
    M01_AXI_awvalid : out STD_LOGIC;
    M01_AXI_bready : out STD_LOGIC;
    M01_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_bvalid : in STD_LOGIC;
    M01_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_rready : out STD_LOGIC;
    M01_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_rvalid : in STD_LOGIC;
    M01_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_wready : in STD_LOGIC;
    M01_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_wvalid : out STD_LOGIC;
    M02_ACLK : in STD_LOGIC;
    M02_ARESETN : in STD_LOGIC;
    M02_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M02_AXI_arid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M02_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M02_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M02_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M02_AXI_arready : in STD_LOGIC;
    M02_AXI_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M02_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M02_AXI_arvalid : out STD_LOGIC;
    M02_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M02_AXI_awid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M02_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M02_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M02_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M02_AXI_awready : in STD_LOGIC;
    M02_AXI_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M02_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M02_AXI_awvalid : out STD_LOGIC;
    M02_AXI_bid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    M02_AXI_bready : out STD_LOGIC;
    M02_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_bvalid : in STD_LOGIC;
    M02_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_rid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    M02_AXI_rlast : in STD_LOGIC;
    M02_AXI_rready : out STD_LOGIC;
    M02_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_rvalid : in STD_LOGIC;
    M02_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_wlast : out STD_LOGIC;
    M02_AXI_wready : in STD_LOGIC;
    M02_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M02_AXI_wvalid : out STD_LOGIC;
    M03_ACLK : in STD_LOGIC;
    M03_ARESETN : in STD_LOGIC;
    M03_AXI_araddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M03_AXI_arready : in STD_LOGIC;
    M03_AXI_arvalid : out STD_LOGIC;
    M03_AXI_awaddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M03_AXI_awready : in STD_LOGIC;
    M03_AXI_awvalid : out STD_LOGIC;
    M03_AXI_bready : out STD_LOGIC;
    M03_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M03_AXI_bvalid : in STD_LOGIC;
    M03_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_rready : out STD_LOGIC;
    M03_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M03_AXI_rvalid : in STD_LOGIC;
    M03_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_wready : in STD_LOGIC;
    M03_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M03_AXI_wvalid : out STD_LOGIC;
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_rlast : out STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_wlast : in STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC
  );
end base_ps7_0_axi_periph1_0;

architecture STRUCTURE of base_ps7_0_axi_periph1_0 is
  component base_xbar_7 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awid : out STD_LOGIC_VECTOR ( 47 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awready : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_wlast : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_bid : in STD_LOGIC_VECTOR ( 47 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_bready : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arid : out STD_LOGIC_VECTOR ( 47 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arready : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rid : in STD_LOGIC_VECTOR ( 47 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_rlast : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rready : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component base_xbar_7;
  signal M00_ACLK_1 : STD_LOGIC;
  signal M00_ARESETN_1 : STD_LOGIC;
  signal M01_ACLK_1 : STD_LOGIC;
  signal M01_ARESETN_1 : STD_LOGIC;
  signal M02_ACLK_1 : STD_LOGIC;
  signal M02_ARESETN_1 : STD_LOGIC;
  signal M03_ACLK_1 : STD_LOGIC;
  signal M03_ARESETN_1 : STD_LOGIC;
  signal S00_ACLK_1 : STD_LOGIC;
  signal S00_ARESETN_1 : STD_LOGIC;
  signal m00_couplers_to_ps7_0_axi_periph1_ARADDR : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal m00_couplers_to_ps7_0_axi_periph1_ARREADY : STD_LOGIC;
  signal m00_couplers_to_ps7_0_axi_periph1_ARVALID : STD_LOGIC;
  signal m00_couplers_to_ps7_0_axi_periph1_AWADDR : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal m00_couplers_to_ps7_0_axi_periph1_AWREADY : STD_LOGIC;
  signal m00_couplers_to_ps7_0_axi_periph1_AWVALID : STD_LOGIC;
  signal m00_couplers_to_ps7_0_axi_periph1_BREADY : STD_LOGIC;
  signal m00_couplers_to_ps7_0_axi_periph1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_ps7_0_axi_periph1_BVALID : STD_LOGIC;
  signal m00_couplers_to_ps7_0_axi_periph1_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_ps7_0_axi_periph1_RREADY : STD_LOGIC;
  signal m00_couplers_to_ps7_0_axi_periph1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_ps7_0_axi_periph1_RVALID : STD_LOGIC;
  signal m00_couplers_to_ps7_0_axi_periph1_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_ps7_0_axi_periph1_WREADY : STD_LOGIC;
  signal m00_couplers_to_ps7_0_axi_periph1_WVALID : STD_LOGIC;
  signal m01_couplers_to_ps7_0_axi_periph1_ARADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal m01_couplers_to_ps7_0_axi_periph1_ARREADY : STD_LOGIC;
  signal m01_couplers_to_ps7_0_axi_periph1_ARVALID : STD_LOGIC;
  signal m01_couplers_to_ps7_0_axi_periph1_AWADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal m01_couplers_to_ps7_0_axi_periph1_AWREADY : STD_LOGIC;
  signal m01_couplers_to_ps7_0_axi_periph1_AWVALID : STD_LOGIC;
  signal m01_couplers_to_ps7_0_axi_periph1_BREADY : STD_LOGIC;
  signal m01_couplers_to_ps7_0_axi_periph1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_ps7_0_axi_periph1_BVALID : STD_LOGIC;
  signal m01_couplers_to_ps7_0_axi_periph1_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_ps7_0_axi_periph1_RREADY : STD_LOGIC;
  signal m01_couplers_to_ps7_0_axi_periph1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_ps7_0_axi_periph1_RVALID : STD_LOGIC;
  signal m01_couplers_to_ps7_0_axi_periph1_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_ps7_0_axi_periph1_WREADY : STD_LOGIC;
  signal m01_couplers_to_ps7_0_axi_periph1_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_ps7_0_axi_periph1_WVALID : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph1_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_ps7_0_axi_periph1_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_ps7_0_axi_periph1_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_ps7_0_axi_periph1_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal m02_couplers_to_ps7_0_axi_periph1_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m02_couplers_to_ps7_0_axi_periph1_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_ps7_0_axi_periph1_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_ps7_0_axi_periph1_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_ps7_0_axi_periph1_ARREADY : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph1_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_ps7_0_axi_periph1_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_ps7_0_axi_periph1_ARVALID : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph1_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_ps7_0_axi_periph1_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_ps7_0_axi_periph1_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_ps7_0_axi_periph1_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal m02_couplers_to_ps7_0_axi_periph1_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m02_couplers_to_ps7_0_axi_periph1_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_ps7_0_axi_periph1_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_ps7_0_axi_periph1_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_ps7_0_axi_periph1_AWREADY : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph1_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_ps7_0_axi_periph1_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_ps7_0_axi_periph1_AWVALID : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph1_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal m02_couplers_to_ps7_0_axi_periph1_BREADY : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_ps7_0_axi_periph1_BVALID : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph1_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_ps7_0_axi_periph1_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal m02_couplers_to_ps7_0_axi_periph1_RLAST : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph1_RREADY : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_ps7_0_axi_periph1_RVALID : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph1_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_ps7_0_axi_periph1_WLAST : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph1_WREADY : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph1_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_ps7_0_axi_periph1_WVALID : STD_LOGIC;
  signal m03_couplers_to_ps7_0_axi_periph1_ARADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal m03_couplers_to_ps7_0_axi_periph1_ARREADY : STD_LOGIC;
  signal m03_couplers_to_ps7_0_axi_periph1_ARVALID : STD_LOGIC;
  signal m03_couplers_to_ps7_0_axi_periph1_AWADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal m03_couplers_to_ps7_0_axi_periph1_AWREADY : STD_LOGIC;
  signal m03_couplers_to_ps7_0_axi_periph1_AWVALID : STD_LOGIC;
  signal m03_couplers_to_ps7_0_axi_periph1_BREADY : STD_LOGIC;
  signal m03_couplers_to_ps7_0_axi_periph1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_ps7_0_axi_periph1_BVALID : STD_LOGIC;
  signal m03_couplers_to_ps7_0_axi_periph1_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_ps7_0_axi_periph1_RREADY : STD_LOGIC;
  signal m03_couplers_to_ps7_0_axi_periph1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_ps7_0_axi_periph1_RVALID : STD_LOGIC;
  signal m03_couplers_to_ps7_0_axi_periph1_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_ps7_0_axi_periph1_WREADY : STD_LOGIC;
  signal m03_couplers_to_ps7_0_axi_periph1_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m03_couplers_to_ps7_0_axi_periph1_WVALID : STD_LOGIC;
  signal ps7_0_axi_periph1_ACLK_net : STD_LOGIC;
  signal ps7_0_axi_periph1_ARESETN_net : STD_LOGIC;
  signal ps7_0_axi_periph1_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph1_to_s00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph1_to_s00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph1_to_s00_couplers_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal ps7_0_axi_periph1_to_s00_couplers_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph1_to_s00_couplers_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph1_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_0_axi_periph1_to_s00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph1_to_s00_couplers_ARREADY : STD_LOGIC;
  signal ps7_0_axi_periph1_to_s00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_0_axi_periph1_to_s00_couplers_ARVALID : STD_LOGIC;
  signal ps7_0_axi_periph1_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph1_to_s00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph1_to_s00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph1_to_s00_couplers_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal ps7_0_axi_periph1_to_s00_couplers_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph1_to_s00_couplers_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph1_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_0_axi_periph1_to_s00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph1_to_s00_couplers_AWREADY : STD_LOGIC;
  signal ps7_0_axi_periph1_to_s00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_0_axi_periph1_to_s00_couplers_AWVALID : STD_LOGIC;
  signal ps7_0_axi_periph1_to_s00_couplers_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal ps7_0_axi_periph1_to_s00_couplers_BREADY : STD_LOGIC;
  signal ps7_0_axi_periph1_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph1_to_s00_couplers_BVALID : STD_LOGIC;
  signal ps7_0_axi_periph1_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph1_to_s00_couplers_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal ps7_0_axi_periph1_to_s00_couplers_RLAST : STD_LOGIC;
  signal ps7_0_axi_periph1_to_s00_couplers_RREADY : STD_LOGIC;
  signal ps7_0_axi_periph1_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph1_to_s00_couplers_RVALID : STD_LOGIC;
  signal ps7_0_axi_periph1_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph1_to_s00_couplers_WID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal ps7_0_axi_periph1_to_s00_couplers_WLAST : STD_LOGIC;
  signal ps7_0_axi_periph1_to_s00_couplers_WREADY : STD_LOGIC;
  signal ps7_0_axi_periph1_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph1_to_s00_couplers_WVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_xbar_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_xbar_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_ARVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_xbar_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_xbar_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_AWVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_xbar_BREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_xbar_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_RREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_WLAST : STD_LOGIC;
  signal s00_couplers_to_xbar_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_WVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal xbar_to_m00_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xbar_to_m00_couplers_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal xbar_to_m00_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xbar_to_m00_couplers_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal xbar_to_m00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal xbar_to_m00_couplers_RLAST : STD_LOGIC;
  signal xbar_to_m00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_ARADDR : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_ARBURST : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal xbar_to_m01_couplers_ARCACHE : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_ARID : STD_LOGIC_VECTOR ( 23 downto 12 );
  signal xbar_to_m01_couplers_ARLEN : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal xbar_to_m01_couplers_ARLOCK : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_ARPROT : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal xbar_to_m01_couplers_ARQOS : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_ARREGION : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_ARSIZE : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal xbar_to_m01_couplers_ARVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_AWADDR : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_AWBURST : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal xbar_to_m01_couplers_AWCACHE : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_AWID : STD_LOGIC_VECTOR ( 23 downto 12 );
  signal xbar_to_m01_couplers_AWLEN : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal xbar_to_m01_couplers_AWLOCK : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_AWPROT : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal xbar_to_m01_couplers_AWQOS : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_AWREGION : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_AWSIZE : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal xbar_to_m01_couplers_AWVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal xbar_to_m01_couplers_BREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m01_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m01_couplers_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal xbar_to_m01_couplers_RLAST : STD_LOGIC;
  signal xbar_to_m01_couplers_RREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m01_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m01_couplers_WDATA : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_WLAST : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_WSTRB : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_WVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m02_couplers_ARADDR : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_m02_couplers_ARBURST : STD_LOGIC_VECTOR ( 5 downto 4 );
  signal xbar_to_m02_couplers_ARCACHE : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal xbar_to_m02_couplers_ARID : STD_LOGIC_VECTOR ( 35 downto 24 );
  signal xbar_to_m02_couplers_ARLEN : STD_LOGIC_VECTOR ( 23 downto 16 );
  signal xbar_to_m02_couplers_ARLOCK : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_ARPROT : STD_LOGIC_VECTOR ( 8 downto 6 );
  signal xbar_to_m02_couplers_ARQOS : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal xbar_to_m02_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m02_couplers_ARREGION : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal xbar_to_m02_couplers_ARSIZE : STD_LOGIC_VECTOR ( 8 downto 6 );
  signal xbar_to_m02_couplers_ARVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_AWADDR : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_m02_couplers_AWBURST : STD_LOGIC_VECTOR ( 5 downto 4 );
  signal xbar_to_m02_couplers_AWCACHE : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal xbar_to_m02_couplers_AWID : STD_LOGIC_VECTOR ( 35 downto 24 );
  signal xbar_to_m02_couplers_AWLEN : STD_LOGIC_VECTOR ( 23 downto 16 );
  signal xbar_to_m02_couplers_AWLOCK : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_AWPROT : STD_LOGIC_VECTOR ( 8 downto 6 );
  signal xbar_to_m02_couplers_AWQOS : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal xbar_to_m02_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m02_couplers_AWREGION : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal xbar_to_m02_couplers_AWSIZE : STD_LOGIC_VECTOR ( 8 downto 6 );
  signal xbar_to_m02_couplers_AWVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal xbar_to_m02_couplers_BREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m02_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m02_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m02_couplers_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal xbar_to_m02_couplers_RLAST : STD_LOGIC;
  signal xbar_to_m02_couplers_RREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m02_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m02_couplers_WDATA : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_m02_couplers_WLAST : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m02_couplers_WSTRB : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal xbar_to_m02_couplers_WVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m03_couplers_ARADDR : STD_LOGIC_VECTOR ( 127 downto 96 );
  signal xbar_to_m03_couplers_ARBURST : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal xbar_to_m03_couplers_ARCACHE : STD_LOGIC_VECTOR ( 15 downto 12 );
  signal xbar_to_m03_couplers_ARID : STD_LOGIC_VECTOR ( 47 downto 36 );
  signal xbar_to_m03_couplers_ARLEN : STD_LOGIC_VECTOR ( 31 downto 24 );
  signal xbar_to_m03_couplers_ARLOCK : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_ARPROT : STD_LOGIC_VECTOR ( 11 downto 9 );
  signal xbar_to_m03_couplers_ARQOS : STD_LOGIC_VECTOR ( 15 downto 12 );
  signal xbar_to_m03_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m03_couplers_ARREGION : STD_LOGIC_VECTOR ( 15 downto 12 );
  signal xbar_to_m03_couplers_ARSIZE : STD_LOGIC_VECTOR ( 11 downto 9 );
  signal xbar_to_m03_couplers_ARVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_AWADDR : STD_LOGIC_VECTOR ( 127 downto 96 );
  signal xbar_to_m03_couplers_AWBURST : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal xbar_to_m03_couplers_AWCACHE : STD_LOGIC_VECTOR ( 15 downto 12 );
  signal xbar_to_m03_couplers_AWID : STD_LOGIC_VECTOR ( 47 downto 36 );
  signal xbar_to_m03_couplers_AWLEN : STD_LOGIC_VECTOR ( 31 downto 24 );
  signal xbar_to_m03_couplers_AWLOCK : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_AWPROT : STD_LOGIC_VECTOR ( 11 downto 9 );
  signal xbar_to_m03_couplers_AWQOS : STD_LOGIC_VECTOR ( 15 downto 12 );
  signal xbar_to_m03_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m03_couplers_AWREGION : STD_LOGIC_VECTOR ( 15 downto 12 );
  signal xbar_to_m03_couplers_AWSIZE : STD_LOGIC_VECTOR ( 11 downto 9 );
  signal xbar_to_m03_couplers_AWVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal xbar_to_m03_couplers_BREADY : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m03_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m03_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m03_couplers_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal xbar_to_m03_couplers_RLAST : STD_LOGIC;
  signal xbar_to_m03_couplers_RREADY : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m03_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m03_couplers_WDATA : STD_LOGIC_VECTOR ( 127 downto 96 );
  signal xbar_to_m03_couplers_WLAST : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m03_couplers_WSTRB : STD_LOGIC_VECTOR ( 15 downto 12 );
  signal xbar_to_m03_couplers_WVALID : STD_LOGIC_VECTOR ( 3 to 3 );
begin
  M00_ACLK_1 <= M00_ACLK;
  M00_ARESETN_1 <= M00_ARESETN;
  M00_AXI_araddr(9 downto 0) <= m00_couplers_to_ps7_0_axi_periph1_ARADDR(9 downto 0);
  M00_AXI_arvalid <= m00_couplers_to_ps7_0_axi_periph1_ARVALID;
  M00_AXI_awaddr(9 downto 0) <= m00_couplers_to_ps7_0_axi_periph1_AWADDR(9 downto 0);
  M00_AXI_awvalid <= m00_couplers_to_ps7_0_axi_periph1_AWVALID;
  M00_AXI_bready <= m00_couplers_to_ps7_0_axi_periph1_BREADY;
  M00_AXI_rready <= m00_couplers_to_ps7_0_axi_periph1_RREADY;
  M00_AXI_wdata(31 downto 0) <= m00_couplers_to_ps7_0_axi_periph1_WDATA(31 downto 0);
  M00_AXI_wvalid <= m00_couplers_to_ps7_0_axi_periph1_WVALID;
  M01_ACLK_1 <= M01_ACLK;
  M01_ARESETN_1 <= M01_ARESETN;
  M01_AXI_araddr(8 downto 0) <= m01_couplers_to_ps7_0_axi_periph1_ARADDR(8 downto 0);
  M01_AXI_arvalid <= m01_couplers_to_ps7_0_axi_periph1_ARVALID;
  M01_AXI_awaddr(8 downto 0) <= m01_couplers_to_ps7_0_axi_periph1_AWADDR(8 downto 0);
  M01_AXI_awvalid <= m01_couplers_to_ps7_0_axi_periph1_AWVALID;
  M01_AXI_bready <= m01_couplers_to_ps7_0_axi_periph1_BREADY;
  M01_AXI_rready <= m01_couplers_to_ps7_0_axi_periph1_RREADY;
  M01_AXI_wdata(31 downto 0) <= m01_couplers_to_ps7_0_axi_periph1_WDATA(31 downto 0);
  M01_AXI_wstrb(3 downto 0) <= m01_couplers_to_ps7_0_axi_periph1_WSTRB(3 downto 0);
  M01_AXI_wvalid <= m01_couplers_to_ps7_0_axi_periph1_WVALID;
  M02_ACLK_1 <= M02_ACLK;
  M02_ARESETN_1 <= M02_ARESETN;
  M02_AXI_araddr(31 downto 0) <= m02_couplers_to_ps7_0_axi_periph1_ARADDR(31 downto 0);
  M02_AXI_arburst(1 downto 0) <= m02_couplers_to_ps7_0_axi_periph1_ARBURST(1 downto 0);
  M02_AXI_arcache(3 downto 0) <= m02_couplers_to_ps7_0_axi_periph1_ARCACHE(3 downto 0);
  M02_AXI_arid(11 downto 0) <= m02_couplers_to_ps7_0_axi_periph1_ARID(11 downto 0);
  M02_AXI_arlen(7 downto 0) <= m02_couplers_to_ps7_0_axi_periph1_ARLEN(7 downto 0);
  M02_AXI_arlock(0) <= m02_couplers_to_ps7_0_axi_periph1_ARLOCK(0);
  M02_AXI_arprot(2 downto 0) <= m02_couplers_to_ps7_0_axi_periph1_ARPROT(2 downto 0);
  M02_AXI_arqos(3 downto 0) <= m02_couplers_to_ps7_0_axi_periph1_ARQOS(3 downto 0);
  M02_AXI_arregion(3 downto 0) <= m02_couplers_to_ps7_0_axi_periph1_ARREGION(3 downto 0);
  M02_AXI_arsize(2 downto 0) <= m02_couplers_to_ps7_0_axi_periph1_ARSIZE(2 downto 0);
  M02_AXI_arvalid <= m02_couplers_to_ps7_0_axi_periph1_ARVALID;
  M02_AXI_awaddr(31 downto 0) <= m02_couplers_to_ps7_0_axi_periph1_AWADDR(31 downto 0);
  M02_AXI_awburst(1 downto 0) <= m02_couplers_to_ps7_0_axi_periph1_AWBURST(1 downto 0);
  M02_AXI_awcache(3 downto 0) <= m02_couplers_to_ps7_0_axi_periph1_AWCACHE(3 downto 0);
  M02_AXI_awid(11 downto 0) <= m02_couplers_to_ps7_0_axi_periph1_AWID(11 downto 0);
  M02_AXI_awlen(7 downto 0) <= m02_couplers_to_ps7_0_axi_periph1_AWLEN(7 downto 0);
  M02_AXI_awlock(0) <= m02_couplers_to_ps7_0_axi_periph1_AWLOCK(0);
  M02_AXI_awprot(2 downto 0) <= m02_couplers_to_ps7_0_axi_periph1_AWPROT(2 downto 0);
  M02_AXI_awqos(3 downto 0) <= m02_couplers_to_ps7_0_axi_periph1_AWQOS(3 downto 0);
  M02_AXI_awregion(3 downto 0) <= m02_couplers_to_ps7_0_axi_periph1_AWREGION(3 downto 0);
  M02_AXI_awsize(2 downto 0) <= m02_couplers_to_ps7_0_axi_periph1_AWSIZE(2 downto 0);
  M02_AXI_awvalid <= m02_couplers_to_ps7_0_axi_periph1_AWVALID;
  M02_AXI_bready <= m02_couplers_to_ps7_0_axi_periph1_BREADY;
  M02_AXI_rready <= m02_couplers_to_ps7_0_axi_periph1_RREADY;
  M02_AXI_wdata(31 downto 0) <= m02_couplers_to_ps7_0_axi_periph1_WDATA(31 downto 0);
  M02_AXI_wlast <= m02_couplers_to_ps7_0_axi_periph1_WLAST;
  M02_AXI_wstrb(3 downto 0) <= m02_couplers_to_ps7_0_axi_periph1_WSTRB(3 downto 0);
  M02_AXI_wvalid <= m02_couplers_to_ps7_0_axi_periph1_WVALID;
  M03_ACLK_1 <= M03_ACLK;
  M03_ARESETN_1 <= M03_ARESETN;
  M03_AXI_araddr(8 downto 0) <= m03_couplers_to_ps7_0_axi_periph1_ARADDR(8 downto 0);
  M03_AXI_arvalid <= m03_couplers_to_ps7_0_axi_periph1_ARVALID;
  M03_AXI_awaddr(8 downto 0) <= m03_couplers_to_ps7_0_axi_periph1_AWADDR(8 downto 0);
  M03_AXI_awvalid <= m03_couplers_to_ps7_0_axi_periph1_AWVALID;
  M03_AXI_bready <= m03_couplers_to_ps7_0_axi_periph1_BREADY;
  M03_AXI_rready <= m03_couplers_to_ps7_0_axi_periph1_RREADY;
  M03_AXI_wdata(31 downto 0) <= m03_couplers_to_ps7_0_axi_periph1_WDATA(31 downto 0);
  M03_AXI_wstrb(3 downto 0) <= m03_couplers_to_ps7_0_axi_periph1_WSTRB(3 downto 0);
  M03_AXI_wvalid <= m03_couplers_to_ps7_0_axi_periph1_WVALID;
  S00_ACLK_1 <= S00_ACLK;
  S00_ARESETN_1 <= S00_ARESETN;
  S00_AXI_arready <= ps7_0_axi_periph1_to_s00_couplers_ARREADY;
  S00_AXI_awready <= ps7_0_axi_periph1_to_s00_couplers_AWREADY;
  S00_AXI_bid(11 downto 0) <= ps7_0_axi_periph1_to_s00_couplers_BID(11 downto 0);
  S00_AXI_bresp(1 downto 0) <= ps7_0_axi_periph1_to_s00_couplers_BRESP(1 downto 0);
  S00_AXI_bvalid <= ps7_0_axi_periph1_to_s00_couplers_BVALID;
  S00_AXI_rdata(31 downto 0) <= ps7_0_axi_periph1_to_s00_couplers_RDATA(31 downto 0);
  S00_AXI_rid(11 downto 0) <= ps7_0_axi_periph1_to_s00_couplers_RID(11 downto 0);
  S00_AXI_rlast <= ps7_0_axi_periph1_to_s00_couplers_RLAST;
  S00_AXI_rresp(1 downto 0) <= ps7_0_axi_periph1_to_s00_couplers_RRESP(1 downto 0);
  S00_AXI_rvalid <= ps7_0_axi_periph1_to_s00_couplers_RVALID;
  S00_AXI_wready <= ps7_0_axi_periph1_to_s00_couplers_WREADY;
  m00_couplers_to_ps7_0_axi_periph1_ARREADY <= M00_AXI_arready;
  m00_couplers_to_ps7_0_axi_periph1_AWREADY <= M00_AXI_awready;
  m00_couplers_to_ps7_0_axi_periph1_BRESP(1 downto 0) <= M00_AXI_bresp(1 downto 0);
  m00_couplers_to_ps7_0_axi_periph1_BVALID <= M00_AXI_bvalid;
  m00_couplers_to_ps7_0_axi_periph1_RDATA(31 downto 0) <= M00_AXI_rdata(31 downto 0);
  m00_couplers_to_ps7_0_axi_periph1_RRESP(1 downto 0) <= M00_AXI_rresp(1 downto 0);
  m00_couplers_to_ps7_0_axi_periph1_RVALID <= M00_AXI_rvalid;
  m00_couplers_to_ps7_0_axi_periph1_WREADY <= M00_AXI_wready;
  m01_couplers_to_ps7_0_axi_periph1_ARREADY <= M01_AXI_arready;
  m01_couplers_to_ps7_0_axi_periph1_AWREADY <= M01_AXI_awready;
  m01_couplers_to_ps7_0_axi_periph1_BRESP(1 downto 0) <= M01_AXI_bresp(1 downto 0);
  m01_couplers_to_ps7_0_axi_periph1_BVALID <= M01_AXI_bvalid;
  m01_couplers_to_ps7_0_axi_periph1_RDATA(31 downto 0) <= M01_AXI_rdata(31 downto 0);
  m01_couplers_to_ps7_0_axi_periph1_RRESP(1 downto 0) <= M01_AXI_rresp(1 downto 0);
  m01_couplers_to_ps7_0_axi_periph1_RVALID <= M01_AXI_rvalid;
  m01_couplers_to_ps7_0_axi_periph1_WREADY <= M01_AXI_wready;
  m02_couplers_to_ps7_0_axi_periph1_ARREADY <= M02_AXI_arready;
  m02_couplers_to_ps7_0_axi_periph1_AWREADY <= M02_AXI_awready;
  m02_couplers_to_ps7_0_axi_periph1_BID(11 downto 0) <= M02_AXI_bid(11 downto 0);
  m02_couplers_to_ps7_0_axi_periph1_BRESP(1 downto 0) <= M02_AXI_bresp(1 downto 0);
  m02_couplers_to_ps7_0_axi_periph1_BVALID <= M02_AXI_bvalid;
  m02_couplers_to_ps7_0_axi_periph1_RDATA(31 downto 0) <= M02_AXI_rdata(31 downto 0);
  m02_couplers_to_ps7_0_axi_periph1_RID(11 downto 0) <= M02_AXI_rid(11 downto 0);
  m02_couplers_to_ps7_0_axi_periph1_RLAST <= M02_AXI_rlast;
  m02_couplers_to_ps7_0_axi_periph1_RRESP(1 downto 0) <= M02_AXI_rresp(1 downto 0);
  m02_couplers_to_ps7_0_axi_periph1_RVALID <= M02_AXI_rvalid;
  m02_couplers_to_ps7_0_axi_periph1_WREADY <= M02_AXI_wready;
  m03_couplers_to_ps7_0_axi_periph1_ARREADY <= M03_AXI_arready;
  m03_couplers_to_ps7_0_axi_periph1_AWREADY <= M03_AXI_awready;
  m03_couplers_to_ps7_0_axi_periph1_BRESP(1 downto 0) <= M03_AXI_bresp(1 downto 0);
  m03_couplers_to_ps7_0_axi_periph1_BVALID <= M03_AXI_bvalid;
  m03_couplers_to_ps7_0_axi_periph1_RDATA(31 downto 0) <= M03_AXI_rdata(31 downto 0);
  m03_couplers_to_ps7_0_axi_periph1_RRESP(1 downto 0) <= M03_AXI_rresp(1 downto 0);
  m03_couplers_to_ps7_0_axi_periph1_RVALID <= M03_AXI_rvalid;
  m03_couplers_to_ps7_0_axi_periph1_WREADY <= M03_AXI_wready;
  ps7_0_axi_periph1_ACLK_net <= ACLK;
  ps7_0_axi_periph1_ARESETN_net <= ARESETN;
  ps7_0_axi_periph1_to_s00_couplers_ARADDR(31 downto 0) <= S00_AXI_araddr(31 downto 0);
  ps7_0_axi_periph1_to_s00_couplers_ARBURST(1 downto 0) <= S00_AXI_arburst(1 downto 0);
  ps7_0_axi_periph1_to_s00_couplers_ARCACHE(3 downto 0) <= S00_AXI_arcache(3 downto 0);
  ps7_0_axi_periph1_to_s00_couplers_ARID(11 downto 0) <= S00_AXI_arid(11 downto 0);
  ps7_0_axi_periph1_to_s00_couplers_ARLEN(3 downto 0) <= S00_AXI_arlen(3 downto 0);
  ps7_0_axi_periph1_to_s00_couplers_ARLOCK(1 downto 0) <= S00_AXI_arlock(1 downto 0);
  ps7_0_axi_periph1_to_s00_couplers_ARPROT(2 downto 0) <= S00_AXI_arprot(2 downto 0);
  ps7_0_axi_periph1_to_s00_couplers_ARQOS(3 downto 0) <= S00_AXI_arqos(3 downto 0);
  ps7_0_axi_periph1_to_s00_couplers_ARSIZE(2 downto 0) <= S00_AXI_arsize(2 downto 0);
  ps7_0_axi_periph1_to_s00_couplers_ARVALID <= S00_AXI_arvalid;
  ps7_0_axi_periph1_to_s00_couplers_AWADDR(31 downto 0) <= S00_AXI_awaddr(31 downto 0);
  ps7_0_axi_periph1_to_s00_couplers_AWBURST(1 downto 0) <= S00_AXI_awburst(1 downto 0);
  ps7_0_axi_periph1_to_s00_couplers_AWCACHE(3 downto 0) <= S00_AXI_awcache(3 downto 0);
  ps7_0_axi_periph1_to_s00_couplers_AWID(11 downto 0) <= S00_AXI_awid(11 downto 0);
  ps7_0_axi_periph1_to_s00_couplers_AWLEN(3 downto 0) <= S00_AXI_awlen(3 downto 0);
  ps7_0_axi_periph1_to_s00_couplers_AWLOCK(1 downto 0) <= S00_AXI_awlock(1 downto 0);
  ps7_0_axi_periph1_to_s00_couplers_AWPROT(2 downto 0) <= S00_AXI_awprot(2 downto 0);
  ps7_0_axi_periph1_to_s00_couplers_AWQOS(3 downto 0) <= S00_AXI_awqos(3 downto 0);
  ps7_0_axi_periph1_to_s00_couplers_AWSIZE(2 downto 0) <= S00_AXI_awsize(2 downto 0);
  ps7_0_axi_periph1_to_s00_couplers_AWVALID <= S00_AXI_awvalid;
  ps7_0_axi_periph1_to_s00_couplers_BREADY <= S00_AXI_bready;
  ps7_0_axi_periph1_to_s00_couplers_RREADY <= S00_AXI_rready;
  ps7_0_axi_periph1_to_s00_couplers_WDATA(31 downto 0) <= S00_AXI_wdata(31 downto 0);
  ps7_0_axi_periph1_to_s00_couplers_WID(11 downto 0) <= S00_AXI_wid(11 downto 0);
  ps7_0_axi_periph1_to_s00_couplers_WLAST <= S00_AXI_wlast;
  ps7_0_axi_periph1_to_s00_couplers_WSTRB(3 downto 0) <= S00_AXI_wstrb(3 downto 0);
  ps7_0_axi_periph1_to_s00_couplers_WVALID <= S00_AXI_wvalid;
m00_couplers: entity work.m00_couplers_imp_7VXYTM
     port map (
      M_ACLK => M00_ACLK_1,
      M_ARESETN => M00_ARESETN_1,
      M_AXI_araddr(9 downto 0) => m00_couplers_to_ps7_0_axi_periph1_ARADDR(9 downto 0),
      M_AXI_arready => m00_couplers_to_ps7_0_axi_periph1_ARREADY,
      M_AXI_arvalid => m00_couplers_to_ps7_0_axi_periph1_ARVALID,
      M_AXI_awaddr(9 downto 0) => m00_couplers_to_ps7_0_axi_periph1_AWADDR(9 downto 0),
      M_AXI_awready => m00_couplers_to_ps7_0_axi_periph1_AWREADY,
      M_AXI_awvalid => m00_couplers_to_ps7_0_axi_periph1_AWVALID,
      M_AXI_bready => m00_couplers_to_ps7_0_axi_periph1_BREADY,
      M_AXI_bresp(1 downto 0) => m00_couplers_to_ps7_0_axi_periph1_BRESP(1 downto 0),
      M_AXI_bvalid => m00_couplers_to_ps7_0_axi_periph1_BVALID,
      M_AXI_rdata(31 downto 0) => m00_couplers_to_ps7_0_axi_periph1_RDATA(31 downto 0),
      M_AXI_rready => m00_couplers_to_ps7_0_axi_periph1_RREADY,
      M_AXI_rresp(1 downto 0) => m00_couplers_to_ps7_0_axi_periph1_RRESP(1 downto 0),
      M_AXI_rvalid => m00_couplers_to_ps7_0_axi_periph1_RVALID,
      M_AXI_wdata(31 downto 0) => m00_couplers_to_ps7_0_axi_periph1_WDATA(31 downto 0),
      M_AXI_wready => m00_couplers_to_ps7_0_axi_periph1_WREADY,
      M_AXI_wvalid => m00_couplers_to_ps7_0_axi_periph1_WVALID,
      S_ACLK => ps7_0_axi_periph1_ACLK_net,
      S_ARESETN => ps7_0_axi_periph1_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m00_couplers_ARADDR(31 downto 0),
      S_AXI_arburst(1 downto 0) => xbar_to_m00_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => xbar_to_m00_couplers_ARCACHE(3 downto 0),
      S_AXI_arid(11 downto 0) => xbar_to_m00_couplers_ARID(11 downto 0),
      S_AXI_arlen(7 downto 0) => xbar_to_m00_couplers_ARLEN(7 downto 0),
      S_AXI_arlock(0) => xbar_to_m00_couplers_ARLOCK(0),
      S_AXI_arprot(2 downto 0) => xbar_to_m00_couplers_ARPROT(2 downto 0),
      S_AXI_arqos(3 downto 0) => xbar_to_m00_couplers_ARQOS(3 downto 0),
      S_AXI_arready => xbar_to_m00_couplers_ARREADY,
      S_AXI_arregion(3 downto 0) => xbar_to_m00_couplers_ARREGION(3 downto 0),
      S_AXI_arsize(2 downto 0) => xbar_to_m00_couplers_ARSIZE(2 downto 0),
      S_AXI_arvalid => xbar_to_m00_couplers_ARVALID(0),
      S_AXI_awaddr(31 downto 0) => xbar_to_m00_couplers_AWADDR(31 downto 0),
      S_AXI_awburst(1 downto 0) => xbar_to_m00_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => xbar_to_m00_couplers_AWCACHE(3 downto 0),
      S_AXI_awid(11 downto 0) => xbar_to_m00_couplers_AWID(11 downto 0),
      S_AXI_awlen(7 downto 0) => xbar_to_m00_couplers_AWLEN(7 downto 0),
      S_AXI_awlock(0) => xbar_to_m00_couplers_AWLOCK(0),
      S_AXI_awprot(2 downto 0) => xbar_to_m00_couplers_AWPROT(2 downto 0),
      S_AXI_awqos(3 downto 0) => xbar_to_m00_couplers_AWQOS(3 downto 0),
      S_AXI_awready => xbar_to_m00_couplers_AWREADY,
      S_AXI_awregion(3 downto 0) => xbar_to_m00_couplers_AWREGION(3 downto 0),
      S_AXI_awsize(2 downto 0) => xbar_to_m00_couplers_AWSIZE(2 downto 0),
      S_AXI_awvalid => xbar_to_m00_couplers_AWVALID(0),
      S_AXI_bid(11 downto 0) => xbar_to_m00_couplers_BID(11 downto 0),
      S_AXI_bready => xbar_to_m00_couplers_BREADY(0),
      S_AXI_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m00_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m00_couplers_RDATA(31 downto 0),
      S_AXI_rid(11 downto 0) => xbar_to_m00_couplers_RID(11 downto 0),
      S_AXI_rlast => xbar_to_m00_couplers_RLAST,
      S_AXI_rready => xbar_to_m00_couplers_RREADY(0),
      S_AXI_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m00_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m00_couplers_WDATA(31 downto 0),
      S_AXI_wlast => xbar_to_m00_couplers_WLAST(0),
      S_AXI_wready => xbar_to_m00_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m00_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid => xbar_to_m00_couplers_WVALID(0)
    );
m01_couplers: entity work.m01_couplers_imp_ZWEDQ4
     port map (
      M_ACLK => M01_ACLK_1,
      M_ARESETN => M01_ARESETN_1,
      M_AXI_araddr(8 downto 0) => m01_couplers_to_ps7_0_axi_periph1_ARADDR(8 downto 0),
      M_AXI_arready => m01_couplers_to_ps7_0_axi_periph1_ARREADY,
      M_AXI_arvalid => m01_couplers_to_ps7_0_axi_periph1_ARVALID,
      M_AXI_awaddr(8 downto 0) => m01_couplers_to_ps7_0_axi_periph1_AWADDR(8 downto 0),
      M_AXI_awready => m01_couplers_to_ps7_0_axi_periph1_AWREADY,
      M_AXI_awvalid => m01_couplers_to_ps7_0_axi_periph1_AWVALID,
      M_AXI_bready => m01_couplers_to_ps7_0_axi_periph1_BREADY,
      M_AXI_bresp(1 downto 0) => m01_couplers_to_ps7_0_axi_periph1_BRESP(1 downto 0),
      M_AXI_bvalid => m01_couplers_to_ps7_0_axi_periph1_BVALID,
      M_AXI_rdata(31 downto 0) => m01_couplers_to_ps7_0_axi_periph1_RDATA(31 downto 0),
      M_AXI_rready => m01_couplers_to_ps7_0_axi_periph1_RREADY,
      M_AXI_rresp(1 downto 0) => m01_couplers_to_ps7_0_axi_periph1_RRESP(1 downto 0),
      M_AXI_rvalid => m01_couplers_to_ps7_0_axi_periph1_RVALID,
      M_AXI_wdata(31 downto 0) => m01_couplers_to_ps7_0_axi_periph1_WDATA(31 downto 0),
      M_AXI_wready => m01_couplers_to_ps7_0_axi_periph1_WREADY,
      M_AXI_wstrb(3 downto 0) => m01_couplers_to_ps7_0_axi_periph1_WSTRB(3 downto 0),
      M_AXI_wvalid => m01_couplers_to_ps7_0_axi_periph1_WVALID,
      S_ACLK => ps7_0_axi_periph1_ACLK_net,
      S_ARESETN => ps7_0_axi_periph1_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m01_couplers_ARADDR(63 downto 32),
      S_AXI_arburst(1 downto 0) => xbar_to_m01_couplers_ARBURST(3 downto 2),
      S_AXI_arcache(3 downto 0) => xbar_to_m01_couplers_ARCACHE(7 downto 4),
      S_AXI_arid(11 downto 0) => xbar_to_m01_couplers_ARID(23 downto 12),
      S_AXI_arlen(7 downto 0) => xbar_to_m01_couplers_ARLEN(15 downto 8),
      S_AXI_arlock(0) => xbar_to_m01_couplers_ARLOCK(1),
      S_AXI_arprot(2 downto 0) => xbar_to_m01_couplers_ARPROT(5 downto 3),
      S_AXI_arqos(3 downto 0) => xbar_to_m01_couplers_ARQOS(7 downto 4),
      S_AXI_arready => xbar_to_m01_couplers_ARREADY,
      S_AXI_arregion(3 downto 0) => xbar_to_m01_couplers_ARREGION(7 downto 4),
      S_AXI_arsize(2 downto 0) => xbar_to_m01_couplers_ARSIZE(5 downto 3),
      S_AXI_arvalid => xbar_to_m01_couplers_ARVALID(1),
      S_AXI_awaddr(31 downto 0) => xbar_to_m01_couplers_AWADDR(63 downto 32),
      S_AXI_awburst(1 downto 0) => xbar_to_m01_couplers_AWBURST(3 downto 2),
      S_AXI_awcache(3 downto 0) => xbar_to_m01_couplers_AWCACHE(7 downto 4),
      S_AXI_awid(11 downto 0) => xbar_to_m01_couplers_AWID(23 downto 12),
      S_AXI_awlen(7 downto 0) => xbar_to_m01_couplers_AWLEN(15 downto 8),
      S_AXI_awlock(0) => xbar_to_m01_couplers_AWLOCK(1),
      S_AXI_awprot(2 downto 0) => xbar_to_m01_couplers_AWPROT(5 downto 3),
      S_AXI_awqos(3 downto 0) => xbar_to_m01_couplers_AWQOS(7 downto 4),
      S_AXI_awready => xbar_to_m01_couplers_AWREADY,
      S_AXI_awregion(3 downto 0) => xbar_to_m01_couplers_AWREGION(7 downto 4),
      S_AXI_awsize(2 downto 0) => xbar_to_m01_couplers_AWSIZE(5 downto 3),
      S_AXI_awvalid => xbar_to_m01_couplers_AWVALID(1),
      S_AXI_bid(11 downto 0) => xbar_to_m01_couplers_BID(11 downto 0),
      S_AXI_bready => xbar_to_m01_couplers_BREADY(1),
      S_AXI_bresp(1 downto 0) => xbar_to_m01_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m01_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m01_couplers_RDATA(31 downto 0),
      S_AXI_rid(11 downto 0) => xbar_to_m01_couplers_RID(11 downto 0),
      S_AXI_rlast => xbar_to_m01_couplers_RLAST,
      S_AXI_rready => xbar_to_m01_couplers_RREADY(1),
      S_AXI_rresp(1 downto 0) => xbar_to_m01_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m01_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m01_couplers_WDATA(63 downto 32),
      S_AXI_wlast => xbar_to_m01_couplers_WLAST(1),
      S_AXI_wready => xbar_to_m01_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m01_couplers_WSTRB(7 downto 4),
      S_AXI_wvalid => xbar_to_m01_couplers_WVALID(1)
    );
m02_couplers: entity work.m02_couplers_imp_1Y7ASDJ
     port map (
      M_ACLK => M02_ACLK_1,
      M_ARESETN => M02_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m02_couplers_to_ps7_0_axi_periph1_ARADDR(31 downto 0),
      M_AXI_arburst(1 downto 0) => m02_couplers_to_ps7_0_axi_periph1_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => m02_couplers_to_ps7_0_axi_periph1_ARCACHE(3 downto 0),
      M_AXI_arid(11 downto 0) => m02_couplers_to_ps7_0_axi_periph1_ARID(11 downto 0),
      M_AXI_arlen(7 downto 0) => m02_couplers_to_ps7_0_axi_periph1_ARLEN(7 downto 0),
      M_AXI_arlock(0) => m02_couplers_to_ps7_0_axi_periph1_ARLOCK(0),
      M_AXI_arprot(2 downto 0) => m02_couplers_to_ps7_0_axi_periph1_ARPROT(2 downto 0),
      M_AXI_arqos(3 downto 0) => m02_couplers_to_ps7_0_axi_periph1_ARQOS(3 downto 0),
      M_AXI_arready => m02_couplers_to_ps7_0_axi_periph1_ARREADY,
      M_AXI_arregion(3 downto 0) => m02_couplers_to_ps7_0_axi_periph1_ARREGION(3 downto 0),
      M_AXI_arsize(2 downto 0) => m02_couplers_to_ps7_0_axi_periph1_ARSIZE(2 downto 0),
      M_AXI_arvalid => m02_couplers_to_ps7_0_axi_periph1_ARVALID,
      M_AXI_awaddr(31 downto 0) => m02_couplers_to_ps7_0_axi_periph1_AWADDR(31 downto 0),
      M_AXI_awburst(1 downto 0) => m02_couplers_to_ps7_0_axi_periph1_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => m02_couplers_to_ps7_0_axi_periph1_AWCACHE(3 downto 0),
      M_AXI_awid(11 downto 0) => m02_couplers_to_ps7_0_axi_periph1_AWID(11 downto 0),
      M_AXI_awlen(7 downto 0) => m02_couplers_to_ps7_0_axi_periph1_AWLEN(7 downto 0),
      M_AXI_awlock(0) => m02_couplers_to_ps7_0_axi_periph1_AWLOCK(0),
      M_AXI_awprot(2 downto 0) => m02_couplers_to_ps7_0_axi_periph1_AWPROT(2 downto 0),
      M_AXI_awqos(3 downto 0) => m02_couplers_to_ps7_0_axi_periph1_AWQOS(3 downto 0),
      M_AXI_awready => m02_couplers_to_ps7_0_axi_periph1_AWREADY,
      M_AXI_awregion(3 downto 0) => m02_couplers_to_ps7_0_axi_periph1_AWREGION(3 downto 0),
      M_AXI_awsize(2 downto 0) => m02_couplers_to_ps7_0_axi_periph1_AWSIZE(2 downto 0),
      M_AXI_awvalid => m02_couplers_to_ps7_0_axi_periph1_AWVALID,
      M_AXI_bid(11 downto 0) => m02_couplers_to_ps7_0_axi_periph1_BID(11 downto 0),
      M_AXI_bready => m02_couplers_to_ps7_0_axi_periph1_BREADY,
      M_AXI_bresp(1 downto 0) => m02_couplers_to_ps7_0_axi_periph1_BRESP(1 downto 0),
      M_AXI_bvalid => m02_couplers_to_ps7_0_axi_periph1_BVALID,
      M_AXI_rdata(31 downto 0) => m02_couplers_to_ps7_0_axi_periph1_RDATA(31 downto 0),
      M_AXI_rid(11 downto 0) => m02_couplers_to_ps7_0_axi_periph1_RID(11 downto 0),
      M_AXI_rlast => m02_couplers_to_ps7_0_axi_periph1_RLAST,
      M_AXI_rready => m02_couplers_to_ps7_0_axi_periph1_RREADY,
      M_AXI_rresp(1 downto 0) => m02_couplers_to_ps7_0_axi_periph1_RRESP(1 downto 0),
      M_AXI_rvalid => m02_couplers_to_ps7_0_axi_periph1_RVALID,
      M_AXI_wdata(31 downto 0) => m02_couplers_to_ps7_0_axi_periph1_WDATA(31 downto 0),
      M_AXI_wlast => m02_couplers_to_ps7_0_axi_periph1_WLAST,
      M_AXI_wready => m02_couplers_to_ps7_0_axi_periph1_WREADY,
      M_AXI_wstrb(3 downto 0) => m02_couplers_to_ps7_0_axi_periph1_WSTRB(3 downto 0),
      M_AXI_wvalid => m02_couplers_to_ps7_0_axi_periph1_WVALID,
      S_ACLK => ps7_0_axi_periph1_ACLK_net,
      S_ARESETN => ps7_0_axi_periph1_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m02_couplers_ARADDR(95 downto 64),
      S_AXI_arburst(1 downto 0) => xbar_to_m02_couplers_ARBURST(5 downto 4),
      S_AXI_arcache(3 downto 0) => xbar_to_m02_couplers_ARCACHE(11 downto 8),
      S_AXI_arid(11 downto 0) => xbar_to_m02_couplers_ARID(35 downto 24),
      S_AXI_arlen(7 downto 0) => xbar_to_m02_couplers_ARLEN(23 downto 16),
      S_AXI_arlock(0) => xbar_to_m02_couplers_ARLOCK(2),
      S_AXI_arprot(2 downto 0) => xbar_to_m02_couplers_ARPROT(8 downto 6),
      S_AXI_arqos(3 downto 0) => xbar_to_m02_couplers_ARQOS(11 downto 8),
      S_AXI_arready => xbar_to_m02_couplers_ARREADY,
      S_AXI_arregion(3 downto 0) => xbar_to_m02_couplers_ARREGION(11 downto 8),
      S_AXI_arsize(2 downto 0) => xbar_to_m02_couplers_ARSIZE(8 downto 6),
      S_AXI_arvalid => xbar_to_m02_couplers_ARVALID(2),
      S_AXI_awaddr(31 downto 0) => xbar_to_m02_couplers_AWADDR(95 downto 64),
      S_AXI_awburst(1 downto 0) => xbar_to_m02_couplers_AWBURST(5 downto 4),
      S_AXI_awcache(3 downto 0) => xbar_to_m02_couplers_AWCACHE(11 downto 8),
      S_AXI_awid(11 downto 0) => xbar_to_m02_couplers_AWID(35 downto 24),
      S_AXI_awlen(7 downto 0) => xbar_to_m02_couplers_AWLEN(23 downto 16),
      S_AXI_awlock(0) => xbar_to_m02_couplers_AWLOCK(2),
      S_AXI_awprot(2 downto 0) => xbar_to_m02_couplers_AWPROT(8 downto 6),
      S_AXI_awqos(3 downto 0) => xbar_to_m02_couplers_AWQOS(11 downto 8),
      S_AXI_awready => xbar_to_m02_couplers_AWREADY,
      S_AXI_awregion(3 downto 0) => xbar_to_m02_couplers_AWREGION(11 downto 8),
      S_AXI_awsize(2 downto 0) => xbar_to_m02_couplers_AWSIZE(8 downto 6),
      S_AXI_awvalid => xbar_to_m02_couplers_AWVALID(2),
      S_AXI_bid(11 downto 0) => xbar_to_m02_couplers_BID(11 downto 0),
      S_AXI_bready => xbar_to_m02_couplers_BREADY(2),
      S_AXI_bresp(1 downto 0) => xbar_to_m02_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m02_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m02_couplers_RDATA(31 downto 0),
      S_AXI_rid(11 downto 0) => xbar_to_m02_couplers_RID(11 downto 0),
      S_AXI_rlast => xbar_to_m02_couplers_RLAST,
      S_AXI_rready => xbar_to_m02_couplers_RREADY(2),
      S_AXI_rresp(1 downto 0) => xbar_to_m02_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m02_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m02_couplers_WDATA(95 downto 64),
      S_AXI_wlast => xbar_to_m02_couplers_WLAST(2),
      S_AXI_wready => xbar_to_m02_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m02_couplers_WSTRB(11 downto 8),
      S_AXI_wvalid => xbar_to_m02_couplers_WVALID(2)
    );
m03_couplers: entity work.m03_couplers_imp_QNDXZL
     port map (
      M_ACLK => M03_ACLK_1,
      M_ARESETN => M03_ARESETN_1,
      M_AXI_araddr(8 downto 0) => m03_couplers_to_ps7_0_axi_periph1_ARADDR(8 downto 0),
      M_AXI_arready => m03_couplers_to_ps7_0_axi_periph1_ARREADY,
      M_AXI_arvalid => m03_couplers_to_ps7_0_axi_periph1_ARVALID,
      M_AXI_awaddr(8 downto 0) => m03_couplers_to_ps7_0_axi_periph1_AWADDR(8 downto 0),
      M_AXI_awready => m03_couplers_to_ps7_0_axi_periph1_AWREADY,
      M_AXI_awvalid => m03_couplers_to_ps7_0_axi_periph1_AWVALID,
      M_AXI_bready => m03_couplers_to_ps7_0_axi_periph1_BREADY,
      M_AXI_bresp(1 downto 0) => m03_couplers_to_ps7_0_axi_periph1_BRESP(1 downto 0),
      M_AXI_bvalid => m03_couplers_to_ps7_0_axi_periph1_BVALID,
      M_AXI_rdata(31 downto 0) => m03_couplers_to_ps7_0_axi_periph1_RDATA(31 downto 0),
      M_AXI_rready => m03_couplers_to_ps7_0_axi_periph1_RREADY,
      M_AXI_rresp(1 downto 0) => m03_couplers_to_ps7_0_axi_periph1_RRESP(1 downto 0),
      M_AXI_rvalid => m03_couplers_to_ps7_0_axi_periph1_RVALID,
      M_AXI_wdata(31 downto 0) => m03_couplers_to_ps7_0_axi_periph1_WDATA(31 downto 0),
      M_AXI_wready => m03_couplers_to_ps7_0_axi_periph1_WREADY,
      M_AXI_wstrb(3 downto 0) => m03_couplers_to_ps7_0_axi_periph1_WSTRB(3 downto 0),
      M_AXI_wvalid => m03_couplers_to_ps7_0_axi_periph1_WVALID,
      S_ACLK => ps7_0_axi_periph1_ACLK_net,
      S_ARESETN => ps7_0_axi_periph1_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m03_couplers_ARADDR(127 downto 96),
      S_AXI_arburst(1 downto 0) => xbar_to_m03_couplers_ARBURST(7 downto 6),
      S_AXI_arcache(3 downto 0) => xbar_to_m03_couplers_ARCACHE(15 downto 12),
      S_AXI_arid(11 downto 0) => xbar_to_m03_couplers_ARID(47 downto 36),
      S_AXI_arlen(7 downto 0) => xbar_to_m03_couplers_ARLEN(31 downto 24),
      S_AXI_arlock(0) => xbar_to_m03_couplers_ARLOCK(3),
      S_AXI_arprot(2 downto 0) => xbar_to_m03_couplers_ARPROT(11 downto 9),
      S_AXI_arqos(3 downto 0) => xbar_to_m03_couplers_ARQOS(15 downto 12),
      S_AXI_arready => xbar_to_m03_couplers_ARREADY,
      S_AXI_arregion(3 downto 0) => xbar_to_m03_couplers_ARREGION(15 downto 12),
      S_AXI_arsize(2 downto 0) => xbar_to_m03_couplers_ARSIZE(11 downto 9),
      S_AXI_arvalid => xbar_to_m03_couplers_ARVALID(3),
      S_AXI_awaddr(31 downto 0) => xbar_to_m03_couplers_AWADDR(127 downto 96),
      S_AXI_awburst(1 downto 0) => xbar_to_m03_couplers_AWBURST(7 downto 6),
      S_AXI_awcache(3 downto 0) => xbar_to_m03_couplers_AWCACHE(15 downto 12),
      S_AXI_awid(11 downto 0) => xbar_to_m03_couplers_AWID(47 downto 36),
      S_AXI_awlen(7 downto 0) => xbar_to_m03_couplers_AWLEN(31 downto 24),
      S_AXI_awlock(0) => xbar_to_m03_couplers_AWLOCK(3),
      S_AXI_awprot(2 downto 0) => xbar_to_m03_couplers_AWPROT(11 downto 9),
      S_AXI_awqos(3 downto 0) => xbar_to_m03_couplers_AWQOS(15 downto 12),
      S_AXI_awready => xbar_to_m03_couplers_AWREADY,
      S_AXI_awregion(3 downto 0) => xbar_to_m03_couplers_AWREGION(15 downto 12),
      S_AXI_awsize(2 downto 0) => xbar_to_m03_couplers_AWSIZE(11 downto 9),
      S_AXI_awvalid => xbar_to_m03_couplers_AWVALID(3),
      S_AXI_bid(11 downto 0) => xbar_to_m03_couplers_BID(11 downto 0),
      S_AXI_bready => xbar_to_m03_couplers_BREADY(3),
      S_AXI_bresp(1 downto 0) => xbar_to_m03_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m03_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m03_couplers_RDATA(31 downto 0),
      S_AXI_rid(11 downto 0) => xbar_to_m03_couplers_RID(11 downto 0),
      S_AXI_rlast => xbar_to_m03_couplers_RLAST,
      S_AXI_rready => xbar_to_m03_couplers_RREADY(3),
      S_AXI_rresp(1 downto 0) => xbar_to_m03_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m03_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m03_couplers_WDATA(127 downto 96),
      S_AXI_wlast => xbar_to_m03_couplers_WLAST(3),
      S_AXI_wready => xbar_to_m03_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m03_couplers_WSTRB(15 downto 12),
      S_AXI_wvalid => xbar_to_m03_couplers_WVALID(3)
    );
s00_couplers: entity work.s00_couplers_imp_1OPDNLR
     port map (
      M_ACLK => ps7_0_axi_periph1_ACLK_net,
      M_ARESETN => ps7_0_axi_periph1_ARESETN_net,
      M_AXI_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      M_AXI_arburst(1 downto 0) => s00_couplers_to_xbar_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => s00_couplers_to_xbar_ARCACHE(3 downto 0),
      M_AXI_arid(11 downto 0) => s00_couplers_to_xbar_ARID(11 downto 0),
      M_AXI_arlen(7 downto 0) => s00_couplers_to_xbar_ARLEN(7 downto 0),
      M_AXI_arlock(0) => s00_couplers_to_xbar_ARLOCK(0),
      M_AXI_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      M_AXI_arqos(3 downto 0) => s00_couplers_to_xbar_ARQOS(3 downto 0),
      M_AXI_arready => s00_couplers_to_xbar_ARREADY(0),
      M_AXI_arsize(2 downto 0) => s00_couplers_to_xbar_ARSIZE(2 downto 0),
      M_AXI_arvalid => s00_couplers_to_xbar_ARVALID,
      M_AXI_awaddr(31 downto 0) => s00_couplers_to_xbar_AWADDR(31 downto 0),
      M_AXI_awburst(1 downto 0) => s00_couplers_to_xbar_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => s00_couplers_to_xbar_AWCACHE(3 downto 0),
      M_AXI_awid(11 downto 0) => s00_couplers_to_xbar_AWID(11 downto 0),
      M_AXI_awlen(7 downto 0) => s00_couplers_to_xbar_AWLEN(7 downto 0),
      M_AXI_awlock(0) => s00_couplers_to_xbar_AWLOCK(0),
      M_AXI_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      M_AXI_awqos(3 downto 0) => s00_couplers_to_xbar_AWQOS(3 downto 0),
      M_AXI_awready => s00_couplers_to_xbar_AWREADY(0),
      M_AXI_awsize(2 downto 0) => s00_couplers_to_xbar_AWSIZE(2 downto 0),
      M_AXI_awvalid => s00_couplers_to_xbar_AWVALID,
      M_AXI_bid(11 downto 0) => s00_couplers_to_xbar_BID(11 downto 0),
      M_AXI_bready => s00_couplers_to_xbar_BREADY,
      M_AXI_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      M_AXI_bvalid => s00_couplers_to_xbar_BVALID(0),
      M_AXI_rdata(31 downto 0) => s00_couplers_to_xbar_RDATA(31 downto 0),
      M_AXI_rid(11 downto 0) => s00_couplers_to_xbar_RID(11 downto 0),
      M_AXI_rlast => s00_couplers_to_xbar_RLAST(0),
      M_AXI_rready => s00_couplers_to_xbar_RREADY,
      M_AXI_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      M_AXI_rvalid => s00_couplers_to_xbar_RVALID(0),
      M_AXI_wdata(31 downto 0) => s00_couplers_to_xbar_WDATA(31 downto 0),
      M_AXI_wlast => s00_couplers_to_xbar_WLAST,
      M_AXI_wready => s00_couplers_to_xbar_WREADY(0),
      M_AXI_wstrb(3 downto 0) => s00_couplers_to_xbar_WSTRB(3 downto 0),
      M_AXI_wvalid => s00_couplers_to_xbar_WVALID,
      S_ACLK => S00_ACLK_1,
      S_ARESETN => S00_ARESETN_1,
      S_AXI_araddr(31 downto 0) => ps7_0_axi_periph1_to_s00_couplers_ARADDR(31 downto 0),
      S_AXI_arburst(1 downto 0) => ps7_0_axi_periph1_to_s00_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => ps7_0_axi_periph1_to_s00_couplers_ARCACHE(3 downto 0),
      S_AXI_arid(11 downto 0) => ps7_0_axi_periph1_to_s00_couplers_ARID(11 downto 0),
      S_AXI_arlen(3 downto 0) => ps7_0_axi_periph1_to_s00_couplers_ARLEN(3 downto 0),
      S_AXI_arlock(1 downto 0) => ps7_0_axi_periph1_to_s00_couplers_ARLOCK(1 downto 0),
      S_AXI_arprot(2 downto 0) => ps7_0_axi_periph1_to_s00_couplers_ARPROT(2 downto 0),
      S_AXI_arqos(3 downto 0) => ps7_0_axi_periph1_to_s00_couplers_ARQOS(3 downto 0),
      S_AXI_arready => ps7_0_axi_periph1_to_s00_couplers_ARREADY,
      S_AXI_arsize(2 downto 0) => ps7_0_axi_periph1_to_s00_couplers_ARSIZE(2 downto 0),
      S_AXI_arvalid => ps7_0_axi_periph1_to_s00_couplers_ARVALID,
      S_AXI_awaddr(31 downto 0) => ps7_0_axi_periph1_to_s00_couplers_AWADDR(31 downto 0),
      S_AXI_awburst(1 downto 0) => ps7_0_axi_periph1_to_s00_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => ps7_0_axi_periph1_to_s00_couplers_AWCACHE(3 downto 0),
      S_AXI_awid(11 downto 0) => ps7_0_axi_periph1_to_s00_couplers_AWID(11 downto 0),
      S_AXI_awlen(3 downto 0) => ps7_0_axi_periph1_to_s00_couplers_AWLEN(3 downto 0),
      S_AXI_awlock(1 downto 0) => ps7_0_axi_periph1_to_s00_couplers_AWLOCK(1 downto 0),
      S_AXI_awprot(2 downto 0) => ps7_0_axi_periph1_to_s00_couplers_AWPROT(2 downto 0),
      S_AXI_awqos(3 downto 0) => ps7_0_axi_periph1_to_s00_couplers_AWQOS(3 downto 0),
      S_AXI_awready => ps7_0_axi_periph1_to_s00_couplers_AWREADY,
      S_AXI_awsize(2 downto 0) => ps7_0_axi_periph1_to_s00_couplers_AWSIZE(2 downto 0),
      S_AXI_awvalid => ps7_0_axi_periph1_to_s00_couplers_AWVALID,
      S_AXI_bid(11 downto 0) => ps7_0_axi_periph1_to_s00_couplers_BID(11 downto 0),
      S_AXI_bready => ps7_0_axi_periph1_to_s00_couplers_BREADY,
      S_AXI_bresp(1 downto 0) => ps7_0_axi_periph1_to_s00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => ps7_0_axi_periph1_to_s00_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => ps7_0_axi_periph1_to_s00_couplers_RDATA(31 downto 0),
      S_AXI_rid(11 downto 0) => ps7_0_axi_periph1_to_s00_couplers_RID(11 downto 0),
      S_AXI_rlast => ps7_0_axi_periph1_to_s00_couplers_RLAST,
      S_AXI_rready => ps7_0_axi_periph1_to_s00_couplers_RREADY,
      S_AXI_rresp(1 downto 0) => ps7_0_axi_periph1_to_s00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => ps7_0_axi_periph1_to_s00_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => ps7_0_axi_periph1_to_s00_couplers_WDATA(31 downto 0),
      S_AXI_wid(11 downto 0) => ps7_0_axi_periph1_to_s00_couplers_WID(11 downto 0),
      S_AXI_wlast => ps7_0_axi_periph1_to_s00_couplers_WLAST,
      S_AXI_wready => ps7_0_axi_periph1_to_s00_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => ps7_0_axi_periph1_to_s00_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid => ps7_0_axi_periph1_to_s00_couplers_WVALID
    );
xbar: component base_xbar_7
     port map (
      aclk => ps7_0_axi_periph1_ACLK_net,
      aresetn => ps7_0_axi_periph1_ARESETN_net,
      m_axi_araddr(127 downto 96) => xbar_to_m03_couplers_ARADDR(127 downto 96),
      m_axi_araddr(95 downto 64) => xbar_to_m02_couplers_ARADDR(95 downto 64),
      m_axi_araddr(63 downto 32) => xbar_to_m01_couplers_ARADDR(63 downto 32),
      m_axi_araddr(31 downto 0) => xbar_to_m00_couplers_ARADDR(31 downto 0),
      m_axi_arburst(7 downto 6) => xbar_to_m03_couplers_ARBURST(7 downto 6),
      m_axi_arburst(5 downto 4) => xbar_to_m02_couplers_ARBURST(5 downto 4),
      m_axi_arburst(3 downto 2) => xbar_to_m01_couplers_ARBURST(3 downto 2),
      m_axi_arburst(1 downto 0) => xbar_to_m00_couplers_ARBURST(1 downto 0),
      m_axi_arcache(15 downto 12) => xbar_to_m03_couplers_ARCACHE(15 downto 12),
      m_axi_arcache(11 downto 8) => xbar_to_m02_couplers_ARCACHE(11 downto 8),
      m_axi_arcache(7 downto 4) => xbar_to_m01_couplers_ARCACHE(7 downto 4),
      m_axi_arcache(3 downto 0) => xbar_to_m00_couplers_ARCACHE(3 downto 0),
      m_axi_arid(47 downto 36) => xbar_to_m03_couplers_ARID(47 downto 36),
      m_axi_arid(35 downto 24) => xbar_to_m02_couplers_ARID(35 downto 24),
      m_axi_arid(23 downto 12) => xbar_to_m01_couplers_ARID(23 downto 12),
      m_axi_arid(11 downto 0) => xbar_to_m00_couplers_ARID(11 downto 0),
      m_axi_arlen(31 downto 24) => xbar_to_m03_couplers_ARLEN(31 downto 24),
      m_axi_arlen(23 downto 16) => xbar_to_m02_couplers_ARLEN(23 downto 16),
      m_axi_arlen(15 downto 8) => xbar_to_m01_couplers_ARLEN(15 downto 8),
      m_axi_arlen(7 downto 0) => xbar_to_m00_couplers_ARLEN(7 downto 0),
      m_axi_arlock(3) => xbar_to_m03_couplers_ARLOCK(3),
      m_axi_arlock(2) => xbar_to_m02_couplers_ARLOCK(2),
      m_axi_arlock(1) => xbar_to_m01_couplers_ARLOCK(1),
      m_axi_arlock(0) => xbar_to_m00_couplers_ARLOCK(0),
      m_axi_arprot(11 downto 9) => xbar_to_m03_couplers_ARPROT(11 downto 9),
      m_axi_arprot(8 downto 6) => xbar_to_m02_couplers_ARPROT(8 downto 6),
      m_axi_arprot(5 downto 3) => xbar_to_m01_couplers_ARPROT(5 downto 3),
      m_axi_arprot(2 downto 0) => xbar_to_m00_couplers_ARPROT(2 downto 0),
      m_axi_arqos(15 downto 12) => xbar_to_m03_couplers_ARQOS(15 downto 12),
      m_axi_arqos(11 downto 8) => xbar_to_m02_couplers_ARQOS(11 downto 8),
      m_axi_arqos(7 downto 4) => xbar_to_m01_couplers_ARQOS(7 downto 4),
      m_axi_arqos(3 downto 0) => xbar_to_m00_couplers_ARQOS(3 downto 0),
      m_axi_arready(3) => xbar_to_m03_couplers_ARREADY,
      m_axi_arready(2) => xbar_to_m02_couplers_ARREADY,
      m_axi_arready(1) => xbar_to_m01_couplers_ARREADY,
      m_axi_arready(0) => xbar_to_m00_couplers_ARREADY,
      m_axi_arregion(15 downto 12) => xbar_to_m03_couplers_ARREGION(15 downto 12),
      m_axi_arregion(11 downto 8) => xbar_to_m02_couplers_ARREGION(11 downto 8),
      m_axi_arregion(7 downto 4) => xbar_to_m01_couplers_ARREGION(7 downto 4),
      m_axi_arregion(3 downto 0) => xbar_to_m00_couplers_ARREGION(3 downto 0),
      m_axi_arsize(11 downto 9) => xbar_to_m03_couplers_ARSIZE(11 downto 9),
      m_axi_arsize(8 downto 6) => xbar_to_m02_couplers_ARSIZE(8 downto 6),
      m_axi_arsize(5 downto 3) => xbar_to_m01_couplers_ARSIZE(5 downto 3),
      m_axi_arsize(2 downto 0) => xbar_to_m00_couplers_ARSIZE(2 downto 0),
      m_axi_arvalid(3) => xbar_to_m03_couplers_ARVALID(3),
      m_axi_arvalid(2) => xbar_to_m02_couplers_ARVALID(2),
      m_axi_arvalid(1) => xbar_to_m01_couplers_ARVALID(1),
      m_axi_arvalid(0) => xbar_to_m00_couplers_ARVALID(0),
      m_axi_awaddr(127 downto 96) => xbar_to_m03_couplers_AWADDR(127 downto 96),
      m_axi_awaddr(95 downto 64) => xbar_to_m02_couplers_AWADDR(95 downto 64),
      m_axi_awaddr(63 downto 32) => xbar_to_m01_couplers_AWADDR(63 downto 32),
      m_axi_awaddr(31 downto 0) => xbar_to_m00_couplers_AWADDR(31 downto 0),
      m_axi_awburst(7 downto 6) => xbar_to_m03_couplers_AWBURST(7 downto 6),
      m_axi_awburst(5 downto 4) => xbar_to_m02_couplers_AWBURST(5 downto 4),
      m_axi_awburst(3 downto 2) => xbar_to_m01_couplers_AWBURST(3 downto 2),
      m_axi_awburst(1 downto 0) => xbar_to_m00_couplers_AWBURST(1 downto 0),
      m_axi_awcache(15 downto 12) => xbar_to_m03_couplers_AWCACHE(15 downto 12),
      m_axi_awcache(11 downto 8) => xbar_to_m02_couplers_AWCACHE(11 downto 8),
      m_axi_awcache(7 downto 4) => xbar_to_m01_couplers_AWCACHE(7 downto 4),
      m_axi_awcache(3 downto 0) => xbar_to_m00_couplers_AWCACHE(3 downto 0),
      m_axi_awid(47 downto 36) => xbar_to_m03_couplers_AWID(47 downto 36),
      m_axi_awid(35 downto 24) => xbar_to_m02_couplers_AWID(35 downto 24),
      m_axi_awid(23 downto 12) => xbar_to_m01_couplers_AWID(23 downto 12),
      m_axi_awid(11 downto 0) => xbar_to_m00_couplers_AWID(11 downto 0),
      m_axi_awlen(31 downto 24) => xbar_to_m03_couplers_AWLEN(31 downto 24),
      m_axi_awlen(23 downto 16) => xbar_to_m02_couplers_AWLEN(23 downto 16),
      m_axi_awlen(15 downto 8) => xbar_to_m01_couplers_AWLEN(15 downto 8),
      m_axi_awlen(7 downto 0) => xbar_to_m00_couplers_AWLEN(7 downto 0),
      m_axi_awlock(3) => xbar_to_m03_couplers_AWLOCK(3),
      m_axi_awlock(2) => xbar_to_m02_couplers_AWLOCK(2),
      m_axi_awlock(1) => xbar_to_m01_couplers_AWLOCK(1),
      m_axi_awlock(0) => xbar_to_m00_couplers_AWLOCK(0),
      m_axi_awprot(11 downto 9) => xbar_to_m03_couplers_AWPROT(11 downto 9),
      m_axi_awprot(8 downto 6) => xbar_to_m02_couplers_AWPROT(8 downto 6),
      m_axi_awprot(5 downto 3) => xbar_to_m01_couplers_AWPROT(5 downto 3),
      m_axi_awprot(2 downto 0) => xbar_to_m00_couplers_AWPROT(2 downto 0),
      m_axi_awqos(15 downto 12) => xbar_to_m03_couplers_AWQOS(15 downto 12),
      m_axi_awqos(11 downto 8) => xbar_to_m02_couplers_AWQOS(11 downto 8),
      m_axi_awqos(7 downto 4) => xbar_to_m01_couplers_AWQOS(7 downto 4),
      m_axi_awqos(3 downto 0) => xbar_to_m00_couplers_AWQOS(3 downto 0),
      m_axi_awready(3) => xbar_to_m03_couplers_AWREADY,
      m_axi_awready(2) => xbar_to_m02_couplers_AWREADY,
      m_axi_awready(1) => xbar_to_m01_couplers_AWREADY,
      m_axi_awready(0) => xbar_to_m00_couplers_AWREADY,
      m_axi_awregion(15 downto 12) => xbar_to_m03_couplers_AWREGION(15 downto 12),
      m_axi_awregion(11 downto 8) => xbar_to_m02_couplers_AWREGION(11 downto 8),
      m_axi_awregion(7 downto 4) => xbar_to_m01_couplers_AWREGION(7 downto 4),
      m_axi_awregion(3 downto 0) => xbar_to_m00_couplers_AWREGION(3 downto 0),
      m_axi_awsize(11 downto 9) => xbar_to_m03_couplers_AWSIZE(11 downto 9),
      m_axi_awsize(8 downto 6) => xbar_to_m02_couplers_AWSIZE(8 downto 6),
      m_axi_awsize(5 downto 3) => xbar_to_m01_couplers_AWSIZE(5 downto 3),
      m_axi_awsize(2 downto 0) => xbar_to_m00_couplers_AWSIZE(2 downto 0),
      m_axi_awvalid(3) => xbar_to_m03_couplers_AWVALID(3),
      m_axi_awvalid(2) => xbar_to_m02_couplers_AWVALID(2),
      m_axi_awvalid(1) => xbar_to_m01_couplers_AWVALID(1),
      m_axi_awvalid(0) => xbar_to_m00_couplers_AWVALID(0),
      m_axi_bid(47 downto 36) => xbar_to_m03_couplers_BID(11 downto 0),
      m_axi_bid(35 downto 24) => xbar_to_m02_couplers_BID(11 downto 0),
      m_axi_bid(23 downto 12) => xbar_to_m01_couplers_BID(11 downto 0),
      m_axi_bid(11 downto 0) => xbar_to_m00_couplers_BID(11 downto 0),
      m_axi_bready(3) => xbar_to_m03_couplers_BREADY(3),
      m_axi_bready(2) => xbar_to_m02_couplers_BREADY(2),
      m_axi_bready(1) => xbar_to_m01_couplers_BREADY(1),
      m_axi_bready(0) => xbar_to_m00_couplers_BREADY(0),
      m_axi_bresp(7 downto 6) => xbar_to_m03_couplers_BRESP(1 downto 0),
      m_axi_bresp(5 downto 4) => xbar_to_m02_couplers_BRESP(1 downto 0),
      m_axi_bresp(3 downto 2) => xbar_to_m01_couplers_BRESP(1 downto 0),
      m_axi_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      m_axi_bvalid(3) => xbar_to_m03_couplers_BVALID,
      m_axi_bvalid(2) => xbar_to_m02_couplers_BVALID,
      m_axi_bvalid(1) => xbar_to_m01_couplers_BVALID,
      m_axi_bvalid(0) => xbar_to_m00_couplers_BVALID,
      m_axi_rdata(127 downto 96) => xbar_to_m03_couplers_RDATA(31 downto 0),
      m_axi_rdata(95 downto 64) => xbar_to_m02_couplers_RDATA(31 downto 0),
      m_axi_rdata(63 downto 32) => xbar_to_m01_couplers_RDATA(31 downto 0),
      m_axi_rdata(31 downto 0) => xbar_to_m00_couplers_RDATA(31 downto 0),
      m_axi_rid(47 downto 36) => xbar_to_m03_couplers_RID(11 downto 0),
      m_axi_rid(35 downto 24) => xbar_to_m02_couplers_RID(11 downto 0),
      m_axi_rid(23 downto 12) => xbar_to_m01_couplers_RID(11 downto 0),
      m_axi_rid(11 downto 0) => xbar_to_m00_couplers_RID(11 downto 0),
      m_axi_rlast(3) => xbar_to_m03_couplers_RLAST,
      m_axi_rlast(2) => xbar_to_m02_couplers_RLAST,
      m_axi_rlast(1) => xbar_to_m01_couplers_RLAST,
      m_axi_rlast(0) => xbar_to_m00_couplers_RLAST,
      m_axi_rready(3) => xbar_to_m03_couplers_RREADY(3),
      m_axi_rready(2) => xbar_to_m02_couplers_RREADY(2),
      m_axi_rready(1) => xbar_to_m01_couplers_RREADY(1),
      m_axi_rready(0) => xbar_to_m00_couplers_RREADY(0),
      m_axi_rresp(7 downto 6) => xbar_to_m03_couplers_RRESP(1 downto 0),
      m_axi_rresp(5 downto 4) => xbar_to_m02_couplers_RRESP(1 downto 0),
      m_axi_rresp(3 downto 2) => xbar_to_m01_couplers_RRESP(1 downto 0),
      m_axi_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      m_axi_rvalid(3) => xbar_to_m03_couplers_RVALID,
      m_axi_rvalid(2) => xbar_to_m02_couplers_RVALID,
      m_axi_rvalid(1) => xbar_to_m01_couplers_RVALID,
      m_axi_rvalid(0) => xbar_to_m00_couplers_RVALID,
      m_axi_wdata(127 downto 96) => xbar_to_m03_couplers_WDATA(127 downto 96),
      m_axi_wdata(95 downto 64) => xbar_to_m02_couplers_WDATA(95 downto 64),
      m_axi_wdata(63 downto 32) => xbar_to_m01_couplers_WDATA(63 downto 32),
      m_axi_wdata(31 downto 0) => xbar_to_m00_couplers_WDATA(31 downto 0),
      m_axi_wlast(3) => xbar_to_m03_couplers_WLAST(3),
      m_axi_wlast(2) => xbar_to_m02_couplers_WLAST(2),
      m_axi_wlast(1) => xbar_to_m01_couplers_WLAST(1),
      m_axi_wlast(0) => xbar_to_m00_couplers_WLAST(0),
      m_axi_wready(3) => xbar_to_m03_couplers_WREADY,
      m_axi_wready(2) => xbar_to_m02_couplers_WREADY,
      m_axi_wready(1) => xbar_to_m01_couplers_WREADY,
      m_axi_wready(0) => xbar_to_m00_couplers_WREADY,
      m_axi_wstrb(15 downto 12) => xbar_to_m03_couplers_WSTRB(15 downto 12),
      m_axi_wstrb(11 downto 8) => xbar_to_m02_couplers_WSTRB(11 downto 8),
      m_axi_wstrb(7 downto 4) => xbar_to_m01_couplers_WSTRB(7 downto 4),
      m_axi_wstrb(3 downto 0) => xbar_to_m00_couplers_WSTRB(3 downto 0),
      m_axi_wvalid(3) => xbar_to_m03_couplers_WVALID(3),
      m_axi_wvalid(2) => xbar_to_m02_couplers_WVALID(2),
      m_axi_wvalid(1) => xbar_to_m01_couplers_WVALID(1),
      m_axi_wvalid(0) => xbar_to_m00_couplers_WVALID(0),
      s_axi_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => s00_couplers_to_xbar_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => s00_couplers_to_xbar_ARCACHE(3 downto 0),
      s_axi_arid(11 downto 0) => s00_couplers_to_xbar_ARID(11 downto 0),
      s_axi_arlen(7 downto 0) => s00_couplers_to_xbar_ARLEN(7 downto 0),
      s_axi_arlock(0) => s00_couplers_to_xbar_ARLOCK(0),
      s_axi_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => s00_couplers_to_xbar_ARQOS(3 downto 0),
      s_axi_arready(0) => s00_couplers_to_xbar_ARREADY(0),
      s_axi_arsize(2 downto 0) => s00_couplers_to_xbar_ARSIZE(2 downto 0),
      s_axi_arvalid(0) => s00_couplers_to_xbar_ARVALID,
      s_axi_awaddr(31 downto 0) => s00_couplers_to_xbar_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => s00_couplers_to_xbar_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => s00_couplers_to_xbar_AWCACHE(3 downto 0),
      s_axi_awid(11 downto 0) => s00_couplers_to_xbar_AWID(11 downto 0),
      s_axi_awlen(7 downto 0) => s00_couplers_to_xbar_AWLEN(7 downto 0),
      s_axi_awlock(0) => s00_couplers_to_xbar_AWLOCK(0),
      s_axi_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => s00_couplers_to_xbar_AWQOS(3 downto 0),
      s_axi_awready(0) => s00_couplers_to_xbar_AWREADY(0),
      s_axi_awsize(2 downto 0) => s00_couplers_to_xbar_AWSIZE(2 downto 0),
      s_axi_awvalid(0) => s00_couplers_to_xbar_AWVALID,
      s_axi_bid(11 downto 0) => s00_couplers_to_xbar_BID(11 downto 0),
      s_axi_bready(0) => s00_couplers_to_xbar_BREADY,
      s_axi_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      s_axi_bvalid(0) => s00_couplers_to_xbar_BVALID(0),
      s_axi_rdata(31 downto 0) => s00_couplers_to_xbar_RDATA(31 downto 0),
      s_axi_rid(11 downto 0) => s00_couplers_to_xbar_RID(11 downto 0),
      s_axi_rlast(0) => s00_couplers_to_xbar_RLAST(0),
      s_axi_rready(0) => s00_couplers_to_xbar_RREADY,
      s_axi_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      s_axi_rvalid(0) => s00_couplers_to_xbar_RVALID(0),
      s_axi_wdata(31 downto 0) => s00_couplers_to_xbar_WDATA(31 downto 0),
      s_axi_wlast(0) => s00_couplers_to_xbar_WLAST,
      s_axi_wready(0) => s00_couplers_to_xbar_WREADY(0),
      s_axi_wstrb(3 downto 0) => s00_couplers_to_xbar_WSTRB(3 downto 0),
      s_axi_wvalid(0) => s00_couplers_to_xbar_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity hdmi_in_imp_1J5I8O is
  port (
    DDC_scl_i : in STD_LOGIC;
    DDC_scl_o : out STD_LOGIC;
    DDC_scl_t : out STD_LOGIC;
    DDC_sda_i : in STD_LOGIC;
    DDC_sda_o : out STD_LOGIC;
    DDC_sda_t : out STD_LOGIC;
    PixelClk : out STD_LOGIC;
    S00_AXILite_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    S00_AXILite_arready : out STD_LOGIC;
    S00_AXILite_arvalid : in STD_LOGIC;
    S00_AXILite_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    S00_AXILite_awready : out STD_LOGIC;
    S00_AXILite_awvalid : in STD_LOGIC;
    S00_AXILite_bready : in STD_LOGIC;
    S00_AXILite_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXILite_bvalid : out STD_LOGIC;
    S00_AXILite_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXILite_rready : in STD_LOGIC;
    S00_AXILite_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXILite_rvalid : out STD_LOGIC;
    S00_AXILite_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXILite_wready : out STD_LOGIC;
    S00_AXILite_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXILite_wvalid : in STD_LOGIC;
    S01_AXILite_araddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    S01_AXILite_arready : out STD_LOGIC;
    S01_AXILite_arvalid : in STD_LOGIC;
    S01_AXILite_awaddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    S01_AXILite_awready : out STD_LOGIC;
    S01_AXILite_awvalid : in STD_LOGIC;
    S01_AXILite_bready : in STD_LOGIC;
    S01_AXILite_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXILite_bvalid : out STD_LOGIC;
    S01_AXILite_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXILite_rready : in STD_LOGIC;
    S01_AXILite_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXILite_rvalid : out STD_LOGIC;
    S01_AXILite_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXILite_wready : out STD_LOGIC;
    S01_AXILite_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXILite_wvalid : in STD_LOGIC;
    S02_AXILite_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    S02_AXILite_arready : out STD_LOGIC;
    S02_AXILite_arvalid : in STD_LOGIC;
    S02_AXILite_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    S02_AXILite_awready : out STD_LOGIC;
    S02_AXILite_awvalid : in STD_LOGIC;
    S02_AXILite_bready : in STD_LOGIC;
    S02_AXILite_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXILite_bvalid : out STD_LOGIC;
    S02_AXILite_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S02_AXILite_rready : in STD_LOGIC;
    S02_AXILite_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXILite_rvalid : out STD_LOGIC;
    S02_AXILite_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S02_AXILite_wready : out STD_LOGIC;
    S02_AXILite_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXILite_wvalid : in STD_LOGIC;
    S03_AXILite_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    S03_AXILite_arready : out STD_LOGIC;
    S03_AXILite_arvalid : in STD_LOGIC;
    S03_AXILite_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    S03_AXILite_awready : out STD_LOGIC;
    S03_AXILite_awvalid : in STD_LOGIC;
    S03_AXILite_bready : in STD_LOGIC;
    S03_AXILite_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S03_AXILite_bvalid : out STD_LOGIC;
    S03_AXILite_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S03_AXILite_rready : in STD_LOGIC;
    S03_AXILite_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S03_AXILite_rvalid : out STD_LOGIC;
    S03_AXILite_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S03_AXILite_wready : out STD_LOGIC;
    S03_AXILite_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S03_AXILite_wvalid : in STD_LOGIC;
    TMDS_in_clk_n : in STD_LOGIC;
    TMDS_in_clk_p : in STD_LOGIC;
    TMDS_in_data_n : in STD_LOGIC_VECTOR ( 2 downto 0 );
    TMDS_in_data_p : in STD_LOGIC_VECTOR ( 2 downto 0 );
    aPixelClkLckd : out STD_LOGIC;
    clk_100M : in STD_LOGIC;
    clk_142M : in STD_LOGIC;
    clk_200M : in STD_LOGIC;
    hdmi_in_hpd : out STD_LOGIC_VECTOR ( 0 to 0 );
    hdmi_in_hpd_irq : out STD_LOGIC;
    out_stream_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    out_stream_tlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    out_stream_tready : in STD_LOGIC;
    out_stream_tuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    out_stream_tvalid : out STD_LOGIC;
    periph_resetn_clk100M : in STD_LOGIC_VECTOR ( 0 to 0 );
    periph_resetn_clk142M : in STD_LOGIC_VECTOR ( 0 to 0 );
    resetn : in STD_LOGIC_VECTOR ( 0 to 0 );
    vid_io_in_reset : in STD_LOGIC_VECTOR ( 0 to 0 );
    vtc_in_irq : out STD_LOGIC
  );
end hdmi_in_imp_1J5I8O;

architecture STRUCTURE of hdmi_in_imp_1J5I8O is
  component base_axis_register_slice_0_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tuser : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component base_axis_register_slice_0_0;
  component base_color_convert_0 is
  port (
    s_axi_AXILiteS_AWADDR : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_AXILiteS_AWVALID : in STD_LOGIC;
    s_axi_AXILiteS_AWREADY : out STD_LOGIC;
    s_axi_AXILiteS_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_AXILiteS_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_AXILiteS_WVALID : in STD_LOGIC;
    s_axi_AXILiteS_WREADY : out STD_LOGIC;
    s_axi_AXILiteS_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_AXILiteS_BVALID : out STD_LOGIC;
    s_axi_AXILiteS_BREADY : in STD_LOGIC;
    s_axi_AXILiteS_ARADDR : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_AXILiteS_ARVALID : in STD_LOGIC;
    s_axi_AXILiteS_ARREADY : out STD_LOGIC;
    s_axi_AXILiteS_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_AXILiteS_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_AXILiteS_RVALID : out STD_LOGIC;
    s_axi_AXILiteS_RREADY : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    control : in STD_LOGIC;
    ap_rst_n_control : in STD_LOGIC;
    stream_in_24_TVALID : in STD_LOGIC;
    stream_in_24_TREADY : out STD_LOGIC;
    stream_in_24_TDATA : in STD_LOGIC_VECTOR ( 23 downto 0 );
    stream_in_24_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    stream_in_24_TUSER : in STD_LOGIC_VECTOR ( 0 to 0 );
    stream_out_24_TVALID : out STD_LOGIC;
    stream_out_24_TREADY : in STD_LOGIC;
    stream_out_24_TDATA : out STD_LOGIC_VECTOR ( 23 downto 0 );
    stream_out_24_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    stream_out_24_TUSER : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component base_color_convert_0;
  component base_pixel_pack_0 is
  port (
    s_axi_AXILiteS_AWADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_AXILiteS_AWVALID : in STD_LOGIC;
    s_axi_AXILiteS_AWREADY : out STD_LOGIC;
    s_axi_AXILiteS_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_AXILiteS_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_AXILiteS_WVALID : in STD_LOGIC;
    s_axi_AXILiteS_WREADY : out STD_LOGIC;
    s_axi_AXILiteS_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_AXILiteS_BVALID : out STD_LOGIC;
    s_axi_AXILiteS_BREADY : in STD_LOGIC;
    s_axi_AXILiteS_ARADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_AXILiteS_ARVALID : in STD_LOGIC;
    s_axi_AXILiteS_ARREADY : out STD_LOGIC;
    s_axi_AXILiteS_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_AXILiteS_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_AXILiteS_RVALID : out STD_LOGIC;
    s_axi_AXILiteS_RREADY : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    control : in STD_LOGIC;
    ap_rst_n_control : in STD_LOGIC;
    stream_in_24_TVALID : in STD_LOGIC;
    stream_in_24_TREADY : out STD_LOGIC;
    stream_in_24_TDATA : in STD_LOGIC_VECTOR ( 23 downto 0 );
    stream_in_24_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    stream_in_24_TUSER : in STD_LOGIC_VECTOR ( 0 to 0 );
    stream_out_32_TVALID : out STD_LOGIC;
    stream_out_32_TREADY : in STD_LOGIC;
    stream_out_32_TDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    stream_out_32_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    stream_out_32_TUSER : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component base_pixel_pack_0;
  signal Conn3_ARADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal Conn3_ARREADY : STD_LOGIC;
  signal Conn3_ARVALID : STD_LOGIC;
  signal Conn3_AWADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal Conn3_AWREADY : STD_LOGIC;
  signal Conn3_AWVALID : STD_LOGIC;
  signal Conn3_BREADY : STD_LOGIC;
  signal Conn3_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn3_BVALID : STD_LOGIC;
  signal Conn3_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn3_RREADY : STD_LOGIC;
  signal Conn3_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn3_RVALID : STD_LOGIC;
  signal Conn3_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn3_WREADY : STD_LOGIC;
  signal Conn3_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn3_WVALID : STD_LOGIC;
  signal Conn5_ARADDR : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal Conn5_ARREADY : STD_LOGIC;
  signal Conn5_ARVALID : STD_LOGIC;
  signal Conn5_AWADDR : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal Conn5_AWREADY : STD_LOGIC;
  signal Conn5_AWVALID : STD_LOGIC;
  signal Conn5_BREADY : STD_LOGIC;
  signal Conn5_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn5_BVALID : STD_LOGIC;
  signal Conn5_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn5_RREADY : STD_LOGIC;
  signal Conn5_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn5_RVALID : STD_LOGIC;
  signal Conn5_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn5_WREADY : STD_LOGIC;
  signal Conn5_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn5_WVALID : STD_LOGIC;
  signal Conn6_ARADDR : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal Conn6_ARREADY : STD_LOGIC;
  signal Conn6_ARVALID : STD_LOGIC;
  signal Conn6_AWADDR : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal Conn6_AWREADY : STD_LOGIC;
  signal Conn6_AWVALID : STD_LOGIC;
  signal Conn6_BREADY : STD_LOGIC;
  signal Conn6_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn6_BVALID : STD_LOGIC;
  signal Conn6_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn6_RREADY : STD_LOGIC;
  signal Conn6_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn6_RVALID : STD_LOGIC;
  signal Conn6_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn6_WREADY : STD_LOGIC;
  signal Conn6_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn6_WVALID : STD_LOGIC;
  signal Net : STD_LOGIC;
  signal RefClk_1 : STD_LOGIC;
  signal TMDS_1_CLK_N : STD_LOGIC;
  signal TMDS_1_CLK_P : STD_LOGIC;
  signal TMDS_1_DATA_N : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal TMDS_1_DATA_P : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal aclk_1 : STD_LOGIC;
  signal axi_gpio_video_gpio_io_o : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_gpio_video_ip2intc_irpt : STD_LOGIC;
  signal axis_register_slice_0_M_AXIS_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal axis_register_slice_0_M_AXIS_TLAST : STD_LOGIC;
  signal axis_register_slice_0_M_AXIS_TREADY : STD_LOGIC;
  signal axis_register_slice_0_M_AXIS_TUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axis_register_slice_0_M_AXIS_TVALID : STD_LOGIC;
  signal color_convert_stream_out_24_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal color_convert_stream_out_24_TLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal color_convert_stream_out_24_TREADY : STD_LOGIC;
  signal color_convert_stream_out_24_TUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal color_convert_stream_out_24_TVALID : STD_LOGIC;
  signal dvi2rgb_0_PixelClk : STD_LOGIC;
  signal dvi2rgb_0_aPixelClkLckd : STD_LOGIC;
  signal frontend_DDC_SCL_I : STD_LOGIC;
  signal frontend_DDC_SCL_O : STD_LOGIC;
  signal frontend_DDC_SCL_T : STD_LOGIC;
  signal frontend_DDC_SDA_I : STD_LOGIC;
  signal frontend_DDC_SDA_O : STD_LOGIC;
  signal frontend_DDC_SDA_T : STD_LOGIC;
  signal frontend_video_out_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal frontend_video_out_TLAST : STD_LOGIC;
  signal frontend_video_out_TREADY : STD_LOGIC;
  signal frontend_video_out_TUSER : STD_LOGIC;
  signal frontend_video_out_TVALID : STD_LOGIC;
  signal periph_resetn_clk100M_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal pixel_pack_stream_out_32_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal pixel_pack_stream_out_32_TLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal pixel_pack_stream_out_32_TREADY : STD_LOGIC;
  signal pixel_pack_stream_out_32_TUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal pixel_pack_stream_out_32_TVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M07_AXI_ARADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal ps7_0_axi_periph_M07_AXI_ARREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M07_AXI_ARVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M07_AXI_AWADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal ps7_0_axi_periph_M07_AXI_AWREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M07_AXI_AWVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M07_AXI_BREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M07_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_M07_AXI_BVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M07_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M07_AXI_RREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M07_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_M07_AXI_RVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M07_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M07_AXI_WREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M07_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_M07_AXI_WVALID : STD_LOGIC;
  signal resetn_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rst_ps7_0_100M_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal v_tc_1_irq : STD_LOGIC;
  signal vid_io_in_reset_1 : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  Conn3_ARADDR(8 downto 0) <= S02_AXILite_araddr(8 downto 0);
  Conn3_ARVALID <= S02_AXILite_arvalid;
  Conn3_AWADDR(8 downto 0) <= S02_AXILite_awaddr(8 downto 0);
  Conn3_AWVALID <= S02_AXILite_awvalid;
  Conn3_BREADY <= S02_AXILite_bready;
  Conn3_RREADY <= S02_AXILite_rready;
  Conn3_WDATA(31 downto 0) <= S02_AXILite_wdata(31 downto 0);
  Conn3_WSTRB(3 downto 0) <= S02_AXILite_wstrb(3 downto 0);
  Conn3_WVALID <= S02_AXILite_wvalid;
  Conn5_ARADDR(4 downto 0) <= S03_AXILite_araddr(4 downto 0);
  Conn5_ARVALID <= S03_AXILite_arvalid;
  Conn5_AWADDR(4 downto 0) <= S03_AXILite_awaddr(4 downto 0);
  Conn5_AWVALID <= S03_AXILite_awvalid;
  Conn5_BREADY <= S03_AXILite_bready;
  Conn5_RREADY <= S03_AXILite_rready;
  Conn5_WDATA(31 downto 0) <= S03_AXILite_wdata(31 downto 0);
  Conn5_WSTRB(3 downto 0) <= S03_AXILite_wstrb(3 downto 0);
  Conn5_WVALID <= S03_AXILite_wvalid;
  Conn6_ARADDR(6 downto 0) <= S01_AXILite_araddr(6 downto 0);
  Conn6_ARVALID <= S01_AXILite_arvalid;
  Conn6_AWADDR(6 downto 0) <= S01_AXILite_awaddr(6 downto 0);
  Conn6_AWVALID <= S01_AXILite_awvalid;
  Conn6_BREADY <= S01_AXILite_bready;
  Conn6_RREADY <= S01_AXILite_rready;
  Conn6_WDATA(31 downto 0) <= S01_AXILite_wdata(31 downto 0);
  Conn6_WSTRB(3 downto 0) <= S01_AXILite_wstrb(3 downto 0);
  Conn6_WVALID <= S01_AXILite_wvalid;
  DDC_scl_o <= frontend_DDC_SCL_O;
  DDC_scl_t <= frontend_DDC_SCL_T;
  DDC_sda_o <= frontend_DDC_SDA_O;
  DDC_sda_t <= frontend_DDC_SDA_T;
  Net <= clk_100M;
  PixelClk <= dvi2rgb_0_PixelClk;
  RefClk_1 <= clk_200M;
  S00_AXILite_arready <= ps7_0_axi_periph_M07_AXI_ARREADY;
  S00_AXILite_awready <= ps7_0_axi_periph_M07_AXI_AWREADY;
  S00_AXILite_bresp(1 downto 0) <= ps7_0_axi_periph_M07_AXI_BRESP(1 downto 0);
  S00_AXILite_bvalid <= ps7_0_axi_periph_M07_AXI_BVALID;
  S00_AXILite_rdata(31 downto 0) <= ps7_0_axi_periph_M07_AXI_RDATA(31 downto 0);
  S00_AXILite_rresp(1 downto 0) <= ps7_0_axi_periph_M07_AXI_RRESP(1 downto 0);
  S00_AXILite_rvalid <= ps7_0_axi_periph_M07_AXI_RVALID;
  S00_AXILite_wready <= ps7_0_axi_periph_M07_AXI_WREADY;
  S01_AXILite_arready <= Conn6_ARREADY;
  S01_AXILite_awready <= Conn6_AWREADY;
  S01_AXILite_bresp(1 downto 0) <= Conn6_BRESP(1 downto 0);
  S01_AXILite_bvalid <= Conn6_BVALID;
  S01_AXILite_rdata(31 downto 0) <= Conn6_RDATA(31 downto 0);
  S01_AXILite_rresp(1 downto 0) <= Conn6_RRESP(1 downto 0);
  S01_AXILite_rvalid <= Conn6_RVALID;
  S01_AXILite_wready <= Conn6_WREADY;
  S02_AXILite_arready <= Conn3_ARREADY;
  S02_AXILite_awready <= Conn3_AWREADY;
  S02_AXILite_bresp(1 downto 0) <= Conn3_BRESP(1 downto 0);
  S02_AXILite_bvalid <= Conn3_BVALID;
  S02_AXILite_rdata(31 downto 0) <= Conn3_RDATA(31 downto 0);
  S02_AXILite_rresp(1 downto 0) <= Conn3_RRESP(1 downto 0);
  S02_AXILite_rvalid <= Conn3_RVALID;
  S02_AXILite_wready <= Conn3_WREADY;
  S03_AXILite_arready <= Conn5_ARREADY;
  S03_AXILite_awready <= Conn5_AWREADY;
  S03_AXILite_bresp(1 downto 0) <= Conn5_BRESP(1 downto 0);
  S03_AXILite_bvalid <= Conn5_BVALID;
  S03_AXILite_rdata(31 downto 0) <= Conn5_RDATA(31 downto 0);
  S03_AXILite_rresp(1 downto 0) <= Conn5_RRESP(1 downto 0);
  S03_AXILite_rvalid <= Conn5_RVALID;
  S03_AXILite_wready <= Conn5_WREADY;
  TMDS_1_CLK_N <= TMDS_in_clk_n;
  TMDS_1_CLK_P <= TMDS_in_clk_p;
  TMDS_1_DATA_N(2 downto 0) <= TMDS_in_data_n(2 downto 0);
  TMDS_1_DATA_P(2 downto 0) <= TMDS_in_data_p(2 downto 0);
  aPixelClkLckd <= dvi2rgb_0_aPixelClkLckd;
  aclk_1 <= clk_142M;
  frontend_DDC_SCL_I <= DDC_scl_i;
  frontend_DDC_SDA_I <= DDC_sda_i;
  hdmi_in_hpd(0) <= axi_gpio_video_gpio_io_o(0);
  hdmi_in_hpd_irq <= axi_gpio_video_ip2intc_irpt;
  out_stream_tdata(31 downto 0) <= pixel_pack_stream_out_32_TDATA(31 downto 0);
  out_stream_tlast(0) <= pixel_pack_stream_out_32_TLAST(0);
  out_stream_tuser(0) <= pixel_pack_stream_out_32_TUSER(0);
  out_stream_tvalid <= pixel_pack_stream_out_32_TVALID;
  periph_resetn_clk100M_1(0) <= periph_resetn_clk100M(0);
  pixel_pack_stream_out_32_TREADY <= out_stream_tready;
  ps7_0_axi_periph_M07_AXI_ARADDR(8 downto 0) <= S00_AXILite_araddr(8 downto 0);
  ps7_0_axi_periph_M07_AXI_ARVALID <= S00_AXILite_arvalid;
  ps7_0_axi_periph_M07_AXI_AWADDR(8 downto 0) <= S00_AXILite_awaddr(8 downto 0);
  ps7_0_axi_periph_M07_AXI_AWVALID <= S00_AXILite_awvalid;
  ps7_0_axi_periph_M07_AXI_BREADY <= S00_AXILite_bready;
  ps7_0_axi_periph_M07_AXI_RREADY <= S00_AXILite_rready;
  ps7_0_axi_periph_M07_AXI_WDATA(31 downto 0) <= S00_AXILite_wdata(31 downto 0);
  ps7_0_axi_periph_M07_AXI_WSTRB(3 downto 0) <= S00_AXILite_wstrb(3 downto 0);
  ps7_0_axi_periph_M07_AXI_WVALID <= S00_AXILite_wvalid;
  resetn_1(0) <= resetn(0);
  rst_ps7_0_100M_peripheral_aresetn(0) <= periph_resetn_clk142M(0);
  vid_io_in_reset_1(0) <= vid_io_in_reset(0);
  vtc_in_irq <= v_tc_1_irq;
axis_register_slice_0: component base_axis_register_slice_0_0
     port map (
      aclk => aclk_1,
      aresetn => rst_ps7_0_100M_peripheral_aresetn(0),
      m_axis_tdata(23 downto 0) => axis_register_slice_0_M_AXIS_TDATA(23 downto 0),
      m_axis_tlast => axis_register_slice_0_M_AXIS_TLAST,
      m_axis_tready => axis_register_slice_0_M_AXIS_TREADY,
      m_axis_tuser(0) => axis_register_slice_0_M_AXIS_TUSER(0),
      m_axis_tvalid => axis_register_slice_0_M_AXIS_TVALID,
      s_axis_tdata(23 downto 0) => color_convert_stream_out_24_TDATA(23 downto 0),
      s_axis_tlast => color_convert_stream_out_24_TLAST(0),
      s_axis_tready => color_convert_stream_out_24_TREADY,
      s_axis_tuser(0) => color_convert_stream_out_24_TUSER(0),
      s_axis_tvalid => color_convert_stream_out_24_TVALID
    );
color_convert: component base_color_convert_0
     port map (
      ap_clk => aclk_1,
      ap_rst_n => rst_ps7_0_100M_peripheral_aresetn(0),
      ap_rst_n_control => rst_ps7_0_100M_peripheral_aresetn(0),
      control => aclk_1,
      s_axi_AXILiteS_ARADDR(6 downto 0) => Conn6_ARADDR(6 downto 0),
      s_axi_AXILiteS_ARREADY => Conn6_ARREADY,
      s_axi_AXILiteS_ARVALID => Conn6_ARVALID,
      s_axi_AXILiteS_AWADDR(6 downto 0) => Conn6_AWADDR(6 downto 0),
      s_axi_AXILiteS_AWREADY => Conn6_AWREADY,
      s_axi_AXILiteS_AWVALID => Conn6_AWVALID,
      s_axi_AXILiteS_BREADY => Conn6_BREADY,
      s_axi_AXILiteS_BRESP(1 downto 0) => Conn6_BRESP(1 downto 0),
      s_axi_AXILiteS_BVALID => Conn6_BVALID,
      s_axi_AXILiteS_RDATA(31 downto 0) => Conn6_RDATA(31 downto 0),
      s_axi_AXILiteS_RREADY => Conn6_RREADY,
      s_axi_AXILiteS_RRESP(1 downto 0) => Conn6_RRESP(1 downto 0),
      s_axi_AXILiteS_RVALID => Conn6_RVALID,
      s_axi_AXILiteS_WDATA(31 downto 0) => Conn6_WDATA(31 downto 0),
      s_axi_AXILiteS_WREADY => Conn6_WREADY,
      s_axi_AXILiteS_WSTRB(3 downto 0) => Conn6_WSTRB(3 downto 0),
      s_axi_AXILiteS_WVALID => Conn6_WVALID,
      stream_in_24_TDATA(23 downto 0) => frontend_video_out_TDATA(23 downto 0),
      stream_in_24_TLAST(0) => frontend_video_out_TLAST,
      stream_in_24_TREADY => frontend_video_out_TREADY,
      stream_in_24_TUSER(0) => frontend_video_out_TUSER,
      stream_in_24_TVALID => frontend_video_out_TVALID,
      stream_out_24_TDATA(23 downto 0) => color_convert_stream_out_24_TDATA(23 downto 0),
      stream_out_24_TLAST(0) => color_convert_stream_out_24_TLAST(0),
      stream_out_24_TREADY => color_convert_stream_out_24_TREADY,
      stream_out_24_TUSER(0) => color_convert_stream_out_24_TUSER(0),
      stream_out_24_TVALID => color_convert_stream_out_24_TVALID
    );
frontend: entity work.frontend_imp_13KUJBY
     port map (
      DDC_scl_i => frontend_DDC_SCL_I,
      DDC_scl_o => frontend_DDC_SCL_O,
      DDC_scl_t => frontend_DDC_SCL_T,
      DDC_sda_i => frontend_DDC_SDA_I,
      DDC_sda_o => frontend_DDC_SDA_O,
      DDC_sda_t => frontend_DDC_SDA_T,
      PixelClk => dvi2rgb_0_PixelClk,
      S00_AXILite_araddr(8 downto 0) => ps7_0_axi_periph_M07_AXI_ARADDR(8 downto 0),
      S00_AXILite_arready => ps7_0_axi_periph_M07_AXI_ARREADY,
      S00_AXILite_arvalid => ps7_0_axi_periph_M07_AXI_ARVALID,
      S00_AXILite_awaddr(8 downto 0) => ps7_0_axi_periph_M07_AXI_AWADDR(8 downto 0),
      S00_AXILite_awready => ps7_0_axi_periph_M07_AXI_AWREADY,
      S00_AXILite_awvalid => ps7_0_axi_periph_M07_AXI_AWVALID,
      S00_AXILite_bready => ps7_0_axi_periph_M07_AXI_BREADY,
      S00_AXILite_bresp(1 downto 0) => ps7_0_axi_periph_M07_AXI_BRESP(1 downto 0),
      S00_AXILite_bvalid => ps7_0_axi_periph_M07_AXI_BVALID,
      S00_AXILite_rdata(31 downto 0) => ps7_0_axi_periph_M07_AXI_RDATA(31 downto 0),
      S00_AXILite_rready => ps7_0_axi_periph_M07_AXI_RREADY,
      S00_AXILite_rresp(1 downto 0) => ps7_0_axi_periph_M07_AXI_RRESP(1 downto 0),
      S00_AXILite_rvalid => ps7_0_axi_periph_M07_AXI_RVALID,
      S00_AXILite_wdata(31 downto 0) => ps7_0_axi_periph_M07_AXI_WDATA(31 downto 0),
      S00_AXILite_wready => ps7_0_axi_periph_M07_AXI_WREADY,
      S00_AXILite_wstrb(3 downto 0) => ps7_0_axi_periph_M07_AXI_WSTRB(3 downto 0),
      S00_AXILite_wvalid => ps7_0_axi_periph_M07_AXI_WVALID,
      S02_AXILite_araddr(8 downto 0) => Conn3_ARADDR(8 downto 0),
      S02_AXILite_arready => Conn3_ARREADY,
      S02_AXILite_arvalid => Conn3_ARVALID,
      S02_AXILite_awaddr(8 downto 0) => Conn3_AWADDR(8 downto 0),
      S02_AXILite_awready => Conn3_AWREADY,
      S02_AXILite_awvalid => Conn3_AWVALID,
      S02_AXILite_bready => Conn3_BREADY,
      S02_AXILite_bresp(1 downto 0) => Conn3_BRESP(1 downto 0),
      S02_AXILite_bvalid => Conn3_BVALID,
      S02_AXILite_rdata(31 downto 0) => Conn3_RDATA(31 downto 0),
      S02_AXILite_rready => Conn3_RREADY,
      S02_AXILite_rresp(1 downto 0) => Conn3_RRESP(1 downto 0),
      S02_AXILite_rvalid => Conn3_RVALID,
      S02_AXILite_wdata(31 downto 0) => Conn3_WDATA(31 downto 0),
      S02_AXILite_wready => Conn3_WREADY,
      S02_AXILite_wstrb(3 downto 0) => Conn3_WSTRB(3 downto 0),
      S02_AXILite_wvalid => Conn3_WVALID,
      TMDS_in_clk_n => TMDS_1_CLK_N,
      TMDS_in_clk_p => TMDS_1_CLK_P,
      TMDS_in_data_n(2 downto 0) => TMDS_1_DATA_N(2 downto 0),
      TMDS_in_data_p(2 downto 0) => TMDS_1_DATA_P(2 downto 0),
      aPixelClkLckd => dvi2rgb_0_aPixelClkLckd,
      clk_100M => Net,
      clk_142M => aclk_1,
      clk_200M => RefClk_1,
      hdmi_in_hpd(0) => axi_gpio_video_gpio_io_o(0),
      hdmi_in_hpd_irq => axi_gpio_video_ip2intc_irpt,
      periph_resetn_clk100M(0) => periph_resetn_clk100M_1(0),
      resetn(0) => resetn_1(0),
      vid_io_in_reset(0) => vid_io_in_reset_1(0),
      video_out_tdata(23 downto 0) => frontend_video_out_TDATA(23 downto 0),
      video_out_tlast => frontend_video_out_TLAST,
      video_out_tready => frontend_video_out_TREADY,
      video_out_tuser => frontend_video_out_TUSER,
      video_out_tvalid => frontend_video_out_TVALID,
      vtc_in_irq => v_tc_1_irq
    );
pixel_pack: component base_pixel_pack_0
     port map (
      ap_clk => aclk_1,
      ap_rst_n => rst_ps7_0_100M_peripheral_aresetn(0),
      ap_rst_n_control => rst_ps7_0_100M_peripheral_aresetn(0),
      control => aclk_1,
      s_axi_AXILiteS_ARADDR(4 downto 0) => Conn5_ARADDR(4 downto 0),
      s_axi_AXILiteS_ARREADY => Conn5_ARREADY,
      s_axi_AXILiteS_ARVALID => Conn5_ARVALID,
      s_axi_AXILiteS_AWADDR(4 downto 0) => Conn5_AWADDR(4 downto 0),
      s_axi_AXILiteS_AWREADY => Conn5_AWREADY,
      s_axi_AXILiteS_AWVALID => Conn5_AWVALID,
      s_axi_AXILiteS_BREADY => Conn5_BREADY,
      s_axi_AXILiteS_BRESP(1 downto 0) => Conn5_BRESP(1 downto 0),
      s_axi_AXILiteS_BVALID => Conn5_BVALID,
      s_axi_AXILiteS_RDATA(31 downto 0) => Conn5_RDATA(31 downto 0),
      s_axi_AXILiteS_RREADY => Conn5_RREADY,
      s_axi_AXILiteS_RRESP(1 downto 0) => Conn5_RRESP(1 downto 0),
      s_axi_AXILiteS_RVALID => Conn5_RVALID,
      s_axi_AXILiteS_WDATA(31 downto 0) => Conn5_WDATA(31 downto 0),
      s_axi_AXILiteS_WREADY => Conn5_WREADY,
      s_axi_AXILiteS_WSTRB(3 downto 0) => Conn5_WSTRB(3 downto 0),
      s_axi_AXILiteS_WVALID => Conn5_WVALID,
      stream_in_24_TDATA(23 downto 0) => axis_register_slice_0_M_AXIS_TDATA(23 downto 0),
      stream_in_24_TLAST(0) => axis_register_slice_0_M_AXIS_TLAST,
      stream_in_24_TREADY => axis_register_slice_0_M_AXIS_TREADY,
      stream_in_24_TUSER(0) => axis_register_slice_0_M_AXIS_TUSER(0),
      stream_in_24_TVALID => axis_register_slice_0_M_AXIS_TVALID,
      stream_out_32_TDATA(31 downto 0) => pixel_pack_stream_out_32_TDATA(31 downto 0),
      stream_out_32_TLAST(0) => pixel_pack_stream_out_32_TLAST(0),
      stream_out_32_TREADY => pixel_pack_stream_out_32_TREADY,
      stream_out_32_TUSER(0) => pixel_pack_stream_out_32_TUSER(0),
      stream_out_32_TVALID => pixel_pack_stream_out_32_TVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity hdmi_out_imp_1RSCXJD is
  port (
    S00_AXILite_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    S00_AXILite_arready : out STD_LOGIC;
    S00_AXILite_arvalid : in STD_LOGIC;
    S00_AXILite_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    S00_AXILite_awready : out STD_LOGIC;
    S00_AXILite_awvalid : in STD_LOGIC;
    S00_AXILite_bready : in STD_LOGIC;
    S00_AXILite_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXILite_bvalid : out STD_LOGIC;
    S00_AXILite_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXILite_rready : in STD_LOGIC;
    S00_AXILite_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXILite_rvalid : out STD_LOGIC;
    S00_AXILite_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXILite_wready : out STD_LOGIC;
    S00_AXILite_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXILite_wvalid : in STD_LOGIC;
    S01_AXILite_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    S01_AXILite_arready : out STD_LOGIC;
    S01_AXILite_arvalid : in STD_LOGIC;
    S01_AXILite_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    S01_AXILite_awready : out STD_LOGIC;
    S01_AXILite_awvalid : in STD_LOGIC;
    S01_AXILite_bready : in STD_LOGIC;
    S01_AXILite_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXILite_bvalid : out STD_LOGIC;
    S01_AXILite_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXILite_rready : in STD_LOGIC;
    S01_AXILite_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXILite_rvalid : out STD_LOGIC;
    S01_AXILite_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXILite_wready : out STD_LOGIC;
    S01_AXILite_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXILite_wvalid : in STD_LOGIC;
    S02_AXILite_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    S02_AXILite_arready : out STD_LOGIC;
    S02_AXILite_arvalid : in STD_LOGIC;
    S02_AXILite_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    S02_AXILite_awready : out STD_LOGIC;
    S02_AXILite_awvalid : in STD_LOGIC;
    S02_AXILite_bready : in STD_LOGIC;
    S02_AXILite_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXILite_bvalid : out STD_LOGIC;
    S02_AXILite_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S02_AXILite_rready : in STD_LOGIC;
    S02_AXILite_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXILite_rvalid : out STD_LOGIC;
    S02_AXILite_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S02_AXILite_wready : out STD_LOGIC;
    S02_AXILite_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXILite_wvalid : in STD_LOGIC;
    S03_AXILite_araddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    S03_AXILite_arready : out STD_LOGIC;
    S03_AXILite_arvalid : in STD_LOGIC;
    S03_AXILite_awaddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    S03_AXILite_awready : out STD_LOGIC;
    S03_AXILite_awvalid : in STD_LOGIC;
    S03_AXILite_bready : in STD_LOGIC;
    S03_AXILite_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S03_AXILite_bvalid : out STD_LOGIC;
    S03_AXILite_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S03_AXILite_rready : in STD_LOGIC;
    S03_AXILite_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S03_AXILite_rvalid : out STD_LOGIC;
    S03_AXILite_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S03_AXILite_wready : out STD_LOGIC;
    S03_AXILite_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S03_AXILite_wvalid : in STD_LOGIC;
    S04_AXILite_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    S04_AXILite_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S04_AXILite_arready : out STD_LOGIC;
    S04_AXILite_arvalid : in STD_LOGIC;
    S04_AXILite_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    S04_AXILite_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S04_AXILite_awready : out STD_LOGIC;
    S04_AXILite_awvalid : in STD_LOGIC;
    S04_AXILite_bready : in STD_LOGIC;
    S04_AXILite_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S04_AXILite_bvalid : out STD_LOGIC;
    S04_AXILite_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S04_AXILite_rready : in STD_LOGIC;
    S04_AXILite_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S04_AXILite_rvalid : out STD_LOGIC;
    S04_AXILite_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S04_AXILite_wready : out STD_LOGIC;
    S04_AXILite_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S04_AXILite_wvalid : in STD_LOGIC;
    TMDS_out_clk_n : out STD_LOGIC;
    TMDS_out_clk_p : out STD_LOGIC;
    TMDS_out_data_n : out STD_LOGIC_VECTOR ( 2 downto 0 );
    TMDS_out_data_p : out STD_LOGIC_VECTOR ( 2 downto 0 );
    clk_100M : in STD_LOGIC;
    clk_142M : in STD_LOGIC;
    hdmi_out_hpd : out STD_LOGIC_VECTOR ( 0 to 0 );
    hdmi_out_hpd_irq : out STD_LOGIC;
    in_stream_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    in_stream_tlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    in_stream_tready : out STD_LOGIC;
    in_stream_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    in_stream_tvalid : in STD_LOGIC;
    periph_resetn_clk100M : in STD_LOGIC_VECTOR ( 0 to 0 );
    periph_resetn_clk142M : in STD_LOGIC_VECTOR ( 0 to 0 );
    vtc_out_irq : out STD_LOGIC
  );
end hdmi_out_imp_1RSCXJD;

architecture STRUCTURE of hdmi_out_imp_1RSCXJD is
  component base_axis_register_slice_0_1 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tuser : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component base_axis_register_slice_0_1;
  component base_color_convert_1 is
  port (
    s_axi_AXILiteS_AWADDR : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_AXILiteS_AWVALID : in STD_LOGIC;
    s_axi_AXILiteS_AWREADY : out STD_LOGIC;
    s_axi_AXILiteS_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_AXILiteS_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_AXILiteS_WVALID : in STD_LOGIC;
    s_axi_AXILiteS_WREADY : out STD_LOGIC;
    s_axi_AXILiteS_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_AXILiteS_BVALID : out STD_LOGIC;
    s_axi_AXILiteS_BREADY : in STD_LOGIC;
    s_axi_AXILiteS_ARADDR : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_AXILiteS_ARVALID : in STD_LOGIC;
    s_axi_AXILiteS_ARREADY : out STD_LOGIC;
    s_axi_AXILiteS_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_AXILiteS_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_AXILiteS_RVALID : out STD_LOGIC;
    s_axi_AXILiteS_RREADY : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    control : in STD_LOGIC;
    ap_rst_n_control : in STD_LOGIC;
    stream_in_24_TVALID : in STD_LOGIC;
    stream_in_24_TREADY : out STD_LOGIC;
    stream_in_24_TDATA : in STD_LOGIC_VECTOR ( 23 downto 0 );
    stream_in_24_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    stream_in_24_TUSER : in STD_LOGIC_VECTOR ( 0 to 0 );
    stream_out_24_TVALID : out STD_LOGIC;
    stream_out_24_TREADY : in STD_LOGIC;
    stream_out_24_TDATA : out STD_LOGIC_VECTOR ( 23 downto 0 );
    stream_out_24_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    stream_out_24_TUSER : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component base_color_convert_1;
  component base_pixel_unpack_0 is
  port (
    s_axi_AXILiteS_AWADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_AXILiteS_AWVALID : in STD_LOGIC;
    s_axi_AXILiteS_AWREADY : out STD_LOGIC;
    s_axi_AXILiteS_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_AXILiteS_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_AXILiteS_WVALID : in STD_LOGIC;
    s_axi_AXILiteS_WREADY : out STD_LOGIC;
    s_axi_AXILiteS_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_AXILiteS_BVALID : out STD_LOGIC;
    s_axi_AXILiteS_BREADY : in STD_LOGIC;
    s_axi_AXILiteS_ARADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_AXILiteS_ARVALID : in STD_LOGIC;
    s_axi_AXILiteS_ARREADY : out STD_LOGIC;
    s_axi_AXILiteS_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_AXILiteS_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_AXILiteS_RVALID : out STD_LOGIC;
    s_axi_AXILiteS_RREADY : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    control : in STD_LOGIC;
    ap_rst_n_control : in STD_LOGIC;
    stream_in_32_TVALID : in STD_LOGIC;
    stream_in_32_TREADY : out STD_LOGIC;
    stream_in_32_TDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    stream_in_32_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    stream_in_32_TUSER : in STD_LOGIC_VECTOR ( 0 to 0 );
    stream_out_24_TVALID : out STD_LOGIC;
    stream_out_24_TREADY : in STD_LOGIC;
    stream_out_24_TDATA : out STD_LOGIC_VECTOR ( 23 downto 0 );
    stream_out_24_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    stream_out_24_TUSER : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component base_pixel_unpack_0;
  signal Conn1_CLK_N : STD_LOGIC;
  signal Conn1_CLK_P : STD_LOGIC;
  signal Conn1_DATA_N : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn1_DATA_P : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn2_ARADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal Conn2_ARREADY : STD_LOGIC;
  signal Conn2_ARVALID : STD_LOGIC;
  signal Conn2_AWADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal Conn2_AWREADY : STD_LOGIC;
  signal Conn2_AWVALID : STD_LOGIC;
  signal Conn2_BREADY : STD_LOGIC;
  signal Conn2_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn2_BVALID : STD_LOGIC;
  signal Conn2_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn2_RREADY : STD_LOGIC;
  signal Conn2_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn2_RVALID : STD_LOGIC;
  signal Conn2_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn2_WREADY : STD_LOGIC;
  signal Conn2_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn2_WVALID : STD_LOGIC;
  signal Conn7_ARADDR : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal Conn7_ARREADY : STD_LOGIC;
  signal Conn7_ARVALID : STD_LOGIC;
  signal Conn7_AWADDR : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal Conn7_AWREADY : STD_LOGIC;
  signal Conn7_AWVALID : STD_LOGIC;
  signal Conn7_BREADY : STD_LOGIC;
  signal Conn7_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn7_BVALID : STD_LOGIC;
  signal Conn7_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn7_RREADY : STD_LOGIC;
  signal Conn7_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn7_RVALID : STD_LOGIC;
  signal Conn7_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn7_WREADY : STD_LOGIC;
  signal Conn7_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn7_WVALID : STD_LOGIC;
  signal Conn8_ARADDR : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal Conn8_ARREADY : STD_LOGIC;
  signal Conn8_ARVALID : STD_LOGIC;
  signal Conn8_AWADDR : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal Conn8_AWREADY : STD_LOGIC;
  signal Conn8_AWVALID : STD_LOGIC;
  signal Conn8_BREADY : STD_LOGIC;
  signal Conn8_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn8_BVALID : STD_LOGIC;
  signal Conn8_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn8_RREADY : STD_LOGIC;
  signal Conn8_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn8_RVALID : STD_LOGIC;
  signal Conn8_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn8_WREADY : STD_LOGIC;
  signal Conn8_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn8_WVALID : STD_LOGIC;
  signal Net : STD_LOGIC;
  signal Net1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal aclk_1 : STD_LOGIC;
  signal axis_register_slice_0_M_AXIS_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal axis_register_slice_0_M_AXIS_TLAST : STD_LOGIC;
  signal axis_register_slice_0_M_AXIS_TREADY : STD_LOGIC;
  signal axis_register_slice_0_M_AXIS_TUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axis_register_slice_0_M_AXIS_TVALID : STD_LOGIC;
  signal color_convert_stream_out_24_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal color_convert_stream_out_24_TLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal color_convert_stream_out_24_TREADY : STD_LOGIC;
  signal color_convert_stream_out_24_TUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal color_convert_stream_out_24_TVALID : STD_LOGIC;
  signal hdmi_out_hpd_video_gpio_io_o : STD_LOGIC_VECTOR ( 0 to 0 );
  signal hdmi_out_hpd_video_ip2intc_irpt : STD_LOGIC;
  signal in_stream_1_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal in_stream_1_TLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal in_stream_1_TREADY : STD_LOGIC;
  signal in_stream_1_TUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal in_stream_1_TVALID : STD_LOGIC;
  signal pixel_unpack_stream_out_24_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal pixel_unpack_stream_out_24_TLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal pixel_unpack_stream_out_24_TREADY : STD_LOGIC;
  signal pixel_unpack_stream_out_24_TUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal pixel_unpack_stream_out_24_TVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M06_AXI_ARADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal ps7_0_axi_periph_M06_AXI_ARREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M06_AXI_ARVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M06_AXI_AWADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal ps7_0_axi_periph_M06_AXI_AWREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M06_AXI_AWVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M06_AXI_BREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M06_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_M06_AXI_BVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M06_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M06_AXI_RREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M06_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_M06_AXI_RVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M06_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M06_AXI_WREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M06_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_M06_AXI_WVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M08_AXI_ARADDR : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal ps7_0_axi_periph_M08_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_0_axi_periph_M08_AXI_ARREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M08_AXI_ARVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M08_AXI_AWADDR : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal ps7_0_axi_periph_M08_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_0_axi_periph_M08_AXI_AWREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M08_AXI_AWVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M08_AXI_BREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M08_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_M08_AXI_BVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M08_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M08_AXI_RREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M08_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_M08_AXI_RVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M08_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M08_AXI_WREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M08_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_M08_AXI_WVALID : STD_LOGIC;
  signal rst_ps7_0_100M_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal v_tc_0_irq : STD_LOGIC;
begin
  Conn2_ARADDR(8 downto 0) <= S02_AXILite_araddr(8 downto 0);
  Conn2_ARVALID <= S02_AXILite_arvalid;
  Conn2_AWADDR(8 downto 0) <= S02_AXILite_awaddr(8 downto 0);
  Conn2_AWVALID <= S02_AXILite_awvalid;
  Conn2_BREADY <= S02_AXILite_bready;
  Conn2_RREADY <= S02_AXILite_rready;
  Conn2_WDATA(31 downto 0) <= S02_AXILite_wdata(31 downto 0);
  Conn2_WSTRB(3 downto 0) <= S02_AXILite_wstrb(3 downto 0);
  Conn2_WVALID <= S02_AXILite_wvalid;
  Conn7_ARADDR(6 downto 0) <= S03_AXILite_araddr(6 downto 0);
  Conn7_ARVALID <= S03_AXILite_arvalid;
  Conn7_AWADDR(6 downto 0) <= S03_AXILite_awaddr(6 downto 0);
  Conn7_AWVALID <= S03_AXILite_awvalid;
  Conn7_BREADY <= S03_AXILite_bready;
  Conn7_RREADY <= S03_AXILite_rready;
  Conn7_WDATA(31 downto 0) <= S03_AXILite_wdata(31 downto 0);
  Conn7_WSTRB(3 downto 0) <= S03_AXILite_wstrb(3 downto 0);
  Conn7_WVALID <= S03_AXILite_wvalid;
  Conn8_ARADDR(4 downto 0) <= S01_AXILite_araddr(4 downto 0);
  Conn8_ARVALID <= S01_AXILite_arvalid;
  Conn8_AWADDR(4 downto 0) <= S01_AXILite_awaddr(4 downto 0);
  Conn8_AWVALID <= S01_AXILite_awvalid;
  Conn8_BREADY <= S01_AXILite_bready;
  Conn8_RREADY <= S01_AXILite_rready;
  Conn8_WDATA(31 downto 0) <= S01_AXILite_wdata(31 downto 0);
  Conn8_WSTRB(3 downto 0) <= S01_AXILite_wstrb(3 downto 0);
  Conn8_WVALID <= S01_AXILite_wvalid;
  Net <= clk_100M;
  Net1(0) <= periph_resetn_clk100M(0);
  S00_AXILite_arready <= ps7_0_axi_periph_M06_AXI_ARREADY;
  S00_AXILite_awready <= ps7_0_axi_periph_M06_AXI_AWREADY;
  S00_AXILite_bresp(1 downto 0) <= ps7_0_axi_periph_M06_AXI_BRESP(1 downto 0);
  S00_AXILite_bvalid <= ps7_0_axi_periph_M06_AXI_BVALID;
  S00_AXILite_rdata(31 downto 0) <= ps7_0_axi_periph_M06_AXI_RDATA(31 downto 0);
  S00_AXILite_rresp(1 downto 0) <= ps7_0_axi_periph_M06_AXI_RRESP(1 downto 0);
  S00_AXILite_rvalid <= ps7_0_axi_periph_M06_AXI_RVALID;
  S00_AXILite_wready <= ps7_0_axi_periph_M06_AXI_WREADY;
  S01_AXILite_arready <= Conn8_ARREADY;
  S01_AXILite_awready <= Conn8_AWREADY;
  S01_AXILite_bresp(1 downto 0) <= Conn8_BRESP(1 downto 0);
  S01_AXILite_bvalid <= Conn8_BVALID;
  S01_AXILite_rdata(31 downto 0) <= Conn8_RDATA(31 downto 0);
  S01_AXILite_rresp(1 downto 0) <= Conn8_RRESP(1 downto 0);
  S01_AXILite_rvalid <= Conn8_RVALID;
  S01_AXILite_wready <= Conn8_WREADY;
  S02_AXILite_arready <= Conn2_ARREADY;
  S02_AXILite_awready <= Conn2_AWREADY;
  S02_AXILite_bresp(1 downto 0) <= Conn2_BRESP(1 downto 0);
  S02_AXILite_bvalid <= Conn2_BVALID;
  S02_AXILite_rdata(31 downto 0) <= Conn2_RDATA(31 downto 0);
  S02_AXILite_rresp(1 downto 0) <= Conn2_RRESP(1 downto 0);
  S02_AXILite_rvalid <= Conn2_RVALID;
  S02_AXILite_wready <= Conn2_WREADY;
  S03_AXILite_arready <= Conn7_ARREADY;
  S03_AXILite_awready <= Conn7_AWREADY;
  S03_AXILite_bresp(1 downto 0) <= Conn7_BRESP(1 downto 0);
  S03_AXILite_bvalid <= Conn7_BVALID;
  S03_AXILite_rdata(31 downto 0) <= Conn7_RDATA(31 downto 0);
  S03_AXILite_rresp(1 downto 0) <= Conn7_RRESP(1 downto 0);
  S03_AXILite_rvalid <= Conn7_RVALID;
  S03_AXILite_wready <= Conn7_WREADY;
  S04_AXILite_arready <= ps7_0_axi_periph_M08_AXI_ARREADY;
  S04_AXILite_awready <= ps7_0_axi_periph_M08_AXI_AWREADY;
  S04_AXILite_bresp(1 downto 0) <= ps7_0_axi_periph_M08_AXI_BRESP(1 downto 0);
  S04_AXILite_bvalid <= ps7_0_axi_periph_M08_AXI_BVALID;
  S04_AXILite_rdata(31 downto 0) <= ps7_0_axi_periph_M08_AXI_RDATA(31 downto 0);
  S04_AXILite_rresp(1 downto 0) <= ps7_0_axi_periph_M08_AXI_RRESP(1 downto 0);
  S04_AXILite_rvalid <= ps7_0_axi_periph_M08_AXI_RVALID;
  S04_AXILite_wready <= ps7_0_axi_periph_M08_AXI_WREADY;
  TMDS_out_clk_n <= Conn1_CLK_N;
  TMDS_out_clk_p <= Conn1_CLK_P;
  TMDS_out_data_n(2 downto 0) <= Conn1_DATA_N(2 downto 0);
  TMDS_out_data_p(2 downto 0) <= Conn1_DATA_P(2 downto 0);
  aclk_1 <= clk_142M;
  hdmi_out_hpd(0) <= hdmi_out_hpd_video_gpio_io_o(0);
  hdmi_out_hpd_irq <= hdmi_out_hpd_video_ip2intc_irpt;
  in_stream_1_TDATA(31 downto 0) <= in_stream_tdata(31 downto 0);
  in_stream_1_TLAST(0) <= in_stream_tlast(0);
  in_stream_1_TUSER(0) <= in_stream_tuser(0);
  in_stream_1_TVALID <= in_stream_tvalid;
  in_stream_tready <= in_stream_1_TREADY;
  ps7_0_axi_periph_M06_AXI_ARADDR(8 downto 0) <= S00_AXILite_araddr(8 downto 0);
  ps7_0_axi_periph_M06_AXI_ARVALID <= S00_AXILite_arvalid;
  ps7_0_axi_periph_M06_AXI_AWADDR(8 downto 0) <= S00_AXILite_awaddr(8 downto 0);
  ps7_0_axi_periph_M06_AXI_AWVALID <= S00_AXILite_awvalid;
  ps7_0_axi_periph_M06_AXI_BREADY <= S00_AXILite_bready;
  ps7_0_axi_periph_M06_AXI_RREADY <= S00_AXILite_rready;
  ps7_0_axi_periph_M06_AXI_WDATA(31 downto 0) <= S00_AXILite_wdata(31 downto 0);
  ps7_0_axi_periph_M06_AXI_WSTRB(3 downto 0) <= S00_AXILite_wstrb(3 downto 0);
  ps7_0_axi_periph_M06_AXI_WVALID <= S00_AXILite_wvalid;
  ps7_0_axi_periph_M08_AXI_ARADDR(4 downto 0) <= S04_AXILite_araddr(4 downto 0);
  ps7_0_axi_periph_M08_AXI_ARPROT(2 downto 0) <= S04_AXILite_arprot(2 downto 0);
  ps7_0_axi_periph_M08_AXI_ARVALID <= S04_AXILite_arvalid;
  ps7_0_axi_periph_M08_AXI_AWADDR(4 downto 0) <= S04_AXILite_awaddr(4 downto 0);
  ps7_0_axi_periph_M08_AXI_AWPROT(2 downto 0) <= S04_AXILite_awprot(2 downto 0);
  ps7_0_axi_periph_M08_AXI_AWVALID <= S04_AXILite_awvalid;
  ps7_0_axi_periph_M08_AXI_BREADY <= S04_AXILite_bready;
  ps7_0_axi_periph_M08_AXI_RREADY <= S04_AXILite_rready;
  ps7_0_axi_periph_M08_AXI_WDATA(31 downto 0) <= S04_AXILite_wdata(31 downto 0);
  ps7_0_axi_periph_M08_AXI_WSTRB(3 downto 0) <= S04_AXILite_wstrb(3 downto 0);
  ps7_0_axi_periph_M08_AXI_WVALID <= S04_AXILite_wvalid;
  rst_ps7_0_100M_peripheral_aresetn(0) <= periph_resetn_clk142M(0);
  vtc_out_irq <= v_tc_0_irq;
axis_register_slice_0: component base_axis_register_slice_0_1
     port map (
      aclk => aclk_1,
      aresetn => rst_ps7_0_100M_peripheral_aresetn(0),
      m_axis_tdata(23 downto 0) => axis_register_slice_0_M_AXIS_TDATA(23 downto 0),
      m_axis_tlast => axis_register_slice_0_M_AXIS_TLAST,
      m_axis_tready => axis_register_slice_0_M_AXIS_TREADY,
      m_axis_tuser(0) => axis_register_slice_0_M_AXIS_TUSER(0),
      m_axis_tvalid => axis_register_slice_0_M_AXIS_TVALID,
      s_axis_tdata(23 downto 0) => pixel_unpack_stream_out_24_TDATA(23 downto 0),
      s_axis_tlast => pixel_unpack_stream_out_24_TLAST(0),
      s_axis_tready => pixel_unpack_stream_out_24_TREADY,
      s_axis_tuser(0) => pixel_unpack_stream_out_24_TUSER(0),
      s_axis_tvalid => pixel_unpack_stream_out_24_TVALID
    );
color_convert: component base_color_convert_1
     port map (
      ap_clk => aclk_1,
      ap_rst_n => rst_ps7_0_100M_peripheral_aresetn(0),
      ap_rst_n_control => rst_ps7_0_100M_peripheral_aresetn(0),
      control => aclk_1,
      s_axi_AXILiteS_ARADDR(6 downto 0) => Conn7_ARADDR(6 downto 0),
      s_axi_AXILiteS_ARREADY => Conn7_ARREADY,
      s_axi_AXILiteS_ARVALID => Conn7_ARVALID,
      s_axi_AXILiteS_AWADDR(6 downto 0) => Conn7_AWADDR(6 downto 0),
      s_axi_AXILiteS_AWREADY => Conn7_AWREADY,
      s_axi_AXILiteS_AWVALID => Conn7_AWVALID,
      s_axi_AXILiteS_BREADY => Conn7_BREADY,
      s_axi_AXILiteS_BRESP(1 downto 0) => Conn7_BRESP(1 downto 0),
      s_axi_AXILiteS_BVALID => Conn7_BVALID,
      s_axi_AXILiteS_RDATA(31 downto 0) => Conn7_RDATA(31 downto 0),
      s_axi_AXILiteS_RREADY => Conn7_RREADY,
      s_axi_AXILiteS_RRESP(1 downto 0) => Conn7_RRESP(1 downto 0),
      s_axi_AXILiteS_RVALID => Conn7_RVALID,
      s_axi_AXILiteS_WDATA(31 downto 0) => Conn7_WDATA(31 downto 0),
      s_axi_AXILiteS_WREADY => Conn7_WREADY,
      s_axi_AXILiteS_WSTRB(3 downto 0) => Conn7_WSTRB(3 downto 0),
      s_axi_AXILiteS_WVALID => Conn7_WVALID,
      stream_in_24_TDATA(23 downto 0) => axis_register_slice_0_M_AXIS_TDATA(23 downto 0),
      stream_in_24_TLAST(0) => axis_register_slice_0_M_AXIS_TLAST,
      stream_in_24_TREADY => axis_register_slice_0_M_AXIS_TREADY,
      stream_in_24_TUSER(0) => axis_register_slice_0_M_AXIS_TUSER(0),
      stream_in_24_TVALID => axis_register_slice_0_M_AXIS_TVALID,
      stream_out_24_TDATA(23 downto 0) => color_convert_stream_out_24_TDATA(23 downto 0),
      stream_out_24_TLAST(0) => color_convert_stream_out_24_TLAST(0),
      stream_out_24_TREADY => color_convert_stream_out_24_TREADY,
      stream_out_24_TUSER(0) => color_convert_stream_out_24_TUSER(0),
      stream_out_24_TVALID => color_convert_stream_out_24_TVALID
    );
frontend: entity work.frontend_imp_1JYZ9V6
     port map (
      S00_AXILite_araddr(8 downto 0) => ps7_0_axi_periph_M06_AXI_ARADDR(8 downto 0),
      S00_AXILite_arready => ps7_0_axi_periph_M06_AXI_ARREADY,
      S00_AXILite_arvalid => ps7_0_axi_periph_M06_AXI_ARVALID,
      S00_AXILite_awaddr(8 downto 0) => ps7_0_axi_periph_M06_AXI_AWADDR(8 downto 0),
      S00_AXILite_awready => ps7_0_axi_periph_M06_AXI_AWREADY,
      S00_AXILite_awvalid => ps7_0_axi_periph_M06_AXI_AWVALID,
      S00_AXILite_bready => ps7_0_axi_periph_M06_AXI_BREADY,
      S00_AXILite_bresp(1 downto 0) => ps7_0_axi_periph_M06_AXI_BRESP(1 downto 0),
      S00_AXILite_bvalid => ps7_0_axi_periph_M06_AXI_BVALID,
      S00_AXILite_rdata(31 downto 0) => ps7_0_axi_periph_M06_AXI_RDATA(31 downto 0),
      S00_AXILite_rready => ps7_0_axi_periph_M06_AXI_RREADY,
      S00_AXILite_rresp(1 downto 0) => ps7_0_axi_periph_M06_AXI_RRESP(1 downto 0),
      S00_AXILite_rvalid => ps7_0_axi_periph_M06_AXI_RVALID,
      S00_AXILite_wdata(31 downto 0) => ps7_0_axi_periph_M06_AXI_WDATA(31 downto 0),
      S00_AXILite_wready => ps7_0_axi_periph_M06_AXI_WREADY,
      S00_AXILite_wstrb(3 downto 0) => ps7_0_axi_periph_M06_AXI_WSTRB(3 downto 0),
      S00_AXILite_wvalid => ps7_0_axi_periph_M06_AXI_WVALID,
      S02_AXILite_araddr(8 downto 0) => Conn2_ARADDR(8 downto 0),
      S02_AXILite_arready => Conn2_ARREADY,
      S02_AXILite_arvalid => Conn2_ARVALID,
      S02_AXILite_awaddr(8 downto 0) => Conn2_AWADDR(8 downto 0),
      S02_AXILite_awready => Conn2_AWREADY,
      S02_AXILite_awvalid => Conn2_AWVALID,
      S02_AXILite_bready => Conn2_BREADY,
      S02_AXILite_bresp(1 downto 0) => Conn2_BRESP(1 downto 0),
      S02_AXILite_bvalid => Conn2_BVALID,
      S02_AXILite_rdata(31 downto 0) => Conn2_RDATA(31 downto 0),
      S02_AXILite_rready => Conn2_RREADY,
      S02_AXILite_rresp(1 downto 0) => Conn2_RRESP(1 downto 0),
      S02_AXILite_rvalid => Conn2_RVALID,
      S02_AXILite_wdata(31 downto 0) => Conn2_WDATA(31 downto 0),
      S02_AXILite_wready => Conn2_WREADY,
      S02_AXILite_wstrb(3 downto 0) => Conn2_WSTRB(3 downto 0),
      S02_AXILite_wvalid => Conn2_WVALID,
      S04_AXILite_araddr(4 downto 0) => ps7_0_axi_periph_M08_AXI_ARADDR(4 downto 0),
      S04_AXILite_arprot(2 downto 0) => ps7_0_axi_periph_M08_AXI_ARPROT(2 downto 0),
      S04_AXILite_arready => ps7_0_axi_periph_M08_AXI_ARREADY,
      S04_AXILite_arvalid => ps7_0_axi_periph_M08_AXI_ARVALID,
      S04_AXILite_awaddr(4 downto 0) => ps7_0_axi_periph_M08_AXI_AWADDR(4 downto 0),
      S04_AXILite_awprot(2 downto 0) => ps7_0_axi_periph_M08_AXI_AWPROT(2 downto 0),
      S04_AXILite_awready => ps7_0_axi_periph_M08_AXI_AWREADY,
      S04_AXILite_awvalid => ps7_0_axi_periph_M08_AXI_AWVALID,
      S04_AXILite_bready => ps7_0_axi_periph_M08_AXI_BREADY,
      S04_AXILite_bresp(1 downto 0) => ps7_0_axi_periph_M08_AXI_BRESP(1 downto 0),
      S04_AXILite_bvalid => ps7_0_axi_periph_M08_AXI_BVALID,
      S04_AXILite_rdata(31 downto 0) => ps7_0_axi_periph_M08_AXI_RDATA(31 downto 0),
      S04_AXILite_rready => ps7_0_axi_periph_M08_AXI_RREADY,
      S04_AXILite_rresp(1 downto 0) => ps7_0_axi_periph_M08_AXI_RRESP(1 downto 0),
      S04_AXILite_rvalid => ps7_0_axi_periph_M08_AXI_RVALID,
      S04_AXILite_wdata(31 downto 0) => ps7_0_axi_periph_M08_AXI_WDATA(31 downto 0),
      S04_AXILite_wready => ps7_0_axi_periph_M08_AXI_WREADY,
      S04_AXILite_wstrb(3 downto 0) => ps7_0_axi_periph_M08_AXI_WSTRB(3 downto 0),
      S04_AXILite_wvalid => ps7_0_axi_periph_M08_AXI_WVALID,
      TMDS_out_clk_n => Conn1_CLK_N,
      TMDS_out_clk_p => Conn1_CLK_P,
      TMDS_out_data_n(2 downto 0) => Conn1_DATA_N(2 downto 0),
      TMDS_out_data_p(2 downto 0) => Conn1_DATA_P(2 downto 0),
      clk_100M => Net,
      clk_142M => aclk_1,
      hdmi_out_hpd(0) => hdmi_out_hpd_video_gpio_io_o(0),
      hdmi_out_hpd_irq => hdmi_out_hpd_video_ip2intc_irpt,
      periph_resetn_clk100M(0) => Net1(0),
      video_in_tdata(23 downto 0) => color_convert_stream_out_24_TDATA(23 downto 0),
      video_in_tlast => color_convert_stream_out_24_TLAST(0),
      video_in_tready => color_convert_stream_out_24_TREADY,
      video_in_tuser => color_convert_stream_out_24_TUSER(0),
      video_in_tvalid => color_convert_stream_out_24_TVALID,
      vtc_out_irq => v_tc_0_irq
    );
pixel_unpack: component base_pixel_unpack_0
     port map (
      ap_clk => aclk_1,
      ap_rst_n => rst_ps7_0_100M_peripheral_aresetn(0),
      ap_rst_n_control => rst_ps7_0_100M_peripheral_aresetn(0),
      control => aclk_1,
      s_axi_AXILiteS_ARADDR(4 downto 0) => Conn8_ARADDR(4 downto 0),
      s_axi_AXILiteS_ARREADY => Conn8_ARREADY,
      s_axi_AXILiteS_ARVALID => Conn8_ARVALID,
      s_axi_AXILiteS_AWADDR(4 downto 0) => Conn8_AWADDR(4 downto 0),
      s_axi_AXILiteS_AWREADY => Conn8_AWREADY,
      s_axi_AXILiteS_AWVALID => Conn8_AWVALID,
      s_axi_AXILiteS_BREADY => Conn8_BREADY,
      s_axi_AXILiteS_BRESP(1 downto 0) => Conn8_BRESP(1 downto 0),
      s_axi_AXILiteS_BVALID => Conn8_BVALID,
      s_axi_AXILiteS_RDATA(31 downto 0) => Conn8_RDATA(31 downto 0),
      s_axi_AXILiteS_RREADY => Conn8_RREADY,
      s_axi_AXILiteS_RRESP(1 downto 0) => Conn8_RRESP(1 downto 0),
      s_axi_AXILiteS_RVALID => Conn8_RVALID,
      s_axi_AXILiteS_WDATA(31 downto 0) => Conn8_WDATA(31 downto 0),
      s_axi_AXILiteS_WREADY => Conn8_WREADY,
      s_axi_AXILiteS_WSTRB(3 downto 0) => Conn8_WSTRB(3 downto 0),
      s_axi_AXILiteS_WVALID => Conn8_WVALID,
      stream_in_32_TDATA(31 downto 0) => in_stream_1_TDATA(31 downto 0),
      stream_in_32_TLAST(0) => in_stream_1_TLAST(0),
      stream_in_32_TREADY => in_stream_1_TREADY,
      stream_in_32_TUSER(0) => in_stream_1_TUSER(0),
      stream_in_32_TVALID => in_stream_1_TVALID,
      stream_out_24_TDATA(23 downto 0) => pixel_unpack_stream_out_24_TDATA(23 downto 0),
      stream_out_24_TLAST(0) => pixel_unpack_stream_out_24_TLAST(0),
      stream_out_24_TREADY => pixel_unpack_stream_out_24_TREADY,
      stream_out_24_TUSER(0) => pixel_unpack_stream_out_24_TUSER(0),
      stream_out_24_TVALID => pixel_unpack_stream_out_24_TVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity video_imp_1KRFORE is
  port (
    DDC_scl_i : in STD_LOGIC;
    DDC_scl_o : out STD_LOGIC;
    DDC_scl_t : out STD_LOGIC;
    DDC_sda_i : in STD_LOGIC;
    DDC_sda_o : out STD_LOGIC;
    DDC_sda_t : out STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    M_AXI_rid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M_AXI_wid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC;
    TMDS_in_clk_n : in STD_LOGIC;
    TMDS_in_clk_p : in STD_LOGIC;
    TMDS_in_data_n : in STD_LOGIC_VECTOR ( 2 downto 0 );
    TMDS_in_data_p : in STD_LOGIC_VECTOR ( 2 downto 0 );
    TMDS_out_clk_n : out STD_LOGIC;
    TMDS_out_clk_p : out STD_LOGIC;
    TMDS_out_data_n : out STD_LOGIC_VECTOR ( 2 downto 0 );
    TMDS_out_data_p : out STD_LOGIC_VECTOR ( 2 downto 0 );
    clk_100M : in STD_LOGIC;
    clk_142M : in STD_LOGIC;
    clk_200M : in STD_LOGIC;
    hdmi_in_hpd : out STD_LOGIC_VECTOR ( 0 to 0 );
    hdmi_out_hpd : out STD_LOGIC_VECTOR ( 0 to 0 );
    ic_resetn_clk100M : in STD_LOGIC_VECTOR ( 0 to 0 );
    ic_resetn_clk142M : in STD_LOGIC_VECTOR ( 0 to 0 );
    periph_resetn_clk100M : in STD_LOGIC_VECTOR ( 0 to 0 );
    periph_resetn_clk142M : in STD_LOGIC_VECTOR ( 0 to 0 );
    system_resetn : in STD_LOGIC;
    video_irq : out STD_LOGIC_VECTOR ( 5 downto 0 )
  );
end video_imp_1KRFORE;

architecture STRUCTURE of video_imp_1KRFORE is
  component base_axi_vdma_0 is
  port (
    s_axi_lite_aclk : in STD_LOGIC;
    m_axi_mm2s_aclk : in STD_LOGIC;
    m_axis_mm2s_aclk : in STD_LOGIC;
    m_axi_s2mm_aclk : in STD_LOGIC;
    s_axis_s2mm_aclk : in STD_LOGIC;
    axi_resetn : in STD_LOGIC;
    s_axi_lite_awvalid : in STD_LOGIC;
    s_axi_lite_awready : out STD_LOGIC;
    s_axi_lite_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_lite_wvalid : in STD_LOGIC;
    s_axi_lite_wready : out STD_LOGIC;
    s_axi_lite_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_lite_bvalid : out STD_LOGIC;
    s_axi_lite_bready : in STD_LOGIC;
    s_axi_lite_arvalid : in STD_LOGIC;
    s_axi_lite_arready : out STD_LOGIC;
    s_axi_lite_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_lite_rvalid : out STD_LOGIC;
    s_axi_lite_rready : in STD_LOGIC;
    s_axi_lite_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    mm2s_frame_ptr_out : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s2mm_frame_ptr_out : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_mm2s_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_mm2s_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_mm2s_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_mm2s_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_mm2s_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_mm2s_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_mm2s_arvalid : out STD_LOGIC;
    m_axi_mm2s_arready : in STD_LOGIC;
    m_axi_mm2s_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_mm2s_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_mm2s_rlast : in STD_LOGIC;
    m_axi_mm2s_rvalid : in STD_LOGIC;
    m_axi_mm2s_rready : out STD_LOGIC;
    m_axis_mm2s_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_mm2s_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_mm2s_tuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_mm2s_tvalid : out STD_LOGIC;
    m_axis_mm2s_tready : in STD_LOGIC;
    m_axis_mm2s_tlast : out STD_LOGIC;
    m_axi_s2mm_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_s2mm_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_s2mm_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_s2mm_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_s2mm_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_s2mm_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_s2mm_awvalid : out STD_LOGIC;
    m_axi_s2mm_awready : in STD_LOGIC;
    m_axi_s2mm_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_s2mm_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_s2mm_wlast : out STD_LOGIC;
    m_axi_s2mm_wvalid : out STD_LOGIC;
    m_axi_s2mm_wready : in STD_LOGIC;
    m_axi_s2mm_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_s2mm_bvalid : in STD_LOGIC;
    m_axi_s2mm_bready : out STD_LOGIC;
    s_axis_s2mm_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_s2mm_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_s2mm_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_s2mm_tvalid : in STD_LOGIC;
    s_axis_s2mm_tready : out STD_LOGIC;
    s_axis_s2mm_tlast : in STD_LOGIC;
    mm2s_introut : out STD_LOGIC;
    s2mm_introut : out STD_LOGIC
  );
  end component base_axi_vdma_0;
  component base_proc_sys_reset_pixelclk_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component base_proc_sys_reset_pixelclk_0;
  component base_xlconcat_0_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In4 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In5 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  end component base_xlconcat_0_0;
  signal ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn1_CLK_N : STD_LOGIC;
  signal Conn1_CLK_P : STD_LOGIC;
  signal Conn1_DATA_N : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn1_DATA_P : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn2_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn2_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn2_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn2_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal Conn2_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Conn2_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn2_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn2_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn2_ARREADY : STD_LOGIC;
  signal Conn2_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn2_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn2_ARVALID : STD_LOGIC;
  signal Conn2_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn2_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn2_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn2_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal Conn2_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Conn2_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn2_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn2_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn2_AWREADY : STD_LOGIC;
  signal Conn2_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn2_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn2_AWVALID : STD_LOGIC;
  signal Conn2_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal Conn2_BREADY : STD_LOGIC;
  signal Conn2_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn2_BVALID : STD_LOGIC;
  signal Conn2_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn2_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal Conn2_RLAST : STD_LOGIC;
  signal Conn2_RREADY : STD_LOGIC;
  signal Conn2_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn2_RVALID : STD_LOGIC;
  signal Conn2_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn2_WLAST : STD_LOGIC;
  signal Conn2_WREADY : STD_LOGIC;
  signal Conn2_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn2_WVALID : STD_LOGIC;
  signal Net : STD_LOGIC;
  signal Net1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal RefClk_1 : STD_LOGIC;
  signal TMDS_1_CLK_N : STD_LOGIC;
  signal TMDS_1_CLK_P : STD_LOGIC;
  signal TMDS_1_DATA_N : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal TMDS_1_DATA_P : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal aclk_1 : STD_LOGIC;
  signal axi_gpio_video_gpio_io_o : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_gpio_video_ip2intc_irpt : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal axi_interconnect_0_M00_AXI_ARREADY : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_ARVALID : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal axi_interconnect_0_M00_AXI_AWREADY : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_AWVALID : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_BREADY : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M00_AXI_BVALID : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M00_AXI_RREADY : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M00_AXI_RVALID : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M00_AXI_WREADY : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_WVALID : STD_LOGIC;
  signal axi_interconnect_0_M01_AXI_ARADDR : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal axi_interconnect_0_M01_AXI_ARREADY : STD_LOGIC;
  signal axi_interconnect_0_M01_AXI_ARVALID : STD_LOGIC;
  signal axi_interconnect_0_M01_AXI_AWADDR : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal axi_interconnect_0_M01_AXI_AWREADY : STD_LOGIC;
  signal axi_interconnect_0_M01_AXI_AWVALID : STD_LOGIC;
  signal axi_interconnect_0_M01_AXI_BREADY : STD_LOGIC;
  signal axi_interconnect_0_M01_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M01_AXI_BVALID : STD_LOGIC;
  signal axi_interconnect_0_M01_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M01_AXI_RREADY : STD_LOGIC;
  signal axi_interconnect_0_M01_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M01_AXI_RVALID : STD_LOGIC;
  signal axi_interconnect_0_M01_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M01_AXI_WREADY : STD_LOGIC;
  signal axi_interconnect_0_M01_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M01_AXI_WVALID : STD_LOGIC;
  signal axi_interconnect_0_M02_AXI_ARADDR : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal axi_interconnect_0_M02_AXI_ARREADY : STD_LOGIC;
  signal axi_interconnect_0_M02_AXI_ARVALID : STD_LOGIC;
  signal axi_interconnect_0_M02_AXI_AWADDR : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal axi_interconnect_0_M02_AXI_AWREADY : STD_LOGIC;
  signal axi_interconnect_0_M02_AXI_AWVALID : STD_LOGIC;
  signal axi_interconnect_0_M02_AXI_BREADY : STD_LOGIC;
  signal axi_interconnect_0_M02_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M02_AXI_BVALID : STD_LOGIC;
  signal axi_interconnect_0_M02_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M02_AXI_RREADY : STD_LOGIC;
  signal axi_interconnect_0_M02_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M02_AXI_RVALID : STD_LOGIC;
  signal axi_interconnect_0_M02_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M02_AXI_WREADY : STD_LOGIC;
  signal axi_interconnect_0_M02_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M02_AXI_WVALID : STD_LOGIC;
  signal axi_interconnect_0_M03_AXI_ARADDR : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal axi_interconnect_0_M03_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_M03_AXI_ARREADY : STD_LOGIC;
  signal axi_interconnect_0_M03_AXI_ARVALID : STD_LOGIC;
  signal axi_interconnect_0_M03_AXI_AWADDR : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal axi_interconnect_0_M03_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_M03_AXI_AWREADY : STD_LOGIC;
  signal axi_interconnect_0_M03_AXI_AWVALID : STD_LOGIC;
  signal axi_interconnect_0_M03_AXI_BREADY : STD_LOGIC;
  signal axi_interconnect_0_M03_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M03_AXI_BVALID : STD_LOGIC;
  signal axi_interconnect_0_M03_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M03_AXI_RREADY : STD_LOGIC;
  signal axi_interconnect_0_M03_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M03_AXI_RVALID : STD_LOGIC;
  signal axi_interconnect_0_M03_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M03_AXI_WREADY : STD_LOGIC;
  signal axi_interconnect_0_M03_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M03_AXI_WVALID : STD_LOGIC;
  signal axi_interconnect_0_M04_AXI_ARADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal axi_interconnect_0_M04_AXI_ARREADY : STD_LOGIC;
  signal axi_interconnect_0_M04_AXI_ARVALID : STD_LOGIC;
  signal axi_interconnect_0_M04_AXI_AWADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal axi_interconnect_0_M04_AXI_AWREADY : STD_LOGIC;
  signal axi_interconnect_0_M04_AXI_AWVALID : STD_LOGIC;
  signal axi_interconnect_0_M04_AXI_BREADY : STD_LOGIC;
  signal axi_interconnect_0_M04_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M04_AXI_BVALID : STD_LOGIC;
  signal axi_interconnect_0_M04_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M04_AXI_RREADY : STD_LOGIC;
  signal axi_interconnect_0_M04_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M04_AXI_RVALID : STD_LOGIC;
  signal axi_interconnect_0_M04_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M04_AXI_WREADY : STD_LOGIC;
  signal axi_interconnect_0_M04_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M04_AXI_WVALID : STD_LOGIC;
  signal axi_interconnect_0_M05_AXI_ARADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal axi_interconnect_0_M05_AXI_ARREADY : STD_LOGIC;
  signal axi_interconnect_0_M05_AXI_ARVALID : STD_LOGIC;
  signal axi_interconnect_0_M05_AXI_AWADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal axi_interconnect_0_M05_AXI_AWREADY : STD_LOGIC;
  signal axi_interconnect_0_M05_AXI_AWVALID : STD_LOGIC;
  signal axi_interconnect_0_M05_AXI_BREADY : STD_LOGIC;
  signal axi_interconnect_0_M05_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M05_AXI_BVALID : STD_LOGIC;
  signal axi_interconnect_0_M05_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M05_AXI_RREADY : STD_LOGIC;
  signal axi_interconnect_0_M05_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M05_AXI_RVALID : STD_LOGIC;
  signal axi_interconnect_0_M05_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M05_AXI_WREADY : STD_LOGIC;
  signal axi_interconnect_0_M05_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M05_AXI_WVALID : STD_LOGIC;
  signal axi_interconnect_0_M06_AXI_ARADDR : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal axi_interconnect_0_M06_AXI_ARREADY : STD_LOGIC;
  signal axi_interconnect_0_M06_AXI_ARVALID : STD_LOGIC;
  signal axi_interconnect_0_M06_AXI_AWADDR : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal axi_interconnect_0_M06_AXI_AWREADY : STD_LOGIC;
  signal axi_interconnect_0_M06_AXI_AWVALID : STD_LOGIC;
  signal axi_interconnect_0_M06_AXI_BREADY : STD_LOGIC;
  signal axi_interconnect_0_M06_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M06_AXI_BVALID : STD_LOGIC;
  signal axi_interconnect_0_M06_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M06_AXI_RREADY : STD_LOGIC;
  signal axi_interconnect_0_M06_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M06_AXI_RVALID : STD_LOGIC;
  signal axi_interconnect_0_M06_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M06_AXI_WREADY : STD_LOGIC;
  signal axi_interconnect_0_M06_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M06_AXI_WVALID : STD_LOGIC;
  signal axi_interconnect_0_M07_AXI_ARADDR : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal axi_interconnect_0_M07_AXI_ARREADY : STD_LOGIC;
  signal axi_interconnect_0_M07_AXI_ARVALID : STD_LOGIC;
  signal axi_interconnect_0_M07_AXI_AWADDR : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal axi_interconnect_0_M07_AXI_AWREADY : STD_LOGIC;
  signal axi_interconnect_0_M07_AXI_AWVALID : STD_LOGIC;
  signal axi_interconnect_0_M07_AXI_BREADY : STD_LOGIC;
  signal axi_interconnect_0_M07_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M07_AXI_BVALID : STD_LOGIC;
  signal axi_interconnect_0_M07_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M07_AXI_RREADY : STD_LOGIC;
  signal axi_interconnect_0_M07_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M07_AXI_RVALID : STD_LOGIC;
  signal axi_interconnect_0_M07_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M07_AXI_WREADY : STD_LOGIC;
  signal axi_interconnect_0_M07_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M07_AXI_WVALID : STD_LOGIC;
  signal axi_interconnect_0_M08_AXI_ARADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal axi_interconnect_0_M08_AXI_ARREADY : STD_LOGIC;
  signal axi_interconnect_0_M08_AXI_ARVALID : STD_LOGIC;
  signal axi_interconnect_0_M08_AXI_AWADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal axi_interconnect_0_M08_AXI_AWREADY : STD_LOGIC;
  signal axi_interconnect_0_M08_AXI_AWVALID : STD_LOGIC;
  signal axi_interconnect_0_M08_AXI_BREADY : STD_LOGIC;
  signal axi_interconnect_0_M08_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M08_AXI_BVALID : STD_LOGIC;
  signal axi_interconnect_0_M08_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M08_AXI_RREADY : STD_LOGIC;
  signal axi_interconnect_0_M08_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M08_AXI_RVALID : STD_LOGIC;
  signal axi_interconnect_0_M08_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M08_AXI_WREADY : STD_LOGIC;
  signal axi_interconnect_0_M08_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M08_AXI_WVALID : STD_LOGIC;
  signal axi_interconnect_0_M09_AXI_ARADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal axi_interconnect_0_M09_AXI_ARREADY : STD_LOGIC;
  signal axi_interconnect_0_M09_AXI_ARVALID : STD_LOGIC;
  signal axi_interconnect_0_M09_AXI_AWADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal axi_interconnect_0_M09_AXI_AWREADY : STD_LOGIC;
  signal axi_interconnect_0_M09_AXI_AWVALID : STD_LOGIC;
  signal axi_interconnect_0_M09_AXI_BREADY : STD_LOGIC;
  signal axi_interconnect_0_M09_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M09_AXI_BVALID : STD_LOGIC;
  signal axi_interconnect_0_M09_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M09_AXI_RREADY : STD_LOGIC;
  signal axi_interconnect_0_M09_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M09_AXI_RVALID : STD_LOGIC;
  signal axi_interconnect_0_M09_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M09_AXI_WREADY : STD_LOGIC;
  signal axi_interconnect_0_M09_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M09_AXI_WVALID : STD_LOGIC;
  signal axi_mem_intercon_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_mem_intercon_M00_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_M00_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_M00_AXI_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_mem_intercon_M00_AXI_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_M00_AXI_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_M00_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_M00_AXI_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_M00_AXI_ARREADY : STD_LOGIC;
  signal axi_mem_intercon_M00_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_M00_AXI_ARVALID : STD_LOGIC;
  signal axi_mem_intercon_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_mem_intercon_M00_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_M00_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_M00_AXI_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_mem_intercon_M00_AXI_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_M00_AXI_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_M00_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_M00_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_M00_AXI_AWREADY : STD_LOGIC;
  signal axi_mem_intercon_M00_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_M00_AXI_AWVALID : STD_LOGIC;
  signal axi_mem_intercon_M00_AXI_BID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal axi_mem_intercon_M00_AXI_BREADY : STD_LOGIC;
  signal axi_mem_intercon_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_M00_AXI_BVALID : STD_LOGIC;
  signal axi_mem_intercon_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal axi_mem_intercon_M00_AXI_RID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal axi_mem_intercon_M00_AXI_RLAST : STD_LOGIC;
  signal axi_mem_intercon_M00_AXI_RREADY : STD_LOGIC;
  signal axi_mem_intercon_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_M00_AXI_RVALID : STD_LOGIC;
  signal axi_mem_intercon_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal axi_mem_intercon_M00_AXI_WID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_mem_intercon_M00_AXI_WLAST : STD_LOGIC;
  signal axi_mem_intercon_M00_AXI_WREADY : STD_LOGIC;
  signal axi_mem_intercon_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_mem_intercon_M00_AXI_WVALID : STD_LOGIC;
  signal axi_vdma_0_M_AXIS_MM2S_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_vdma_0_M_AXIS_MM2S_TLAST : STD_LOGIC;
  signal axi_vdma_0_M_AXIS_MM2S_TREADY : STD_LOGIC;
  signal axi_vdma_0_M_AXIS_MM2S_TUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_vdma_0_M_AXIS_MM2S_TVALID : STD_LOGIC;
  signal axi_vdma_0_M_AXI_MM2S_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_vdma_0_M_AXI_MM2S_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_vdma_0_M_AXI_MM2S_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_vdma_0_M_AXI_MM2S_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_vdma_0_M_AXI_MM2S_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_vdma_0_M_AXI_MM2S_ARREADY : STD_LOGIC;
  signal axi_vdma_0_M_AXI_MM2S_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_vdma_0_M_AXI_MM2S_ARVALID : STD_LOGIC;
  signal axi_vdma_0_M_AXI_MM2S_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_vdma_0_M_AXI_MM2S_RLAST : STD_LOGIC;
  signal axi_vdma_0_M_AXI_MM2S_RREADY : STD_LOGIC;
  signal axi_vdma_0_M_AXI_MM2S_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_vdma_0_M_AXI_MM2S_RVALID : STD_LOGIC;
  signal axi_vdma_0_M_AXI_S2MM_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_vdma_0_M_AXI_S2MM_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_vdma_0_M_AXI_S2MM_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_vdma_0_M_AXI_S2MM_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_vdma_0_M_AXI_S2MM_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_vdma_0_M_AXI_S2MM_AWREADY : STD_LOGIC;
  signal axi_vdma_0_M_AXI_S2MM_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_vdma_0_M_AXI_S2MM_AWVALID : STD_LOGIC;
  signal axi_vdma_0_M_AXI_S2MM_BREADY : STD_LOGIC;
  signal axi_vdma_0_M_AXI_S2MM_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_vdma_0_M_AXI_S2MM_BVALID : STD_LOGIC;
  signal axi_vdma_0_M_AXI_S2MM_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal axi_vdma_0_M_AXI_S2MM_WLAST : STD_LOGIC;
  signal axi_vdma_0_M_AXI_S2MM_WREADY : STD_LOGIC;
  signal axi_vdma_0_M_AXI_S2MM_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_vdma_0_M_AXI_S2MM_WVALID : STD_LOGIC;
  signal axi_vdma_0_mm2s_introut : STD_LOGIC;
  signal axi_vdma_0_s2mm_introut : STD_LOGIC;
  signal ext_reset_in_1 : STD_LOGIC;
  signal frontend_DDC_SCL_I : STD_LOGIC;
  signal frontend_DDC_SCL_O : STD_LOGIC;
  signal frontend_DDC_SCL_T : STD_LOGIC;
  signal frontend_DDC_SDA_I : STD_LOGIC;
  signal frontend_DDC_SDA_O : STD_LOGIC;
  signal frontend_DDC_SDA_T : STD_LOGIC;
  signal hdmi_in_PixelClk : STD_LOGIC;
  signal hdmi_in_aPixelClkLckd : STD_LOGIC;
  signal hdmi_out_hpd_video_gpio_io_o : STD_LOGIC_VECTOR ( 0 to 0 );
  signal hdmi_out_hpd_video_ip2intc_irpt : STD_LOGIC;
  signal in_pixelformat_M00_AXIS_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal in_pixelformat_M00_AXIS_TLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal in_pixelformat_M00_AXIS_TREADY : STD_LOGIC;
  signal in_pixelformat_M00_AXIS_TUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal in_pixelformat_M00_AXIS_TVALID : STD_LOGIC;
  signal rst_ps7_0_100M_interconnect_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rst_ps7_0_100M_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal v_tc_0_irq : STD_LOGIC;
  signal v_tc_1_irq : STD_LOGIC;
  signal vid_io_in_reset_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal vtc_in_resetn_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlconcat_0_dout : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_axi_vdma_m_axis_mm2s_tkeep_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_axi_vdma_mm2s_frame_ptr_out_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_axi_vdma_s2mm_frame_ptr_out_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_proc_sys_reset_pixelclk_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_proc_sys_reset_pixelclk_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_pixelclk_interconnect_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  ARESETN_1(0) <= ic_resetn_clk100M(0);
  Conn2_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  Conn2_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  Conn2_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  Conn2_ARID(11 downto 0) <= S_AXI_arid(11 downto 0);
  Conn2_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  Conn2_ARLOCK(0) <= S_AXI_arlock(0);
  Conn2_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  Conn2_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  Conn2_ARREGION(3 downto 0) <= S_AXI_arregion(3 downto 0);
  Conn2_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  Conn2_ARVALID <= S_AXI_arvalid;
  Conn2_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  Conn2_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  Conn2_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  Conn2_AWID(11 downto 0) <= S_AXI_awid(11 downto 0);
  Conn2_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  Conn2_AWLOCK(0) <= S_AXI_awlock(0);
  Conn2_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  Conn2_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  Conn2_AWREGION(3 downto 0) <= S_AXI_awregion(3 downto 0);
  Conn2_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  Conn2_AWVALID <= S_AXI_awvalid;
  Conn2_BREADY <= S_AXI_bready;
  Conn2_RREADY <= S_AXI_rready;
  Conn2_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  Conn2_WLAST <= S_AXI_wlast;
  Conn2_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  Conn2_WVALID <= S_AXI_wvalid;
  DDC_scl_o <= frontend_DDC_SCL_O;
  DDC_scl_t <= frontend_DDC_SCL_T;
  DDC_sda_o <= frontend_DDC_SDA_O;
  DDC_sda_t <= frontend_DDC_SDA_T;
  M_AXI_araddr(31 downto 0) <= axi_mem_intercon_M00_AXI_ARADDR(31 downto 0);
  M_AXI_arburst(1 downto 0) <= axi_mem_intercon_M00_AXI_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= axi_mem_intercon_M00_AXI_ARCACHE(3 downto 0);
  M_AXI_arid(0) <= axi_mem_intercon_M00_AXI_ARID(0);
  M_AXI_arlen(3 downto 0) <= axi_mem_intercon_M00_AXI_ARLEN(3 downto 0);
  M_AXI_arlock(1 downto 0) <= axi_mem_intercon_M00_AXI_ARLOCK(1 downto 0);
  M_AXI_arprot(2 downto 0) <= axi_mem_intercon_M00_AXI_ARPROT(2 downto 0);
  M_AXI_arqos(3 downto 0) <= axi_mem_intercon_M00_AXI_ARQOS(3 downto 0);
  M_AXI_arsize(2 downto 0) <= axi_mem_intercon_M00_AXI_ARSIZE(2 downto 0);
  M_AXI_arvalid <= axi_mem_intercon_M00_AXI_ARVALID;
  M_AXI_awaddr(31 downto 0) <= axi_mem_intercon_M00_AXI_AWADDR(31 downto 0);
  M_AXI_awburst(1 downto 0) <= axi_mem_intercon_M00_AXI_AWBURST(1 downto 0);
  M_AXI_awcache(3 downto 0) <= axi_mem_intercon_M00_AXI_AWCACHE(3 downto 0);
  M_AXI_awid(0) <= axi_mem_intercon_M00_AXI_AWID(0);
  M_AXI_awlen(3 downto 0) <= axi_mem_intercon_M00_AXI_AWLEN(3 downto 0);
  M_AXI_awlock(1 downto 0) <= axi_mem_intercon_M00_AXI_AWLOCK(1 downto 0);
  M_AXI_awprot(2 downto 0) <= axi_mem_intercon_M00_AXI_AWPROT(2 downto 0);
  M_AXI_awqos(3 downto 0) <= axi_mem_intercon_M00_AXI_AWQOS(3 downto 0);
  M_AXI_awsize(2 downto 0) <= axi_mem_intercon_M00_AXI_AWSIZE(2 downto 0);
  M_AXI_awvalid <= axi_mem_intercon_M00_AXI_AWVALID;
  M_AXI_bready <= axi_mem_intercon_M00_AXI_BREADY;
  M_AXI_rready <= axi_mem_intercon_M00_AXI_RREADY;
  M_AXI_wdata(63 downto 0) <= axi_mem_intercon_M00_AXI_WDATA(63 downto 0);
  M_AXI_wid(0) <= axi_mem_intercon_M00_AXI_WID(0);
  M_AXI_wlast <= axi_mem_intercon_M00_AXI_WLAST;
  M_AXI_wstrb(7 downto 0) <= axi_mem_intercon_M00_AXI_WSTRB(7 downto 0);
  M_AXI_wvalid <= axi_mem_intercon_M00_AXI_WVALID;
  Net <= clk_100M;
  Net1(0) <= periph_resetn_clk100M(0);
  RefClk_1 <= clk_200M;
  S_AXI_arready <= Conn2_ARREADY;
  S_AXI_awready <= Conn2_AWREADY;
  S_AXI_bid(11 downto 0) <= Conn2_BID(11 downto 0);
  S_AXI_bresp(1 downto 0) <= Conn2_BRESP(1 downto 0);
  S_AXI_bvalid <= Conn2_BVALID;
  S_AXI_rdata(31 downto 0) <= Conn2_RDATA(31 downto 0);
  S_AXI_rid(11 downto 0) <= Conn2_RID(11 downto 0);
  S_AXI_rlast <= Conn2_RLAST;
  S_AXI_rresp(1 downto 0) <= Conn2_RRESP(1 downto 0);
  S_AXI_rvalid <= Conn2_RVALID;
  S_AXI_wready <= Conn2_WREADY;
  TMDS_1_CLK_N <= TMDS_in_clk_n;
  TMDS_1_CLK_P <= TMDS_in_clk_p;
  TMDS_1_DATA_N(2 downto 0) <= TMDS_in_data_n(2 downto 0);
  TMDS_1_DATA_P(2 downto 0) <= TMDS_in_data_p(2 downto 0);
  TMDS_out_clk_n <= Conn1_CLK_N;
  TMDS_out_clk_p <= Conn1_CLK_P;
  TMDS_out_data_n(2 downto 0) <= Conn1_DATA_N(2 downto 0);
  TMDS_out_data_p(2 downto 0) <= Conn1_DATA_P(2 downto 0);
  aclk_1 <= clk_142M;
  axi_mem_intercon_M00_AXI_ARREADY <= M_AXI_arready;
  axi_mem_intercon_M00_AXI_AWREADY <= M_AXI_awready;
  axi_mem_intercon_M00_AXI_BID(5 downto 0) <= M_AXI_bid(5 downto 0);
  axi_mem_intercon_M00_AXI_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  axi_mem_intercon_M00_AXI_BVALID <= M_AXI_bvalid;
  axi_mem_intercon_M00_AXI_RDATA(63 downto 0) <= M_AXI_rdata(63 downto 0);
  axi_mem_intercon_M00_AXI_RID(5 downto 0) <= M_AXI_rid(5 downto 0);
  axi_mem_intercon_M00_AXI_RLAST <= M_AXI_rlast;
  axi_mem_intercon_M00_AXI_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  axi_mem_intercon_M00_AXI_RVALID <= M_AXI_rvalid;
  axi_mem_intercon_M00_AXI_WREADY <= M_AXI_wready;
  ext_reset_in_1 <= system_resetn;
  frontend_DDC_SCL_I <= DDC_scl_i;
  frontend_DDC_SDA_I <= DDC_sda_i;
  hdmi_in_hpd(0) <= axi_gpio_video_gpio_io_o(0);
  hdmi_out_hpd(0) <= hdmi_out_hpd_video_gpio_io_o(0);
  rst_ps7_0_100M_interconnect_aresetn(0) <= ic_resetn_clk142M(0);
  rst_ps7_0_100M_peripheral_aresetn(0) <= periph_resetn_clk142M(0);
  video_irq(5 downto 0) <= xlconcat_0_dout(5 downto 0);
axi_interconnect_0: entity work.base_axi_interconnect_0_1
     port map (
      ACLK => Net,
      ARESETN => ARESETN_1(0),
      M00_ACLK => Net,
      M00_ARESETN => Net1(0),
      M00_AXI_araddr(8 downto 0) => axi_interconnect_0_M00_AXI_ARADDR(8 downto 0),
      M00_AXI_arready => axi_interconnect_0_M00_AXI_ARREADY,
      M00_AXI_arvalid => axi_interconnect_0_M00_AXI_ARVALID,
      M00_AXI_awaddr(8 downto 0) => axi_interconnect_0_M00_AXI_AWADDR(8 downto 0),
      M00_AXI_awready => axi_interconnect_0_M00_AXI_AWREADY,
      M00_AXI_awvalid => axi_interconnect_0_M00_AXI_AWVALID,
      M00_AXI_bready => axi_interconnect_0_M00_AXI_BREADY,
      M00_AXI_bresp(1 downto 0) => axi_interconnect_0_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid => axi_interconnect_0_M00_AXI_BVALID,
      M00_AXI_rdata(31 downto 0) => axi_interconnect_0_M00_AXI_RDATA(31 downto 0),
      M00_AXI_rready => axi_interconnect_0_M00_AXI_RREADY,
      M00_AXI_rresp(1 downto 0) => axi_interconnect_0_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid => axi_interconnect_0_M00_AXI_RVALID,
      M00_AXI_wdata(31 downto 0) => axi_interconnect_0_M00_AXI_WDATA(31 downto 0),
      M00_AXI_wready => axi_interconnect_0_M00_AXI_WREADY,
      M00_AXI_wvalid => axi_interconnect_0_M00_AXI_WVALID,
      M01_ACLK => aclk_1,
      M01_ARESETN => rst_ps7_0_100M_peripheral_aresetn(0),
      M01_AXI_araddr(4 downto 0) => axi_interconnect_0_M01_AXI_ARADDR(4 downto 0),
      M01_AXI_arready => axi_interconnect_0_M01_AXI_ARREADY,
      M01_AXI_arvalid => axi_interconnect_0_M01_AXI_ARVALID,
      M01_AXI_awaddr(4 downto 0) => axi_interconnect_0_M01_AXI_AWADDR(4 downto 0),
      M01_AXI_awready => axi_interconnect_0_M01_AXI_AWREADY,
      M01_AXI_awvalid => axi_interconnect_0_M01_AXI_AWVALID,
      M01_AXI_bready => axi_interconnect_0_M01_AXI_BREADY,
      M01_AXI_bresp(1 downto 0) => axi_interconnect_0_M01_AXI_BRESP(1 downto 0),
      M01_AXI_bvalid => axi_interconnect_0_M01_AXI_BVALID,
      M01_AXI_rdata(31 downto 0) => axi_interconnect_0_M01_AXI_RDATA(31 downto 0),
      M01_AXI_rready => axi_interconnect_0_M01_AXI_RREADY,
      M01_AXI_rresp(1 downto 0) => axi_interconnect_0_M01_AXI_RRESP(1 downto 0),
      M01_AXI_rvalid => axi_interconnect_0_M01_AXI_RVALID,
      M01_AXI_wdata(31 downto 0) => axi_interconnect_0_M01_AXI_WDATA(31 downto 0),
      M01_AXI_wready => axi_interconnect_0_M01_AXI_WREADY,
      M01_AXI_wstrb(3 downto 0) => axi_interconnect_0_M01_AXI_WSTRB(3 downto 0),
      M01_AXI_wvalid => axi_interconnect_0_M01_AXI_WVALID,
      M02_ACLK => aclk_1,
      M02_ARESETN => rst_ps7_0_100M_peripheral_aresetn(0),
      M02_AXI_araddr(6 downto 0) => axi_interconnect_0_M02_AXI_ARADDR(6 downto 0),
      M02_AXI_arready => axi_interconnect_0_M02_AXI_ARREADY,
      M02_AXI_arvalid => axi_interconnect_0_M02_AXI_ARVALID,
      M02_AXI_awaddr(6 downto 0) => axi_interconnect_0_M02_AXI_AWADDR(6 downto 0),
      M02_AXI_awready => axi_interconnect_0_M02_AXI_AWREADY,
      M02_AXI_awvalid => axi_interconnect_0_M02_AXI_AWVALID,
      M02_AXI_bready => axi_interconnect_0_M02_AXI_BREADY,
      M02_AXI_bresp(1 downto 0) => axi_interconnect_0_M02_AXI_BRESP(1 downto 0),
      M02_AXI_bvalid => axi_interconnect_0_M02_AXI_BVALID,
      M02_AXI_rdata(31 downto 0) => axi_interconnect_0_M02_AXI_RDATA(31 downto 0),
      M02_AXI_rready => axi_interconnect_0_M02_AXI_RREADY,
      M02_AXI_rresp(1 downto 0) => axi_interconnect_0_M02_AXI_RRESP(1 downto 0),
      M02_AXI_rvalid => axi_interconnect_0_M02_AXI_RVALID,
      M02_AXI_wdata(31 downto 0) => axi_interconnect_0_M02_AXI_WDATA(31 downto 0),
      M02_AXI_wready => axi_interconnect_0_M02_AXI_WREADY,
      M02_AXI_wstrb(3 downto 0) => axi_interconnect_0_M02_AXI_WSTRB(3 downto 0),
      M02_AXI_wvalid => axi_interconnect_0_M02_AXI_WVALID,
      M03_ACLK => Net,
      M03_ARESETN => Net1(0),
      M03_AXI_araddr(4 downto 0) => axi_interconnect_0_M03_AXI_ARADDR(4 downto 0),
      M03_AXI_arprot(2 downto 0) => axi_interconnect_0_M03_AXI_ARPROT(2 downto 0),
      M03_AXI_arready => axi_interconnect_0_M03_AXI_ARREADY,
      M03_AXI_arvalid => axi_interconnect_0_M03_AXI_ARVALID,
      M03_AXI_awaddr(4 downto 0) => axi_interconnect_0_M03_AXI_AWADDR(4 downto 0),
      M03_AXI_awprot(2 downto 0) => axi_interconnect_0_M03_AXI_AWPROT(2 downto 0),
      M03_AXI_awready => axi_interconnect_0_M03_AXI_AWREADY,
      M03_AXI_awvalid => axi_interconnect_0_M03_AXI_AWVALID,
      M03_AXI_bready => axi_interconnect_0_M03_AXI_BREADY,
      M03_AXI_bresp(1 downto 0) => axi_interconnect_0_M03_AXI_BRESP(1 downto 0),
      M03_AXI_bvalid => axi_interconnect_0_M03_AXI_BVALID,
      M03_AXI_rdata(31 downto 0) => axi_interconnect_0_M03_AXI_RDATA(31 downto 0),
      M03_AXI_rready => axi_interconnect_0_M03_AXI_RREADY,
      M03_AXI_rresp(1 downto 0) => axi_interconnect_0_M03_AXI_RRESP(1 downto 0),
      M03_AXI_rvalid => axi_interconnect_0_M03_AXI_RVALID,
      M03_AXI_wdata(31 downto 0) => axi_interconnect_0_M03_AXI_WDATA(31 downto 0),
      M03_AXI_wready => axi_interconnect_0_M03_AXI_WREADY,
      M03_AXI_wstrb(3 downto 0) => axi_interconnect_0_M03_AXI_WSTRB(3 downto 0),
      M03_AXI_wvalid => axi_interconnect_0_M03_AXI_WVALID,
      M04_ACLK => Net,
      M04_ARESETN => Net1(0),
      M04_AXI_araddr(8 downto 0) => axi_interconnect_0_M04_AXI_ARADDR(8 downto 0),
      M04_AXI_arready => axi_interconnect_0_M04_AXI_ARREADY,
      M04_AXI_arvalid => axi_interconnect_0_M04_AXI_ARVALID,
      M04_AXI_awaddr(8 downto 0) => axi_interconnect_0_M04_AXI_AWADDR(8 downto 0),
      M04_AXI_awready => axi_interconnect_0_M04_AXI_AWREADY,
      M04_AXI_awvalid => axi_interconnect_0_M04_AXI_AWVALID,
      M04_AXI_bready => axi_interconnect_0_M04_AXI_BREADY,
      M04_AXI_bresp(1 downto 0) => axi_interconnect_0_M04_AXI_BRESP(1 downto 0),
      M04_AXI_bvalid => axi_interconnect_0_M04_AXI_BVALID,
      M04_AXI_rdata(31 downto 0) => axi_interconnect_0_M04_AXI_RDATA(31 downto 0),
      M04_AXI_rready => axi_interconnect_0_M04_AXI_RREADY,
      M04_AXI_rresp(1 downto 0) => axi_interconnect_0_M04_AXI_RRESP(1 downto 0),
      M04_AXI_rvalid => axi_interconnect_0_M04_AXI_RVALID,
      M04_AXI_wdata(31 downto 0) => axi_interconnect_0_M04_AXI_WDATA(31 downto 0),
      M04_AXI_wready => axi_interconnect_0_M04_AXI_WREADY,
      M04_AXI_wstrb(3 downto 0) => axi_interconnect_0_M04_AXI_WSTRB(3 downto 0),
      M04_AXI_wvalid => axi_interconnect_0_M04_AXI_WVALID,
      M05_ACLK => Net,
      M05_ARESETN => Net1(0),
      M05_AXI_araddr(8 downto 0) => axi_interconnect_0_M05_AXI_ARADDR(8 downto 0),
      M05_AXI_arready => axi_interconnect_0_M05_AXI_ARREADY,
      M05_AXI_arvalid => axi_interconnect_0_M05_AXI_ARVALID,
      M05_AXI_awaddr(8 downto 0) => axi_interconnect_0_M05_AXI_AWADDR(8 downto 0),
      M05_AXI_awready => axi_interconnect_0_M05_AXI_AWREADY,
      M05_AXI_awvalid => axi_interconnect_0_M05_AXI_AWVALID,
      M05_AXI_bready => axi_interconnect_0_M05_AXI_BREADY,
      M05_AXI_bresp(1 downto 0) => axi_interconnect_0_M05_AXI_BRESP(1 downto 0),
      M05_AXI_bvalid => axi_interconnect_0_M05_AXI_BVALID,
      M05_AXI_rdata(31 downto 0) => axi_interconnect_0_M05_AXI_RDATA(31 downto 0),
      M05_AXI_rready => axi_interconnect_0_M05_AXI_RREADY,
      M05_AXI_rresp(1 downto 0) => axi_interconnect_0_M05_AXI_RRESP(1 downto 0),
      M05_AXI_rvalid => axi_interconnect_0_M05_AXI_RVALID,
      M05_AXI_wdata(31 downto 0) => axi_interconnect_0_M05_AXI_WDATA(31 downto 0),
      M05_AXI_wready => axi_interconnect_0_M05_AXI_WREADY,
      M05_AXI_wstrb(3 downto 0) => axi_interconnect_0_M05_AXI_WSTRB(3 downto 0),
      M05_AXI_wvalid => axi_interconnect_0_M05_AXI_WVALID,
      M06_ACLK => aclk_1,
      M06_ARESETN => rst_ps7_0_100M_peripheral_aresetn(0),
      M06_AXI_araddr(6 downto 0) => axi_interconnect_0_M06_AXI_ARADDR(6 downto 0),
      M06_AXI_arready => axi_interconnect_0_M06_AXI_ARREADY,
      M06_AXI_arvalid => axi_interconnect_0_M06_AXI_ARVALID,
      M06_AXI_awaddr(6 downto 0) => axi_interconnect_0_M06_AXI_AWADDR(6 downto 0),
      M06_AXI_awready => axi_interconnect_0_M06_AXI_AWREADY,
      M06_AXI_awvalid => axi_interconnect_0_M06_AXI_AWVALID,
      M06_AXI_bready => axi_interconnect_0_M06_AXI_BREADY,
      M06_AXI_bresp(1 downto 0) => axi_interconnect_0_M06_AXI_BRESP(1 downto 0),
      M06_AXI_bvalid => axi_interconnect_0_M06_AXI_BVALID,
      M06_AXI_rdata(31 downto 0) => axi_interconnect_0_M06_AXI_RDATA(31 downto 0),
      M06_AXI_rready => axi_interconnect_0_M06_AXI_RREADY,
      M06_AXI_rresp(1 downto 0) => axi_interconnect_0_M06_AXI_RRESP(1 downto 0),
      M06_AXI_rvalid => axi_interconnect_0_M06_AXI_RVALID,
      M06_AXI_wdata(31 downto 0) => axi_interconnect_0_M06_AXI_WDATA(31 downto 0),
      M06_AXI_wready => axi_interconnect_0_M06_AXI_WREADY,
      M06_AXI_wstrb(3 downto 0) => axi_interconnect_0_M06_AXI_WSTRB(3 downto 0),
      M06_AXI_wvalid => axi_interconnect_0_M06_AXI_WVALID,
      M07_ACLK => aclk_1,
      M07_ARESETN => rst_ps7_0_100M_peripheral_aresetn(0),
      M07_AXI_araddr(4 downto 0) => axi_interconnect_0_M07_AXI_ARADDR(4 downto 0),
      M07_AXI_arready => axi_interconnect_0_M07_AXI_ARREADY,
      M07_AXI_arvalid => axi_interconnect_0_M07_AXI_ARVALID,
      M07_AXI_awaddr(4 downto 0) => axi_interconnect_0_M07_AXI_AWADDR(4 downto 0),
      M07_AXI_awready => axi_interconnect_0_M07_AXI_AWREADY,
      M07_AXI_awvalid => axi_interconnect_0_M07_AXI_AWVALID,
      M07_AXI_bready => axi_interconnect_0_M07_AXI_BREADY,
      M07_AXI_bresp(1 downto 0) => axi_interconnect_0_M07_AXI_BRESP(1 downto 0),
      M07_AXI_bvalid => axi_interconnect_0_M07_AXI_BVALID,
      M07_AXI_rdata(31 downto 0) => axi_interconnect_0_M07_AXI_RDATA(31 downto 0),
      M07_AXI_rready => axi_interconnect_0_M07_AXI_RREADY,
      M07_AXI_rresp(1 downto 0) => axi_interconnect_0_M07_AXI_RRESP(1 downto 0),
      M07_AXI_rvalid => axi_interconnect_0_M07_AXI_RVALID,
      M07_AXI_wdata(31 downto 0) => axi_interconnect_0_M07_AXI_WDATA(31 downto 0),
      M07_AXI_wready => axi_interconnect_0_M07_AXI_WREADY,
      M07_AXI_wstrb(3 downto 0) => axi_interconnect_0_M07_AXI_WSTRB(3 downto 0),
      M07_AXI_wvalid => axi_interconnect_0_M07_AXI_WVALID,
      M08_ACLK => Net,
      M08_ARESETN => Net1(0),
      M08_AXI_araddr(8 downto 0) => axi_interconnect_0_M08_AXI_ARADDR(8 downto 0),
      M08_AXI_arready => axi_interconnect_0_M08_AXI_ARREADY,
      M08_AXI_arvalid => axi_interconnect_0_M08_AXI_ARVALID,
      M08_AXI_awaddr(8 downto 0) => axi_interconnect_0_M08_AXI_AWADDR(8 downto 0),
      M08_AXI_awready => axi_interconnect_0_M08_AXI_AWREADY,
      M08_AXI_awvalid => axi_interconnect_0_M08_AXI_AWVALID,
      M08_AXI_bready => axi_interconnect_0_M08_AXI_BREADY,
      M08_AXI_bresp(1 downto 0) => axi_interconnect_0_M08_AXI_BRESP(1 downto 0),
      M08_AXI_bvalid => axi_interconnect_0_M08_AXI_BVALID,
      M08_AXI_rdata(31 downto 0) => axi_interconnect_0_M08_AXI_RDATA(31 downto 0),
      M08_AXI_rready => axi_interconnect_0_M08_AXI_RREADY,
      M08_AXI_rresp(1 downto 0) => axi_interconnect_0_M08_AXI_RRESP(1 downto 0),
      M08_AXI_rvalid => axi_interconnect_0_M08_AXI_RVALID,
      M08_AXI_wdata(31 downto 0) => axi_interconnect_0_M08_AXI_WDATA(31 downto 0),
      M08_AXI_wready => axi_interconnect_0_M08_AXI_WREADY,
      M08_AXI_wstrb(3 downto 0) => axi_interconnect_0_M08_AXI_WSTRB(3 downto 0),
      M08_AXI_wvalid => axi_interconnect_0_M08_AXI_WVALID,
      M09_ACLK => Net,
      M09_ARESETN => Net1(0),
      M09_AXI_araddr(8 downto 0) => axi_interconnect_0_M09_AXI_ARADDR(8 downto 0),
      M09_AXI_arready => axi_interconnect_0_M09_AXI_ARREADY,
      M09_AXI_arvalid => axi_interconnect_0_M09_AXI_ARVALID,
      M09_AXI_awaddr(8 downto 0) => axi_interconnect_0_M09_AXI_AWADDR(8 downto 0),
      M09_AXI_awready => axi_interconnect_0_M09_AXI_AWREADY,
      M09_AXI_awvalid => axi_interconnect_0_M09_AXI_AWVALID,
      M09_AXI_bready => axi_interconnect_0_M09_AXI_BREADY,
      M09_AXI_bresp(1 downto 0) => axi_interconnect_0_M09_AXI_BRESP(1 downto 0),
      M09_AXI_bvalid => axi_interconnect_0_M09_AXI_BVALID,
      M09_AXI_rdata(31 downto 0) => axi_interconnect_0_M09_AXI_RDATA(31 downto 0),
      M09_AXI_rready => axi_interconnect_0_M09_AXI_RREADY,
      M09_AXI_rresp(1 downto 0) => axi_interconnect_0_M09_AXI_RRESP(1 downto 0),
      M09_AXI_rvalid => axi_interconnect_0_M09_AXI_RVALID,
      M09_AXI_wdata(31 downto 0) => axi_interconnect_0_M09_AXI_WDATA(31 downto 0),
      M09_AXI_wready => axi_interconnect_0_M09_AXI_WREADY,
      M09_AXI_wstrb(3 downto 0) => axi_interconnect_0_M09_AXI_WSTRB(3 downto 0),
      M09_AXI_wvalid => axi_interconnect_0_M09_AXI_WVALID,
      S00_ACLK => Net,
      S00_ARESETN => Net1(0),
      S00_AXI_araddr(31 downto 0) => Conn2_ARADDR(31 downto 0),
      S00_AXI_arburst(1 downto 0) => Conn2_ARBURST(1 downto 0),
      S00_AXI_arcache(3 downto 0) => Conn2_ARCACHE(3 downto 0),
      S00_AXI_arid(11 downto 0) => Conn2_ARID(11 downto 0),
      S00_AXI_arlen(7 downto 0) => Conn2_ARLEN(7 downto 0),
      S00_AXI_arlock(0) => Conn2_ARLOCK(0),
      S00_AXI_arprot(2 downto 0) => Conn2_ARPROT(2 downto 0),
      S00_AXI_arqos(3 downto 0) => Conn2_ARQOS(3 downto 0),
      S00_AXI_arready => Conn2_ARREADY,
      S00_AXI_arregion(3 downto 0) => Conn2_ARREGION(3 downto 0),
      S00_AXI_arsize(2 downto 0) => Conn2_ARSIZE(2 downto 0),
      S00_AXI_arvalid => Conn2_ARVALID,
      S00_AXI_awaddr(31 downto 0) => Conn2_AWADDR(31 downto 0),
      S00_AXI_awburst(1 downto 0) => Conn2_AWBURST(1 downto 0),
      S00_AXI_awcache(3 downto 0) => Conn2_AWCACHE(3 downto 0),
      S00_AXI_awid(11 downto 0) => Conn2_AWID(11 downto 0),
      S00_AXI_awlen(7 downto 0) => Conn2_AWLEN(7 downto 0),
      S00_AXI_awlock(0) => Conn2_AWLOCK(0),
      S00_AXI_awprot(2 downto 0) => Conn2_AWPROT(2 downto 0),
      S00_AXI_awqos(3 downto 0) => Conn2_AWQOS(3 downto 0),
      S00_AXI_awready => Conn2_AWREADY,
      S00_AXI_awregion(3 downto 0) => Conn2_AWREGION(3 downto 0),
      S00_AXI_awsize(2 downto 0) => Conn2_AWSIZE(2 downto 0),
      S00_AXI_awvalid => Conn2_AWVALID,
      S00_AXI_bid(11 downto 0) => Conn2_BID(11 downto 0),
      S00_AXI_bready => Conn2_BREADY,
      S00_AXI_bresp(1 downto 0) => Conn2_BRESP(1 downto 0),
      S00_AXI_bvalid => Conn2_BVALID,
      S00_AXI_rdata(31 downto 0) => Conn2_RDATA(31 downto 0),
      S00_AXI_rid(11 downto 0) => Conn2_RID(11 downto 0),
      S00_AXI_rlast => Conn2_RLAST,
      S00_AXI_rready => Conn2_RREADY,
      S00_AXI_rresp(1 downto 0) => Conn2_RRESP(1 downto 0),
      S00_AXI_rvalid => Conn2_RVALID,
      S00_AXI_wdata(31 downto 0) => Conn2_WDATA(31 downto 0),
      S00_AXI_wlast => Conn2_WLAST,
      S00_AXI_wready => Conn2_WREADY,
      S00_AXI_wstrb(3 downto 0) => Conn2_WSTRB(3 downto 0),
      S00_AXI_wvalid => Conn2_WVALID
    );
axi_mem_intercon: entity work.base_axi_mem_intercon_1
     port map (
      ACLK => aclk_1,
      ARESETN => rst_ps7_0_100M_interconnect_aresetn(0),
      M00_ACLK => aclk_1,
      M00_ARESETN => rst_ps7_0_100M_peripheral_aresetn(0),
      M00_AXI_araddr(31 downto 0) => axi_mem_intercon_M00_AXI_ARADDR(31 downto 0),
      M00_AXI_arburst(1 downto 0) => axi_mem_intercon_M00_AXI_ARBURST(1 downto 0),
      M00_AXI_arcache(3 downto 0) => axi_mem_intercon_M00_AXI_ARCACHE(3 downto 0),
      M00_AXI_arid(0) => axi_mem_intercon_M00_AXI_ARID(0),
      M00_AXI_arlen(3 downto 0) => axi_mem_intercon_M00_AXI_ARLEN(3 downto 0),
      M00_AXI_arlock(1 downto 0) => axi_mem_intercon_M00_AXI_ARLOCK(1 downto 0),
      M00_AXI_arprot(2 downto 0) => axi_mem_intercon_M00_AXI_ARPROT(2 downto 0),
      M00_AXI_arqos(3 downto 0) => axi_mem_intercon_M00_AXI_ARQOS(3 downto 0),
      M00_AXI_arready => axi_mem_intercon_M00_AXI_ARREADY,
      M00_AXI_arsize(2 downto 0) => axi_mem_intercon_M00_AXI_ARSIZE(2 downto 0),
      M00_AXI_arvalid => axi_mem_intercon_M00_AXI_ARVALID,
      M00_AXI_awaddr(31 downto 0) => axi_mem_intercon_M00_AXI_AWADDR(31 downto 0),
      M00_AXI_awburst(1 downto 0) => axi_mem_intercon_M00_AXI_AWBURST(1 downto 0),
      M00_AXI_awcache(3 downto 0) => axi_mem_intercon_M00_AXI_AWCACHE(3 downto 0),
      M00_AXI_awid(0) => axi_mem_intercon_M00_AXI_AWID(0),
      M00_AXI_awlen(3 downto 0) => axi_mem_intercon_M00_AXI_AWLEN(3 downto 0),
      M00_AXI_awlock(1 downto 0) => axi_mem_intercon_M00_AXI_AWLOCK(1 downto 0),
      M00_AXI_awprot(2 downto 0) => axi_mem_intercon_M00_AXI_AWPROT(2 downto 0),
      M00_AXI_awqos(3 downto 0) => axi_mem_intercon_M00_AXI_AWQOS(3 downto 0),
      M00_AXI_awready => axi_mem_intercon_M00_AXI_AWREADY,
      M00_AXI_awsize(2 downto 0) => axi_mem_intercon_M00_AXI_AWSIZE(2 downto 0),
      M00_AXI_awvalid => axi_mem_intercon_M00_AXI_AWVALID,
      M00_AXI_bid(5 downto 0) => axi_mem_intercon_M00_AXI_BID(5 downto 0),
      M00_AXI_bready => axi_mem_intercon_M00_AXI_BREADY,
      M00_AXI_bresp(1 downto 0) => axi_mem_intercon_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid => axi_mem_intercon_M00_AXI_BVALID,
      M00_AXI_rdata(63 downto 0) => axi_mem_intercon_M00_AXI_RDATA(63 downto 0),
      M00_AXI_rid(5 downto 0) => axi_mem_intercon_M00_AXI_RID(5 downto 0),
      M00_AXI_rlast => axi_mem_intercon_M00_AXI_RLAST,
      M00_AXI_rready => axi_mem_intercon_M00_AXI_RREADY,
      M00_AXI_rresp(1 downto 0) => axi_mem_intercon_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid => axi_mem_intercon_M00_AXI_RVALID,
      M00_AXI_wdata(63 downto 0) => axi_mem_intercon_M00_AXI_WDATA(63 downto 0),
      M00_AXI_wid(0) => axi_mem_intercon_M00_AXI_WID(0),
      M00_AXI_wlast => axi_mem_intercon_M00_AXI_WLAST,
      M00_AXI_wready => axi_mem_intercon_M00_AXI_WREADY,
      M00_AXI_wstrb(7 downto 0) => axi_mem_intercon_M00_AXI_WSTRB(7 downto 0),
      M00_AXI_wvalid => axi_mem_intercon_M00_AXI_WVALID,
      S00_ACLK => aclk_1,
      S00_ARESETN => rst_ps7_0_100M_peripheral_aresetn(0),
      S00_AXI_awaddr(31 downto 0) => axi_vdma_0_M_AXI_S2MM_AWADDR(31 downto 0),
      S00_AXI_awburst(1 downto 0) => axi_vdma_0_M_AXI_S2MM_AWBURST(1 downto 0),
      S00_AXI_awcache(3 downto 0) => axi_vdma_0_M_AXI_S2MM_AWCACHE(3 downto 0),
      S00_AXI_awlen(7 downto 0) => axi_vdma_0_M_AXI_S2MM_AWLEN(7 downto 0),
      S00_AXI_awprot(2 downto 0) => axi_vdma_0_M_AXI_S2MM_AWPROT(2 downto 0),
      S00_AXI_awready => axi_vdma_0_M_AXI_S2MM_AWREADY,
      S00_AXI_awsize(2 downto 0) => axi_vdma_0_M_AXI_S2MM_AWSIZE(2 downto 0),
      S00_AXI_awvalid => axi_vdma_0_M_AXI_S2MM_AWVALID,
      S00_AXI_bready => axi_vdma_0_M_AXI_S2MM_BREADY,
      S00_AXI_bresp(1 downto 0) => axi_vdma_0_M_AXI_S2MM_BRESP(1 downto 0),
      S00_AXI_bvalid => axi_vdma_0_M_AXI_S2MM_BVALID,
      S00_AXI_wdata(63 downto 0) => axi_vdma_0_M_AXI_S2MM_WDATA(63 downto 0),
      S00_AXI_wlast => axi_vdma_0_M_AXI_S2MM_WLAST,
      S00_AXI_wready => axi_vdma_0_M_AXI_S2MM_WREADY,
      S00_AXI_wstrb(7 downto 0) => axi_vdma_0_M_AXI_S2MM_WSTRB(7 downto 0),
      S00_AXI_wvalid => axi_vdma_0_M_AXI_S2MM_WVALID,
      S01_ACLK => aclk_1,
      S01_ARESETN => rst_ps7_0_100M_peripheral_aresetn(0),
      S01_AXI_araddr(31 downto 0) => axi_vdma_0_M_AXI_MM2S_ARADDR(31 downto 0),
      S01_AXI_arburst(1 downto 0) => axi_vdma_0_M_AXI_MM2S_ARBURST(1 downto 0),
      S01_AXI_arcache(3 downto 0) => axi_vdma_0_M_AXI_MM2S_ARCACHE(3 downto 0),
      S01_AXI_arlen(7 downto 0) => axi_vdma_0_M_AXI_MM2S_ARLEN(7 downto 0),
      S01_AXI_arprot(2 downto 0) => axi_vdma_0_M_AXI_MM2S_ARPROT(2 downto 0),
      S01_AXI_arready => axi_vdma_0_M_AXI_MM2S_ARREADY,
      S01_AXI_arsize(2 downto 0) => axi_vdma_0_M_AXI_MM2S_ARSIZE(2 downto 0),
      S01_AXI_arvalid => axi_vdma_0_M_AXI_MM2S_ARVALID,
      S01_AXI_rdata(31 downto 0) => axi_vdma_0_M_AXI_MM2S_RDATA(31 downto 0),
      S01_AXI_rlast => axi_vdma_0_M_AXI_MM2S_RLAST,
      S01_AXI_rready => axi_vdma_0_M_AXI_MM2S_RREADY,
      S01_AXI_rresp(1 downto 0) => axi_vdma_0_M_AXI_MM2S_RRESP(1 downto 0),
      S01_AXI_rvalid => axi_vdma_0_M_AXI_MM2S_RVALID
    );
axi_vdma: component base_axi_vdma_0
     port map (
      axi_resetn => Net1(0),
      m_axi_mm2s_aclk => aclk_1,
      m_axi_mm2s_araddr(31 downto 0) => axi_vdma_0_M_AXI_MM2S_ARADDR(31 downto 0),
      m_axi_mm2s_arburst(1 downto 0) => axi_vdma_0_M_AXI_MM2S_ARBURST(1 downto 0),
      m_axi_mm2s_arcache(3 downto 0) => axi_vdma_0_M_AXI_MM2S_ARCACHE(3 downto 0),
      m_axi_mm2s_arlen(7 downto 0) => axi_vdma_0_M_AXI_MM2S_ARLEN(7 downto 0),
      m_axi_mm2s_arprot(2 downto 0) => axi_vdma_0_M_AXI_MM2S_ARPROT(2 downto 0),
      m_axi_mm2s_arready => axi_vdma_0_M_AXI_MM2S_ARREADY,
      m_axi_mm2s_arsize(2 downto 0) => axi_vdma_0_M_AXI_MM2S_ARSIZE(2 downto 0),
      m_axi_mm2s_arvalid => axi_vdma_0_M_AXI_MM2S_ARVALID,
      m_axi_mm2s_rdata(31 downto 0) => axi_vdma_0_M_AXI_MM2S_RDATA(31 downto 0),
      m_axi_mm2s_rlast => axi_vdma_0_M_AXI_MM2S_RLAST,
      m_axi_mm2s_rready => axi_vdma_0_M_AXI_MM2S_RREADY,
      m_axi_mm2s_rresp(1 downto 0) => axi_vdma_0_M_AXI_MM2S_RRESP(1 downto 0),
      m_axi_mm2s_rvalid => axi_vdma_0_M_AXI_MM2S_RVALID,
      m_axi_s2mm_aclk => aclk_1,
      m_axi_s2mm_awaddr(31 downto 0) => axi_vdma_0_M_AXI_S2MM_AWADDR(31 downto 0),
      m_axi_s2mm_awburst(1 downto 0) => axi_vdma_0_M_AXI_S2MM_AWBURST(1 downto 0),
      m_axi_s2mm_awcache(3 downto 0) => axi_vdma_0_M_AXI_S2MM_AWCACHE(3 downto 0),
      m_axi_s2mm_awlen(7 downto 0) => axi_vdma_0_M_AXI_S2MM_AWLEN(7 downto 0),
      m_axi_s2mm_awprot(2 downto 0) => axi_vdma_0_M_AXI_S2MM_AWPROT(2 downto 0),
      m_axi_s2mm_awready => axi_vdma_0_M_AXI_S2MM_AWREADY,
      m_axi_s2mm_awsize(2 downto 0) => axi_vdma_0_M_AXI_S2MM_AWSIZE(2 downto 0),
      m_axi_s2mm_awvalid => axi_vdma_0_M_AXI_S2MM_AWVALID,
      m_axi_s2mm_bready => axi_vdma_0_M_AXI_S2MM_BREADY,
      m_axi_s2mm_bresp(1 downto 0) => axi_vdma_0_M_AXI_S2MM_BRESP(1 downto 0),
      m_axi_s2mm_bvalid => axi_vdma_0_M_AXI_S2MM_BVALID,
      m_axi_s2mm_wdata(63 downto 0) => axi_vdma_0_M_AXI_S2MM_WDATA(63 downto 0),
      m_axi_s2mm_wlast => axi_vdma_0_M_AXI_S2MM_WLAST,
      m_axi_s2mm_wready => axi_vdma_0_M_AXI_S2MM_WREADY,
      m_axi_s2mm_wstrb(7 downto 0) => axi_vdma_0_M_AXI_S2MM_WSTRB(7 downto 0),
      m_axi_s2mm_wvalid => axi_vdma_0_M_AXI_S2MM_WVALID,
      m_axis_mm2s_aclk => aclk_1,
      m_axis_mm2s_tdata(31 downto 0) => axi_vdma_0_M_AXIS_MM2S_TDATA(31 downto 0),
      m_axis_mm2s_tkeep(3 downto 0) => NLW_axi_vdma_m_axis_mm2s_tkeep_UNCONNECTED(3 downto 0),
      m_axis_mm2s_tlast => axi_vdma_0_M_AXIS_MM2S_TLAST,
      m_axis_mm2s_tready => axi_vdma_0_M_AXIS_MM2S_TREADY,
      m_axis_mm2s_tuser(0) => axi_vdma_0_M_AXIS_MM2S_TUSER(0),
      m_axis_mm2s_tvalid => axi_vdma_0_M_AXIS_MM2S_TVALID,
      mm2s_frame_ptr_out(5 downto 0) => NLW_axi_vdma_mm2s_frame_ptr_out_UNCONNECTED(5 downto 0),
      mm2s_introut => axi_vdma_0_mm2s_introut,
      s2mm_frame_ptr_out(5 downto 0) => NLW_axi_vdma_s2mm_frame_ptr_out_UNCONNECTED(5 downto 0),
      s2mm_introut => axi_vdma_0_s2mm_introut,
      s_axi_lite_aclk => Net,
      s_axi_lite_araddr(8 downto 0) => axi_interconnect_0_M00_AXI_ARADDR(8 downto 0),
      s_axi_lite_arready => axi_interconnect_0_M00_AXI_ARREADY,
      s_axi_lite_arvalid => axi_interconnect_0_M00_AXI_ARVALID,
      s_axi_lite_awaddr(8 downto 0) => axi_interconnect_0_M00_AXI_AWADDR(8 downto 0),
      s_axi_lite_awready => axi_interconnect_0_M00_AXI_AWREADY,
      s_axi_lite_awvalid => axi_interconnect_0_M00_AXI_AWVALID,
      s_axi_lite_bready => axi_interconnect_0_M00_AXI_BREADY,
      s_axi_lite_bresp(1 downto 0) => axi_interconnect_0_M00_AXI_BRESP(1 downto 0),
      s_axi_lite_bvalid => axi_interconnect_0_M00_AXI_BVALID,
      s_axi_lite_rdata(31 downto 0) => axi_interconnect_0_M00_AXI_RDATA(31 downto 0),
      s_axi_lite_rready => axi_interconnect_0_M00_AXI_RREADY,
      s_axi_lite_rresp(1 downto 0) => axi_interconnect_0_M00_AXI_RRESP(1 downto 0),
      s_axi_lite_rvalid => axi_interconnect_0_M00_AXI_RVALID,
      s_axi_lite_wdata(31 downto 0) => axi_interconnect_0_M00_AXI_WDATA(31 downto 0),
      s_axi_lite_wready => axi_interconnect_0_M00_AXI_WREADY,
      s_axi_lite_wvalid => axi_interconnect_0_M00_AXI_WVALID,
      s_axis_s2mm_aclk => aclk_1,
      s_axis_s2mm_tdata(31 downto 0) => in_pixelformat_M00_AXIS_TDATA(31 downto 0),
      s_axis_s2mm_tkeep(3 downto 0) => B"1111",
      s_axis_s2mm_tlast => in_pixelformat_M00_AXIS_TLAST(0),
      s_axis_s2mm_tready => in_pixelformat_M00_AXIS_TREADY,
      s_axis_s2mm_tuser(0) => in_pixelformat_M00_AXIS_TUSER(0),
      s_axis_s2mm_tvalid => in_pixelformat_M00_AXIS_TVALID
    );
hdmi_in: entity work.hdmi_in_imp_1J5I8O
     port map (
      DDC_scl_i => frontend_DDC_SCL_I,
      DDC_scl_o => frontend_DDC_SCL_O,
      DDC_scl_t => frontend_DDC_SCL_T,
      DDC_sda_i => frontend_DDC_SDA_I,
      DDC_sda_o => frontend_DDC_SDA_O,
      DDC_sda_t => frontend_DDC_SDA_T,
      PixelClk => hdmi_in_PixelClk,
      S00_AXILite_araddr(8 downto 0) => axi_interconnect_0_M08_AXI_ARADDR(8 downto 0),
      S00_AXILite_arready => axi_interconnect_0_M08_AXI_ARREADY,
      S00_AXILite_arvalid => axi_interconnect_0_M08_AXI_ARVALID,
      S00_AXILite_awaddr(8 downto 0) => axi_interconnect_0_M08_AXI_AWADDR(8 downto 0),
      S00_AXILite_awready => axi_interconnect_0_M08_AXI_AWREADY,
      S00_AXILite_awvalid => axi_interconnect_0_M08_AXI_AWVALID,
      S00_AXILite_bready => axi_interconnect_0_M08_AXI_BREADY,
      S00_AXILite_bresp(1 downto 0) => axi_interconnect_0_M08_AXI_BRESP(1 downto 0),
      S00_AXILite_bvalid => axi_interconnect_0_M08_AXI_BVALID,
      S00_AXILite_rdata(31 downto 0) => axi_interconnect_0_M08_AXI_RDATA(31 downto 0),
      S00_AXILite_rready => axi_interconnect_0_M08_AXI_RREADY,
      S00_AXILite_rresp(1 downto 0) => axi_interconnect_0_M08_AXI_RRESP(1 downto 0),
      S00_AXILite_rvalid => axi_interconnect_0_M08_AXI_RVALID,
      S00_AXILite_wdata(31 downto 0) => axi_interconnect_0_M08_AXI_WDATA(31 downto 0),
      S00_AXILite_wready => axi_interconnect_0_M08_AXI_WREADY,
      S00_AXILite_wstrb(3 downto 0) => axi_interconnect_0_M08_AXI_WSTRB(3 downto 0),
      S00_AXILite_wvalid => axi_interconnect_0_M08_AXI_WVALID,
      S01_AXILite_araddr(6 downto 0) => axi_interconnect_0_M06_AXI_ARADDR(6 downto 0),
      S01_AXILite_arready => axi_interconnect_0_M06_AXI_ARREADY,
      S01_AXILite_arvalid => axi_interconnect_0_M06_AXI_ARVALID,
      S01_AXILite_awaddr(6 downto 0) => axi_interconnect_0_M06_AXI_AWADDR(6 downto 0),
      S01_AXILite_awready => axi_interconnect_0_M06_AXI_AWREADY,
      S01_AXILite_awvalid => axi_interconnect_0_M06_AXI_AWVALID,
      S01_AXILite_bready => axi_interconnect_0_M06_AXI_BREADY,
      S01_AXILite_bresp(1 downto 0) => axi_interconnect_0_M06_AXI_BRESP(1 downto 0),
      S01_AXILite_bvalid => axi_interconnect_0_M06_AXI_BVALID,
      S01_AXILite_rdata(31 downto 0) => axi_interconnect_0_M06_AXI_RDATA(31 downto 0),
      S01_AXILite_rready => axi_interconnect_0_M06_AXI_RREADY,
      S01_AXILite_rresp(1 downto 0) => axi_interconnect_0_M06_AXI_RRESP(1 downto 0),
      S01_AXILite_rvalid => axi_interconnect_0_M06_AXI_RVALID,
      S01_AXILite_wdata(31 downto 0) => axi_interconnect_0_M06_AXI_WDATA(31 downto 0),
      S01_AXILite_wready => axi_interconnect_0_M06_AXI_WREADY,
      S01_AXILite_wstrb(3 downto 0) => axi_interconnect_0_M06_AXI_WSTRB(3 downto 0),
      S01_AXILite_wvalid => axi_interconnect_0_M06_AXI_WVALID,
      S02_AXILite_araddr(8 downto 0) => axi_interconnect_0_M09_AXI_ARADDR(8 downto 0),
      S02_AXILite_arready => axi_interconnect_0_M09_AXI_ARREADY,
      S02_AXILite_arvalid => axi_interconnect_0_M09_AXI_ARVALID,
      S02_AXILite_awaddr(8 downto 0) => axi_interconnect_0_M09_AXI_AWADDR(8 downto 0),
      S02_AXILite_awready => axi_interconnect_0_M09_AXI_AWREADY,
      S02_AXILite_awvalid => axi_interconnect_0_M09_AXI_AWVALID,
      S02_AXILite_bready => axi_interconnect_0_M09_AXI_BREADY,
      S02_AXILite_bresp(1 downto 0) => axi_interconnect_0_M09_AXI_BRESP(1 downto 0),
      S02_AXILite_bvalid => axi_interconnect_0_M09_AXI_BVALID,
      S02_AXILite_rdata(31 downto 0) => axi_interconnect_0_M09_AXI_RDATA(31 downto 0),
      S02_AXILite_rready => axi_interconnect_0_M09_AXI_RREADY,
      S02_AXILite_rresp(1 downto 0) => axi_interconnect_0_M09_AXI_RRESP(1 downto 0),
      S02_AXILite_rvalid => axi_interconnect_0_M09_AXI_RVALID,
      S02_AXILite_wdata(31 downto 0) => axi_interconnect_0_M09_AXI_WDATA(31 downto 0),
      S02_AXILite_wready => axi_interconnect_0_M09_AXI_WREADY,
      S02_AXILite_wstrb(3 downto 0) => axi_interconnect_0_M09_AXI_WSTRB(3 downto 0),
      S02_AXILite_wvalid => axi_interconnect_0_M09_AXI_WVALID,
      S03_AXILite_araddr(4 downto 0) => axi_interconnect_0_M07_AXI_ARADDR(4 downto 0),
      S03_AXILite_arready => axi_interconnect_0_M07_AXI_ARREADY,
      S03_AXILite_arvalid => axi_interconnect_0_M07_AXI_ARVALID,
      S03_AXILite_awaddr(4 downto 0) => axi_interconnect_0_M07_AXI_AWADDR(4 downto 0),
      S03_AXILite_awready => axi_interconnect_0_M07_AXI_AWREADY,
      S03_AXILite_awvalid => axi_interconnect_0_M07_AXI_AWVALID,
      S03_AXILite_bready => axi_interconnect_0_M07_AXI_BREADY,
      S03_AXILite_bresp(1 downto 0) => axi_interconnect_0_M07_AXI_BRESP(1 downto 0),
      S03_AXILite_bvalid => axi_interconnect_0_M07_AXI_BVALID,
      S03_AXILite_rdata(31 downto 0) => axi_interconnect_0_M07_AXI_RDATA(31 downto 0),
      S03_AXILite_rready => axi_interconnect_0_M07_AXI_RREADY,
      S03_AXILite_rresp(1 downto 0) => axi_interconnect_0_M07_AXI_RRESP(1 downto 0),
      S03_AXILite_rvalid => axi_interconnect_0_M07_AXI_RVALID,
      S03_AXILite_wdata(31 downto 0) => axi_interconnect_0_M07_AXI_WDATA(31 downto 0),
      S03_AXILite_wready => axi_interconnect_0_M07_AXI_WREADY,
      S03_AXILite_wstrb(3 downto 0) => axi_interconnect_0_M07_AXI_WSTRB(3 downto 0),
      S03_AXILite_wvalid => axi_interconnect_0_M07_AXI_WVALID,
      TMDS_in_clk_n => TMDS_1_CLK_N,
      TMDS_in_clk_p => TMDS_1_CLK_P,
      TMDS_in_data_n(2 downto 0) => TMDS_1_DATA_N(2 downto 0),
      TMDS_in_data_p(2 downto 0) => TMDS_1_DATA_P(2 downto 0),
      aPixelClkLckd => hdmi_in_aPixelClkLckd,
      clk_100M => Net,
      clk_142M => aclk_1,
      clk_200M => RefClk_1,
      hdmi_in_hpd(0) => axi_gpio_video_gpio_io_o(0),
      hdmi_in_hpd_irq => axi_gpio_video_ip2intc_irpt,
      out_stream_tdata(31 downto 0) => in_pixelformat_M00_AXIS_TDATA(31 downto 0),
      out_stream_tlast(0) => in_pixelformat_M00_AXIS_TLAST(0),
      out_stream_tready => in_pixelformat_M00_AXIS_TREADY,
      out_stream_tuser(0) => in_pixelformat_M00_AXIS_TUSER(0),
      out_stream_tvalid => in_pixelformat_M00_AXIS_TVALID,
      periph_resetn_clk100M(0) => Net1(0),
      periph_resetn_clk142M(0) => rst_ps7_0_100M_peripheral_aresetn(0),
      resetn(0) => vtc_in_resetn_1(0),
      vid_io_in_reset(0) => vid_io_in_reset_1(0),
      vtc_in_irq => v_tc_1_irq
    );
hdmi_out: entity work.hdmi_out_imp_1RSCXJD
     port map (
      S00_AXILite_araddr(8 downto 0) => axi_interconnect_0_M05_AXI_ARADDR(8 downto 0),
      S00_AXILite_arready => axi_interconnect_0_M05_AXI_ARREADY,
      S00_AXILite_arvalid => axi_interconnect_0_M05_AXI_ARVALID,
      S00_AXILite_awaddr(8 downto 0) => axi_interconnect_0_M05_AXI_AWADDR(8 downto 0),
      S00_AXILite_awready => axi_interconnect_0_M05_AXI_AWREADY,
      S00_AXILite_awvalid => axi_interconnect_0_M05_AXI_AWVALID,
      S00_AXILite_bready => axi_interconnect_0_M05_AXI_BREADY,
      S00_AXILite_bresp(1 downto 0) => axi_interconnect_0_M05_AXI_BRESP(1 downto 0),
      S00_AXILite_bvalid => axi_interconnect_0_M05_AXI_BVALID,
      S00_AXILite_rdata(31 downto 0) => axi_interconnect_0_M05_AXI_RDATA(31 downto 0),
      S00_AXILite_rready => axi_interconnect_0_M05_AXI_RREADY,
      S00_AXILite_rresp(1 downto 0) => axi_interconnect_0_M05_AXI_RRESP(1 downto 0),
      S00_AXILite_rvalid => axi_interconnect_0_M05_AXI_RVALID,
      S00_AXILite_wdata(31 downto 0) => axi_interconnect_0_M05_AXI_WDATA(31 downto 0),
      S00_AXILite_wready => axi_interconnect_0_M05_AXI_WREADY,
      S00_AXILite_wstrb(3 downto 0) => axi_interconnect_0_M05_AXI_WSTRB(3 downto 0),
      S00_AXILite_wvalid => axi_interconnect_0_M05_AXI_WVALID,
      S01_AXILite_araddr(4 downto 0) => axi_interconnect_0_M01_AXI_ARADDR(4 downto 0),
      S01_AXILite_arready => axi_interconnect_0_M01_AXI_ARREADY,
      S01_AXILite_arvalid => axi_interconnect_0_M01_AXI_ARVALID,
      S01_AXILite_awaddr(4 downto 0) => axi_interconnect_0_M01_AXI_AWADDR(4 downto 0),
      S01_AXILite_awready => axi_interconnect_0_M01_AXI_AWREADY,
      S01_AXILite_awvalid => axi_interconnect_0_M01_AXI_AWVALID,
      S01_AXILite_bready => axi_interconnect_0_M01_AXI_BREADY,
      S01_AXILite_bresp(1 downto 0) => axi_interconnect_0_M01_AXI_BRESP(1 downto 0),
      S01_AXILite_bvalid => axi_interconnect_0_M01_AXI_BVALID,
      S01_AXILite_rdata(31 downto 0) => axi_interconnect_0_M01_AXI_RDATA(31 downto 0),
      S01_AXILite_rready => axi_interconnect_0_M01_AXI_RREADY,
      S01_AXILite_rresp(1 downto 0) => axi_interconnect_0_M01_AXI_RRESP(1 downto 0),
      S01_AXILite_rvalid => axi_interconnect_0_M01_AXI_RVALID,
      S01_AXILite_wdata(31 downto 0) => axi_interconnect_0_M01_AXI_WDATA(31 downto 0),
      S01_AXILite_wready => axi_interconnect_0_M01_AXI_WREADY,
      S01_AXILite_wstrb(3 downto 0) => axi_interconnect_0_M01_AXI_WSTRB(3 downto 0),
      S01_AXILite_wvalid => axi_interconnect_0_M01_AXI_WVALID,
      S02_AXILite_araddr(8 downto 0) => axi_interconnect_0_M04_AXI_ARADDR(8 downto 0),
      S02_AXILite_arready => axi_interconnect_0_M04_AXI_ARREADY,
      S02_AXILite_arvalid => axi_interconnect_0_M04_AXI_ARVALID,
      S02_AXILite_awaddr(8 downto 0) => axi_interconnect_0_M04_AXI_AWADDR(8 downto 0),
      S02_AXILite_awready => axi_interconnect_0_M04_AXI_AWREADY,
      S02_AXILite_awvalid => axi_interconnect_0_M04_AXI_AWVALID,
      S02_AXILite_bready => axi_interconnect_0_M04_AXI_BREADY,
      S02_AXILite_bresp(1 downto 0) => axi_interconnect_0_M04_AXI_BRESP(1 downto 0),
      S02_AXILite_bvalid => axi_interconnect_0_M04_AXI_BVALID,
      S02_AXILite_rdata(31 downto 0) => axi_interconnect_0_M04_AXI_RDATA(31 downto 0),
      S02_AXILite_rready => axi_interconnect_0_M04_AXI_RREADY,
      S02_AXILite_rresp(1 downto 0) => axi_interconnect_0_M04_AXI_RRESP(1 downto 0),
      S02_AXILite_rvalid => axi_interconnect_0_M04_AXI_RVALID,
      S02_AXILite_wdata(31 downto 0) => axi_interconnect_0_M04_AXI_WDATA(31 downto 0),
      S02_AXILite_wready => axi_interconnect_0_M04_AXI_WREADY,
      S02_AXILite_wstrb(3 downto 0) => axi_interconnect_0_M04_AXI_WSTRB(3 downto 0),
      S02_AXILite_wvalid => axi_interconnect_0_M04_AXI_WVALID,
      S03_AXILite_araddr(6 downto 0) => axi_interconnect_0_M02_AXI_ARADDR(6 downto 0),
      S03_AXILite_arready => axi_interconnect_0_M02_AXI_ARREADY,
      S03_AXILite_arvalid => axi_interconnect_0_M02_AXI_ARVALID,
      S03_AXILite_awaddr(6 downto 0) => axi_interconnect_0_M02_AXI_AWADDR(6 downto 0),
      S03_AXILite_awready => axi_interconnect_0_M02_AXI_AWREADY,
      S03_AXILite_awvalid => axi_interconnect_0_M02_AXI_AWVALID,
      S03_AXILite_bready => axi_interconnect_0_M02_AXI_BREADY,
      S03_AXILite_bresp(1 downto 0) => axi_interconnect_0_M02_AXI_BRESP(1 downto 0),
      S03_AXILite_bvalid => axi_interconnect_0_M02_AXI_BVALID,
      S03_AXILite_rdata(31 downto 0) => axi_interconnect_0_M02_AXI_RDATA(31 downto 0),
      S03_AXILite_rready => axi_interconnect_0_M02_AXI_RREADY,
      S03_AXILite_rresp(1 downto 0) => axi_interconnect_0_M02_AXI_RRESP(1 downto 0),
      S03_AXILite_rvalid => axi_interconnect_0_M02_AXI_RVALID,
      S03_AXILite_wdata(31 downto 0) => axi_interconnect_0_M02_AXI_WDATA(31 downto 0),
      S03_AXILite_wready => axi_interconnect_0_M02_AXI_WREADY,
      S03_AXILite_wstrb(3 downto 0) => axi_interconnect_0_M02_AXI_WSTRB(3 downto 0),
      S03_AXILite_wvalid => axi_interconnect_0_M02_AXI_WVALID,
      S04_AXILite_araddr(4 downto 0) => axi_interconnect_0_M03_AXI_ARADDR(4 downto 0),
      S04_AXILite_arprot(2 downto 0) => axi_interconnect_0_M03_AXI_ARPROT(2 downto 0),
      S04_AXILite_arready => axi_interconnect_0_M03_AXI_ARREADY,
      S04_AXILite_arvalid => axi_interconnect_0_M03_AXI_ARVALID,
      S04_AXILite_awaddr(4 downto 0) => axi_interconnect_0_M03_AXI_AWADDR(4 downto 0),
      S04_AXILite_awprot(2 downto 0) => axi_interconnect_0_M03_AXI_AWPROT(2 downto 0),
      S04_AXILite_awready => axi_interconnect_0_M03_AXI_AWREADY,
      S04_AXILite_awvalid => axi_interconnect_0_M03_AXI_AWVALID,
      S04_AXILite_bready => axi_interconnect_0_M03_AXI_BREADY,
      S04_AXILite_bresp(1 downto 0) => axi_interconnect_0_M03_AXI_BRESP(1 downto 0),
      S04_AXILite_bvalid => axi_interconnect_0_M03_AXI_BVALID,
      S04_AXILite_rdata(31 downto 0) => axi_interconnect_0_M03_AXI_RDATA(31 downto 0),
      S04_AXILite_rready => axi_interconnect_0_M03_AXI_RREADY,
      S04_AXILite_rresp(1 downto 0) => axi_interconnect_0_M03_AXI_RRESP(1 downto 0),
      S04_AXILite_rvalid => axi_interconnect_0_M03_AXI_RVALID,
      S04_AXILite_wdata(31 downto 0) => axi_interconnect_0_M03_AXI_WDATA(31 downto 0),
      S04_AXILite_wready => axi_interconnect_0_M03_AXI_WREADY,
      S04_AXILite_wstrb(3 downto 0) => axi_interconnect_0_M03_AXI_WSTRB(3 downto 0),
      S04_AXILite_wvalid => axi_interconnect_0_M03_AXI_WVALID,
      TMDS_out_clk_n => Conn1_CLK_N,
      TMDS_out_clk_p => Conn1_CLK_P,
      TMDS_out_data_n(2 downto 0) => Conn1_DATA_N(2 downto 0),
      TMDS_out_data_p(2 downto 0) => Conn1_DATA_P(2 downto 0),
      clk_100M => Net,
      clk_142M => aclk_1,
      hdmi_out_hpd(0) => hdmi_out_hpd_video_gpio_io_o(0),
      hdmi_out_hpd_irq => hdmi_out_hpd_video_ip2intc_irpt,
      in_stream_tdata(31 downto 0) => axi_vdma_0_M_AXIS_MM2S_TDATA(31 downto 0),
      in_stream_tlast(0) => axi_vdma_0_M_AXIS_MM2S_TLAST,
      in_stream_tready => axi_vdma_0_M_AXIS_MM2S_TREADY,
      in_stream_tuser(0) => axi_vdma_0_M_AXIS_MM2S_TUSER(0),
      in_stream_tvalid => axi_vdma_0_M_AXIS_MM2S_TVALID,
      periph_resetn_clk100M(0) => Net1(0),
      periph_resetn_clk142M(0) => rst_ps7_0_100M_peripheral_aresetn(0),
      vtc_out_irq => v_tc_0_irq
    );
proc_sys_reset_pixelclk: component base_proc_sys_reset_pixelclk_0
     port map (
      aux_reset_in => hdmi_in_aPixelClkLckd,
      bus_struct_reset(0) => NLW_proc_sys_reset_pixelclk_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => '1',
      ext_reset_in => ext_reset_in_1,
      interconnect_aresetn(0) => NLW_proc_sys_reset_pixelclk_interconnect_aresetn_UNCONNECTED(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_proc_sys_reset_pixelclk_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => vtc_in_resetn_1(0),
      peripheral_reset(0) => vid_io_in_reset_1(0),
      slowest_sync_clk => hdmi_in_PixelClk
    );
xlconcat_0: component base_xlconcat_0_0
     port map (
      In0(0) => axi_vdma_0_s2mm_introut,
      In1(0) => axi_vdma_0_mm2s_introut,
      In2(0) => v_tc_0_irq,
      In3(0) => v_tc_1_irq,
      In4(0) => axi_gpio_video_ip2intc_irpt,
      In5(0) => hdmi_out_hpd_video_ip2intc_irpt,
      dout(5 downto 0) => xlconcat_0_dout(5 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity base is
  port (
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_cas_n : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    hdmi_in_clk_n : in STD_LOGIC;
    hdmi_in_clk_p : in STD_LOGIC;
    hdmi_in_data_n : in STD_LOGIC_VECTOR ( 2 downto 0 );
    hdmi_in_data_p : in STD_LOGIC_VECTOR ( 2 downto 0 );
    hdmi_in_ddc_scl_i : in STD_LOGIC;
    hdmi_in_ddc_scl_o : out STD_LOGIC;
    hdmi_in_ddc_scl_t : out STD_LOGIC;
    hdmi_in_ddc_sda_i : in STD_LOGIC;
    hdmi_in_ddc_sda_o : out STD_LOGIC;
    hdmi_in_ddc_sda_t : out STD_LOGIC;
    hdmi_in_hpd : out STD_LOGIC_VECTOR ( 0 to 0 );
    hdmi_out_clk_n : out STD_LOGIC;
    hdmi_out_clk_p : out STD_LOGIC;
    hdmi_out_data_n : out STD_LOGIC_VECTOR ( 2 downto 0 );
    hdmi_out_data_p : out STD_LOGIC_VECTOR ( 2 downto 0 );
    hdmi_out_hpd : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of base : entity is "base,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=base,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=87,numReposBlks=60,numNonXlnxBlks=3,numHierBlks=27,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=4,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of base : entity is "base.hwdef";
end base;

architecture STRUCTURE of base is
  component base_ps7_0_0 is
  port (
    GPIO_I : in STD_LOGIC_VECTOR ( 9 downto 0 );
    GPIO_O : out STD_LOGIC_VECTOR ( 9 downto 0 );
    GPIO_T : out STD_LOGIC_VECTOR ( 9 downto 0 );
    USB0_PORT_INDCTL : out STD_LOGIC_VECTOR ( 1 downto 0 );
    USB0_VBUS_PWRSELECT : out STD_LOGIC;
    USB0_VBUS_PWRFAULT : in STD_LOGIC;
    M_AXI_GP0_ARVALID : out STD_LOGIC;
    M_AXI_GP0_AWVALID : out STD_LOGIC;
    M_AXI_GP0_BREADY : out STD_LOGIC;
    M_AXI_GP0_RREADY : out STD_LOGIC;
    M_AXI_GP0_WLAST : out STD_LOGIC;
    M_AXI_GP0_WVALID : out STD_LOGIC;
    M_AXI_GP0_ARID : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_AWID : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_WID : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP0_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP0_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP0_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_ARLEN : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_AWLEN : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_ACLK : in STD_LOGIC;
    M_AXI_GP0_ARREADY : in STD_LOGIC;
    M_AXI_GP0_AWREADY : in STD_LOGIC;
    M_AXI_GP0_BVALID : in STD_LOGIC;
    M_AXI_GP0_RLAST : in STD_LOGIC;
    M_AXI_GP0_RVALID : in STD_LOGIC;
    M_AXI_GP0_WREADY : in STD_LOGIC;
    M_AXI_GP0_BID : in STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_RID : in STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_HP0_ARREADY : out STD_LOGIC;
    S_AXI_HP0_AWREADY : out STD_LOGIC;
    S_AXI_HP0_BVALID : out STD_LOGIC;
    S_AXI_HP0_RLAST : out STD_LOGIC;
    S_AXI_HP0_RVALID : out STD_LOGIC;
    S_AXI_HP0_WREADY : out STD_LOGIC;
    S_AXI_HP0_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_BID : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_RID : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_RDATA : out STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_HP0_RCOUNT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_HP0_WCOUNT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_HP0_RACOUNT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP0_WACOUNT : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_ACLK : in STD_LOGIC;
    S_AXI_HP0_ARVALID : in STD_LOGIC;
    S_AXI_HP0_AWVALID : in STD_LOGIC;
    S_AXI_HP0_BREADY : in STD_LOGIC;
    S_AXI_HP0_RDISSUECAP1_EN : in STD_LOGIC;
    S_AXI_HP0_RREADY : in STD_LOGIC;
    S_AXI_HP0_WLAST : in STD_LOGIC;
    S_AXI_HP0_WRISSUECAP1_EN : in STD_LOGIC;
    S_AXI_HP0_WVALID : in STD_LOGIC;
    S_AXI_HP0_ARBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_ARLOCK : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_ARSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP0_AWBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_AWLOCK : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_AWSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP0_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP0_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP0_ARADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_HP0_AWADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_HP0_ARCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_ARLEN : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_ARQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_AWCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_AWLEN : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_AWQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_ARID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_AWID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_WID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_WDATA : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_HP0_WSTRB : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_HP2_ARREADY : out STD_LOGIC;
    S_AXI_HP2_AWREADY : out STD_LOGIC;
    S_AXI_HP2_BVALID : out STD_LOGIC;
    S_AXI_HP2_RLAST : out STD_LOGIC;
    S_AXI_HP2_RVALID : out STD_LOGIC;
    S_AXI_HP2_WREADY : out STD_LOGIC;
    S_AXI_HP2_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP2_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP2_BID : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP2_RID : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP2_RDATA : out STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_HP2_RCOUNT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_HP2_WCOUNT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_HP2_RACOUNT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP2_WACOUNT : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP2_ACLK : in STD_LOGIC;
    S_AXI_HP2_ARVALID : in STD_LOGIC;
    S_AXI_HP2_AWVALID : in STD_LOGIC;
    S_AXI_HP2_BREADY : in STD_LOGIC;
    S_AXI_HP2_RDISSUECAP1_EN : in STD_LOGIC;
    S_AXI_HP2_RREADY : in STD_LOGIC;
    S_AXI_HP2_WLAST : in STD_LOGIC;
    S_AXI_HP2_WRISSUECAP1_EN : in STD_LOGIC;
    S_AXI_HP2_WVALID : in STD_LOGIC;
    S_AXI_HP2_ARBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP2_ARLOCK : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP2_ARSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP2_AWBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP2_AWLOCK : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP2_AWSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP2_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP2_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP2_ARADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_HP2_AWADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_HP2_ARCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP2_ARLEN : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP2_ARQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP2_AWCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP2_AWLEN : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP2_AWQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP2_ARID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP2_AWID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP2_WID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP2_WDATA : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_HP2_WSTRB : in STD_LOGIC_VECTOR ( 7 downto 0 );
    IRQ_F2P : in STD_LOGIC_VECTOR ( 0 to 0 );
    FCLK_CLK0 : out STD_LOGIC;
    FCLK_CLK1 : out STD_LOGIC;
    FCLK_CLK2 : out STD_LOGIC;
    FCLK_RESET0_N : out STD_LOGIC;
    MIO : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    DDR_CAS_n : inout STD_LOGIC;
    DDR_CKE : inout STD_LOGIC;
    DDR_Clk_n : inout STD_LOGIC;
    DDR_Clk : inout STD_LOGIC;
    DDR_CS_n : inout STD_LOGIC;
    DDR_DRSTB : inout STD_LOGIC;
    DDR_ODT : inout STD_LOGIC;
    DDR_RAS_n : inout STD_LOGIC;
    DDR_WEB : inout STD_LOGIC;
    DDR_BankAddr : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_Addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_VRN : inout STD_LOGIC;
    DDR_VRP : inout STD_LOGIC;
    DDR_DM : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_DQ : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_DQS_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_DQS : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    PS_SRSTB : inout STD_LOGIC;
    PS_CLK : inout STD_LOGIC;
    PS_PORB : inout STD_LOGIC
  );
  end component base_ps7_0_0;
  component base_rst_ps7_0_fclk0_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component base_rst_ps7_0_fclk0_0;
  component base_rst_ps7_0_fclk1_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component base_rst_ps7_0_fclk1_0;
  component base_system_interrupts_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    intr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    irq : out STD_LOGIC
  );
  end component base_system_interrupts_0;
  component base_axi_dma_0_2 is
  port (
    s_axi_lite_aclk : in STD_LOGIC;
    m_axi_mm2s_aclk : in STD_LOGIC;
    m_axi_s2mm_aclk : in STD_LOGIC;
    axi_resetn : in STD_LOGIC;
    s_axi_lite_awvalid : in STD_LOGIC;
    s_axi_lite_awready : out STD_LOGIC;
    s_axi_lite_awaddr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_lite_wvalid : in STD_LOGIC;
    s_axi_lite_wready : out STD_LOGIC;
    s_axi_lite_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_lite_bvalid : out STD_LOGIC;
    s_axi_lite_bready : in STD_LOGIC;
    s_axi_lite_arvalid : in STD_LOGIC;
    s_axi_lite_arready : out STD_LOGIC;
    s_axi_lite_araddr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_lite_rvalid : out STD_LOGIC;
    s_axi_lite_rready : in STD_LOGIC;
    s_axi_lite_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_mm2s_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_mm2s_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_mm2s_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_mm2s_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_mm2s_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_mm2s_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_mm2s_arvalid : out STD_LOGIC;
    m_axi_mm2s_arready : in STD_LOGIC;
    m_axi_mm2s_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_mm2s_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_mm2s_rlast : in STD_LOGIC;
    m_axi_mm2s_rvalid : in STD_LOGIC;
    m_axi_mm2s_rready : out STD_LOGIC;
    mm2s_prmry_reset_out_n : out STD_LOGIC;
    m_axis_mm2s_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_mm2s_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_mm2s_tvalid : out STD_LOGIC;
    m_axis_mm2s_tready : in STD_LOGIC;
    m_axis_mm2s_tlast : out STD_LOGIC;
    m_axi_s2mm_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_s2mm_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_s2mm_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_s2mm_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_s2mm_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_s2mm_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_s2mm_awvalid : out STD_LOGIC;
    m_axi_s2mm_awready : in STD_LOGIC;
    m_axi_s2mm_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_s2mm_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_s2mm_wlast : out STD_LOGIC;
    m_axi_s2mm_wvalid : out STD_LOGIC;
    m_axi_s2mm_wready : in STD_LOGIC;
    m_axi_s2mm_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_s2mm_bvalid : in STD_LOGIC;
    m_axi_s2mm_bready : out STD_LOGIC;
    s2mm_prmry_reset_out_n : out STD_LOGIC;
    s_axis_s2mm_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_s2mm_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_s2mm_tvalid : in STD_LOGIC;
    s_axis_s2mm_tready : out STD_LOGIC;
    s_axis_s2mm_tlast : in STD_LOGIC;
    mm2s_introut : out STD_LOGIC;
    s2mm_introut : out STD_LOGIC
  );
  end component base_axi_dma_0_2;
  component base_xlconcat_0_2 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In2 : in STD_LOGIC_VECTOR ( 5 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component base_xlconcat_0_2;
  component base_smartconnect_0_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rlast : out STD_LOGIC;
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    S01_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S01_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_awvalid : in STD_LOGIC;
    S01_AXI_awready : out STD_LOGIC;
    S01_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_wlast : in STD_LOGIC;
    S01_AXI_wvalid : in STD_LOGIC;
    S01_AXI_wready : out STD_LOGIC;
    S01_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_bvalid : out STD_LOGIC;
    S01_AXI_bready : in STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_wlast : out STD_LOGIC;
    M00_AXI_wvalid : out STD_LOGIC;
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rlast : in STD_LOGIC;
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_rready : out STD_LOGIC
  );
  end component base_smartconnect_0_0;
  component base_xlconcat_0_3 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component base_xlconcat_0_3;
  component base_axi_gpio_0_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    gpio_io_o : out STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  end component base_axi_gpio_0_0;
  component base_axis_sobel_0_2 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tlast : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tlast : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    threshold : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  end component base_axis_sobel_0_2;
  signal axi_dma_0_M_AXIS_MM2S_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_dma_0_M_AXIS_MM2S_TLAST : STD_LOGIC;
  signal axi_dma_0_M_AXIS_MM2S_TREADY : STD_LOGIC;
  signal axi_dma_0_M_AXIS_MM2S_TVALID : STD_LOGIC;
  signal axi_dma_0_M_AXI_MM2S_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_dma_0_M_AXI_MM2S_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_dma_0_M_AXI_MM2S_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_dma_0_M_AXI_MM2S_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_dma_0_M_AXI_MM2S_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_dma_0_M_AXI_MM2S_ARREADY : STD_LOGIC;
  signal axi_dma_0_M_AXI_MM2S_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_dma_0_M_AXI_MM2S_ARVALID : STD_LOGIC;
  signal axi_dma_0_M_AXI_MM2S_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_dma_0_M_AXI_MM2S_RLAST : STD_LOGIC;
  signal axi_dma_0_M_AXI_MM2S_RREADY : STD_LOGIC;
  signal axi_dma_0_M_AXI_MM2S_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_dma_0_M_AXI_MM2S_RVALID : STD_LOGIC;
  signal axi_dma_0_M_AXI_S2MM_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_dma_0_M_AXI_S2MM_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_dma_0_M_AXI_S2MM_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_dma_0_M_AXI_S2MM_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_dma_0_M_AXI_S2MM_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_dma_0_M_AXI_S2MM_AWREADY : STD_LOGIC;
  signal axi_dma_0_M_AXI_S2MM_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_dma_0_M_AXI_S2MM_AWVALID : STD_LOGIC;
  signal axi_dma_0_M_AXI_S2MM_BREADY : STD_LOGIC;
  signal axi_dma_0_M_AXI_S2MM_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_dma_0_M_AXI_S2MM_BVALID : STD_LOGIC;
  signal axi_dma_0_M_AXI_S2MM_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_dma_0_M_AXI_S2MM_WLAST : STD_LOGIC;
  signal axi_dma_0_M_AXI_S2MM_WREADY : STD_LOGIC;
  signal axi_dma_0_M_AXI_S2MM_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_dma_0_M_AXI_S2MM_WVALID : STD_LOGIC;
  signal axi_dma_0_mm2s_introut : STD_LOGIC;
  signal axi_dma_0_s2mm_introut : STD_LOGIC;
  signal axi_gpio_video_gpio_io_o : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axis_sobel_0_m_axis_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axis_sobel_0_m_axis_TLAST : STD_LOGIC;
  signal axis_sobel_0_m_axis_TREADY : STD_LOGIC;
  signal axis_sobel_0_m_axis_TVALID : STD_LOGIC;
  signal dvi2rgb_0_DDC_SCL_I : STD_LOGIC;
  signal dvi2rgb_0_DDC_SCL_O : STD_LOGIC;
  signal dvi2rgb_0_DDC_SCL_T : STD_LOGIC;
  signal dvi2rgb_0_DDC_SDA_I : STD_LOGIC;
  signal dvi2rgb_0_DDC_SDA_O : STD_LOGIC;
  signal dvi2rgb_0_DDC_SDA_T : STD_LOGIC;
  signal hdmi_in_1_CLK_N : STD_LOGIC;
  signal hdmi_in_1_CLK_P : STD_LOGIC;
  signal hdmi_in_1_DATA_N : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal hdmi_in_1_DATA_P : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal hdmi_out_hpd_video_gpio_io_o : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ic_resetn_clk100M_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ic_resetn_clk142M_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal periph_resetn_clk100M_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal periph_resetn_clk142M_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal processing_system7_0_FIXED_IO_DDR_VRN : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_DDR_VRP : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_MIO : STD_LOGIC_VECTOR ( 53 downto 0 );
  signal processing_system7_0_FIXED_IO_PS_CLK : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_PS_PORB : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_PS_SRSTB : STD_LOGIC;
  signal ps7_0_DDR_ADDR : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal ps7_0_DDR_BA : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_0_DDR_CAS_N : STD_LOGIC;
  signal ps7_0_DDR_CKE : STD_LOGIC;
  signal ps7_0_DDR_CK_N : STD_LOGIC;
  signal ps7_0_DDR_CK_P : STD_LOGIC;
  signal ps7_0_DDR_CS_N : STD_LOGIC;
  signal ps7_0_DDR_DM : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_DDR_DQ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_DDR_DQS_N : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_DDR_DQS_P : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_DDR_ODT : STD_LOGIC;
  signal ps7_0_DDR_RAS_N : STD_LOGIC;
  signal ps7_0_DDR_RESET_N : STD_LOGIC;
  signal ps7_0_DDR_WE_N : STD_LOGIC;
  signal ps7_0_FCLK_CLK0 : STD_LOGIC;
  signal ps7_0_FCLK_CLK1 : STD_LOGIC;
  signal ps7_0_FCLK_CLK2 : STD_LOGIC;
  signal ps7_0_FCLK_RESET0_N : STD_LOGIC;
  signal ps7_0_M_AXI_GP0_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_M_AXI_GP0_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_M_AXI_GP0_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_M_AXI_GP0_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal ps7_0_M_AXI_GP0_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_M_AXI_GP0_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_M_AXI_GP0_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_0_M_AXI_GP0_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_M_AXI_GP0_ARREADY : STD_LOGIC;
  signal ps7_0_M_AXI_GP0_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_0_M_AXI_GP0_ARVALID : STD_LOGIC;
  signal ps7_0_M_AXI_GP0_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_M_AXI_GP0_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_M_AXI_GP0_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_M_AXI_GP0_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal ps7_0_M_AXI_GP0_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_M_AXI_GP0_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_M_AXI_GP0_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_0_M_AXI_GP0_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_M_AXI_GP0_AWREADY : STD_LOGIC;
  signal ps7_0_M_AXI_GP0_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_0_M_AXI_GP0_AWVALID : STD_LOGIC;
  signal ps7_0_M_AXI_GP0_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal ps7_0_M_AXI_GP0_BREADY : STD_LOGIC;
  signal ps7_0_M_AXI_GP0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_M_AXI_GP0_BVALID : STD_LOGIC;
  signal ps7_0_M_AXI_GP0_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_M_AXI_GP0_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal ps7_0_M_AXI_GP0_RLAST : STD_LOGIC;
  signal ps7_0_M_AXI_GP0_RREADY : STD_LOGIC;
  signal ps7_0_M_AXI_GP0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_M_AXI_GP0_RVALID : STD_LOGIC;
  signal ps7_0_M_AXI_GP0_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_M_AXI_GP0_WID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal ps7_0_M_AXI_GP0_WLAST : STD_LOGIC;
  signal ps7_0_M_AXI_GP0_WREADY : STD_LOGIC;
  signal ps7_0_M_AXI_GP0_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_M_AXI_GP0_WVALID : STD_LOGIC;
  signal ps7_0_axi_periph1_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal ps7_0_axi_periph1_M00_AXI_ARREADY : STD_LOGIC;
  signal ps7_0_axi_periph1_M00_AXI_ARVALID : STD_LOGIC;
  signal ps7_0_axi_periph1_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal ps7_0_axi_periph1_M00_AXI_AWREADY : STD_LOGIC;
  signal ps7_0_axi_periph1_M00_AXI_AWVALID : STD_LOGIC;
  signal ps7_0_axi_periph1_M00_AXI_BREADY : STD_LOGIC;
  signal ps7_0_axi_periph1_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph1_M00_AXI_BVALID : STD_LOGIC;
  signal ps7_0_axi_periph1_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph1_M00_AXI_RREADY : STD_LOGIC;
  signal ps7_0_axi_periph1_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph1_M00_AXI_RVALID : STD_LOGIC;
  signal ps7_0_axi_periph1_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph1_M00_AXI_WREADY : STD_LOGIC;
  signal ps7_0_axi_periph1_M00_AXI_WVALID : STD_LOGIC;
  signal ps7_0_axi_periph1_M01_AXI_ARADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal ps7_0_axi_periph1_M01_AXI_ARREADY : STD_LOGIC;
  signal ps7_0_axi_periph1_M01_AXI_ARVALID : STD_LOGIC;
  signal ps7_0_axi_periph1_M01_AXI_AWADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal ps7_0_axi_periph1_M01_AXI_AWREADY : STD_LOGIC;
  signal ps7_0_axi_periph1_M01_AXI_AWVALID : STD_LOGIC;
  signal ps7_0_axi_periph1_M01_AXI_BREADY : STD_LOGIC;
  signal ps7_0_axi_periph1_M01_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph1_M01_AXI_BVALID : STD_LOGIC;
  signal ps7_0_axi_periph1_M01_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph1_M01_AXI_RREADY : STD_LOGIC;
  signal ps7_0_axi_periph1_M01_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph1_M01_AXI_RVALID : STD_LOGIC;
  signal ps7_0_axi_periph1_M01_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph1_M01_AXI_WREADY : STD_LOGIC;
  signal ps7_0_axi_periph1_M01_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph1_M01_AXI_WVALID : STD_LOGIC;
  signal ps7_0_axi_periph1_M02_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph1_M02_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph1_M02_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph1_M02_AXI_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal ps7_0_axi_periph1_M02_AXI_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal ps7_0_axi_periph1_M02_AXI_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps7_0_axi_periph1_M02_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_0_axi_periph1_M02_AXI_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph1_M02_AXI_ARREADY : STD_LOGIC;
  signal ps7_0_axi_periph1_M02_AXI_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph1_M02_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_0_axi_periph1_M02_AXI_ARVALID : STD_LOGIC;
  signal ps7_0_axi_periph1_M02_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph1_M02_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph1_M02_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph1_M02_AXI_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal ps7_0_axi_periph1_M02_AXI_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal ps7_0_axi_periph1_M02_AXI_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps7_0_axi_periph1_M02_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_0_axi_periph1_M02_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph1_M02_AXI_AWREADY : STD_LOGIC;
  signal ps7_0_axi_periph1_M02_AXI_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph1_M02_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_0_axi_periph1_M02_AXI_AWVALID : STD_LOGIC;
  signal ps7_0_axi_periph1_M02_AXI_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal ps7_0_axi_periph1_M02_AXI_BREADY : STD_LOGIC;
  signal ps7_0_axi_periph1_M02_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph1_M02_AXI_BVALID : STD_LOGIC;
  signal ps7_0_axi_periph1_M02_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph1_M02_AXI_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal ps7_0_axi_periph1_M02_AXI_RLAST : STD_LOGIC;
  signal ps7_0_axi_periph1_M02_AXI_RREADY : STD_LOGIC;
  signal ps7_0_axi_periph1_M02_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph1_M02_AXI_RVALID : STD_LOGIC;
  signal ps7_0_axi_periph1_M02_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph1_M02_AXI_WLAST : STD_LOGIC;
  signal ps7_0_axi_periph1_M02_AXI_WREADY : STD_LOGIC;
  signal ps7_0_axi_periph1_M02_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph1_M02_AXI_WVALID : STD_LOGIC;
  signal ps7_0_axi_periph1_M03_AXI_ARADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal ps7_0_axi_periph1_M03_AXI_ARREADY : STD_LOGIC;
  signal ps7_0_axi_periph1_M03_AXI_ARVALID : STD_LOGIC;
  signal ps7_0_axi_periph1_M03_AXI_AWADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal ps7_0_axi_periph1_M03_AXI_AWREADY : STD_LOGIC;
  signal ps7_0_axi_periph1_M03_AXI_AWVALID : STD_LOGIC;
  signal ps7_0_axi_periph1_M03_AXI_BREADY : STD_LOGIC;
  signal ps7_0_axi_periph1_M03_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph1_M03_AXI_BVALID : STD_LOGIC;
  signal ps7_0_axi_periph1_M03_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph1_M03_AXI_RREADY : STD_LOGIC;
  signal ps7_0_axi_periph1_M03_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph1_M03_AXI_RVALID : STD_LOGIC;
  signal ps7_0_axi_periph1_M03_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph1_M03_AXI_WREADY : STD_LOGIC;
  signal ps7_0_axi_periph1_M03_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph1_M03_AXI_WVALID : STD_LOGIC;
  signal smartconnect_0_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal smartconnect_0_M00_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal smartconnect_0_M00_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal smartconnect_0_M00_AXI_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal smartconnect_0_M00_AXI_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal smartconnect_0_M00_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal smartconnect_0_M00_AXI_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal smartconnect_0_M00_AXI_ARREADY : STD_LOGIC;
  signal smartconnect_0_M00_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal smartconnect_0_M00_AXI_ARVALID : STD_LOGIC;
  signal smartconnect_0_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal smartconnect_0_M00_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal smartconnect_0_M00_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal smartconnect_0_M00_AXI_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal smartconnect_0_M00_AXI_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal smartconnect_0_M00_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal smartconnect_0_M00_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal smartconnect_0_M00_AXI_AWREADY : STD_LOGIC;
  signal smartconnect_0_M00_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal smartconnect_0_M00_AXI_AWVALID : STD_LOGIC;
  signal smartconnect_0_M00_AXI_BREADY : STD_LOGIC;
  signal smartconnect_0_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal smartconnect_0_M00_AXI_BVALID : STD_LOGIC;
  signal smartconnect_0_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal smartconnect_0_M00_AXI_RLAST : STD_LOGIC;
  signal smartconnect_0_M00_AXI_RREADY : STD_LOGIC;
  signal smartconnect_0_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal smartconnect_0_M00_AXI_RVALID : STD_LOGIC;
  signal smartconnect_0_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal smartconnect_0_M00_AXI_WLAST : STD_LOGIC;
  signal smartconnect_0_M00_AXI_WREADY : STD_LOGIC;
  signal smartconnect_0_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal smartconnect_0_M00_AXI_WVALID : STD_LOGIC;
  signal system_interrupts_irq : STD_LOGIC;
  signal threshold_gpio_io_o : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal video_M_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal video_M_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal video_M_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal video_M_AXI_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal video_M_AXI_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal video_M_AXI_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal video_M_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal video_M_AXI_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal video_M_AXI_ARREADY : STD_LOGIC;
  signal video_M_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal video_M_AXI_ARVALID : STD_LOGIC;
  signal video_M_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal video_M_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal video_M_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal video_M_AXI_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal video_M_AXI_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal video_M_AXI_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal video_M_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal video_M_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal video_M_AXI_AWREADY : STD_LOGIC;
  signal video_M_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal video_M_AXI_AWVALID : STD_LOGIC;
  signal video_M_AXI_BID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal video_M_AXI_BREADY : STD_LOGIC;
  signal video_M_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal video_M_AXI_BVALID : STD_LOGIC;
  signal video_M_AXI_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal video_M_AXI_RID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal video_M_AXI_RLAST : STD_LOGIC;
  signal video_M_AXI_RREADY : STD_LOGIC;
  signal video_M_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal video_M_AXI_RVALID : STD_LOGIC;
  signal video_M_AXI_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal video_M_AXI_WID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal video_M_AXI_WLAST : STD_LOGIC;
  signal video_M_AXI_WREADY : STD_LOGIC;
  signal video_M_AXI_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal video_M_AXI_WVALID : STD_LOGIC;
  signal video_TMDS1_CLK_N : STD_LOGIC;
  signal video_TMDS1_CLK_P : STD_LOGIC;
  signal video_TMDS1_DATA_N : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal video_TMDS1_DATA_P : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal video_video_irq : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal xlconcat_0_dout : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xlconcat_1_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_axi_dma_0_mm2s_prmry_reset_out_n_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_dma_0_s2mm_prmry_reset_out_n_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_dma_0_m_axis_mm2s_tkeep_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_ps7_0_USB0_VBUS_PWRSELECT_UNCONNECTED : STD_LOGIC;
  signal NLW_ps7_0_GPIO_O_UNCONNECTED : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal NLW_ps7_0_GPIO_T_UNCONNECTED : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal NLW_ps7_0_S_AXI_HP0_RACOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_ps7_0_S_AXI_HP0_RCOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_ps7_0_S_AXI_HP0_WACOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_ps7_0_S_AXI_HP0_WCOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_ps7_0_S_AXI_HP2_BID_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_ps7_0_S_AXI_HP2_RACOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_ps7_0_S_AXI_HP2_RCOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_ps7_0_S_AXI_HP2_RID_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_ps7_0_S_AXI_HP2_WACOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_ps7_0_S_AXI_HP2_WCOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_ps7_0_USB0_PORT_INDCTL_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_rst_ps7_0_fclk0_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_rst_ps7_0_fclk0_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_ps7_0_fclk0_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_ps7_0_fclk1_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_rst_ps7_0_fclk1_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_ps7_0_fclk1_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute BMM_INFO_PROCESSOR : string;
  attribute BMM_INFO_PROCESSOR of ps7_0 : label is "arm > base iop_pmoda/mb_bram_ctrl base iop_pmodb/mb_bram_ctrl base iop_arduino/mb_bram_ctrl base iop_rpi/mb_bram_ctrl";
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of ps7_0 : label is "yes";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of DDR_cas_n : signal is "xilinx.com:interface:ddrx:1.0 DDR CAS_N";
  attribute X_INTERFACE_INFO of DDR_ck_n : signal is "xilinx.com:interface:ddrx:1.0 DDR CK_N";
  attribute X_INTERFACE_INFO of DDR_ck_p : signal is "xilinx.com:interface:ddrx:1.0 DDR CK_P";
  attribute X_INTERFACE_INFO of DDR_cke : signal is "xilinx.com:interface:ddrx:1.0 DDR CKE";
  attribute X_INTERFACE_INFO of DDR_cs_n : signal is "xilinx.com:interface:ddrx:1.0 DDR CS_N";
  attribute X_INTERFACE_INFO of DDR_odt : signal is "xilinx.com:interface:ddrx:1.0 DDR ODT";
  attribute X_INTERFACE_INFO of DDR_ras_n : signal is "xilinx.com:interface:ddrx:1.0 DDR RAS_N";
  attribute X_INTERFACE_INFO of DDR_reset_n : signal is "xilinx.com:interface:ddrx:1.0 DDR RESET_N";
  attribute X_INTERFACE_INFO of DDR_we_n : signal is "xilinx.com:interface:ddrx:1.0 DDR WE_N";
  attribute X_INTERFACE_INFO of FIXED_IO_ddr_vrn : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRN";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of FIXED_IO_ddr_vrn : signal is "XIL_INTERFACENAME FIXED_IO, CAN_DEBUG false";
  attribute X_INTERFACE_INFO of FIXED_IO_ddr_vrp : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRP";
  attribute X_INTERFACE_INFO of FIXED_IO_ps_clk : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_CLK";
  attribute X_INTERFACE_INFO of FIXED_IO_ps_porb : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_PORB";
  attribute X_INTERFACE_INFO of FIXED_IO_ps_srstb : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_SRSTB";
  attribute X_INTERFACE_INFO of hdmi_in_clk_n : signal is "digilentinc.com:interface:tmds:1.0 hdmi_in CLK_N";
  attribute X_INTERFACE_INFO of hdmi_in_clk_p : signal is "digilentinc.com:interface:tmds:1.0 hdmi_in CLK_P";
  attribute X_INTERFACE_INFO of hdmi_in_ddc_scl_i : signal is "xilinx.com:interface:iic:1.0 hdmi_in_ddc SCL_I";
  attribute X_INTERFACE_INFO of hdmi_in_ddc_scl_o : signal is "xilinx.com:interface:iic:1.0 hdmi_in_ddc SCL_O";
  attribute X_INTERFACE_INFO of hdmi_in_ddc_scl_t : signal is "xilinx.com:interface:iic:1.0 hdmi_in_ddc SCL_T";
  attribute X_INTERFACE_INFO of hdmi_in_ddc_sda_i : signal is "xilinx.com:interface:iic:1.0 hdmi_in_ddc SDA_I";
  attribute X_INTERFACE_INFO of hdmi_in_ddc_sda_o : signal is "xilinx.com:interface:iic:1.0 hdmi_in_ddc SDA_O";
  attribute X_INTERFACE_INFO of hdmi_in_ddc_sda_t : signal is "xilinx.com:interface:iic:1.0 hdmi_in_ddc SDA_T";
  attribute X_INTERFACE_INFO of hdmi_out_clk_n : signal is "digilentinc.com:interface:tmds:1.0 hdmi_out CLK_N";
  attribute X_INTERFACE_INFO of hdmi_out_clk_p : signal is "digilentinc.com:interface:tmds:1.0 hdmi_out CLK_P";
  attribute X_INTERFACE_INFO of DDR_addr : signal is "xilinx.com:interface:ddrx:1.0 DDR ADDR";
  attribute X_INTERFACE_PARAMETER of DDR_addr : signal is "XIL_INTERFACENAME DDR, AXI_ARBITRATION_SCHEME TDM, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, CS_ENABLED true, DATA_MASK_ENABLED true, DATA_WIDTH 8, MEMORY_TYPE COMPONENTS, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 1250";
  attribute X_INTERFACE_INFO of DDR_ba : signal is "xilinx.com:interface:ddrx:1.0 DDR BA";
  attribute X_INTERFACE_INFO of DDR_dm : signal is "xilinx.com:interface:ddrx:1.0 DDR DM";
  attribute X_INTERFACE_INFO of DDR_dq : signal is "xilinx.com:interface:ddrx:1.0 DDR DQ";
  attribute X_INTERFACE_INFO of DDR_dqs_n : signal is "xilinx.com:interface:ddrx:1.0 DDR DQS_N";
  attribute X_INTERFACE_INFO of DDR_dqs_p : signal is "xilinx.com:interface:ddrx:1.0 DDR DQS_P";
  attribute X_INTERFACE_INFO of FIXED_IO_mio : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO MIO";
  attribute X_INTERFACE_INFO of hdmi_in_data_n : signal is "digilentinc.com:interface:tmds:1.0 hdmi_in DATA_N";
  attribute X_INTERFACE_INFO of hdmi_in_data_p : signal is "digilentinc.com:interface:tmds:1.0 hdmi_in DATA_P";
  attribute X_INTERFACE_INFO of hdmi_out_data_n : signal is "digilentinc.com:interface:tmds:1.0 hdmi_out DATA_N";
  attribute X_INTERFACE_INFO of hdmi_out_data_p : signal is "digilentinc.com:interface:tmds:1.0 hdmi_out DATA_P";
begin
  dvi2rgb_0_DDC_SCL_I <= hdmi_in_ddc_scl_i;
  dvi2rgb_0_DDC_SDA_I <= hdmi_in_ddc_sda_i;
  hdmi_in_1_CLK_N <= hdmi_in_clk_n;
  hdmi_in_1_CLK_P <= hdmi_in_clk_p;
  hdmi_in_1_DATA_N(2 downto 0) <= hdmi_in_data_n(2 downto 0);
  hdmi_in_1_DATA_P(2 downto 0) <= hdmi_in_data_p(2 downto 0);
  hdmi_in_ddc_scl_o <= dvi2rgb_0_DDC_SCL_O;
  hdmi_in_ddc_scl_t <= dvi2rgb_0_DDC_SCL_T;
  hdmi_in_ddc_sda_o <= dvi2rgb_0_DDC_SDA_O;
  hdmi_in_ddc_sda_t <= dvi2rgb_0_DDC_SDA_T;
  hdmi_in_hpd(0) <= axi_gpio_video_gpio_io_o(0);
  hdmi_out_clk_n <= video_TMDS1_CLK_N;
  hdmi_out_clk_p <= video_TMDS1_CLK_P;
  hdmi_out_data_n(2 downto 0) <= video_TMDS1_DATA_N(2 downto 0);
  hdmi_out_data_p(2 downto 0) <= video_TMDS1_DATA_P(2 downto 0);
  hdmi_out_hpd(0) <= hdmi_out_hpd_video_gpio_io_o(0);
axi_dma_0: component base_axi_dma_0_2
     port map (
      axi_resetn => periph_resetn_clk100M_1(0),
      m_axi_mm2s_aclk => ps7_0_FCLK_CLK0,
      m_axi_mm2s_araddr(31 downto 0) => axi_dma_0_M_AXI_MM2S_ARADDR(31 downto 0),
      m_axi_mm2s_arburst(1 downto 0) => axi_dma_0_M_AXI_MM2S_ARBURST(1 downto 0),
      m_axi_mm2s_arcache(3 downto 0) => axi_dma_0_M_AXI_MM2S_ARCACHE(3 downto 0),
      m_axi_mm2s_arlen(7 downto 0) => axi_dma_0_M_AXI_MM2S_ARLEN(7 downto 0),
      m_axi_mm2s_arprot(2 downto 0) => axi_dma_0_M_AXI_MM2S_ARPROT(2 downto 0),
      m_axi_mm2s_arready => axi_dma_0_M_AXI_MM2S_ARREADY,
      m_axi_mm2s_arsize(2 downto 0) => axi_dma_0_M_AXI_MM2S_ARSIZE(2 downto 0),
      m_axi_mm2s_arvalid => axi_dma_0_M_AXI_MM2S_ARVALID,
      m_axi_mm2s_rdata(31 downto 0) => axi_dma_0_M_AXI_MM2S_RDATA(31 downto 0),
      m_axi_mm2s_rlast => axi_dma_0_M_AXI_MM2S_RLAST,
      m_axi_mm2s_rready => axi_dma_0_M_AXI_MM2S_RREADY,
      m_axi_mm2s_rresp(1 downto 0) => axi_dma_0_M_AXI_MM2S_RRESP(1 downto 0),
      m_axi_mm2s_rvalid => axi_dma_0_M_AXI_MM2S_RVALID,
      m_axi_s2mm_aclk => ps7_0_FCLK_CLK0,
      m_axi_s2mm_awaddr(31 downto 0) => axi_dma_0_M_AXI_S2MM_AWADDR(31 downto 0),
      m_axi_s2mm_awburst(1 downto 0) => axi_dma_0_M_AXI_S2MM_AWBURST(1 downto 0),
      m_axi_s2mm_awcache(3 downto 0) => axi_dma_0_M_AXI_S2MM_AWCACHE(3 downto 0),
      m_axi_s2mm_awlen(7 downto 0) => axi_dma_0_M_AXI_S2MM_AWLEN(7 downto 0),
      m_axi_s2mm_awprot(2 downto 0) => axi_dma_0_M_AXI_S2MM_AWPROT(2 downto 0),
      m_axi_s2mm_awready => axi_dma_0_M_AXI_S2MM_AWREADY,
      m_axi_s2mm_awsize(2 downto 0) => axi_dma_0_M_AXI_S2MM_AWSIZE(2 downto 0),
      m_axi_s2mm_awvalid => axi_dma_0_M_AXI_S2MM_AWVALID,
      m_axi_s2mm_bready => axi_dma_0_M_AXI_S2MM_BREADY,
      m_axi_s2mm_bresp(1 downto 0) => axi_dma_0_M_AXI_S2MM_BRESP(1 downto 0),
      m_axi_s2mm_bvalid => axi_dma_0_M_AXI_S2MM_BVALID,
      m_axi_s2mm_wdata(31 downto 0) => axi_dma_0_M_AXI_S2MM_WDATA(31 downto 0),
      m_axi_s2mm_wlast => axi_dma_0_M_AXI_S2MM_WLAST,
      m_axi_s2mm_wready => axi_dma_0_M_AXI_S2MM_WREADY,
      m_axi_s2mm_wstrb(3 downto 0) => axi_dma_0_M_AXI_S2MM_WSTRB(3 downto 0),
      m_axi_s2mm_wvalid => axi_dma_0_M_AXI_S2MM_WVALID,
      m_axis_mm2s_tdata(31 downto 0) => axi_dma_0_M_AXIS_MM2S_TDATA(31 downto 0),
      m_axis_mm2s_tkeep(3 downto 0) => NLW_axi_dma_0_m_axis_mm2s_tkeep_UNCONNECTED(3 downto 0),
      m_axis_mm2s_tlast => axi_dma_0_M_AXIS_MM2S_TLAST,
      m_axis_mm2s_tready => axi_dma_0_M_AXIS_MM2S_TREADY,
      m_axis_mm2s_tvalid => axi_dma_0_M_AXIS_MM2S_TVALID,
      mm2s_introut => axi_dma_0_mm2s_introut,
      mm2s_prmry_reset_out_n => NLW_axi_dma_0_mm2s_prmry_reset_out_n_UNCONNECTED,
      s2mm_introut => axi_dma_0_s2mm_introut,
      s2mm_prmry_reset_out_n => NLW_axi_dma_0_s2mm_prmry_reset_out_n_UNCONNECTED,
      s_axi_lite_aclk => ps7_0_FCLK_CLK0,
      s_axi_lite_araddr(9 downto 0) => ps7_0_axi_periph1_M00_AXI_ARADDR(9 downto 0),
      s_axi_lite_arready => ps7_0_axi_periph1_M00_AXI_ARREADY,
      s_axi_lite_arvalid => ps7_0_axi_periph1_M00_AXI_ARVALID,
      s_axi_lite_awaddr(9 downto 0) => ps7_0_axi_periph1_M00_AXI_AWADDR(9 downto 0),
      s_axi_lite_awready => ps7_0_axi_periph1_M00_AXI_AWREADY,
      s_axi_lite_awvalid => ps7_0_axi_periph1_M00_AXI_AWVALID,
      s_axi_lite_bready => ps7_0_axi_periph1_M00_AXI_BREADY,
      s_axi_lite_bresp(1 downto 0) => ps7_0_axi_periph1_M00_AXI_BRESP(1 downto 0),
      s_axi_lite_bvalid => ps7_0_axi_periph1_M00_AXI_BVALID,
      s_axi_lite_rdata(31 downto 0) => ps7_0_axi_periph1_M00_AXI_RDATA(31 downto 0),
      s_axi_lite_rready => ps7_0_axi_periph1_M00_AXI_RREADY,
      s_axi_lite_rresp(1 downto 0) => ps7_0_axi_periph1_M00_AXI_RRESP(1 downto 0),
      s_axi_lite_rvalid => ps7_0_axi_periph1_M00_AXI_RVALID,
      s_axi_lite_wdata(31 downto 0) => ps7_0_axi_periph1_M00_AXI_WDATA(31 downto 0),
      s_axi_lite_wready => ps7_0_axi_periph1_M00_AXI_WREADY,
      s_axi_lite_wvalid => ps7_0_axi_periph1_M00_AXI_WVALID,
      s_axis_s2mm_tdata(31 downto 0) => axis_sobel_0_m_axis_TDATA(31 downto 0),
      s_axis_s2mm_tkeep(3 downto 0) => B"1111",
      s_axis_s2mm_tlast => axis_sobel_0_m_axis_TLAST,
      s_axis_s2mm_tready => axis_sobel_0_m_axis_TREADY,
      s_axis_s2mm_tvalid => axis_sobel_0_m_axis_TVALID
    );
axis_sobel_0: component base_axis_sobel_0_2
     port map (
      m_axis_tdata(31 downto 0) => axis_sobel_0_m_axis_TDATA(31 downto 0),
      m_axis_tlast => axis_sobel_0_m_axis_TLAST,
      m_axis_tready => axis_sobel_0_m_axis_TREADY,
      m_axis_tvalid => axis_sobel_0_m_axis_TVALID,
      s_axi_aclk => ps7_0_FCLK_CLK0,
      s_axi_aresetn => periph_resetn_clk100M_1(0),
      s_axis_tdata(31 downto 0) => axi_dma_0_M_AXIS_MM2S_TDATA(31 downto 0),
      s_axis_tlast => axi_dma_0_M_AXIS_MM2S_TLAST,
      s_axis_tready => axi_dma_0_M_AXIS_MM2S_TREADY,
      s_axis_tvalid => axi_dma_0_M_AXIS_MM2S_TVALID,
      threshold(11 downto 0) => threshold_gpio_io_o(11 downto 0)
    );
ps7_0: component base_ps7_0_0
     port map (
      DDR_Addr(14 downto 0) => DDR_addr(14 downto 0),
      DDR_BankAddr(2 downto 0) => DDR_ba(2 downto 0),
      DDR_CAS_n => DDR_cas_n,
      DDR_CKE => DDR_cke,
      DDR_CS_n => DDR_cs_n,
      DDR_Clk => DDR_ck_p,
      DDR_Clk_n => DDR_ck_n,
      DDR_DM(3 downto 0) => DDR_dm(3 downto 0),
      DDR_DQ(31 downto 0) => DDR_dq(31 downto 0),
      DDR_DQS(3 downto 0) => DDR_dqs_p(3 downto 0),
      DDR_DQS_n(3 downto 0) => DDR_dqs_n(3 downto 0),
      DDR_DRSTB => DDR_reset_n,
      DDR_ODT => DDR_odt,
      DDR_RAS_n => DDR_ras_n,
      DDR_VRN => FIXED_IO_ddr_vrn,
      DDR_VRP => FIXED_IO_ddr_vrp,
      DDR_WEB => DDR_we_n,
      FCLK_CLK0 => ps7_0_FCLK_CLK0,
      FCLK_CLK1 => ps7_0_FCLK_CLK1,
      FCLK_CLK2 => ps7_0_FCLK_CLK2,
      FCLK_RESET0_N => ps7_0_FCLK_RESET0_N,
      GPIO_I(9 downto 0) => B"0000000000",
      GPIO_O(9 downto 0) => NLW_ps7_0_GPIO_O_UNCONNECTED(9 downto 0),
      GPIO_T(9 downto 0) => NLW_ps7_0_GPIO_T_UNCONNECTED(9 downto 0),
      IRQ_F2P(0) => xlconcat_1_dout(0),
      MIO(53 downto 0) => FIXED_IO_mio(53 downto 0),
      M_AXI_GP0_ACLK => ps7_0_FCLK_CLK0,
      M_AXI_GP0_ARADDR(31 downto 0) => ps7_0_M_AXI_GP0_ARADDR(31 downto 0),
      M_AXI_GP0_ARBURST(1 downto 0) => ps7_0_M_AXI_GP0_ARBURST(1 downto 0),
      M_AXI_GP0_ARCACHE(3 downto 0) => ps7_0_M_AXI_GP0_ARCACHE(3 downto 0),
      M_AXI_GP0_ARID(11 downto 0) => ps7_0_M_AXI_GP0_ARID(11 downto 0),
      M_AXI_GP0_ARLEN(3 downto 0) => ps7_0_M_AXI_GP0_ARLEN(3 downto 0),
      M_AXI_GP0_ARLOCK(1 downto 0) => ps7_0_M_AXI_GP0_ARLOCK(1 downto 0),
      M_AXI_GP0_ARPROT(2 downto 0) => ps7_0_M_AXI_GP0_ARPROT(2 downto 0),
      M_AXI_GP0_ARQOS(3 downto 0) => ps7_0_M_AXI_GP0_ARQOS(3 downto 0),
      M_AXI_GP0_ARREADY => ps7_0_M_AXI_GP0_ARREADY,
      M_AXI_GP0_ARSIZE(2 downto 0) => ps7_0_M_AXI_GP0_ARSIZE(2 downto 0),
      M_AXI_GP0_ARVALID => ps7_0_M_AXI_GP0_ARVALID,
      M_AXI_GP0_AWADDR(31 downto 0) => ps7_0_M_AXI_GP0_AWADDR(31 downto 0),
      M_AXI_GP0_AWBURST(1 downto 0) => ps7_0_M_AXI_GP0_AWBURST(1 downto 0),
      M_AXI_GP0_AWCACHE(3 downto 0) => ps7_0_M_AXI_GP0_AWCACHE(3 downto 0),
      M_AXI_GP0_AWID(11 downto 0) => ps7_0_M_AXI_GP0_AWID(11 downto 0),
      M_AXI_GP0_AWLEN(3 downto 0) => ps7_0_M_AXI_GP0_AWLEN(3 downto 0),
      M_AXI_GP0_AWLOCK(1 downto 0) => ps7_0_M_AXI_GP0_AWLOCK(1 downto 0),
      M_AXI_GP0_AWPROT(2 downto 0) => ps7_0_M_AXI_GP0_AWPROT(2 downto 0),
      M_AXI_GP0_AWQOS(3 downto 0) => ps7_0_M_AXI_GP0_AWQOS(3 downto 0),
      M_AXI_GP0_AWREADY => ps7_0_M_AXI_GP0_AWREADY,
      M_AXI_GP0_AWSIZE(2 downto 0) => ps7_0_M_AXI_GP0_AWSIZE(2 downto 0),
      M_AXI_GP0_AWVALID => ps7_0_M_AXI_GP0_AWVALID,
      M_AXI_GP0_BID(11 downto 0) => ps7_0_M_AXI_GP0_BID(11 downto 0),
      M_AXI_GP0_BREADY => ps7_0_M_AXI_GP0_BREADY,
      M_AXI_GP0_BRESP(1 downto 0) => ps7_0_M_AXI_GP0_BRESP(1 downto 0),
      M_AXI_GP0_BVALID => ps7_0_M_AXI_GP0_BVALID,
      M_AXI_GP0_RDATA(31 downto 0) => ps7_0_M_AXI_GP0_RDATA(31 downto 0),
      M_AXI_GP0_RID(11 downto 0) => ps7_0_M_AXI_GP0_RID(11 downto 0),
      M_AXI_GP0_RLAST => ps7_0_M_AXI_GP0_RLAST,
      M_AXI_GP0_RREADY => ps7_0_M_AXI_GP0_RREADY,
      M_AXI_GP0_RRESP(1 downto 0) => ps7_0_M_AXI_GP0_RRESP(1 downto 0),
      M_AXI_GP0_RVALID => ps7_0_M_AXI_GP0_RVALID,
      M_AXI_GP0_WDATA(31 downto 0) => ps7_0_M_AXI_GP0_WDATA(31 downto 0),
      M_AXI_GP0_WID(11 downto 0) => ps7_0_M_AXI_GP0_WID(11 downto 0),
      M_AXI_GP0_WLAST => ps7_0_M_AXI_GP0_WLAST,
      M_AXI_GP0_WREADY => ps7_0_M_AXI_GP0_WREADY,
      M_AXI_GP0_WSTRB(3 downto 0) => ps7_0_M_AXI_GP0_WSTRB(3 downto 0),
      M_AXI_GP0_WVALID => ps7_0_M_AXI_GP0_WVALID,
      PS_CLK => FIXED_IO_ps_clk,
      PS_PORB => FIXED_IO_ps_porb,
      PS_SRSTB => FIXED_IO_ps_srstb,
      S_AXI_HP0_ACLK => ps7_0_FCLK_CLK1,
      S_AXI_HP0_ARADDR(31 downto 0) => video_M_AXI_ARADDR(31 downto 0),
      S_AXI_HP0_ARBURST(1 downto 0) => video_M_AXI_ARBURST(1 downto 0),
      S_AXI_HP0_ARCACHE(3 downto 0) => video_M_AXI_ARCACHE(3 downto 0),
      S_AXI_HP0_ARID(5 downto 1) => B"00000",
      S_AXI_HP0_ARID(0) => video_M_AXI_ARID(0),
      S_AXI_HP0_ARLEN(3 downto 0) => video_M_AXI_ARLEN(3 downto 0),
      S_AXI_HP0_ARLOCK(1 downto 0) => video_M_AXI_ARLOCK(1 downto 0),
      S_AXI_HP0_ARPROT(2 downto 0) => video_M_AXI_ARPROT(2 downto 0),
      S_AXI_HP0_ARQOS(3 downto 0) => video_M_AXI_ARQOS(3 downto 0),
      S_AXI_HP0_ARREADY => video_M_AXI_ARREADY,
      S_AXI_HP0_ARSIZE(2 downto 0) => video_M_AXI_ARSIZE(2 downto 0),
      S_AXI_HP0_ARVALID => video_M_AXI_ARVALID,
      S_AXI_HP0_AWADDR(31 downto 0) => video_M_AXI_AWADDR(31 downto 0),
      S_AXI_HP0_AWBURST(1 downto 0) => video_M_AXI_AWBURST(1 downto 0),
      S_AXI_HP0_AWCACHE(3 downto 0) => video_M_AXI_AWCACHE(3 downto 0),
      S_AXI_HP0_AWID(5 downto 1) => B"00000",
      S_AXI_HP0_AWID(0) => video_M_AXI_AWID(0),
      S_AXI_HP0_AWLEN(3 downto 0) => video_M_AXI_AWLEN(3 downto 0),
      S_AXI_HP0_AWLOCK(1 downto 0) => video_M_AXI_AWLOCK(1 downto 0),
      S_AXI_HP0_AWPROT(2 downto 0) => video_M_AXI_AWPROT(2 downto 0),
      S_AXI_HP0_AWQOS(3 downto 0) => video_M_AXI_AWQOS(3 downto 0),
      S_AXI_HP0_AWREADY => video_M_AXI_AWREADY,
      S_AXI_HP0_AWSIZE(2 downto 0) => video_M_AXI_AWSIZE(2 downto 0),
      S_AXI_HP0_AWVALID => video_M_AXI_AWVALID,
      S_AXI_HP0_BID(5 downto 0) => video_M_AXI_BID(5 downto 0),
      S_AXI_HP0_BREADY => video_M_AXI_BREADY,
      S_AXI_HP0_BRESP(1 downto 0) => video_M_AXI_BRESP(1 downto 0),
      S_AXI_HP0_BVALID => video_M_AXI_BVALID,
      S_AXI_HP0_RACOUNT(2 downto 0) => NLW_ps7_0_S_AXI_HP0_RACOUNT_UNCONNECTED(2 downto 0),
      S_AXI_HP0_RCOUNT(7 downto 0) => NLW_ps7_0_S_AXI_HP0_RCOUNT_UNCONNECTED(7 downto 0),
      S_AXI_HP0_RDATA(63 downto 0) => video_M_AXI_RDATA(63 downto 0),
      S_AXI_HP0_RDISSUECAP1_EN => '0',
      S_AXI_HP0_RID(5 downto 0) => video_M_AXI_RID(5 downto 0),
      S_AXI_HP0_RLAST => video_M_AXI_RLAST,
      S_AXI_HP0_RREADY => video_M_AXI_RREADY,
      S_AXI_HP0_RRESP(1 downto 0) => video_M_AXI_RRESP(1 downto 0),
      S_AXI_HP0_RVALID => video_M_AXI_RVALID,
      S_AXI_HP0_WACOUNT(5 downto 0) => NLW_ps7_0_S_AXI_HP0_WACOUNT_UNCONNECTED(5 downto 0),
      S_AXI_HP0_WCOUNT(7 downto 0) => NLW_ps7_0_S_AXI_HP0_WCOUNT_UNCONNECTED(7 downto 0),
      S_AXI_HP0_WDATA(63 downto 0) => video_M_AXI_WDATA(63 downto 0),
      S_AXI_HP0_WID(5 downto 1) => B"00000",
      S_AXI_HP0_WID(0) => video_M_AXI_WID(0),
      S_AXI_HP0_WLAST => video_M_AXI_WLAST,
      S_AXI_HP0_WREADY => video_M_AXI_WREADY,
      S_AXI_HP0_WRISSUECAP1_EN => '0',
      S_AXI_HP0_WSTRB(7 downto 0) => video_M_AXI_WSTRB(7 downto 0),
      S_AXI_HP0_WVALID => video_M_AXI_WVALID,
      S_AXI_HP2_ACLK => ps7_0_FCLK_CLK0,
      S_AXI_HP2_ARADDR(31 downto 0) => smartconnect_0_M00_AXI_ARADDR(31 downto 0),
      S_AXI_HP2_ARBURST(1 downto 0) => smartconnect_0_M00_AXI_ARBURST(1 downto 0),
      S_AXI_HP2_ARCACHE(3 downto 0) => smartconnect_0_M00_AXI_ARCACHE(3 downto 0),
      S_AXI_HP2_ARID(5 downto 0) => B"000000",
      S_AXI_HP2_ARLEN(3 downto 0) => smartconnect_0_M00_AXI_ARLEN(3 downto 0),
      S_AXI_HP2_ARLOCK(1 downto 0) => smartconnect_0_M00_AXI_ARLOCK(1 downto 0),
      S_AXI_HP2_ARPROT(2 downto 0) => smartconnect_0_M00_AXI_ARPROT(2 downto 0),
      S_AXI_HP2_ARQOS(3 downto 0) => smartconnect_0_M00_AXI_ARQOS(3 downto 0),
      S_AXI_HP2_ARREADY => smartconnect_0_M00_AXI_ARREADY,
      S_AXI_HP2_ARSIZE(2 downto 0) => smartconnect_0_M00_AXI_ARSIZE(2 downto 0),
      S_AXI_HP2_ARVALID => smartconnect_0_M00_AXI_ARVALID,
      S_AXI_HP2_AWADDR(31 downto 0) => smartconnect_0_M00_AXI_AWADDR(31 downto 0),
      S_AXI_HP2_AWBURST(1 downto 0) => smartconnect_0_M00_AXI_AWBURST(1 downto 0),
      S_AXI_HP2_AWCACHE(3 downto 0) => smartconnect_0_M00_AXI_AWCACHE(3 downto 0),
      S_AXI_HP2_AWID(5 downto 0) => B"000000",
      S_AXI_HP2_AWLEN(3 downto 0) => smartconnect_0_M00_AXI_AWLEN(3 downto 0),
      S_AXI_HP2_AWLOCK(1 downto 0) => smartconnect_0_M00_AXI_AWLOCK(1 downto 0),
      S_AXI_HP2_AWPROT(2 downto 0) => smartconnect_0_M00_AXI_AWPROT(2 downto 0),
      S_AXI_HP2_AWQOS(3 downto 0) => smartconnect_0_M00_AXI_AWQOS(3 downto 0),
      S_AXI_HP2_AWREADY => smartconnect_0_M00_AXI_AWREADY,
      S_AXI_HP2_AWSIZE(2 downto 0) => smartconnect_0_M00_AXI_AWSIZE(2 downto 0),
      S_AXI_HP2_AWVALID => smartconnect_0_M00_AXI_AWVALID,
      S_AXI_HP2_BID(5 downto 0) => NLW_ps7_0_S_AXI_HP2_BID_UNCONNECTED(5 downto 0),
      S_AXI_HP2_BREADY => smartconnect_0_M00_AXI_BREADY,
      S_AXI_HP2_BRESP(1 downto 0) => smartconnect_0_M00_AXI_BRESP(1 downto 0),
      S_AXI_HP2_BVALID => smartconnect_0_M00_AXI_BVALID,
      S_AXI_HP2_RACOUNT(2 downto 0) => NLW_ps7_0_S_AXI_HP2_RACOUNT_UNCONNECTED(2 downto 0),
      S_AXI_HP2_RCOUNT(7 downto 0) => NLW_ps7_0_S_AXI_HP2_RCOUNT_UNCONNECTED(7 downto 0),
      S_AXI_HP2_RDATA(63 downto 0) => smartconnect_0_M00_AXI_RDATA(63 downto 0),
      S_AXI_HP2_RDISSUECAP1_EN => '0',
      S_AXI_HP2_RID(5 downto 0) => NLW_ps7_0_S_AXI_HP2_RID_UNCONNECTED(5 downto 0),
      S_AXI_HP2_RLAST => smartconnect_0_M00_AXI_RLAST,
      S_AXI_HP2_RREADY => smartconnect_0_M00_AXI_RREADY,
      S_AXI_HP2_RRESP(1 downto 0) => smartconnect_0_M00_AXI_RRESP(1 downto 0),
      S_AXI_HP2_RVALID => smartconnect_0_M00_AXI_RVALID,
      S_AXI_HP2_WACOUNT(5 downto 0) => NLW_ps7_0_S_AXI_HP2_WACOUNT_UNCONNECTED(5 downto 0),
      S_AXI_HP2_WCOUNT(7 downto 0) => NLW_ps7_0_S_AXI_HP2_WCOUNT_UNCONNECTED(7 downto 0),
      S_AXI_HP2_WDATA(63 downto 0) => smartconnect_0_M00_AXI_WDATA(63 downto 0),
      S_AXI_HP2_WID(5 downto 0) => B"000000",
      S_AXI_HP2_WLAST => smartconnect_0_M00_AXI_WLAST,
      S_AXI_HP2_WREADY => smartconnect_0_M00_AXI_WREADY,
      S_AXI_HP2_WRISSUECAP1_EN => '0',
      S_AXI_HP2_WSTRB(7 downto 0) => smartconnect_0_M00_AXI_WSTRB(7 downto 0),
      S_AXI_HP2_WVALID => smartconnect_0_M00_AXI_WVALID,
      USB0_PORT_INDCTL(1 downto 0) => NLW_ps7_0_USB0_PORT_INDCTL_UNCONNECTED(1 downto 0),
      USB0_VBUS_PWRFAULT => '0',
      USB0_VBUS_PWRSELECT => NLW_ps7_0_USB0_VBUS_PWRSELECT_UNCONNECTED
    );
ps7_0_axi_periph1: entity work.base_ps7_0_axi_periph1_0
     port map (
      ACLK => ps7_0_FCLK_CLK0,
      ARESETN => ic_resetn_clk100M_1(0),
      M00_ACLK => ps7_0_FCLK_CLK0,
      M00_ARESETN => periph_resetn_clk100M_1(0),
      M00_AXI_araddr(9 downto 0) => ps7_0_axi_periph1_M00_AXI_ARADDR(9 downto 0),
      M00_AXI_arready => ps7_0_axi_periph1_M00_AXI_ARREADY,
      M00_AXI_arvalid => ps7_0_axi_periph1_M00_AXI_ARVALID,
      M00_AXI_awaddr(9 downto 0) => ps7_0_axi_periph1_M00_AXI_AWADDR(9 downto 0),
      M00_AXI_awready => ps7_0_axi_periph1_M00_AXI_AWREADY,
      M00_AXI_awvalid => ps7_0_axi_periph1_M00_AXI_AWVALID,
      M00_AXI_bready => ps7_0_axi_periph1_M00_AXI_BREADY,
      M00_AXI_bresp(1 downto 0) => ps7_0_axi_periph1_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid => ps7_0_axi_periph1_M00_AXI_BVALID,
      M00_AXI_rdata(31 downto 0) => ps7_0_axi_periph1_M00_AXI_RDATA(31 downto 0),
      M00_AXI_rready => ps7_0_axi_periph1_M00_AXI_RREADY,
      M00_AXI_rresp(1 downto 0) => ps7_0_axi_periph1_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid => ps7_0_axi_periph1_M00_AXI_RVALID,
      M00_AXI_wdata(31 downto 0) => ps7_0_axi_periph1_M00_AXI_WDATA(31 downto 0),
      M00_AXI_wready => ps7_0_axi_periph1_M00_AXI_WREADY,
      M00_AXI_wvalid => ps7_0_axi_periph1_M00_AXI_WVALID,
      M01_ACLK => ps7_0_FCLK_CLK0,
      M01_ARESETN => periph_resetn_clk100M_1(0),
      M01_AXI_araddr(8 downto 0) => ps7_0_axi_periph1_M01_AXI_ARADDR(8 downto 0),
      M01_AXI_arready => ps7_0_axi_periph1_M01_AXI_ARREADY,
      M01_AXI_arvalid => ps7_0_axi_periph1_M01_AXI_ARVALID,
      M01_AXI_awaddr(8 downto 0) => ps7_0_axi_periph1_M01_AXI_AWADDR(8 downto 0),
      M01_AXI_awready => ps7_0_axi_periph1_M01_AXI_AWREADY,
      M01_AXI_awvalid => ps7_0_axi_periph1_M01_AXI_AWVALID,
      M01_AXI_bready => ps7_0_axi_periph1_M01_AXI_BREADY,
      M01_AXI_bresp(1 downto 0) => ps7_0_axi_periph1_M01_AXI_BRESP(1 downto 0),
      M01_AXI_bvalid => ps7_0_axi_periph1_M01_AXI_BVALID,
      M01_AXI_rdata(31 downto 0) => ps7_0_axi_periph1_M01_AXI_RDATA(31 downto 0),
      M01_AXI_rready => ps7_0_axi_periph1_M01_AXI_RREADY,
      M01_AXI_rresp(1 downto 0) => ps7_0_axi_periph1_M01_AXI_RRESP(1 downto 0),
      M01_AXI_rvalid => ps7_0_axi_periph1_M01_AXI_RVALID,
      M01_AXI_wdata(31 downto 0) => ps7_0_axi_periph1_M01_AXI_WDATA(31 downto 0),
      M01_AXI_wready => ps7_0_axi_periph1_M01_AXI_WREADY,
      M01_AXI_wstrb(3 downto 0) => ps7_0_axi_periph1_M01_AXI_WSTRB(3 downto 0),
      M01_AXI_wvalid => ps7_0_axi_periph1_M01_AXI_WVALID,
      M02_ACLK => ps7_0_FCLK_CLK0,
      M02_ARESETN => periph_resetn_clk100M_1(0),
      M02_AXI_araddr(31 downto 0) => ps7_0_axi_periph1_M02_AXI_ARADDR(31 downto 0),
      M02_AXI_arburst(1 downto 0) => ps7_0_axi_periph1_M02_AXI_ARBURST(1 downto 0),
      M02_AXI_arcache(3 downto 0) => ps7_0_axi_periph1_M02_AXI_ARCACHE(3 downto 0),
      M02_AXI_arid(11 downto 0) => ps7_0_axi_periph1_M02_AXI_ARID(11 downto 0),
      M02_AXI_arlen(7 downto 0) => ps7_0_axi_periph1_M02_AXI_ARLEN(7 downto 0),
      M02_AXI_arlock(0) => ps7_0_axi_periph1_M02_AXI_ARLOCK(0),
      M02_AXI_arprot(2 downto 0) => ps7_0_axi_periph1_M02_AXI_ARPROT(2 downto 0),
      M02_AXI_arqos(3 downto 0) => ps7_0_axi_periph1_M02_AXI_ARQOS(3 downto 0),
      M02_AXI_arready => ps7_0_axi_periph1_M02_AXI_ARREADY,
      M02_AXI_arregion(3 downto 0) => ps7_0_axi_periph1_M02_AXI_ARREGION(3 downto 0),
      M02_AXI_arsize(2 downto 0) => ps7_0_axi_periph1_M02_AXI_ARSIZE(2 downto 0),
      M02_AXI_arvalid => ps7_0_axi_periph1_M02_AXI_ARVALID,
      M02_AXI_awaddr(31 downto 0) => ps7_0_axi_periph1_M02_AXI_AWADDR(31 downto 0),
      M02_AXI_awburst(1 downto 0) => ps7_0_axi_periph1_M02_AXI_AWBURST(1 downto 0),
      M02_AXI_awcache(3 downto 0) => ps7_0_axi_periph1_M02_AXI_AWCACHE(3 downto 0),
      M02_AXI_awid(11 downto 0) => ps7_0_axi_periph1_M02_AXI_AWID(11 downto 0),
      M02_AXI_awlen(7 downto 0) => ps7_0_axi_periph1_M02_AXI_AWLEN(7 downto 0),
      M02_AXI_awlock(0) => ps7_0_axi_periph1_M02_AXI_AWLOCK(0),
      M02_AXI_awprot(2 downto 0) => ps7_0_axi_periph1_M02_AXI_AWPROT(2 downto 0),
      M02_AXI_awqos(3 downto 0) => ps7_0_axi_periph1_M02_AXI_AWQOS(3 downto 0),
      M02_AXI_awready => ps7_0_axi_periph1_M02_AXI_AWREADY,
      M02_AXI_awregion(3 downto 0) => ps7_0_axi_periph1_M02_AXI_AWREGION(3 downto 0),
      M02_AXI_awsize(2 downto 0) => ps7_0_axi_periph1_M02_AXI_AWSIZE(2 downto 0),
      M02_AXI_awvalid => ps7_0_axi_periph1_M02_AXI_AWVALID,
      M02_AXI_bid(11 downto 0) => ps7_0_axi_periph1_M02_AXI_BID(11 downto 0),
      M02_AXI_bready => ps7_0_axi_periph1_M02_AXI_BREADY,
      M02_AXI_bresp(1 downto 0) => ps7_0_axi_periph1_M02_AXI_BRESP(1 downto 0),
      M02_AXI_bvalid => ps7_0_axi_periph1_M02_AXI_BVALID,
      M02_AXI_rdata(31 downto 0) => ps7_0_axi_periph1_M02_AXI_RDATA(31 downto 0),
      M02_AXI_rid(11 downto 0) => ps7_0_axi_periph1_M02_AXI_RID(11 downto 0),
      M02_AXI_rlast => ps7_0_axi_periph1_M02_AXI_RLAST,
      M02_AXI_rready => ps7_0_axi_periph1_M02_AXI_RREADY,
      M02_AXI_rresp(1 downto 0) => ps7_0_axi_periph1_M02_AXI_RRESP(1 downto 0),
      M02_AXI_rvalid => ps7_0_axi_periph1_M02_AXI_RVALID,
      M02_AXI_wdata(31 downto 0) => ps7_0_axi_periph1_M02_AXI_WDATA(31 downto 0),
      M02_AXI_wlast => ps7_0_axi_periph1_M02_AXI_WLAST,
      M02_AXI_wready => ps7_0_axi_periph1_M02_AXI_WREADY,
      M02_AXI_wstrb(3 downto 0) => ps7_0_axi_periph1_M02_AXI_WSTRB(3 downto 0),
      M02_AXI_wvalid => ps7_0_axi_periph1_M02_AXI_WVALID,
      M03_ACLK => ps7_0_FCLK_CLK0,
      M03_ARESETN => periph_resetn_clk100M_1(0),
      M03_AXI_araddr(8 downto 0) => ps7_0_axi_periph1_M03_AXI_ARADDR(8 downto 0),
      M03_AXI_arready => ps7_0_axi_periph1_M03_AXI_ARREADY,
      M03_AXI_arvalid => ps7_0_axi_periph1_M03_AXI_ARVALID,
      M03_AXI_awaddr(8 downto 0) => ps7_0_axi_periph1_M03_AXI_AWADDR(8 downto 0),
      M03_AXI_awready => ps7_0_axi_periph1_M03_AXI_AWREADY,
      M03_AXI_awvalid => ps7_0_axi_periph1_M03_AXI_AWVALID,
      M03_AXI_bready => ps7_0_axi_periph1_M03_AXI_BREADY,
      M03_AXI_bresp(1 downto 0) => ps7_0_axi_periph1_M03_AXI_BRESP(1 downto 0),
      M03_AXI_bvalid => ps7_0_axi_periph1_M03_AXI_BVALID,
      M03_AXI_rdata(31 downto 0) => ps7_0_axi_periph1_M03_AXI_RDATA(31 downto 0),
      M03_AXI_rready => ps7_0_axi_periph1_M03_AXI_RREADY,
      M03_AXI_rresp(1 downto 0) => ps7_0_axi_periph1_M03_AXI_RRESP(1 downto 0),
      M03_AXI_rvalid => ps7_0_axi_periph1_M03_AXI_RVALID,
      M03_AXI_wdata(31 downto 0) => ps7_0_axi_periph1_M03_AXI_WDATA(31 downto 0),
      M03_AXI_wready => ps7_0_axi_periph1_M03_AXI_WREADY,
      M03_AXI_wstrb(3 downto 0) => ps7_0_axi_periph1_M03_AXI_WSTRB(3 downto 0),
      M03_AXI_wvalid => ps7_0_axi_periph1_M03_AXI_WVALID,
      S00_ACLK => ps7_0_FCLK_CLK0,
      S00_ARESETN => periph_resetn_clk100M_1(0),
      S00_AXI_araddr(31 downto 0) => ps7_0_M_AXI_GP0_ARADDR(31 downto 0),
      S00_AXI_arburst(1 downto 0) => ps7_0_M_AXI_GP0_ARBURST(1 downto 0),
      S00_AXI_arcache(3 downto 0) => ps7_0_M_AXI_GP0_ARCACHE(3 downto 0),
      S00_AXI_arid(11 downto 0) => ps7_0_M_AXI_GP0_ARID(11 downto 0),
      S00_AXI_arlen(3 downto 0) => ps7_0_M_AXI_GP0_ARLEN(3 downto 0),
      S00_AXI_arlock(1 downto 0) => ps7_0_M_AXI_GP0_ARLOCK(1 downto 0),
      S00_AXI_arprot(2 downto 0) => ps7_0_M_AXI_GP0_ARPROT(2 downto 0),
      S00_AXI_arqos(3 downto 0) => ps7_0_M_AXI_GP0_ARQOS(3 downto 0),
      S00_AXI_arready => ps7_0_M_AXI_GP0_ARREADY,
      S00_AXI_arsize(2 downto 0) => ps7_0_M_AXI_GP0_ARSIZE(2 downto 0),
      S00_AXI_arvalid => ps7_0_M_AXI_GP0_ARVALID,
      S00_AXI_awaddr(31 downto 0) => ps7_0_M_AXI_GP0_AWADDR(31 downto 0),
      S00_AXI_awburst(1 downto 0) => ps7_0_M_AXI_GP0_AWBURST(1 downto 0),
      S00_AXI_awcache(3 downto 0) => ps7_0_M_AXI_GP0_AWCACHE(3 downto 0),
      S00_AXI_awid(11 downto 0) => ps7_0_M_AXI_GP0_AWID(11 downto 0),
      S00_AXI_awlen(3 downto 0) => ps7_0_M_AXI_GP0_AWLEN(3 downto 0),
      S00_AXI_awlock(1 downto 0) => ps7_0_M_AXI_GP0_AWLOCK(1 downto 0),
      S00_AXI_awprot(2 downto 0) => ps7_0_M_AXI_GP0_AWPROT(2 downto 0),
      S00_AXI_awqos(3 downto 0) => ps7_0_M_AXI_GP0_AWQOS(3 downto 0),
      S00_AXI_awready => ps7_0_M_AXI_GP0_AWREADY,
      S00_AXI_awsize(2 downto 0) => ps7_0_M_AXI_GP0_AWSIZE(2 downto 0),
      S00_AXI_awvalid => ps7_0_M_AXI_GP0_AWVALID,
      S00_AXI_bid(11 downto 0) => ps7_0_M_AXI_GP0_BID(11 downto 0),
      S00_AXI_bready => ps7_0_M_AXI_GP0_BREADY,
      S00_AXI_bresp(1 downto 0) => ps7_0_M_AXI_GP0_BRESP(1 downto 0),
      S00_AXI_bvalid => ps7_0_M_AXI_GP0_BVALID,
      S00_AXI_rdata(31 downto 0) => ps7_0_M_AXI_GP0_RDATA(31 downto 0),
      S00_AXI_rid(11 downto 0) => ps7_0_M_AXI_GP0_RID(11 downto 0),
      S00_AXI_rlast => ps7_0_M_AXI_GP0_RLAST,
      S00_AXI_rready => ps7_0_M_AXI_GP0_RREADY,
      S00_AXI_rresp(1 downto 0) => ps7_0_M_AXI_GP0_RRESP(1 downto 0),
      S00_AXI_rvalid => ps7_0_M_AXI_GP0_RVALID,
      S00_AXI_wdata(31 downto 0) => ps7_0_M_AXI_GP0_WDATA(31 downto 0),
      S00_AXI_wid(11 downto 0) => ps7_0_M_AXI_GP0_WID(11 downto 0),
      S00_AXI_wlast => ps7_0_M_AXI_GP0_WLAST,
      S00_AXI_wready => ps7_0_M_AXI_GP0_WREADY,
      S00_AXI_wstrb(3 downto 0) => ps7_0_M_AXI_GP0_WSTRB(3 downto 0),
      S00_AXI_wvalid => ps7_0_M_AXI_GP0_WVALID
    );
rst_ps7_0_fclk0: component base_rst_ps7_0_fclk0_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_rst_ps7_0_fclk0_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => '1',
      ext_reset_in => ps7_0_FCLK_RESET0_N,
      interconnect_aresetn(0) => ic_resetn_clk100M_1(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_rst_ps7_0_fclk0_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => periph_resetn_clk100M_1(0),
      peripheral_reset(0) => NLW_rst_ps7_0_fclk0_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => ps7_0_FCLK_CLK0
    );
rst_ps7_0_fclk1: component base_rst_ps7_0_fclk1_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_rst_ps7_0_fclk1_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => '1',
      ext_reset_in => ps7_0_FCLK_RESET0_N,
      interconnect_aresetn(0) => ic_resetn_clk142M_1(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_rst_ps7_0_fclk1_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => periph_resetn_clk142M_1(0),
      peripheral_reset(0) => NLW_rst_ps7_0_fclk1_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => ps7_0_FCLK_CLK1
    );
smartconnect_0: component base_smartconnect_0_0
     port map (
      M00_AXI_araddr(31 downto 0) => smartconnect_0_M00_AXI_ARADDR(31 downto 0),
      M00_AXI_arburst(1 downto 0) => smartconnect_0_M00_AXI_ARBURST(1 downto 0),
      M00_AXI_arcache(3 downto 0) => smartconnect_0_M00_AXI_ARCACHE(3 downto 0),
      M00_AXI_arlen(3 downto 0) => smartconnect_0_M00_AXI_ARLEN(3 downto 0),
      M00_AXI_arlock(1 downto 0) => smartconnect_0_M00_AXI_ARLOCK(1 downto 0),
      M00_AXI_arprot(2 downto 0) => smartconnect_0_M00_AXI_ARPROT(2 downto 0),
      M00_AXI_arqos(3 downto 0) => smartconnect_0_M00_AXI_ARQOS(3 downto 0),
      M00_AXI_arready => smartconnect_0_M00_AXI_ARREADY,
      M00_AXI_arsize(2 downto 0) => smartconnect_0_M00_AXI_ARSIZE(2 downto 0),
      M00_AXI_arvalid => smartconnect_0_M00_AXI_ARVALID,
      M00_AXI_awaddr(31 downto 0) => smartconnect_0_M00_AXI_AWADDR(31 downto 0),
      M00_AXI_awburst(1 downto 0) => smartconnect_0_M00_AXI_AWBURST(1 downto 0),
      M00_AXI_awcache(3 downto 0) => smartconnect_0_M00_AXI_AWCACHE(3 downto 0),
      M00_AXI_awlen(3 downto 0) => smartconnect_0_M00_AXI_AWLEN(3 downto 0),
      M00_AXI_awlock(1 downto 0) => smartconnect_0_M00_AXI_AWLOCK(1 downto 0),
      M00_AXI_awprot(2 downto 0) => smartconnect_0_M00_AXI_AWPROT(2 downto 0),
      M00_AXI_awqos(3 downto 0) => smartconnect_0_M00_AXI_AWQOS(3 downto 0),
      M00_AXI_awready => smartconnect_0_M00_AXI_AWREADY,
      M00_AXI_awsize(2 downto 0) => smartconnect_0_M00_AXI_AWSIZE(2 downto 0),
      M00_AXI_awvalid => smartconnect_0_M00_AXI_AWVALID,
      M00_AXI_bready => smartconnect_0_M00_AXI_BREADY,
      M00_AXI_bresp(1 downto 0) => smartconnect_0_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid => smartconnect_0_M00_AXI_BVALID,
      M00_AXI_rdata(63 downto 0) => smartconnect_0_M00_AXI_RDATA(63 downto 0),
      M00_AXI_rlast => smartconnect_0_M00_AXI_RLAST,
      M00_AXI_rready => smartconnect_0_M00_AXI_RREADY,
      M00_AXI_rresp(1 downto 0) => smartconnect_0_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid => smartconnect_0_M00_AXI_RVALID,
      M00_AXI_wdata(63 downto 0) => smartconnect_0_M00_AXI_WDATA(63 downto 0),
      M00_AXI_wlast => smartconnect_0_M00_AXI_WLAST,
      M00_AXI_wready => smartconnect_0_M00_AXI_WREADY,
      M00_AXI_wstrb(7 downto 0) => smartconnect_0_M00_AXI_WSTRB(7 downto 0),
      M00_AXI_wvalid => smartconnect_0_M00_AXI_WVALID,
      S00_AXI_araddr(31 downto 0) => axi_dma_0_M_AXI_MM2S_ARADDR(31 downto 0),
      S00_AXI_arburst(1 downto 0) => axi_dma_0_M_AXI_MM2S_ARBURST(1 downto 0),
      S00_AXI_arcache(3 downto 0) => axi_dma_0_M_AXI_MM2S_ARCACHE(3 downto 0),
      S00_AXI_arlen(7 downto 0) => axi_dma_0_M_AXI_MM2S_ARLEN(7 downto 0),
      S00_AXI_arlock(0) => '0',
      S00_AXI_arprot(2 downto 0) => axi_dma_0_M_AXI_MM2S_ARPROT(2 downto 0),
      S00_AXI_arqos(3 downto 0) => B"0000",
      S00_AXI_arready => axi_dma_0_M_AXI_MM2S_ARREADY,
      S00_AXI_arsize(2 downto 0) => axi_dma_0_M_AXI_MM2S_ARSIZE(2 downto 0),
      S00_AXI_arvalid => axi_dma_0_M_AXI_MM2S_ARVALID,
      S00_AXI_rdata(31 downto 0) => axi_dma_0_M_AXI_MM2S_RDATA(31 downto 0),
      S00_AXI_rlast => axi_dma_0_M_AXI_MM2S_RLAST,
      S00_AXI_rready => axi_dma_0_M_AXI_MM2S_RREADY,
      S00_AXI_rresp(1 downto 0) => axi_dma_0_M_AXI_MM2S_RRESP(1 downto 0),
      S00_AXI_rvalid => axi_dma_0_M_AXI_MM2S_RVALID,
      S01_AXI_awaddr(31 downto 0) => axi_dma_0_M_AXI_S2MM_AWADDR(31 downto 0),
      S01_AXI_awburst(1 downto 0) => axi_dma_0_M_AXI_S2MM_AWBURST(1 downto 0),
      S01_AXI_awcache(3 downto 0) => axi_dma_0_M_AXI_S2MM_AWCACHE(3 downto 0),
      S01_AXI_awlen(7 downto 0) => axi_dma_0_M_AXI_S2MM_AWLEN(7 downto 0),
      S01_AXI_awlock(0) => '0',
      S01_AXI_awprot(2 downto 0) => axi_dma_0_M_AXI_S2MM_AWPROT(2 downto 0),
      S01_AXI_awqos(3 downto 0) => B"0000",
      S01_AXI_awready => axi_dma_0_M_AXI_S2MM_AWREADY,
      S01_AXI_awsize(2 downto 0) => axi_dma_0_M_AXI_S2MM_AWSIZE(2 downto 0),
      S01_AXI_awvalid => axi_dma_0_M_AXI_S2MM_AWVALID,
      S01_AXI_bready => axi_dma_0_M_AXI_S2MM_BREADY,
      S01_AXI_bresp(1 downto 0) => axi_dma_0_M_AXI_S2MM_BRESP(1 downto 0),
      S01_AXI_bvalid => axi_dma_0_M_AXI_S2MM_BVALID,
      S01_AXI_wdata(31 downto 0) => axi_dma_0_M_AXI_S2MM_WDATA(31 downto 0),
      S01_AXI_wlast => axi_dma_0_M_AXI_S2MM_WLAST,
      S01_AXI_wready => axi_dma_0_M_AXI_S2MM_WREADY,
      S01_AXI_wstrb(3 downto 0) => axi_dma_0_M_AXI_S2MM_WSTRB(3 downto 0),
      S01_AXI_wvalid => axi_dma_0_M_AXI_S2MM_WVALID,
      aclk => ps7_0_FCLK_CLK0,
      aresetn => periph_resetn_clk100M_1(0)
    );
system_interrupts: component base_system_interrupts_0
     port map (
      intr(7 downto 0) => xlconcat_0_dout(7 downto 0),
      irq => system_interrupts_irq,
      s_axi_aclk => ps7_0_FCLK_CLK0,
      s_axi_araddr(8 downto 0) => ps7_0_axi_periph1_M01_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => periph_resetn_clk100M_1(0),
      s_axi_arready => ps7_0_axi_periph1_M01_AXI_ARREADY,
      s_axi_arvalid => ps7_0_axi_periph1_M01_AXI_ARVALID,
      s_axi_awaddr(8 downto 0) => ps7_0_axi_periph1_M01_AXI_AWADDR(8 downto 0),
      s_axi_awready => ps7_0_axi_periph1_M01_AXI_AWREADY,
      s_axi_awvalid => ps7_0_axi_periph1_M01_AXI_AWVALID,
      s_axi_bready => ps7_0_axi_periph1_M01_AXI_BREADY,
      s_axi_bresp(1 downto 0) => ps7_0_axi_periph1_M01_AXI_BRESP(1 downto 0),
      s_axi_bvalid => ps7_0_axi_periph1_M01_AXI_BVALID,
      s_axi_rdata(31 downto 0) => ps7_0_axi_periph1_M01_AXI_RDATA(31 downto 0),
      s_axi_rready => ps7_0_axi_periph1_M01_AXI_RREADY,
      s_axi_rresp(1 downto 0) => ps7_0_axi_periph1_M01_AXI_RRESP(1 downto 0),
      s_axi_rvalid => ps7_0_axi_periph1_M01_AXI_RVALID,
      s_axi_wdata(31 downto 0) => ps7_0_axi_periph1_M01_AXI_WDATA(31 downto 0),
      s_axi_wready => ps7_0_axi_periph1_M01_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => ps7_0_axi_periph1_M01_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => ps7_0_axi_periph1_M01_AXI_WVALID
    );
threshold: component base_axi_gpio_0_0
     port map (
      gpio_io_o(11 downto 0) => threshold_gpio_io_o(11 downto 0),
      s_axi_aclk => ps7_0_FCLK_CLK0,
      s_axi_araddr(8 downto 0) => ps7_0_axi_periph1_M03_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => periph_resetn_clk100M_1(0),
      s_axi_arready => ps7_0_axi_periph1_M03_AXI_ARREADY,
      s_axi_arvalid => ps7_0_axi_periph1_M03_AXI_ARVALID,
      s_axi_awaddr(8 downto 0) => ps7_0_axi_periph1_M03_AXI_AWADDR(8 downto 0),
      s_axi_awready => ps7_0_axi_periph1_M03_AXI_AWREADY,
      s_axi_awvalid => ps7_0_axi_periph1_M03_AXI_AWVALID,
      s_axi_bready => ps7_0_axi_periph1_M03_AXI_BREADY,
      s_axi_bresp(1 downto 0) => ps7_0_axi_periph1_M03_AXI_BRESP(1 downto 0),
      s_axi_bvalid => ps7_0_axi_periph1_M03_AXI_BVALID,
      s_axi_rdata(31 downto 0) => ps7_0_axi_periph1_M03_AXI_RDATA(31 downto 0),
      s_axi_rready => ps7_0_axi_periph1_M03_AXI_RREADY,
      s_axi_rresp(1 downto 0) => ps7_0_axi_periph1_M03_AXI_RRESP(1 downto 0),
      s_axi_rvalid => ps7_0_axi_periph1_M03_AXI_RVALID,
      s_axi_wdata(31 downto 0) => ps7_0_axi_periph1_M03_AXI_WDATA(31 downto 0),
      s_axi_wready => ps7_0_axi_periph1_M03_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => ps7_0_axi_periph1_M03_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => ps7_0_axi_periph1_M03_AXI_WVALID
    );
video: entity work.video_imp_1KRFORE
     port map (
      DDC_scl_i => dvi2rgb_0_DDC_SCL_I,
      DDC_scl_o => dvi2rgb_0_DDC_SCL_O,
      DDC_scl_t => dvi2rgb_0_DDC_SCL_T,
      DDC_sda_i => dvi2rgb_0_DDC_SDA_I,
      DDC_sda_o => dvi2rgb_0_DDC_SDA_O,
      DDC_sda_t => dvi2rgb_0_DDC_SDA_T,
      M_AXI_araddr(31 downto 0) => video_M_AXI_ARADDR(31 downto 0),
      M_AXI_arburst(1 downto 0) => video_M_AXI_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => video_M_AXI_ARCACHE(3 downto 0),
      M_AXI_arid(0) => video_M_AXI_ARID(0),
      M_AXI_arlen(3 downto 0) => video_M_AXI_ARLEN(3 downto 0),
      M_AXI_arlock(1 downto 0) => video_M_AXI_ARLOCK(1 downto 0),
      M_AXI_arprot(2 downto 0) => video_M_AXI_ARPROT(2 downto 0),
      M_AXI_arqos(3 downto 0) => video_M_AXI_ARQOS(3 downto 0),
      M_AXI_arready => video_M_AXI_ARREADY,
      M_AXI_arsize(2 downto 0) => video_M_AXI_ARSIZE(2 downto 0),
      M_AXI_arvalid => video_M_AXI_ARVALID,
      M_AXI_awaddr(31 downto 0) => video_M_AXI_AWADDR(31 downto 0),
      M_AXI_awburst(1 downto 0) => video_M_AXI_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => video_M_AXI_AWCACHE(3 downto 0),
      M_AXI_awid(0) => video_M_AXI_AWID(0),
      M_AXI_awlen(3 downto 0) => video_M_AXI_AWLEN(3 downto 0),
      M_AXI_awlock(1 downto 0) => video_M_AXI_AWLOCK(1 downto 0),
      M_AXI_awprot(2 downto 0) => video_M_AXI_AWPROT(2 downto 0),
      M_AXI_awqos(3 downto 0) => video_M_AXI_AWQOS(3 downto 0),
      M_AXI_awready => video_M_AXI_AWREADY,
      M_AXI_awsize(2 downto 0) => video_M_AXI_AWSIZE(2 downto 0),
      M_AXI_awvalid => video_M_AXI_AWVALID,
      M_AXI_bid(5 downto 0) => video_M_AXI_BID(5 downto 0),
      M_AXI_bready => video_M_AXI_BREADY,
      M_AXI_bresp(1 downto 0) => video_M_AXI_BRESP(1 downto 0),
      M_AXI_bvalid => video_M_AXI_BVALID,
      M_AXI_rdata(63 downto 0) => video_M_AXI_RDATA(63 downto 0),
      M_AXI_rid(5 downto 0) => video_M_AXI_RID(5 downto 0),
      M_AXI_rlast => video_M_AXI_RLAST,
      M_AXI_rready => video_M_AXI_RREADY,
      M_AXI_rresp(1 downto 0) => video_M_AXI_RRESP(1 downto 0),
      M_AXI_rvalid => video_M_AXI_RVALID,
      M_AXI_wdata(63 downto 0) => video_M_AXI_WDATA(63 downto 0),
      M_AXI_wid(0) => video_M_AXI_WID(0),
      M_AXI_wlast => video_M_AXI_WLAST,
      M_AXI_wready => video_M_AXI_WREADY,
      M_AXI_wstrb(7 downto 0) => video_M_AXI_WSTRB(7 downto 0),
      M_AXI_wvalid => video_M_AXI_WVALID,
      S_AXI_araddr(31 downto 0) => ps7_0_axi_periph1_M02_AXI_ARADDR(31 downto 0),
      S_AXI_arburst(1 downto 0) => ps7_0_axi_periph1_M02_AXI_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => ps7_0_axi_periph1_M02_AXI_ARCACHE(3 downto 0),
      S_AXI_arid(11 downto 0) => ps7_0_axi_periph1_M02_AXI_ARID(11 downto 0),
      S_AXI_arlen(7 downto 0) => ps7_0_axi_periph1_M02_AXI_ARLEN(7 downto 0),
      S_AXI_arlock(0) => ps7_0_axi_periph1_M02_AXI_ARLOCK(0),
      S_AXI_arprot(2 downto 0) => ps7_0_axi_periph1_M02_AXI_ARPROT(2 downto 0),
      S_AXI_arqos(3 downto 0) => ps7_0_axi_periph1_M02_AXI_ARQOS(3 downto 0),
      S_AXI_arready => ps7_0_axi_periph1_M02_AXI_ARREADY,
      S_AXI_arregion(3 downto 0) => ps7_0_axi_periph1_M02_AXI_ARREGION(3 downto 0),
      S_AXI_arsize(2 downto 0) => ps7_0_axi_periph1_M02_AXI_ARSIZE(2 downto 0),
      S_AXI_arvalid => ps7_0_axi_periph1_M02_AXI_ARVALID,
      S_AXI_awaddr(31 downto 0) => ps7_0_axi_periph1_M02_AXI_AWADDR(31 downto 0),
      S_AXI_awburst(1 downto 0) => ps7_0_axi_periph1_M02_AXI_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => ps7_0_axi_periph1_M02_AXI_AWCACHE(3 downto 0),
      S_AXI_awid(11 downto 0) => ps7_0_axi_periph1_M02_AXI_AWID(11 downto 0),
      S_AXI_awlen(7 downto 0) => ps7_0_axi_periph1_M02_AXI_AWLEN(7 downto 0),
      S_AXI_awlock(0) => ps7_0_axi_periph1_M02_AXI_AWLOCK(0),
      S_AXI_awprot(2 downto 0) => ps7_0_axi_periph1_M02_AXI_AWPROT(2 downto 0),
      S_AXI_awqos(3 downto 0) => ps7_0_axi_periph1_M02_AXI_AWQOS(3 downto 0),
      S_AXI_awready => ps7_0_axi_periph1_M02_AXI_AWREADY,
      S_AXI_awregion(3 downto 0) => ps7_0_axi_periph1_M02_AXI_AWREGION(3 downto 0),
      S_AXI_awsize(2 downto 0) => ps7_0_axi_periph1_M02_AXI_AWSIZE(2 downto 0),
      S_AXI_awvalid => ps7_0_axi_periph1_M02_AXI_AWVALID,
      S_AXI_bid(11 downto 0) => ps7_0_axi_periph1_M02_AXI_BID(11 downto 0),
      S_AXI_bready => ps7_0_axi_periph1_M02_AXI_BREADY,
      S_AXI_bresp(1 downto 0) => ps7_0_axi_periph1_M02_AXI_BRESP(1 downto 0),
      S_AXI_bvalid => ps7_0_axi_periph1_M02_AXI_BVALID,
      S_AXI_rdata(31 downto 0) => ps7_0_axi_periph1_M02_AXI_RDATA(31 downto 0),
      S_AXI_rid(11 downto 0) => ps7_0_axi_periph1_M02_AXI_RID(11 downto 0),
      S_AXI_rlast => ps7_0_axi_periph1_M02_AXI_RLAST,
      S_AXI_rready => ps7_0_axi_periph1_M02_AXI_RREADY,
      S_AXI_rresp(1 downto 0) => ps7_0_axi_periph1_M02_AXI_RRESP(1 downto 0),
      S_AXI_rvalid => ps7_0_axi_periph1_M02_AXI_RVALID,
      S_AXI_wdata(31 downto 0) => ps7_0_axi_periph1_M02_AXI_WDATA(31 downto 0),
      S_AXI_wlast => ps7_0_axi_periph1_M02_AXI_WLAST,
      S_AXI_wready => ps7_0_axi_periph1_M02_AXI_WREADY,
      S_AXI_wstrb(3 downto 0) => ps7_0_axi_periph1_M02_AXI_WSTRB(3 downto 0),
      S_AXI_wvalid => ps7_0_axi_periph1_M02_AXI_WVALID,
      TMDS_in_clk_n => hdmi_in_1_CLK_N,
      TMDS_in_clk_p => hdmi_in_1_CLK_P,
      TMDS_in_data_n(2 downto 0) => hdmi_in_1_DATA_N(2 downto 0),
      TMDS_in_data_p(2 downto 0) => hdmi_in_1_DATA_P(2 downto 0),
      TMDS_out_clk_n => video_TMDS1_CLK_N,
      TMDS_out_clk_p => video_TMDS1_CLK_P,
      TMDS_out_data_n(2 downto 0) => video_TMDS1_DATA_N(2 downto 0),
      TMDS_out_data_p(2 downto 0) => video_TMDS1_DATA_P(2 downto 0),
      clk_100M => ps7_0_FCLK_CLK0,
      clk_142M => ps7_0_FCLK_CLK1,
      clk_200M => ps7_0_FCLK_CLK2,
      hdmi_in_hpd(0) => axi_gpio_video_gpio_io_o(0),
      hdmi_out_hpd(0) => hdmi_out_hpd_video_gpio_io_o(0),
      ic_resetn_clk100M(0) => ic_resetn_clk100M_1(0),
      ic_resetn_clk142M(0) => ic_resetn_clk142M_1(0),
      periph_resetn_clk100M(0) => periph_resetn_clk100M_1(0),
      periph_resetn_clk142M(0) => periph_resetn_clk142M_1(0),
      system_resetn => ps7_0_FCLK_RESET0_N,
      video_irq(5 downto 0) => video_video_irq(5 downto 0)
    );
xlconcat_0: component base_xlconcat_0_2
     port map (
      In0(0) => axi_dma_0_mm2s_introut,
      In1(0) => axi_dma_0_s2mm_introut,
      In2(5 downto 0) => video_video_irq(5 downto 0),
      dout(7 downto 0) => xlconcat_0_dout(7 downto 0)
    );
xlconcat_1: component base_xlconcat_0_3
     port map (
      In0(0) => system_interrupts_irq,
      dout(0) => xlconcat_1_dout(0)
    );
end STRUCTURE;
