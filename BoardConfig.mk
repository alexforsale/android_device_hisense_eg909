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
include device/qcom/msm7627a/BoardConfig.mk

USE_CAMERA_STUB := true

TARGET_NO_BOOTLOADER := true

TARGET_BOOTLOADER_BOARD_NAME := eg909

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

BOARD_USES_QCOM_HARDWARE := true
DYNAMIC_SHARED_LIBV8SO := true
USE_OPENGL_RENDERER := true
TARGET_USES_MDP3 := true
BOARD_HAVE_QCOM_FM := true
PROTEUS_DEVICE_API := true

BOARD_KERNEL_BASE    := 0x00e3b004

TARGET_PREBUILT_KERNEL := device/hisense/eg909/kernel
# modify Android.mk in system/core/charger and system/core/init to use these
TARGET_PREBUILT_INIT := vendor/hisense/eg909/proprietary/init
TARGET_PREBUILT_CHARGER := vendor/hisense/eg909/proprietary/charger

TARGET_PROVIDES_INIT_RC := true

TARGET_PROVIDES_SENSORHAL := true
TARGET_PROVIDES_CAMERAHAL := true

BOARD_BOOTIMAGE_PARTITION_SIZE := 9461760
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 10485760
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 358400000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2191360000

# webkit
ENABLE_WEBGL := true
WEBCORE_FPS_DISPLAY := true
ENABLE_WEBAUDIO := true
ARCH_ARM_HAVE_VFP := true
ARCH_ARM_HAVE_NEON := true
ENABLE_SVG := true

TARGET_RELEASETOOLS_EXTENSIONS := device/hisense/eg909
TARGET_OTA_ASSERT_DEVICE := AD683G,eg909

-include vendor/hisense/eg909/BoardConfigVendor.mk
