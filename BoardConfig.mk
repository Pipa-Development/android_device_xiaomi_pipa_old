#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sm8250-common
include device/xiaomi/sm8250-common/BoardConfigCommon.mk

DEVICE_PATH := device/xiaomi/pipa

BUILD_BROKEN_DUP_RULES := true

# Board
TARGET_BOARD_INFO_FILE := $(DEVICE_PATH)/board-info.txt

# Display
TARGET_SCREEN_DENSITY := 309

# Init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):init_xiaomi_pipa
TARGET_RECOVERY_DEVICE_MODULES := init_xiaomi_pipa

# Kernel
TARGET_KERNEL_CONFIG += vendor/xiaomi/pipa.config
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive

# OTA assert
TARGET_OTA_ASSERT_DEVICE := pipa

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Inherit from the proprietary version
include vendor/xiaomi/pipa/BoardConfigVendor.mk
