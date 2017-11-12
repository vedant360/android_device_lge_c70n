#
# Copyright (C) 2015-2016 The Android Open-Source Project
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
# inherit from common msm8916
-include device/lge/msm8916-common/BoardConfigCommon.mk

TARGET_KERNEL_CONFIG := c70_defconfig
BOARD_KERNEL_SEPARATED_DT := true
# Partitions
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_BOOTIMAGE_PARTITION_SIZE := 25165824      # 16384 * 1024 mmcblk0p31
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 25165824  # 16484 * 1024 mmcblk0p32
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2576980992  # 2375680 * 1024 mmcblk0p41
BOARD_USERDATAIMAGE_PARTITION_SIZE := 3833488384 # 4751232 * 1024 mmcblk0p42
TARGET_KERNEL_SOURCE := kernel/lge/msm8916

# Lights
TARGET_PROVIDES_LIBLIGHT := true

# Recovery
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_PREBUILT_KERNEL := device/lge/c70n/recovery/kernel

# Vold
#TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun%d/fileS

# NFC
BOARD_NFC_DEVICE := "/dev/bcm2079x"

# TWRP
RECOVERY_VARIANT := twrp
TW_THEME := portrait_hdpi
TARGET_RECOVERY_QCOM_RTC_FIX := true
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
TW_IGNORE_MISC_WIPE_DATA := true
