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

# Inherit from m33x device
$(call inherit-product, device/samsung/m33x/device.mk)

PRODUCT_DEVICE := m33x
PRODUCT_NAME := omni_m33x
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-M336K
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="m33xktt-user 12 SP1A.210812.016 M336KKSU5CWE1 release-keys"

BUILD_FINGERPRINT := samsung/m33xktt/m33x:12/SP1A.210812.016/M336KKSU5CWE1:user/release-keys
