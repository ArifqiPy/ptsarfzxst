LOCAL_PATH := perangkat/$$BRAND$$/$$DEVICE$$

TARGET_BOARD_PLATFORM := mt6765                # Dari ro.mediatek.platform, tetapi nilainya huruf kecil
TARGET_NO_BOOTLOADER := benar
TARGET_BOOTLOADER_BOARD_NAME := k65v1_64_bsp      # Dari ro.product.board

# Keduanya hanya untuk Chipset MTK saja
BOARD_USES_MTK_HARDWARE := benar
BOARD_HAS_MTK_HARDWARE := benar

# Pemulihan 
T ARGET_USERIMAGES_USE_EXT4 := true
 TARGET_USERIMAGES_USE_F2FS := true             # Untuk menambahkan info tentang Blok Data Sistem File F2FS 
# Cantumkan Ukuran Partisi Pemulihan Anda di bawah, dapatkan dari "MT****_Android_scatter.txt" Anda
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 134217728
# BOARD_USES_FULL_RECOVERY_IMAGE := true # Batalkan komentar pada baris ini jika Anda ingin menghapus batasan ukuran 
B OARD_FLASH_BLOCK_SIZE := 0                    # Mungkin berbeda untuk chip Anda 
BOARD_HAS_NO_REAL_SDCARD := true               # Tidak berlaku lagi 
# BOARD_HAS_NO_SELECT_BUTTON := benar # Tidak berlaku lagi
BOARD_SUPPRESS_SECURE_ERASE := benar
BOARD_HAS_NO_MISC_PARTITION := true            # Hapus jika tabel partisi Anda memiliki /lain-lain
BOARD_RECOVERY_SWIPE := benar
BOARD_USES_MMCUTILS := true
 BOARD_SUPPRESS_EMMC_WIPE := true
 BOARD_CHARGER_SHOW_PERCENTAGE := true
 RECOVERY_SDCARD_ON_DATA := true                # Opsional: Jika partisi /sdcard ditiru pada /partisi data

# Barang TWRP 
TW_EXCLUDE_SUPERSU := false                     # true/false: Tambahkan SuperSU atau tidak 
TW_INCLUDE_CRYPTO := true                      # true/false: Tambahkan Dukungan Enkripsi Data atau tidak 
TW_INPUT_BLACKLIST := "hbtp_vm"                # Opsional: Menonaktifkan mouse virtual
TW_SCREEN_BLANK_ON_BOOT := benar
TW_THEME := potrait_hdpi                      # Tetapkan tema yang ingin Anda gunakan. Jika ukuran tidak sesuai, tentukan tinggi/lebar 
DEVICE_RESOLUTION := 720x1600                  # Resolusi Perangkat Anda 
TARGET_SCREEN_HEIGHT := 1600                     # Tinggi 
TARGET_SCREEN_WIDTH := 720                       # Lebar
TARGET_RECOVERY_PIXEL_FORMAT := "RGBA_8888"
# Atur Jalur File Kontrol Kecerahan di bawah (sesuai chip/perangkat Anda) 
T W_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
 TW_SECONDARY_BRIGHTNESS_PATH := /sys/devices/platform/leds-mt65xx/leds/lcd- backlight/brightness
 # Tetapkan Jalur Unit Logis (LUN) untuk Penyimpanan di bawah ini (sesuai chip/perangkat Anda) 
T ARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/mt_usb/musb-hdrc.0.auto/gadget/lun%d /file
 TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/class/android_usb/android0/f_mass_storage/lun/file
 TW_MAX_BRIGHTNESS := 255
 TW_DEFAULT_BRIGHTNESS := 80                    # Atur kecerahan khusus, rendah lebih baik

TW_INCLUDE_NTFS_3G := true                     # Sertakan Dukungan Sistem File NTFS 
TW_INCLUDE_FUSE_EXFAT := true                  # Sertakan Dukungan Sistem File Fuse-ExFAT 
TWRP_INCLUDE_LOGCAT := true                    # Sertakan LogCat Binary 
TW_INCLUDE_FB2PNG := true                      # Sertakan Dukungan 
Tangkapan Layar TW_DEFAULT_LANGUAGE := en                      # Tetapkan Bahasa Default
TW_EXTRA_LANGUAGES := salah

# Kernel 
T ARGET_IS_64_BIT := true                       # true/false: Tentukan apakah perangkat 64-bit atau tidak 
TARGET_PREBUILT_KERNEL := $( LOCAL_PATH ) /prebuilt/zImage
 TARGET_PREBUILT_RECOVERY_KERNEL := $( LOCAL_PATH ) /prebuilt/zImage
 # Dapatkan CMDLine, Base , Ukuran halaman dan offset dari Unpacked recovery image dan letakkan di bawah 
B OARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2 product.version=PD2139F_EX_A_1.7.1 fingerprint.abbr=11/RP1A.200720.012 region_ver=W20 product.solution=MTK buildvariant=user
 BOARD_KERNEL_BASE := 0x40078000
 BOARD_KERNEL_PAGESIZE := 2048
 BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x03f8 8000 --tags_offset 0x0df88000

# Setel FSTAB 
T ARGET_RECOVERY_FSTAB := $( LOCAL_PATH ) /recovery/root/etc/recovery.fstab

TARGET_BOARD_SUFFIX := _64                     # Hapus jika perangkat 32-bit 
TARGET_USES_64_BIT_BINDER := true              # Hapus jika perangkat 32-bit

# Arsitektur 
# Menurut arsitektur perangkat (64-bit atau 32-bit) 
ifeq ( $( TARGET_IS_64_BIT ) ,true)
 TARGET_ARCH := arm64
 TARGET_ARCH_VARIANT := armv8-a
 TARGET_CPU_ABI := arm64-v8a
 TARGET_CPU_ABI2 :=
 TARGET_CPU_VARIANT := cortex- a53
 TARGET_2ND_ARCH := lengan
 TARGET_2ND_ARCH_VARIANT := lenganv7-a-neon
 TARGET_2ND_CPU_ABI := armeabi-v7a
 TARGET_2ND_CPU_ABI2 := armeabi
 TARGET_2ND_CPU_VARIANT := korteks-a53
 TARGET_CPU_ABI_LIST_64_BIT := $( TARGET_C PU_ABI ) 
TARGET_CPU_ABI_LIST_32_BIT := $( TARGET_2ND_CPU_ABI ) , $( TARGET_2ND_CPU_ABI2 ) 
TARGET_CPU_ABI_LIST : = $( TARGET_CPU_ABI_LIST_64_BIT ) , $( TARGET_CPU_ABI_LIST_32_BIT )
kalau tidak
TARGET_ARCH := lengan
 TARGET_ARCH_VARIANT := armv7-a-neon
 TARGET_CPU_ABI := armeabi-v7a
 TARGET_CPU_ABI2 := armeabi
 TARGET_CPU_VARIANT := korteks-a7
 TARGET_CPU_ABI_LIST := $( TARGET_CPU_ABI ) , $( TARGET_CPU_ABI2 )
berakhir jika