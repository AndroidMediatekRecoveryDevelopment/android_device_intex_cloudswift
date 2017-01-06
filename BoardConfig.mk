USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/intex/cloudswift/BoardConfigVendor.mk

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic
TARGET_CPU_SMP := true

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_BOARD_SUFFIX := _64
TARGET_USES_64_BIT_BINDER := true

TARGET_BOOTLOADER_BOARD_NAME := MT6735

BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2
TARGET_PREBUILT_KERNEL := device/intex/cloudswift/prebuilt/kernel
BOARD_MKBOOTIMG_ARGS := --base 0x40078000 --pagesize 2048 --kernel_offset 0x00008000 --ramdisk_offset 0x03f88000 --second_offset 0x00e88000 --tags_offset 0x0df88000 --board 1449484241 --mtk 1


# USB OTG and External Sdcard
TARGET_USES_EXFAT := true
TARGET_USES_NTFS := true

# GRAPHICS
USE_OPENGL_RENDERER := true
BOARD_EGL_CFG := $(LOCAL_PATH)/egl.cfg

# Partitions
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 20971520

BOARD_FLASH_BLOCK_SIZE := 512
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_SPARSE_EXT_DISABLED := false
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_CUSTOM_BOOTIMG := true
BOARD_CUSTOM_BOOTIMG_MK := device/intex/cloudswift/bootimg.mk
BOARD_CUSTOM_MKBOOTIMG := mtkbootimg
#TARGET_RECOVERY_FSTAB := device/intex/cloudswift/recovery/recovery.fstab

RECOVERY_VARIANT := carliv

ifneq ($(RECOVERY_VARIANT),twrp)
TARGET_RECOVERY_FSTAB := device/intex/cloudswift/recovery/etc/recovery.fstab
endif

# CARLIV
ifeq ($(RECOVERY_VARIANT),carliv)
VIBRATOR_TIMEOUT_FILE := /sys/devices/virtual/timed_output/vibrator/enable
BOARD_USE_CUSTOM_RECOVERY_FONT := \"font_16x35.h\"
DEVICE_RESOLUTION := 720x1280
BOARD_INCLUDE_CRYPTO := true
BOARD_HAS_MTK_CPU := true
endif
# TWRP
TW_NO_EXFAT := true
TWHAVE_SELINUX := true
TW_THEME := portrait_mdpi
TW_NO_EXFAT_FUSE := true
TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/mt_usb/gadget/lun%d/file"
TW_EXCLUDE_SUPERSU := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBA_8888"
DEVICE_RESOLUTION := 480x854
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
TW_MAX_BRIGHTNESS := 255
TW_CUSTOM_CPU_TEMP_PATH := /sys/devices/virtual/thermal/thermal_zone1/temp
TW_NO_REBOOT_BOOTLOADER := true
TW_USE_TOOLBOX := true
