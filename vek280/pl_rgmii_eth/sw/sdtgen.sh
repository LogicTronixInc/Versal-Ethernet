#!/usr/bin/env bash
set -e

XSA="../hw/xsa/pl_1g_eth.xsa"
OUTDIR="./sdt"

sdtgen -xsa "$XSA" \
       -dir "$OUTDIR" \
       -debug enable