#
# Copyright 2012 The Android Open Source Project
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

# Inherit base AOSP device configuration
$(call inherit-product, device/moto/shamu/aosp_shamu.mk)

# Inherit APNs list
$(call inherit-product, vendor/omni/config/gsm.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Audio effects
PRODUCT_PROPERTY_OVERRIDES += \
    fmas.spkr_6ch=35,20,110 \
    fmas.spkr_2ch=35,25 \
    fmas.spkr_angles=10 \
    fmas.spkr_sgain=0

# Bootanimation
TARGET_BOOTANIMATION_SIZE := 960x640

# Nexus6Parts
PRODUCT_PACKAGES += \
    Nexus6Parts

# OTG
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.isUsbOtgEnabled=1

# Radio
PRODUCT_PROPERTY_OVERRIDES += \
    ro.telephony.get_imsi_from_sim=true \
    persist.radio.no_wait_for_card=1 \
    persist.radio.sib16_support=1

# Rich Communications Service is disabled in 5.1
PRODUCT_PROPERTY_OVERRIDES += \
    persist.rcs.supported=0

# SELinux
PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.selinux=1

# Sound
PRODUCT_PROPERTY_OVERRIDES += \
    media.aac_51_output_enabled=true \
    persist.audio.dualmic.config=endfire \
    persist.audio.fluence.voicecall=true \
    persist.audio.fluence.voicerec=false \
    persist.audio.fluence.speaker=false

# Tethering: allow tethering without provisioning app
PRODUCT_PROPERTY_OVERRIDES += \
    net.tethering.noprovisioning=true

# TWRP
PRODUCT_COPY_FILES += \
    device/moto/shamu/twrp.fstab:recovery/root/etc/twrp.fstab

# WiFi calling
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
    BUILD_FINGERPRINT="google/shamu/shamu:5.1.1/LYZ28J/2128181:user/release-keys" \
    PRIVATE_BUILD_DESC="shamu-user 5.1.1 LYZ28J 2128181 release-keys"

