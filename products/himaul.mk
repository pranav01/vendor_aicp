# Inherit some common AICP stuff.
$(call inherit-product, vendor/aicp/configs/common.mk)

# Enhanced NFC
$(call inherit-product, vendor/aicp/configs/nfc_enhanced.mk)

$(call inherit-product, device/htc/himaul/full_himaul.mk)

PRODUCT_NAME := aicp_himaul

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE="htc_himaulatt" \
    PRODUCT_NAME="himaulatt_na_gen_unlock" \
    BUILD_FINGERPRINT="htc/himaulatt_na_gen_unlock/htc_himaulatt:5.1/LMY47O/559710.4:user/release-keys" \
    PRIVATE_BUILD_DESC="2.8.617.4 CL559710 release-keys"

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080
-include vendor/aicp/configs/bootanimation.mk
