#
#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Release name
PRODUCT_RELEASE_NAME := WSP_sprout

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit from NOKIA 2.2 device
$(call inherit-product, device/hmd/WSP_sprout/device.mk)

# Inherit some common Lineage OS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_WSP_sprout
PRODUCT_DEVICE := WSP_sprout
PRODUCT_BRAND := Nokia
PRODUCT_MODEL := Nokia 2.2
PRODUCT_MANUFACTURER := hmd

# Product characteristics
PRODUCT_AAPT_CONFIG := xxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 1520
TARGET_SCREEN_WIDTH := 720

# Build info
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="WSP_sprout" \
    PRODUCT_NAME="WSP_sprout" \
    PRIVATE_BUILD_DESC="full_wasp-user 9 PPR1.180610.011 4210 release-keys"

# Fingerprint
BUILD_FINGERPRINT := "Nokia/Wasp_00WW/WSP_sprout:9/PPR1.180610.011/00WW_1_630:user/release-keys"

# GMS as per stock
PRODUCT_GMS_CLIENTID_BASE := android-nokia
