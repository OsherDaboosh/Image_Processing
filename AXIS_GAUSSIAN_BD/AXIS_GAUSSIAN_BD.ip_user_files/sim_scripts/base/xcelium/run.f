-makelib xcelium_lib/xilinx_vip -sv \
  "C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib xcelium_lib/xpm -sv \
  "C:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "C:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
  "C:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "C:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/base/ip/base_ps7_0_0/base_ps7_0_0_sim_netlist.vhdl" \
  "../../../bd/base/ip/base_xbar_7/base_xbar_7_sim_netlist.vhdl" \
-endlib
-makelib xcelium_lib/lib_cdc_v1_0_2 \
  "../../../../AXIS_GAUSSIAN_BD.srcs/sources_1/bd/base/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/proc_sys_reset_v5_0_13 \
  "../../../../AXIS_GAUSSIAN_BD.srcs/sources_1/bd/base/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/base/ip/base_rst_ps7_0_fclk0_0/sim/base_rst_ps7_0_fclk0_0.vhd" \
  "../../../bd/base/ip/base_rst_ps7_0_fclk1_0/sim/base_rst_ps7_0_fclk1_0.vhd" \
-endlib
-makelib xcelium_lib/axi_lite_ipif_v3_0_4 \
  "../../../../AXIS_GAUSSIAN_BD.srcs/sources_1/bd/base/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_intc_v4_1_14 \
  "../../../../AXIS_GAUSSIAN_BD.srcs/sources_1/bd/base/ipshared/f78a/hdl/axi_intc_v4_1_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/base/ip/base_system_interrupts_0/sim/base_system_interrupts_0.vhd" \
  "../../../bd/base/ip/base_xbar_9/base_xbar_9_sim_netlist.vhdl" \
  "../../../bd/base/ip/base_xbar_10/base_xbar_10_sim_netlist.vhdl" \
  "../../../bd/base/ip/base_axi_vdma_0/base_axi_vdma_0_sim_netlist.vhdl" \
  "../../../bd/base/ip/base_axis_register_slice_0_0/base_axis_register_slice_0_0_sim_netlist.vhdl" \
  "../../../../AXIS_GAUSSIAN_BD.srcs/sources_1/bd/base/ipshared/9423/hdl/vhdl/color_convert_AXILiteS_s_axi.vhd" \
  "../../../../AXIS_GAUSSIAN_BD.srcs/sources_1/bd/base/ipshared/9423/hdl/vhdl/color_convert_macbkb.vhd" \
  "../../../../AXIS_GAUSSIAN_BD.srcs/sources_1/bd/base/ipshared/9423/hdl/vhdl/color_convert_maccud.vhd" \
  "../../../../AXIS_GAUSSIAN_BD.srcs/sources_1/bd/base/ipshared/9423/hdl/vhdl/regslice_core.vhd" \
  "../../../../AXIS_GAUSSIAN_BD.srcs/sources_1/bd/base/ipshared/9423/hdl/vhdl/color_convert.vhd" \
  "../../../bd/base/ip/base_color_convert_0/sim/base_color_convert_0.vhd" \
-endlib
-makelib xcelium_lib/interrupt_control_v3_1_4 \
  "../../../../AXIS_GAUSSIAN_BD.srcs/sources_1/bd/base/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_gpio_v2_0_23 \
  "../../../../AXIS_GAUSSIAN_BD.srcs/sources_1/bd/base/ipshared/bb35/hdl/axi_gpio_v2_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/base/ip/base_axi_gpio_hdmiin_0/sim/base_axi_gpio_hdmiin_0.vhd" \
  "../../../bd/base/ip/base_color_swap_0_0/base_color_swap_0_0_sim_netlist.vhdl" \
  "../../../../AXIS_GAUSSIAN_BD.srcs/sources_1/bd/base/ipshared/269e/src/SyncBase.vhd" \
  "../../../../AXIS_GAUSSIAN_BD.srcs/sources_1/bd/base/ipshared/269e/src/EEPROM_8b.vhd" \
  "../../../../AXIS_GAUSSIAN_BD.srcs/sources_1/bd/base/ipshared/269e/src/TWI_SlaveCtl.vhd" \
  "../../../../AXIS_GAUSSIAN_BD.srcs/sources_1/bd/base/ipshared/269e/src/GlitchFilter.vhd" \
  "../../../../AXIS_GAUSSIAN_BD.srcs/sources_1/bd/base/ipshared/269e/src/SyncAsync.vhd" \
  "../../../../AXIS_GAUSSIAN_BD.srcs/sources_1/bd/base/ipshared/269e/src/DVI_Constants.vhd" \
  "../../../../AXIS_GAUSSIAN_BD.srcs/sources_1/bd/base/ipshared/269e/src/SyncAsyncReset.vhd" \
  "../../../../AXIS_GAUSSIAN_BD.srcs/sources_1/bd/base/ipshared/269e/src/PhaseAlign.vhd" \
  "../../../../AXIS_GAUSSIAN_BD.srcs/sources_1/bd/base/ipshared/269e/src/InputSERDES.vhd" \
  "../../../../AXIS_GAUSSIAN_BD.srcs/sources_1/bd/base/ipshared/269e/src/ChannelBond.vhd" \
  "../../../../AXIS_GAUSSIAN_BD.srcs/sources_1/bd/base/ipshared/269e/src/ResyncToBUFG.vhd" \
  "../../../../AXIS_GAUSSIAN_BD.srcs/sources_1/bd/base/ipshared/269e/src/TMDS_Decoder.vhd" \
  "../../../../AXIS_GAUSSIAN_BD.srcs/sources_1/bd/base/ipshared/269e/src/TMDS_Clocking.vhd" \
  "../../../../AXIS_GAUSSIAN_BD.srcs/sources_1/bd/base/ipshared/269e/src/dvi2rgb.vhd" \
  "../../../bd/base/ip/base_dvi2rgb_0_0/sim/base_dvi2rgb_0_0.vhd" \
  "../../../bd/base/ip/base_v_vid_in_axi4s_0_0/base_v_vid_in_axi4s_0_0_sim_netlist.vhdl" \
-endlib
-makelib xcelium_lib/v_tc_v6_2_0 \
  "../../../../AXIS_GAUSSIAN_BD.srcs/sources_1/bd/base/ipshared/111e/hdl/v_tc_v6_2_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/base/ip/base_vtc_in_0/sim/base_vtc_in_0.vhd" \
  "../../../../AXIS_GAUSSIAN_BD.srcs/sources_1/bd/base/ipshared/415a/hdl/vhdl/pixel_pack_AXILiteS_s_axi.vhd" \
  "../../../../AXIS_GAUSSIAN_BD.srcs/sources_1/bd/base/ipshared/415a/hdl/vhdl/pixel_pack.vhd" \
  "../../../bd/base/ip/base_pixel_pack_0/sim/base_pixel_pack_0.vhd" \
  "../../../bd/base/ip/base_axis_register_slice_0_1/base_axis_register_slice_0_1_sim_netlist.vhdl" \
  "../../../bd/base/ip/base_color_convert_1/sim/base_color_convert_1.vhd" \
  "../../../bd/base/ip/base_axi_dynclk_0/base_axi_dynclk_0_sim_netlist.vhdl" \
  "../../../bd/base/ip/base_color_swap_0_1/base_color_swap_0_1_sim_netlist.vhdl" \
  "../../../bd/base/ip/base_hdmi_out_hpd_video_0/sim/base_hdmi_out_hpd_video_0.vhd" \
  "../../../../AXIS_GAUSSIAN_BD.srcs/sources_1/bd/base/ipshared/bd5a/src/ClockGen.vhd" \
  "../../../../AXIS_GAUSSIAN_BD.srcs/sources_1/bd/base/ipshared/bd5a/src/OutputSERDES.vhd" \
  "../../../../AXIS_GAUSSIAN_BD.srcs/sources_1/bd/base/ipshared/bd5a/src/TMDS_Encoder.vhd" \
  "../../../../AXIS_GAUSSIAN_BD.srcs/sources_1/bd/base/ipshared/bd5a/src/rgb2dvi.vhd" \
  "../../../bd/base/ip/base_rgb2dvi_0_0/sim/base_rgb2dvi_0_0.vhd" \
  "../../../bd/base/ip/base_v_axi4s_vid_out_0_0/base_v_axi4s_vid_out_0_0_sim_netlist.vhdl" \
  "../../../bd/base/ip/base_vtc_out_0/sim/base_vtc_out_0.vhd" \
  "../../../../AXIS_GAUSSIAN_BD.srcs/sources_1/bd/base/ipshared/4aaf/hdl/vhdl/pixel_unpack_AXILiteS_s_axi.vhd" \
  "../../../../AXIS_GAUSSIAN_BD.srcs/sources_1/bd/base/ipshared/4aaf/hdl/vhdl/pixel_unpack.vhd" \
  "../../../bd/base/ip/base_pixel_unpack_0/sim/base_pixel_unpack_0.vhd" \
  "../../../bd/base/ip/base_proc_sys_reset_pixelclk_0/sim/base_proc_sys_reset_pixelclk_0.vhd" \
