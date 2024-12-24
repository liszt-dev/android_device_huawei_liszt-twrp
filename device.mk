#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/huawei/liszt

# AAPT
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# ADB
ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.secure=0 \
    ro.adb.secure=0 \
    security.perf_harden=0 \
    ro.allow.mock.location=1

# Kernel
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/kernel:kernel

# Language Support
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Product
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.build.product=hi3635

$(call inherit-product, build/target/product/full.mk)

# Ramdisk
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/recovery/root/fstab.hi3635:recovery/root/fstab.hi3635 \
    $(DEVICE_PATH)/recovery/root/init.recovery.hi3635.rc:recovery/root/init.recovery.hi3635.rc \
    $(DEVICE_PATH)/recovery/root/ueventd.hi3635.rc:recovery/root/ueventd.hi3635.rc

# Screen
TARGET_SCREEN_HEIGHT := 1200
TARGET_SCREEN_WIDTH := 1920
