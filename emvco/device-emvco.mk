NXP_VENDOR_DIR := nxp
NXP_NFC_HW := $(TARGET_NXP_NFC_HW)
ifeq ($(strip $(TARGET_NXP_NFC_HW)),)
    NXP_NFC_HW := pn7220
endif

PRODUCT_PACKAGES += \
    android.hardware.emvco-V1-ndk \
    android.hardware.emvco-service \
    EMVCoAidlHalComplianceTest \
    EMVCoAidlHalDesfireTest \
    EMVCoModeSwitchApp \
    EMVCoAidlHalTransacTest

BOARD_SEPOLICY_DIRS += vendor/$(NXP_VENDOR_DIR)/emvco/sepolicy
PRODUCT_COPY_FILES += \
    vendor/$(NXP_VENDOR_DIR)/emvco/hw/$(NXP_NFC_HW)/libemvco-nxp.conf:vendor/etc/libemvco-nxp.conf