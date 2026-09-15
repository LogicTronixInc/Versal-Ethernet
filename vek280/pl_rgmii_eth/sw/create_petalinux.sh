#!/bin/bash
#
# Create, configure and build the PetaLinux project for pl_1g_rgmii (VEK280, SDT flow).
#
# Usage:
#   ./create_petalinux.sh <path-to-bsp-file>
#
set -e
set -o pipefail

if [ -z "$1" ]; then
    echo "Usage: $0 <path-to-bsp-file>"
    exit 1
fi
BSP_PATH="$1"
if [ ! -f "$BSP_PATH" ]; then
    echo "ERROR: BSP file not found: $BSP_PATH"
    exit 1
fi

SCRIPT_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
SDT_DIR="$SCRIPT_DIR/sdt"
SYSTEM_USER_DTSI="$SCRIPT_DIR/system-user.dtsi"
PROJECT_NAME=petalinux_sdt
PROJECT_DIR="$SCRIPT_DIR/$PROJECT_NAME"
SD_IMAGE_DIR="$SCRIPT_DIR/../sd_image"

if [ ! -d "$SD_IMAGE_DIR" ]; then
    echo "# sd_image directory not found, creating it..."
    mkdir -p "$SD_IMAGE_DIR"
fi

echo '# Generating SDT...'
cd "$SCRIPT_DIR"
bash sdtgen.sh

echo '# Creating PetaLinux project...'
cd "$SCRIPT_DIR"
petalinux-create -t project -s "$BSP_PATH" --force -n "$PROJECT_NAME"

cd "$PROJECT_DIR"

echo '# Configuring with SDT hardware description...'
petalinux-config --get-hw-description="$SDT_DIR" --silentconfig

echo '# Enabling rootfs packages...'
sed -i 's/^# CONFIG_packagegroup-networking-stack is not set$/CONFIG_packagegroup-networking-stack=y/' project-spec/configs/rootfs_config
petalinux-config --silentconfig

echo '# Replacing system-user.dtsi...'
cp -f "$SYSTEM_USER_DTSI" project-spec/meta-user/recipes-bsp/device-tree/files/system-user.dtsi

echo '# Building PetaLinux...'
petalinux-build

echo '# Packaging boot components...'
petalinux-package --boot --plm --psmfw --u-boot --dtb --force

echo '# Packaging wic image...'
petalinux-package --wic --force

echo '# Copying wic image to sd_image folder...'
mkdir -p "$SD_IMAGE_DIR"
cp -f images/linux/petalinux-sdimage.wic "$SD_IMAGE_DIR/"

echo '# Done.'
