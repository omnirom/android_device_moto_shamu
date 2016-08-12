#
# Copyright 2014 The Android Open-Source Project
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

# Include omni board-specific configurations
include device/moto/shamu/BoardConfigOmni.mk

# Inherit base AOSP device configuration
$(call inherit-product, device/moto/shamu/aosp_shamu.mk)

# Inherit APNs list
$(call inherit-product, vendor/omni/config/gsm.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Audio - fluence
PRODUCT_PROPERTY_OVERRIDES += \
    media.aac_51_output_enabled=true \
    persist.audio.dualmic.config=endfire \
    persist.audio.fluence.voicecall=true \
    persist.audio.fluence.voicerec=false \
    persist.audio.fluence.speaker=false

# Audio - fmas
PRODUCT_PROPERTY_OVERRIDES += \
    fmas.spkr_6ch=35,20,110 \
    fmas.spkr_2ch=35,25 \
    fmas.spkr_angles=10 \
    fmas.spkr_sgain=0

# Bootanimation
TARGET_BOOTANIMATION_SIZE := 1440x814

# RIL
PRODUCT_PACKAGES += \
    libxml2

PRODUCT_PROPERTY_OVERRIDES += \
    persist.radio.sib16_support=1 \
    persist.rcs.supported=0

# Recovery - TWRP
PRODUCT_COPY_FILES += \
    device/moto/shamu/twrp.fstab:recovery/root/etc/twrp.fstab

# SELinux
PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.selinux=1

# Snapdragon Camera
PRODUCT_PACKAGES += \
    SnapdragonCamera

# Tethering
PRODUCT_PROPERTY_OVERRIDES += \
    net.tethering.noprovisioning=true

# WiFi Calling
PRODUCT_PROPERTY_OVERRIDES += \
    persist.data.iwlan.enable=true \
    persist.radio.ignore_ims_wlan=1 \
    persist.radio.data_con_rprt=1

# Override product naming for Omni
PRODUCT_NAME := omni_shamu
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 6
PRODUCT_MANUFACTURER := motorola
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT="google/shamu/shamu:6.0.1/MOB30W/3031100:user/release-keys" \
    PRIVATE_BUILD_DESC="shamu-user 6.0.1 MOB30W 3031100 release-keys"

$(call inherit-product, vendor/motorola/shamu/device-vendor.mk)
