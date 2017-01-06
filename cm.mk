# Release name
PRODUCT_RELEASE_NAME := cloudswift

TARGET_SCREEN_HEIGHT := 854
TARGET_SCREEN_WIDTH := 480

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/intex/cloudswift/device_cloudswift.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := cloudswift
PRODUCT_NAME := cm_cloudswift
PRODUCT_BRAND := intex
PRODUCT_MODEL := cloudswift
PRODUCT_MANUFACTURER := intex
