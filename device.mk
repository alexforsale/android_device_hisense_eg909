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
LOCAL_KERNEL := device/hisense/AD683G/kernel
else
LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

DEVICE_PACKAGE_OVERLAYS := device/hisense/AD683G/overlay

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

# init files
PRODUCT_PACKAGES += \
    init.rc \
    init.AD683G.rc

# additional packages
PRODUCT_PACKAGES += \
    Superuser \
    Apollo \
    Term \
    libjackpal-androidterm4

# msm7627a
$(call inherit-product, device/qcom/msm7627a/msm7627a.mk)

# proprietary stuffs
$(call inherit-product-if-exists, vendor/hisense/AD683G/AD683G-vendor-blobs.mk)

# gps.conf
$(call inherit-product, device/common/gps/gps_as_supl.mk)

# gapps
$(call inherit-product-if-exists, vendor/gapps/gapps-vendor-blobs.mk)

PRODUCT_NAME := AD683G
PRODUCT_DEVICE := AD683G
PRODUCT_BRAND := hisense
PRODUCT_MODEL := Codeaurora AOSP Hisense AD683G
PRODUCT_MANUFACTURER := Hisense
