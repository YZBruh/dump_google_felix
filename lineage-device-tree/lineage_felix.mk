#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from felix device
$(call inherit-product, device/google/felix/device.mk)

PRODUCT_DEVICE := felix
PRODUCT_NAME := lineage_felix
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel Fold
PRODUCT_MANUFACTURER := google

PRODUCT_GMS_CLIENTID_BASE := android-google

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="felix-user 14 UQ1A.231205.015.A1 11085482 release-keys"

BUILD_FINGERPRINT := google/felix/felix:14/UQ1A.231205.015.A1/11085482:user/release-keys
