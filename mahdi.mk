# Release name
PRODUCT_RELEASE_NAME := GT-I9000

# Inherit AOSP device configuration.
$(call inherit-product, device/samsung/galaxysmtd/full_galaxysmtd.mk)

# Inherit common product files.
$(call inherit-product, vendor/mahdi/configs/common.mk)
$(call inherit-product, vendor/mahdi/configs/common_full_phone.mk)

# Inherit GSM files.
$(call inherit-product, vendor/mahdi/configs/gsm.mk)

# Setup device specific product configuration.
PRODUCT_NAME := mahdi_galaxysmtd
PRODUCT_BRAND := samsung
PRODUCT_DEVICE := galaxysmtd
PRODUCT_MODEL := GT-I9000
PRODUCT_MANUFACTURER := samsung

#Set build fingerprint / ID / Prduct Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=GT-I9000 TARGET_DEVICE=GT-I9000 BUILD_FINGERPRINT=samsung/GT-I9000/GT-I9000:2.3.5/GINGERBREAD/XXJVT:user/release-keys PRIVATE_BUILD_DESC="GT-I9000-user 2.3.5 GINGERBREAD XXJVT release-keys"

# Copy device specific prebuilt files.
PRODUCT_COPY_FILES += \
    vendor/mahdi/prebuilt/bootanimations/BOOTANIMATION-800x480.zip:system/media/bootanimation.zip