-endlib
-makelib xcelium_lib/xlconcat_v2_1_3 \
  "../../../../AXIS_GAUSSIAN_BD.srcs/sources_1/bd/base/ipshared/442e/hdl/xlconcat_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/base/ip/base_xlconcat_0_0/sim/base_xlconcat_0_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/base/ip/base_axi_dma_0_2/base_axi_dma_0_2_sim_netlist.vhdl" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/base/ip/base_xlconcat_0_2/sim/base_xlconcat_0_2.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/base/ip/base_smartconnect_0_0/base_smartconnect_0_0_sim_netlist.vhdl" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/base/ip/base_xlconcat_0_3/sim/base_xlconcat_0_3.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/base/sim/base.vhd" \
  "c:/Users/osher/Vivado_Projects/AXIS_GAUSSIAN_BD/AXIS_GAUSSIAN_BD.srcs/sources_1/bd/base/ip/base_s00_regslice_38/base_s00_regslice_38_sim_netlist.vhdl" \
  "c:/Users/osher/Vivado_Projects/AXIS_GAUSSIAN_BD/AXIS_GAUSSIAN_BD.srcs/sources_1/bd/base/ip/base_auto_pc_2/base_auto_pc_2_sim_netlist.vhdl" \
  "c:/Users/osher/Vivado_Projects/AXIS_GAUSSIAN_BD/AXIS_GAUSSIAN_BD.srcs/sources_1/bd/base/ip/base_m00_regslice_38/base_m00_regslice_38_sim_netlist.vhdl" \
  "c:/Users/osher/Vivado_Projects/AXIS_GAUSSIAN_BD/AXIS_GAUSSIAN_BD.srcs/sources_1/bd/base/ip/base_auto_pc_0/base_auto_pc_0_sim_netlist.vhdl" \
  "c:/Users/osher/Vivado_Projects/AXIS_GAUSSIAN_BD/AXIS_GAUSSIAN_BD.srcs/sources_1/bd/base/ip/base_m01_regslice_38/base_m01_regslice_38_sim_netlist.vhdl" \
  "c:/Users/osher/Vivado_Projects/AXIS_GAUSSIAN_BD/AXIS_GAUSSIAN_BD.srcs/sources_1/bd/base/ip/base_auto_pc_1/base_auto_pc_1_sim_netlist.vhdl" \
  "c:/Users/osher/Vivado_Projects/AXIS_GAUSSIAN_BD/AXIS_GAUSSIAN_BD.srcs/sources_1/bd/base/ip/base_m02_regslice_38/base_m02_regslice_38_sim_netlist.vhdl" \
  "c:/Users/osher/Vivado_Projects/AXIS_GAUSSIAN_BD/AXIS_GAUSSIAN_BD.srcs/sources_1/bd/base/ip/base_s00_regslice_39/base_s00_regslice_39_sim_netlist.vhdl" \
  "c:/Users/osher/Vivado_Projects/AXIS_GAUSSIAN_BD/AXIS_GAUSSIAN_BD.srcs/sources_1/bd/base/ip/base_auto_pc_3/base_auto_pc_3_sim_netlist.vhdl" \
  "c:/Users/osher/Vivado_Projects/AXIS_GAUSSIAN_BD/AXIS_GAUSSIAN_BD.srcs/sources_1/bd/base/ip/base_m00_regslice_39/base_m00_regslice_39_sim_netlist.vhdl" \
  "c:/Users/osher/Vivado_Projects/AXIS_GAUSSIAN_BD/AXIS_GAUSSIAN_BD.srcs/sources_1/bd/base/ip/base_m01_regslice_39/base_m01_regslice_39_sim_netlist.vhdl" \
  "c:/Users/osher/Vivado_Projects/AXIS_GAUSSIAN_BD/AXIS_GAUSSIAN_BD.srcs/sources_1/bd/base/ip/base_auto_cc_0/base_auto_cc_0_sim_netlist.vhdl" \
  "c:/Users/osher/Vivado_Projects/AXIS_GAUSSIAN_BD/AXIS_GAUSSIAN_BD.srcs/sources_1/bd/base/ip/base_m02_regslice_39/base_m02_regslice_39_sim_netlist.vhdl" \
  "c:/Users/osher/Vivado_Projects/AXIS_GAUSSIAN_BD/AXIS_GAUSSIAN_BD.srcs/sources_1/bd/base/ip/base_auto_cc_1/base_auto_cc_1_sim_netlist.vhdl" \
  "c:/Users/osher/Vivado_Projects/AXIS_GAUSSIAN_BD/AXIS_GAUSSIAN_BD.srcs/sources_1/bd/base/ip/base_m03_regslice_0/base_m03_regslice_0_sim_netlist.vhdl" \
  "c:/Users/osher/Vivado_Projects/AXIS_GAUSSIAN_BD/AXIS_GAUSSIAN_BD.srcs/sources_1/bd/base/ip/base_m04_regslice_0/base_m04_regslice_0_sim_netlist.vhdl" \
  "c:/Users/osher/Vivado_Projects/AXIS_GAUSSIAN_BD/AXIS_GAUSSIAN_BD.srcs/sources_1/bd/base/ip/base_m05_regslice_0/base_m05_regslice_0_sim_netlist.vhdl" \
  "c:/Users/osher/Vivado_Projects/AXIS_GAUSSIAN_BD/AXIS_GAUSSIAN_BD.srcs/sources_1/bd/base/ip/base_m06_regslice_0/base_m06_regslice_0_sim_netlist.vhdl" \
  "c:/Users/osher/Vivado_Projects/AXIS_GAUSSIAN_BD/AXIS_GAUSSIAN_BD.srcs/sources_1/bd/base/ip/base_auto_cc_2/base_auto_cc_2_sim_netlist.vhdl" \
  "c:/Users/osher/Vivado_Projects/AXIS_GAUSSIAN_BD/AXIS_GAUSSIAN_BD.srcs/sources_1/bd/base/ip/base_m07_regslice_0/base_m07_regslice_0_sim_netlist.vhdl" \
  "c:/Users/osher/Vivado_Projects/AXIS_GAUSSIAN_BD/AXIS_GAUSSIAN_BD.srcs/sources_1/bd/base/ip/base_auto_cc_3/base_auto_cc_3_sim_netlist.vhdl" \
  "c:/Users/osher/Vivado_Projects/AXIS_GAUSSIAN_BD/AXIS_GAUSSIAN_BD.srcs/sources_1/bd/base/ip/base_m08_regslice_0/base_m08_regslice_0_sim_netlist.vhdl" \
  "c:/Users/osher/Vivado_Projects/AXIS_GAUSSIAN_BD/AXIS_GAUSSIAN_BD.srcs/sources_1/bd/base/ip/base_m09_regslice_0/base_m09_regslice_0_sim_netlist.vhdl" \
  "c:/Users/osher/Vivado_Projects/AXIS_GAUSSIAN_BD/AXIS_GAUSSIAN_BD.srcs/sources_1/bd/base/ip/base_auto_us_0/base_auto_us_0_sim_netlist.vhdl" \
  "c:/Users/osher/Vivado_Projects/AXIS_GAUSSIAN_BD/AXIS_GAUSSIAN_BD.srcs/sources_1/bd/base/ip/base_auto_pc_4/base_auto_pc_4_sim_netlist.vhdl" \
  "../../../bd/base/ipshared/1420/fifo.vhd" \
  "../../../bd/base/ipshared/1420/gaussian.vhd" \
  "../../../bd/base/ipshared/1420/gaussian_control.vhd" \
  "../../../bd/base/ipshared/1420/line_buffer.vhd" \
  "../../../bd/base/ipshared/1420/rgb2gray.vhd" \
  "../../../bd/base/ipshared/1420/axis_gaussian.vhd" \
  "../../../bd/base/ip/base_axis_gaussian_0_0/sim/base_axis_gaussian_0_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

