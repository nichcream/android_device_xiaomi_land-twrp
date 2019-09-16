# Release name
PRODUCT_RELEASE_NAME := santoni

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

PRODUCT_PACKAGES += \
    charger_res_images \
    charger \
    libcryptfs_hw

# Kernel
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/kernel_santoni:kernel

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi 4X
PRODUCT_DEVICE := santoni
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_NAME := omni_santoni
