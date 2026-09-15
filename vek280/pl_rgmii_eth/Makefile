#******************************************************************************
# Top-level Makefile for pl_1g_rgmii (VEK280)
#
# Usage:
#   make hw
#   make sw BSP_PATH=<path to bsp file>
#   make all BSP_PATH=<path to bsp file>
#******************************************************************************

.PHONY: all
all: hw sw

.PHONY: hw
hw:
	$(MAKE) -C hw

.PHONY: sw
sw:
	$(MAKE) -C sw BSP_PATH=$(BSP_PATH)

.PHONY: clean
clean:
	$(MAKE) -C hw clean
	$(MAKE) -C sw clean
