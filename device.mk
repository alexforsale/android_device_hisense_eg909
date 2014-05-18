#
# Copyright (C) 2014 The Android Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

ifeq ($(TARGET_PREBUILT_KERNEL),)
LOCAL_KERNEL := device/hisense/eg909/kernel
else
LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

DEVICE_PACKAGE_OVERLAYS := device/hisense/eg909/overlay

# Get the long list of APNs
PRODUCT_COPY_FILES := device/sample/etc/apns-full-conf.xml:system/etc/apns-conf.xml

# dsds enable
PRODUCT_PROPERTY_OVERRIDES += \
    persist.dsds.enabled=true

# property override for dns
PRODUCT_PROPERTY_OVERRIDES += \
    dhcp.wlan0.dns1=8.8.8.8 \
    dhcp.wlan0.dns2=8.8.4.4 \
    net.dns1=8.8.8.8 \
    net.dns2=8.8.4.4 \
    net.wlan0.dns1=8.8.8.8 \
    net.wlan0.dns2=8.8.4.4

# property override for browsermanagement
PRODUCT_PROPERTY_OVERRIDES += \
    browser.management=false

# property override for google client id
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.clientidbase=android-hisense

# property override for checkjni in every type of build
PRODUCT_PROPERTY_OVERRIDES += \
    ro.kernel.android.checkjni=0

# property override for radio.adb
PRODUCT_PROPERTY_OVERRIDES += \
   persist.radio.adb_log_on=1

# for default.prop override in every type of build
ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.secure=0 \
    ro.debuggable=1 \
    ro.allow.mock.location=0

# for DSP presets
PRODUCT_PROPERTY_OVERRIDES += \
    lpa.decode=false

# setupwizard
PRODUCT_PROPERTY_OVERRIDES += \
    ro.setupwizard.mode=OPTIONAL

# init files
PRODUCT_PACKAGES += \
    init.rc \
    init.eg909.rc

# permissions
PRODUCT_COPY_FILES := \
    frameworks/base/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml

# msm7627a
$(call inherit-product, device/qcom/msm7627a/msm7627a.mk)

# proprietary stuffs
$(call inherit-product-if-exists, vendor/hisense/eg909/eg909-vendor-blobs.mk)

# gps.conf
$(call inherit-product, device/common/gps/gps_as_supl.mk)

# gapps
$(call inherit-product-if-exists, vendor/gapps/gapps-vendor-blobs.mk)

PRODUCT_NAME := eg909
PRODUCT_DEVICE := eg909
PRODUCT_BRAND := hisense
PRODUCT_MODEL := Hisense eg909
PRODUCT_MANUFACTURER := Hisense
