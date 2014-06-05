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

# Inherit some common CM stuff.
$(call inherit-product, vendor/my4ndr0id/config/common_full_phone.mk)
# Inherit device configuration
$(call inherit-product, device/hisense/eg909/full_eg909.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := eg909
PRODUCT_NAME := my4ndr0id_eg909
PRODUCT_BRAND := hisense
PRODUCT_MODEL := eg909
PRODUCT_MANUFACTURER := Hisense
PRODUCT_LOCALES := en_US
