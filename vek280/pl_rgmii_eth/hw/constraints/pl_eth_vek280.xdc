#PL ETH PHY0
set_property PACKAGE_PIN G30 [get_ports phy0_rgmii_tx_ctl]
set_property IOSTANDARD LVCMOS18 [get_ports phy0_rgmii_tx_ctl]
set_property SLEW SLOW [get_ports phy0_rgmii_tx_ctl]
set_property DRIVE 4 [get_ports phy0_rgmii_tx_ctl]

set_property PACKAGE_PIN H30 [get_ports phy0_rgmii_txc]
set_property IOSTANDARD LVCMOS18 [get_ports phy0_rgmii_txc]
set_property SLEW SLOW [get_ports phy0_rgmii_txc]
set_property DRIVE 4 [get_ports phy0_rgmii_txc]

set_property PACKAGE_PIN J29 [get_ports {phy0_rgmii_td[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports {phy0_rgmii_td[0]}]
set_property SLEW SLOW [get_ports {phy0_rgmii_td[0]}]
set_property DRIVE 4 [get_ports {phy0_rgmii_td[0]}]

set_property PACKAGE_PIN K29 [get_ports {phy0_rgmii_td[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {phy0_rgmii_td[1]}]
set_property SLEW SLOW [get_ports {phy0_rgmii_td[1]}]
set_property DRIVE 4 [get_ports {phy0_rgmii_td[1]}]

set_property PACKAGE_PIN H28 [get_ports {phy0_rgmii_td[2]}]
set_property IOSTANDARD LVCMOS18 [get_ports {phy0_rgmii_td[2]}]
set_property SLEW SLOW [get_ports {phy0_rgmii_td[2]}]
set_property DRIVE 4 [get_ports {phy0_rgmii_td[2]}]

set_property PACKAGE_PIN J28 [get_ports {phy0_rgmii_td[3]}]
set_property IOSTANDARD LVCMOS18 [get_ports {phy0_rgmii_td[3]}]
set_property SLEW SLOW [get_ports {phy0_rgmii_td[3]}]
set_property DRIVE 4 [get_ports {phy0_rgmii_td[3]}]

set_property PACKAGE_PIN D29 [get_ports phy0_rgmii_rx_ctl]
set_property IOSTANDARD LVCMOS18 [get_ports phy0_rgmii_rx_ctl]

set_property PACKAGE_PIN E29 [get_ports phy0_rgmii_rxc]
set_property IOSTANDARD LVCMOS18 [get_ports phy0_rgmii_rxc]


set_property PACKAGE_PIN F29 [get_ports {phy0_rgmii_rd[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports {phy0_rgmii_rd[0]}]

set_property PACKAGE_PIN G29 [get_ports {phy0_rgmii_rd[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {phy0_rgmii_rd[1]}]

set_property PACKAGE_PIN F28 [get_ports {phy0_rgmii_rd[2]}]
set_property IOSTANDARD LVCMOS18 [get_ports {phy0_rgmii_rd[2]}]

set_property PACKAGE_PIN G28 [get_ports {phy0_rgmii_rd[3]}]
set_property IOSTANDARD LVCMOS18 [get_ports {phy0_rgmii_rd[3]}]

## MDIO constraints
## PL ETH PHY0
set_property PACKAGE_PIN A28 [get_ports phy0_mdio_mdio_io]
set_property IOSTANDARD LVCMOS18 [get_ports phy0_mdio_mdio_io]
set_property SLEW SLOW [get_ports phy0_mdio_mdio_io]
set_property DRIVE 4 [get_ports phy0_mdio_mdio_io]

set_property PACKAGE_PIN B28 [get_ports phy0_mdio_mdc]
set_property IOSTANDARD LVCMOS18 [get_ports phy0_mdio_mdc]
set_property SLEW SLOW [get_ports phy0_mdio_mdc]
set_property DRIVE 4 [get_ports phy0_mdio_mdc]

set_property PACKAGE_PIN B31 [get_ports {phy0_rst_n[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports {phy0_rst_n[0]}]
set_property SLEW SLOW [get_ports {phy0_rst_n[0]}]
set_property DRIVE 4 [get_ports {phy0_rst_n[0]}]

