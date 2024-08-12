set_property IOSTANDARD LVCMOS33 [get_ports hdmi_in_ddc_scl_io]
set_property IOSTANDARD LVCMOS33 [get_ports hdmi_in_ddc_sda_io]
set_property PACKAGE_PIN AJ28 [get_ports hdmi_in_ddc_scl_io]
set_property PACKAGE_PIN AJ29 [get_ports hdmi_in_ddc_sda_io]

set_property PACKAGE_PIN AH26 [get_ports {hdmi_in_data_p[2]}]
set_property PACKAGE_PIN AG27 [get_ports {hdmi_in_data_p[1]}]
set_property PACKAGE_PIN AJ26 [get_ports {hdmi_in_data_p[0]}]

set_property PACKAGE_PIN AE28 [get_ports hdmi_in_clk_p]
set_property PACKAGE_PIN AA20 [get_ports hdmi_out_clk_p]

set_property IOSTANDARD LVCMOS33 [get_ports hdmi_out_hpd_led_tri_io]

set_property PACKAGE_PIN AB24 [get_ports {hdmi_out_data_p[2]}]
set_property PACKAGE_PIN AA22 [get_ports {hdmi_out_data_p[1]}]
set_property PACKAGE_PIN AC20 [get_ports {hdmi_out_data_p[0]}]



set_property IOSTANDARD LVCMOS33 [get_ports {hdmi_in_hpd_led_tri_i[0]}]
set_property PACKAGE_PIN AG29 [get_ports {hdmi_in_hpd_led_tri_i[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {hdmi_out_hpd_led_tri_o[0]}]
set_property PACKAGE_PIN AH29 [get_ports {hdmi_out_hpd_led_tri_o[0]}]


create_clock -period 12.500 -name hdmi_in_clk_p -waveform {0.000 6.25} [get_ports hdmi_in_clk_p]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets clk]
