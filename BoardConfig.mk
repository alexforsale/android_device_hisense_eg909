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

USE_CAMERA_STUB := true

TARGET_NO_BOOTLOADER := true

BOARD_HAS_ATH_WLAN := true
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_HOSTAPD_DRIVER := NL80211
WPA_SUPPLICANT_VERSION := VER_2_0_DEV
HOSTAPD_VERSION := VER_2_0_DEV
WIFI_CFG80211_DRIVER_MODULE_PATH := "/system/lib/modules/cfg80211.ko"
WIFI_CFG80211_DRIVER_MODULE_NAME := "cfg80211"
WIFI_CFG80211_DRIVER_MODULE_ARG  := ""
WIFI_TEST_INTERFACE     := "sta"
WIFI_DRIVER_FW_PATH_STA := "sta"
WIFI_DRIVER_FW_PATH_AP  := "ap"
WIFI_DRIVER_FW_PATH_P2P := "p2p"

BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50001
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := default

BOARD_EGL_CFG := device/qcom/msm7627a/egl.cfg

INSTALLED_KERNEL_TARGET := device/hisense/AD683G/kernel

include device/qcom/msm7627a/BoardConfig.mk
