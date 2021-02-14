
# Clocks
#create_clock -name clk_125 -period 8 [get_ports CLK_125M]

# create_clock -name clk_xcvr_ref -period 1.551 [get_ports CLK_R_REFCLK5]

#derive_pll_clocks
#derive_clock_uncertainty

# Exceptions
set_false_path -to [get_ports {LEDS[*]}]

set_false_path -to {system:inst_system|clock_counter:clock_counter_0|reg_clk_meas[*][*]}
set_false_path -to {system:inst_system|clock_counter:clock_counter_0|pulse_1hz_p[*]}
set_false_path -to {system:inst_system|clock_counter:clock_counter_0|avs_ctrl_readdata[*]}
