vlib work
vlib activehdl

vlib activehdl/xilinx_vip
vlib activehdl/xpm
vlib activehdl/xil_defaultlib
vlib activehdl/lib_cdc_v1_0_2
vlib activehdl/proc_sys_reset_v5_0_13
vlib activehdl/axi_lite_ipif_v3_0_4
vlib activehdl/axi_intc_v4_1_14
vlib activehdl/interrupt_control_v3_1_4
vlib activehdl/axi_gpio_v2_0_23
vlib activehdl/v_tc_v6_2_0
vlib activehdl/xlconcat_v2_1_3

vmap xilinx_vip activehdl/xilinx_vip
vmap xpm activehdl/xpm
vmap xil_defaultlib activehdl/xil_defaultlib
vmap lib_cdc_v1_0_2 activehdl/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 activehdl/proc_sys_reset_v5_0_13
vmap axi_lite_ipif_v3_0_4 activehdl/axi_lite_ipif_v3_0_4
vmap axi_intc_v4_1_14 activehdl/axi_intc_v4_1_14
vmap interrupt_control_v3_1_4 activehdl/interrupt_control_v3_1_4
vmap axi_gpio_v2_0_23 activehdl/axi_gpio_v2_0_23
vmap v_tc_v6_2_0 activehdl/v_tc_v6_2_0
vmap xlconcat_v2_1_3 activehdl/xlconcat_v2_1_3

vlog -work xilinx_vip  -sv2k12 "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv2k12 "+incdir+../../../../AXIS_GAUSSIAN_BD.srcs/sources_1/bd/base/ipshared/ec67/hdl" "+incdir+../../../../AXIS_GAUSSIAN_BD.srcs/sources_1/bd/base/ipshared/6b56/hdl" "+incdir+../../../../AXIS_GAUSSIAN_BD.srcs/sources_1/bd/base/ipshared/7af1/hdl" "+incdir+../../../../AXIS_GAUSSIAN_BD.srcs/sources_1/bd/base/ipshared/8713/hdl" "+incdir+../../../../AXIS_GAUSSIAN_BD.srcs/sources_1/bd/base/ipshared/2702/hdl/verilog" "+incdir+../../../../AXIS_GAUSSIAN_BD.srcs/sources_1/bd/base/ipshared/4676/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/base/ip/base_ps7_0_0/base_ps7_0_0_sim_netlist.vhdl" \
"../../../bd/base/ip/base_xbar_7/base_xbar_7_sim_netlist.vhdl" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../AXIS_GAUSSIAN_BD.srcs/sources_1/bd/base/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../AXIS_GAUSSIAN_BD.srcs/sources_1/bd/base/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/base/ip/base_rst_ps7_0_fclk0_0/sim/base_rst_ps7_0_fclk0_0.vhd" \
"../../../bd/base/ip/base_rst_ps7_0_fclk1_0/sim/base_rst_ps7_0_fclk1_0.vhd" \

vcom -work axi_lite_ipif_v3_0_4 -93 \
"../../../../AXIS_GAUSSIAN_BD.srcs/sources_1/bd/base/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work axi_intc_v4_1_14 -93 \
"../../../../AXIS_GAUSSIAN_BD.srcs/sources_1/bd/base/ipshared/f78a/hdl/axi_intc_v4_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
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

vcom -work interrupt_control_v3_1_4 -93 \
"../../../../AXIS_GAUSSIAN_BD.srcs/sources_1/bd/base/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_23 -93 \
"../../../../AXIS_GAUSSIAN_BD.srcs/sources_1/bd/base/ipshared/bb35/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
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

vcom -work v_tc_v6_2_0 -93 \
"../../../../AXIS_GAUSSIAN_BD.srcs/sources_1/bd/base/ipshared/111e/hdl/v_tc_v6_2_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
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

vlog -work xlconcat_v2_1_3  -v2k5 "+incdir+../../../../AXIS_GAUSSIAN_BD.srcs/sources_1/bd/base/ipshared/ec67/hdl" "+incdir+../../../../AXIS_GAUSSIAN_BD.srcs/sources_1/bd/base/ipshared/6b56/hdl" "+incdir+../../../../AXIS_GAUSSIAN_BD.srcs/sources_1/bd/base/ipshared/7af1/hdl" "+incdir+../../../../AXIS_GAUSSIAN_BD.srcs/sources_1/bd/base/ipshared/8713/hdl" "+incdir+../../../../AXIS_GAUSSIAN_BD.srcs/sources_1/bd/base/ipshared/2702/hdl/verilog" "+incdir+../../../../AXIS_GAUSSIAN_BD.srcs/sources_1/bd/base/ipshared/4676/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../AXIS_GAUSSIAN_BD.srcs/sources_1/bd/base/ipshared/442e/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../AXIS_GAUSSIAN_BD.srcs/sources_1/bd/base/ipshared/ec67/hdl" "+incdir+../../../../AXIS_GAUSSIAN_BD.srcs/sources_1/bd/base/ipshared/6b56/hdl" "+incdir+../../../../AXIS_GAUSSIAN_BD.srcs/sources_1/bd/base/ipshared/7af1/hdl" "+incdir+../../../../AXIS_GAUSSIAN_BD.srcs/sources_1/bd/base/ipshared/8713/hdl" "+incdir+../../../../AXIS_GAUSSIAN_BD.srcs/sources_1/bd/base/ipshared/2702/hdl/verilog" "+incdir+../../../../AXIS_GAUSSIAN_BD.srcs/sources_1/bd/base/ipshared/4676/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/base/ip/base_xlconcat_0_0/sim/base_xlconcat_0_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/base/ip/base_axi_dma_0_2/base_axi_dma_0_2_sim_netlist.vhdl" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../AXIS_GAUSSIAN_BD.srcs/sources_1/bd/base/ipshared/ec67/hdl" "+incdir+../../../../AXIS_GAUSSIAN_BD.srcs/sources_1/bd/base/ipshared/6b56/hdl" "+incdir+../../../../AXIS_GAUSSIAN_BD.srcs/sources_1/bd/base/ipshared/7af1/hdl" "+incdir+../../../../AXIS_GAUSSIAN_BD.srcs/sources_1/bd/base/ipshared/8713/hdl" "+incdir+../../../../AXIS_GAUSSIAN_BD.srcs/sources_1/bd/base/ipshared/2702/hdl/verilog" "+incdir+../../../../AXIS_GAUSSIAN_BD.srcs/sources_1/bd/base/ipshared/4676/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/base/ip/base_xlconcat_0_2/sim/base_xlconcat_0_2.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/base/ip/base_smartconnect_0_0/base_smartconnect_0_0_sim_netlist.vhdl" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../AXIS_GAUSSIAN_BD.srcs/sources_1/bd/base/ipshared/ec67/hdl" "+incdir+../../../../AXIS_GAUSSIAN_BD.srcs/sources_1/bd/base/ipshared/6b56/hdl" "+incdir+../../../../AXIS_GAUSSIAN_BD.srcs/sources_1/bd/base/ipshared/7af1/hdl" "+incdir+../../../../AXIS_GAUSSIAN_BD.srcs/sources_1/bd/base/ipshared/8713/hdl" "+incdir+../../../../AXIS_GAUSSIAN_BD.srcs/sources_1/bd/base/ipshared/2702/hdl/verilog" "+incdir+../../../../AXIS_GAUSSIAN_BD.srcs/sources_1/bd/base/ipshared/4676/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/base/ip/base_xlconcat_0_3/sim/base_xlconcat_0_3.v" \

vcom -work xil_defaultlib -93 \
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

vlog -work xil_defaultlib \
"glbl.v"

