# Boot animation  
TARGET_SCREEN_HEIGHT := 2280  
TARGET_SCREEN_WIDTH := 1080  

# Inherit some common StatiX stuff.  
$(call inherit-product, vendor/statix/config/common.mk)  
$(call inherit-product, vendor/statix/config/gsm.mk)  

# Inherit device configuration  
$(call inherit-product, device/google/pantah/aosp_panther.mk)  

# Parts  
$(call inherit-product-if-exists, vendor/google/pixelparts/pixelparts.mk)  
$(call inherit-product-if-exists, vendor/google/pixelparts/powershare/device.mk)  

## Device identifier. This must come after all inclusions  
PRODUCT_NAME := statix_panther  
PRODUCT_MODEL := Pixel 7  
PRODUCT_BRAND := google  
PRODUCT_MANUFACTURER := Google  

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="panther-user 15 AP4A.250205.002 12821496 release-keys" \
    BuildFingerprint=google/panther/panther:15/AP4A.250205.002/12821496:user/release-keys \
    DeviceProduct=$(DEVICE_CODENAME)
