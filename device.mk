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

$(call inherit-product, vendor/hisense/AD683G/AD683G-vendor-blobs.mk)

include device/qcom/msm7627a/msm7627a.mk

ifeq ($(TARGET_PREBUILT_KERNEL),)
LOCAL_KERNEL := device/hisense/AD683G/kernel
else
LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

#dsds enable
PRODUCT_PROPERTY_OVERRIDES += \
    persist.dsds.enabled=true

# init files
PRODUCT_PACKAGES += \
    init.rc \
    init.AD683G.rc

# additional packages
PRODUCT_PACKAGES += \
    Superuser \
    Apollo

# gapps
$(call inherit-product, vendor/gapps/gapps-vendor-blobs.mk)

PRODUCT_NAME := AD683G
PRODUCT_DEVICE := AD683G
PRODUCT_BRAND := hisense
PRODUCT_MODEL := Codeaurora AOSP Hisense AD683G
PRODUCT_MANUFACTURER := Hisense
