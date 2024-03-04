$(panggilan produk warisan, $(SRC_TARGET_DIR)/produk/full_base.mk)

# Tambahkan baris ini jika perangkat Anda 64-bit
$(panggilan produk warisan, $(SRC_TARGET_DIR)/produk/core_64_bit.mk)
# Jika tidak, Jika Anda memiliki perangkat 32-bit, tambahkan baris di bawah, bukan baris di atas
$(panggil produk warisan, $(SRC_TARGET_DIR)/produk/core_minimal.mk

# Penyertaan konfigurasi umum lainnya
$(panggilan produk warisan, $(SRC_TARGET_DIR)/produk/embedded.mk)

# Jika Anda membangun dari sumber minimal OmniROM, warisi beberapa hal umum Omni.
$(panggil produk warisan, vendor/omni/config/common.mk)

# Ganti $$DEVICE$$ dengan Nilai Nama Perangkat Anda. 
# Ganti $$BRAND$$ dengan Nilai Merek/Produsen Anda. 
P RODUCT_COPY_FILES += device/VIVO/Y21/prebuilt/zImage:kernel
 # File di bawah $(LOCAL_PATH)/recovery/root/ secara otomatis disalin ke dalam pemulihan 
# product_COPY_FILES += $(LOCAL_PATH)/recovery /root/*:root/*

PRODUK_DEVICE := Y21
 PRODUK_NAME := omni_Y21
 PRODUK_BRAND := VIVO
 product_MODEL := Y21
 PRODUK_MANUFACTURER := Y21

# Tambahkan dukungan mtp secara paksa (adb sudah ada) 
P RODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    bertahan.sys.usb.config=mtp

# Tambahkan sidik jari dari Stock ROM build.prop 
P RODUCT_BUILD_PROP_OVERRIDES += \ 
    # Baris ini berasal dari perangkat saya. Anda HARUS Mengganti milik Anda. 
    BUILD_FINGERPRINT="WALTON/Primo_RX5/Primo_RX5:6.0/MRA58K/1465782828:user/release-keys" \ 
    PRIVATE_BUILD_DESC="full_gionee6735_65u_m0-user 6.0 MRA58K 1465782828 kunci rilis"