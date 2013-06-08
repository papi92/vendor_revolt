# Inherit AOSP device configuration for jfltevzw.
$(call inherit-product, device/motorola/xt926/full_xt926.mk)

# Inherit common cdma apns
$(call inherit-product, vendor/revolt/configs/cdma.mk)

# Inherit common Verizon Wireless Perms and Lib
$(call inherit-product, vendor/revolt/configs/vzw.mk)

# Inherit common product files.
$(call inherit-product, vendor/revolt/configs/common.mk)

# Samsung Galaxy S4 Overlays
PRODUCT_PACKAGE_OVERLAYS += device/motorola/msm8960-common/overlay/

# Setup device specific product configuration.
PRODUCT_NAME := revolt_xt926
PRODUCT_BRAND := motorola
PRODUCT_DEVICE := xt926
PRODUCT_MODEL := xt926
PRODUCT_MANUFACTURER := motorola

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=Xt926 TARGET_DEVICE=xt926 BUILD_FINGERPRINT="Motorola/xt926/xt926:4.2.2/JDQ39/I545VRUAMDK:user/release-keys"
PRIVATE_BUILD_DESC="xt926-user 4.2.2 JDQ39 I545VRUAMDK release-keys"

# PA OVERLAY_TARGET
OVERLAY_TARGET := pa_xhdpi

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/revolt/prebuilt/bootanimation/xhdpi/bootanimation.zip:system/media/bootanimation.zip

