#
# Copyright (C) 2015 The Android Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

$(call inherit-product-if-exists, vendor/lge/c70n/c70n-vendor.mk)

$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)

#kernel
TARGET_PREBUILT_KERNEL := device/lge/c70n/recovery/kernel
PRODUCT_COPY_FILES += \
	$(TARGET_PREBUILT_KERNEL):kernel

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:system/etc/permissions/android.hardware.nfc.hce.xml \
    frameworks/native/data/etc/android.hardware.nfc.hcef.xml:system/etc/permissions/android.hardware.nfc.hcef.xml
# NFC
PRODUCT_PACKAGES += \
    com.android.nfc_extras \
    NfcNci \
    nfc_nci.bcm2079x.default \
    Tag

# Stlport
PRODUCT_PACKAGES += libstlport

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/libnfc-brcm.conf:system/etc/libnfc-brcm.conf \
    $(LOCAL_PATH)/configs/libnfc-brcm-20795a10.conf:system/etc/libnfc-brcm-20795a10.conf \
    $(LOCAL_PATH)/configs/nfcee_access.xml:system/etc/nfcee_access.xml

# Audio
PRODUCT_PROPERTY_OVERRIDES += \
    persist.audio.fluence.voicecall=none \
    persist.audio.fluence.voicerec=none \
    persist.audio.fluence.speaker=none \
    ro.qc.sdk.audio.fluencetype=none	

# Audio configuration
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/mixer_paths.xml:system/etc/mixer_paths.xml

# GPS
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/gps.conf:system/etc/gps.conf

# Lights
PRODUCT_PACKAGES += \
    lights.msm8916

# Media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media_profiles.xml:system/etc/media_profiles.xml

# Thermal
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/thermal-engine-8916.conf:system/etc/thermal-engine-8916.conf

# Ramdisk
PRODUCT_PACKAGES += \
    fstab.qcom \
    init.target.rc

# Camera
PRODUCT_PACKAGES += \
    libmm-qcamera \
    camera.msm8916

# Wifi
PRODUCT_COPY_FILES += \
    device/lge/c70n/wcnss/WCNSS_qcom_wlan_nv.bin:system/etc/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin

# common msm8916
$(call inherit-product, device/lge/msm8916-common/msm8916.mk)

# Overlay
DEVICE_PACKAGE_OVERLAYS += device/lge/m216/overlay

TARGET_VENDOR_PRODUCT_NAME := c70n
TARGET_VENDOR_DEVICE_NAME := c70n
TARGET_VENDOR := lge
# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := c70n
PRODUCT_NAME := full_c70n
PRODUCT_BRAND := lge
PRODUCT_MODEL := LG Spirit LTE
PRODUCT_MANUFACTURER := LGE
PRODUCT_GMS_CLIENTID_BASE := android-lge
