#******************************************************************************
# Makefile for pl_1g_rgmii PetaLinux build (VEK280, SDT flow)
#
# Usage:
#   make BSP_PATH=/path/to/xilinx-vek280-vXXXX.bsp
#******************************************************************************

RM = rm -rf

SD_IMAGE = ../sd_image/petalinux-sdimage.wic

.PHONY: all
all: $(SD_IMAGE)

$(SD_IMAGE): create_petalinux.sh sdtgen.sh system-user.dtsi
	@if [ -z "$(BSP_PATH)" ]; then \
		echo "ERROR: BSP_PATH is not set. Usage: make BSP_PATH=<path-to-bsp-file>"; \
		exit 1; \
	fi
	./create_petalinux.sh $(BSP_PATH)

.PHONY: clean
clean:
	$(RM) petalinux_sdt sdt $(SD_IMAGE)
