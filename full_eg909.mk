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

# Release name
PRODUCT_RELEASE_NAME := eg909

# msm7627a
$(call inherit-product, device/qcom/msm7627a/msm7627a.mk)
# my4ndr0id modification
$(call inherit-product, vendor/my4ndr0id/config/common.mk)
# Inherit device configuration
$(call inherit-product, device/hisense/eg909/device.mk)

# Get the long list of APNs
PRODUCT_COPY_FILES += device/sample/etc/apns-full-conf.xml:system/etc/apns-conf.xml

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := eg909
PRODUCT_NAME := my4ndr0id_eg909
PRODUCT_BRAND := hisense
PRODUCT_MODEL := Hacksense eg909
PRODUCT_MANUFACTURER := Hisense
PRODUCT_LOCALES := in_ID en_US
