# Copyright 2014 The Android Open Source Project
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

# Bootanimation
TARGET_BOOTANIMATION_SIZE := 1440x960

# Enable workaround for slow rom flash
BOARD_SUPPRESS_SECURE_ERASE := true

# Healthd
HEALTHD_ENABLE_TRICOLOR_LED := true

# Kernel
BOARD_KERNEL_IMAGE_NAME := zImage-dtb
TARGET_KERNEL_SOURCE := kernel/moto/shamu
TARGET_KERNEL_CONFIG := omni_shamu_defconfig
TARGET_VARIANT_CONFIG := omni_shamu_defconfig
TARGET_SELINUX_CONFIG := omni_shamu_defconfig

# TWRP
TW_THEME := portrait_hdpi
TW_INCLUDE_L_CRYPTO := true
BOARD_HAS_NO_REAL_SDCARD := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TW_SCREEN_BLANK_ON_BOOT := true

