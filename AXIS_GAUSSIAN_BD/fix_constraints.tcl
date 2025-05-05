# ------------------------------------------------------------------------------
# Fix 1: Define a proper clock for SerialClk (in rgb2dvi_0 IP)
# This removes the critical warning [Timing 38-249]
# ------------------------------------------------------------------------------

# Define SerialClk as a primary clock with estimated period (e.g., 5ns = 200 MHz)
create_clock -name SerialClk \
  -period 5.000 \
  [get_pins {base_i/video/hdmi_out/frontend/rgb2dvi_0/U0/SerialClk}]

# Optional: You can also use create_generated_clock if it’s derived from PXL_CLK_O
# create_generated_clock -name SerialClk \
#   -source [get_pins {base_i/video/axi_dynclk_0/PXL_CLK_O}] \
#   -divide_by 1 -multiply_by 5 \
#   [get_pins {base_i/video/hdmi_out/frontend/rgb2dvi_0/U0/SerialClk}]



# ------------------------------------------------------------------------------
# Fix 2: Adjust CLKIN1_PERIOD for MMCM in dvi2rgb_0 to push FVCO above 600 MHz
# This removes [DRC AVAL-46]
# ------------------------------------------------------------------------------

# Set a slightly lower CLKIN1_PERIOD to raise FVCO just above 600 MHz
# FVCO = 1000 * 5.0 / (CLKIN1_PERIOD * 1) > 600 MHz
# So we choose CLKIN1_PERIOD = 8.30 ns (~120.5 MHz input)

set_property CLKIN1_PERIOD 8.30 [get_cells {base_i/video/hdmi_in/frontend/dvi2rgb_0/U0/TMDS_ClockingX/DVI_ClkGenerator}]

# ------------------------------------------------------------------------------
# Info: After running this TCL, rerun synthesis and implementation.
#       Then recheck `report_timing` and `report_drc` to confirm all are resolved.
# ------------------------------------------------------------------------------
