USE_CAMERA_STUB := true
# inherit from the proprietary version
# -include vendor/lge/l1v/BoardConfigVendor.mk
# No prop vendor tree avail
# TARGET_TOOLS_PREFIX := /home/jacob/Desktop/cyan/prebuilts/gcc/linux-x86/arm/arm-eabi-4.7/bin/arm-eabi-
TARGET_POWERHAL_VARIANT := cm
TARGET_ARCH := arm
TARGET_ARCH_VARIANT_FPU := vfpv3
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := msm8960
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := krait
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true
# TARGET_USE_O3 := true
TARGET_BOOTLOADER_BOARD_NAME := l1v
BOARD_USES_QCOM_HARDWARE := true
USE_OPENGL_RENDERER := true
TARGET_NO_HW_VSYNC := true
ENABLE_LOKI_RECOVERY := true
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.hardware=l1v lpj=67667
BOARD_KERNEL_BASE := 0x80200000
BOARD_KERNEL_PAGESIZE := 2048
TARGET_USE_KRAIT_BIONIC_OPTIMIZATION := true
TARGET_USE_KRAIT_PLD_SET := true
TARGET_KRAIT_BIONIC_PLDOFFS := 10
TARGET_KRAIT_BIONIC_PLDTHRESH := 10
TARGET_KRAIT_BIONIC_BBTHRESH := 64
TARGET_KRAIT_BIONIC_PLDSIZE := 64
BOARD_BOOTIMAGE_PARTITION_SIZE := 0xBB8000
# Maybe 0xBB8000 or 6291456 below, not sure. Still expirementing.
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0xBB8000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1884160
BOARD_USERDATAIMAGE_PARTITION_SIZE := 4172288
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_USES_ADRENO_200 := true
# Loki doesnt like the below so it was commented out
# BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x82200000
TARGET_QCOM_DISPLAY_VARIANT := legacy
BOARD_EGL_NEEDS_LEGACY_FB := true
# TARGET_PREBUILT_KERNEL := device/lge/l1v/kernel
# LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
# Let it find target kernel source by itself
# However, still specify config.
TARGET_BOOTANIMATION_NAME := vertical-540x960
BOARD_USES_SECURE_SERVICES := true

# Wifi
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER	:= NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE := bcmdhd
WIFI_DRIVER_FW_PATH_PARAM := "/sys/module/bcmdhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA := "/system/etc/firmware/fw_bcmdhd.bin"
WIFI_DRIVER_FW_PATH_AP := "/system/etc/firmware/fw_bcmdhd_apsta.bin"
WIFI_DRIVER_FW_PATH_P2P := "/system/etc/firmware/fw_bcmdhd_p2p.bin"

# Audio
BOARD_USES_ALSA_AUDIO := true

# Recovery
TARGET_RECOVERY_FSTAB := device/lge/l1v/fstab.l1v
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_15x24.h\"
ENABLE_LOKI_RECOVERY := true

# SELinux
BOARD_SEPOLICY_UNION := \
app.te \
bluetooth.te \
device.te \
domain.te \
drmserver.te \
file.te \
file_contexts \
hci_init.te \
init_shell.te \
keystore.te \
mediaserver.te \
kickstart.te \
nfc.te \
rild.te \
surfaceflinger.te \
system.te \
ueventd.te \
wpa.te

# Kernel
TARGET_KERNEL_SOURCE := kernel/lge/l1v
TARGET_KERNEL_CONFIG := l1v-cyanogenmod_defconfig
