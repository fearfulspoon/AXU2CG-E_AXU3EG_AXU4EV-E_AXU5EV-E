##################Compress Bitstream############################
set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]

set_property PACKAGE_PIN AE5 [get_ports sys_clk_p]
set_property IOSTANDARD DIFF_SSTL12 [get_ports sys_clk_p]

create_clock -period 5.000 -name sys_clk_p -waveform {0.000 2.500} [get_ports sys_clk_p]


#############LED Setting#############################
set_property PACKAGE_PIN AE12 [get_ports led]
set_property IOSTANDARD LVCMOS33 [get_ports led]

############## key define##############################
set_property PACKAGE_PIN AF12 [get_ports key]
set_property IOSTANDARD LVCMOS33 [get_ports key]










