# Inherit AOSP device configuration for i9100g.
$(call inherit-product, device/samsung/i9100g/full_i9100g.mk)

# Inherit common product files.
$(call inherit-product, vendor/cna/config/common_full_phone.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/cna/config/gsm.mk)

# i9100g overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/cna/overlay/i9100g

# Setup device specific product configuration.
PRODUCT_DEVICE := i9100g
PRODUCT_NAME := cna_i9100g
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := GT-I9100G

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=GT-I9100G TARGET_DEVICE=GT-I9100G BUILD_FINGERPRINT=samsung/GT-I9100G/GT-I9100G:4.0.3/IML74K/XXLPQ:user/release-keys PRIVATE_BUILD_DESC="GT-I9100G-user 4.0.3 IML74K XXLPQ release-keys"

PRODUCT_RELEASE_NAME := I9100G

PRODUCT_COPY_FILES +=  \
    vendor/cna/prebuilt/hdpi/bootanimation.zip:system/media/bootanimation.zip
