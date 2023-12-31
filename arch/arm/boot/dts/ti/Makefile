# SPDX-License-Identifier: GPL-2.0
#
# Makefile to build device tree overlay binaries for boards based on
# Texas Instruments Inc processors
#
# Copyright (C) 2017-2021 Texas Instruments Incorporated - https://www.ti.com/
#

DTC_FLAGS += -@

# base dtbs with symbols enabled
dtb-$(CONFIG_SOC_DRA7XX) += \
	am571x-idk.dtb \
	am572x-idk.dtb \
	am574x-idk.dtb \
	am57xx-beagle-x15.dtb \
	am57xx-beagle-x15-revb1.dtb \
	am57xx-beagle-x15-revc.dtb \
	dra71-evm.dtb \
	dra72-evm.dtb \
	dra72-evm-revc.dtb \
	dra76-evm.dtb \
	k3-j721e-d3-rvp-board.dts \
	dra7-evm.dtb

# overlays
dtb-$(CONFIG_SOC_DRA7XX) += \
	am57xx-evm-common.dtbo

$(obj)/%.dtb: $(src)/../%.dts FORCE
	$(call if_changed_dep,dtc,dtb)

$(obj)/%.dt.yaml: $(src)/../%.dts $(DTC) $(DT_TMP_SCHEMA) FORCE
	$(call if_changed_rule,dtc,yaml)

clean-files	:= *.dtb *.dtbo

always-y	:= $(dtb-y)
