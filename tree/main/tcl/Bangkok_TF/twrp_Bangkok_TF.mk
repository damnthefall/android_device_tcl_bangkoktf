#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from Bangkok_USCC device
$(call inherit-product, device/tcl/Bangkok_USCC/device.mk)

PRODUCT_DEVICE := Bangkok_TF
PRODUCT_NAME := twrp_Bangkok_TF
PRODUCT_BRAND := TCL
PRODUCT_MODEL := A509DL
PRODUCT_MANUFACTURER := tcl

PRODUCT_GMS_CLIENTID_BASE := android-uscellular-us-revc

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="A509DL-user 11 RP1A.200720.011 vL7B release-keys"

BUILD_FINGERPRINT := TCL/A509DL/Bangkok_TF:11/RP1A.200720.011/vL7B:user/release-keys
