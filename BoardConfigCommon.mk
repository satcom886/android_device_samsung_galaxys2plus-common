USE_CAMERA_STUB := true

# Inherit from the proprietary version
-include vendor/samsung/galaxys2plus-common/BoardConfigVendor.mk

# Platform
TARGET_BOARD_PLATFORM := capri

# CPU
TARGET_ARCH := arm
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a9

# Bootloader
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := capri

# Kernel
TARGET_KERNEL_CONFIG := lineageos_galaxys2plus_defconfig
TARGET_KERNEL_SOURCE := kernel/samsung/galaxys2plus-common
BOARD_KERNEL_CMDLINE := console=ttyS0,115200n8 mem=832M@0xA2000000 androidboot.console=ttyS0 vc-cma-mem=0/176M@0xCB000000
BOARD_KERNEL_BASE := 0xa2000000
BOARD_KERNEL_PAGESIZE := 4096

# Kernel toolchain
KERNEL_TOOLCHAIN := $(ANDROID_BUILD_TOP)/prebuilts/gcc/$(HOST_OS)-x86/arm/arm-eabi-4.8/bin
KERNEL_TOOLCHAIN_PREFIX := arm-eabi-

# File system
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 8388608

# This is actually 1610612736, but reducing to 1049 MB to support users using repartition.
# Feel free to increase when needed
# See: http://forum.xda-developers.com/showpost.php?p=55293011&postcount=1
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1099956224
# Disable journaling on system.img to save space.
BOARD_SYSTEMIMAGE_JOURNAL_SIZE := 0

BOARD_USERDATAIMAGE_PARTITION_SIZE := 4404002816
BOARD_CACHEIMAGE_PARTITION_SIZE := 1073741824
BOARD_FLASH_BLOCK_SIZE := 131072

# Recovery
TARGET_RECOVERY_FSTAB := device/samsung/galaxys2plus-common/rootdir/fstab.capri
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/class/android_usb/android0/f_mass_storage/lun%d/file"
TARGET_RECOVERY_PIXEL_FORMAT := ABGR_8888
TARGET_RECOVERY_DENSITY := hdpi
BOARD_CUSTOM_BOOTIMG_MK := device/samsung/galaxys2plus-common/mkbootimg.mk
TARGET_NOT_USE_GZIP_RECOVERY_RAMDISK := true

# Hardware rendering
BOARD_EGL_WORKAROUND_BUG_10194508 := true
#BOARD_USE_MHEAP_SCREENSHOT := true
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true
TARGET_REQUIRES_SYNCHRONOUS_SETSURFACE := true
BOARD_GLOBAL_CFLAGS += -DNEEDS_VECTORIMPL_SYMBOLS -DCAPRI_HWC -DREFBASE_JB_MR1_COMPAT_SYMBOLS

# CMHW
BOARD_HARDWARE_CLASS := hardware/samsung/cmhw/ device/samsung/galaxys2plus-common/cmhw/

# RIL
BOARD_RIL_CLASS := ../../../device/samsung/galaxys2plus-common/ril/

# GPS
TARGET_SPECIFIC_HEADER_PATH := device/samsung/galaxys2plus-common/include

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_CUSTOM_BT_CONFIG := device/samsung/galaxys2plus-common/bluetooth/libbt_vndcfg.txt
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/galaxys2plus-common/bluetooth

# Camera
TARGET_HAS_LEGACY_CAMERA_HAL1 := true
TARGET_USE_AVC_BASELINE_PROFILE := true

# Connectivity - Wi-Fi
BOARD_HAVE_SAMSUNG_WIFI             := true
BOARD_WLAN_DEVICE                   := bcmdhd
BOARD_WLAN_DEVICE_REV               := bcm4330
WPA_SUPPLICANT_VERSION              := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER         := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB    := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER                := NL80211
BOARD_HOSTAPD_PRIVATE_LIB           := lib_driver_cmd_bcmdhd
WIFI_DRIVER_MODULE_NAME             := "dhd"
WIFI_DRIVER_MODULE_PATH             := "/system/lib/modules/dhd.ko"
WIFI_DRIVER_FW_PATH_PARAM           := "/sys/module/dhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_AP              := "/system/etc/wifi/bcmdhd_apsta.bin"
WIFI_DRIVER_FW_PATH_STA             := "/system/etc/wifi/bcmdhd_sta.bin"
WIFI_DRIVER_MODULE_AP_ARG           := "firmware_path=/system/etc/wifi/bcmdhd_apsta.bin nvram_path=/system/etc/wifi/nvram_net.txt"
WIFI_DRIVER_MODULE_ARG              := "firmware_path=/system/etc/wifi/bcmdhd_sta.bin nvram_path=/system/etc/wifi/nvram_net.txt"
WIFI_BAND                           := 802_11_ABG

# healthd
BOARD_HAL_STATIC_LIBRARIES := libhealthd.capri
WITH_CM_CHARGER := false

# Charger
BOARD_CHARGER_ENABLE_SUSPEND := true
BOARD_CHARGING_MODE_BOOTING_LPM := /sys/class/power_supply/battery/batt_lp_charging

# Boot animation
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true

# Disable tcache
MALLOC_SVELTE := true

# Some of our vendor libs have text relocations
TARGET_NEEDS_PLATFORM_TEXT_RELOCATIONS := true

# SELinux
BOARD_SEPOLICY_DIRS += device/samsung/galaxys2plus-common/sepolicy
