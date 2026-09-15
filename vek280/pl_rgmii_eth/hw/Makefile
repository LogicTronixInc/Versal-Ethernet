#******************************************************************************
# Makefile for pl_1g_rgmii Vivado hardware build (VEK280)
#******************************************************************************

RM      = rm -rf
VIVADO  = vivado

PROJECT_NAME = pl_1g_eth
XSA = xsa/$(PROJECT_NAME).xsa

.PHONY: all
all: xsa

.PHONY: xsa
xsa: $(XSA)

$(XSA): pl_1g_eth_project.tcl pl_1g_eth_bd.tcl constraints/pl_eth_vek280.xdc
	@mkdir -p log
	@echo '# Generating Vivado hardware...'
	$(VIVADO) -mode batch -source pl_1g_eth_project.tcl -log ./log/vivado.log -journal ./log/vivado.jou
	@echo '# Vivado hardware generation completed.'

.PHONY: clean
clean:
	$(RM) $(PROJECT_NAME) xsa log .Xil .crashReporter *.str
