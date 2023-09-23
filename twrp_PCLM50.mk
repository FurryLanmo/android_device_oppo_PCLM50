#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from qssi device
$(call inherit-product, device/oppo/PCLM50/device.mk)

PRODUCT_DEVICE := PCLM50
PRODUCT_NAME := twrp_PCLM50
PRODUCT_BRAND := OPPO
PRODUCT_MODEL := PCLM50
PRODUCT_MANUFACTURER := OPPO

PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="lito-user 11 RKQ1.200903.002 1640347520724 release-keys"

BUILD_FINGERPRINT := qti/lito/lito:11/RKQ1.200903.002/1640347520724:user/release-keys
