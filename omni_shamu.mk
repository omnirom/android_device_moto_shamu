# Include omni board-specific configurations
include device/moto/shamu/BoardConfigOmni.mk

# Inherit base AOSP device configuration
$(call inherit-product, device/moto/shamu/aosp_shamu.mk)

# Override product naming for Omni
PRODUCT_NAME := omni_shamu
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 6
PRODUCT_MANUFACTURER := motorola
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT="google/shamu/shamu:7.1.1/N6F27H/4072753:user/release-keys" \
    PRIVATE_BUILD_DESC="shamu-user 7.1.1 N6F27H 4072753 release-keys"

# Inherit OmniROM parts
$(call inherit-product, vendor/omni/config/gsm.mk)
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit proprietary bits
$(call inherit-product-if-exists, vendor/motorola/shamu/device-vendor.mk)

# Inherit TWRP configuration
include device/moto/shamu/twrp.mk

# include libxml2
PRODUCT_PACKAGES += \
    librmnetctl \
    libxml2

# SnapdragonCamera
PRODUCT_PACKAGES += \
    SnapdragonCamera
