
##### GTY Bank 105 - SFP0 interface pin
set_property PACKAGE_PIN B4 [get_ports {gt_rxp_in_0[3]}]
set_property PACKAGE_PIN B3 [get_ports {gt_rxn_in_0[3]}]
set_property PACKAGE_PIN A7 [get_ports {gt_txp_out_0[3]}]
set_property PACKAGE_PIN A6 [get_ports {gt_txn_out_0[3]}]
### GTREFCLK 0 ( Driven by SI570 )
set_property PACKAGE_PIN H9 [get_ports {CLK_IN_D_clk_p}]
set_property PACKAGE_PIN H8 [get_ports {CLK_IN_D_clk_n}]

####################################################################################
# Timing 
####################################################################################
create_clock -period 6.400 -name {CLK_IN_D_clk_p} -waveform {0.000 3.200} [get_ports {CLK_IN_D_clk_p}]
