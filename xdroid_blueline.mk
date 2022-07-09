#
# Copyright (C) 2021 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Boot animation
TARGET_BOOT_ANIMATION_RES := 1080

# Inherit some common xdroidOSS stuff.
XDROID_BOOT := 1080
XDROID_MAINTAINER := JRJMT_
TARGET_GAPPS_ARCH := arm64
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_FACE_UNLOCK_SUPPORTED := true
$(call inherit-product, vendor/xdroid/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/google/crosshatch/aosp_blueline.mk)

-include device/google/crosshatch/device-xdroid.mk

## Device identifier. This must come after all inclusions
PRODUCT_MANUFACTURER := Google
PRODUCT_NAME := xdroid_blueline
PRODUCT_DEVICE := blueline
PRODUCT_BRAND := Google
PRODUCT_MODEL := Pixel 3

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=blueline \
    PRIVATE_BUILD_DESC="blueline-user 12 SP1A.210812.016.C1 8029091 release-keys"

BUILD_FINGERPRINT := google/blueline/blueline:12/SP1A.210812.016.C1/8029091:user/release-keys

$(call inherit-product, vendor/google/blueline/blueline-vendor.mk