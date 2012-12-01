# Boot animation
TARGET_BOOTANIMATION_NAME := vertical-720x1280

# Inherit device configuration
$(call inherit-product, device/samsung/maguro/full_maguro.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/slim/config/common_full_phone.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/slim/config/gsm.mk)

# Inherit torch settings
#$(call inherit-product, vendor/slim/config/common_ledflash.mk)

# Inherit device settings
$(call inherit-product, vendor/slim/config/common_nexus.mk)

PRODUCT_COPY_FILES +=  \
    vendor/slim/prebuilt/hdpi/bootanimation.zip:system/media/bootanimation.zip

PRODUCT_PROPERTY_OVERRIDES += \
    ro.camera.res=5MP

#copy 00check
#PRODUCT_COPY_FILES += \
    vendor/slim/prebuilt/common/etc/init.d/00check:system/etc/init.d/00check

#copy vold.fstab
PRODUCT_COPY_FILES += \
    device/samsung/maguro/vold.fstab:system/etc/vold.fstab

# Release name
PRODUCT_RELEASE_NAME := maguro

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=takju BUILD_FINGERPRINT="google/takju/maguro:4.2.1 JOP40D eng.ar.20121128.517167 release-keys"
PRIVATE_BUILD_DESC="takju-user 4.2.1 JOP40D 517167 release-keys"

PRODUCT_NAME := slim_maguro
PRODUCT_DEVICE := maguro
PRODUCT_BRAND := google
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := samsung
PRODUCT_RESTRICT_VENDOR_FILES := false
