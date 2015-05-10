#
# Copyright (C) 2014 The Android Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_CPU_VARIANT := krait
TARGET_GLOBAL_CFLAGS += -mfpu=neon-vfpv4 -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon-vfpv4 -mfloat-abi=softfp

TARGET_BOARD_PLATFORM := msm8226
TARGET_BOOTLOADER_BOARD_NAME := MSM8226

TARGET_USE_QCOM_BIONIC_OPTIMIZATION := true
TARGET_USES_QCOM_BSP := true
COMMON_GLOBAL_CFLAGS += -DQCOM_BSP

BOARD_BOOTIMAGE_PARTITION_SIZE := 0x01800000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x01800000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2147483648
BOARD_USERDATAIMAGE_PARTITION_SIZE := 4253024256
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_HAS_LARGE_FILESYSTEM := true

BOARD_KERNEL_CMDLINE := ttyHSL0,115200,n8 androidboot.console=ttyHSL0 user_debug=31 msm_rtb.filter=0x37 androidboot.hardware=e8wifi androidboot.bootdevice=msm_sdcc.1
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x01000000 --tags_offset 0x01e00000 --dt device/lge/e8wifi/dt.img
TARGET_PREBUILT_KERNEL := device/lge/e8wifi/kernel

# Recovery
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_15x24.h\"
BOARD_SUPPRESS_EMMC_WIPE := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"

#TWRP
DEVICE_RESOLUTION := 800x1280
TARGET_USERIMAGES_USE_EXT4 := true
RECOVERY_SDCARD_ON_DATA := true
TW_INTERNAL_STORAGE_PATH := "/data/media"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
TW_NO_USB_STORAGE := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TW_IGNORE_MAJOR_AXIS_0 := true
TW_NO_SCREEN_TIMEOUT := true
#TW_NO_CPU_TEMP := true
TW_SCREEN_BLANK_ON_BOOT := true
TW_EXCLUDE_MTP := true
