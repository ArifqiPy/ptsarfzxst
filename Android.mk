# Ganti $$DEVICE$$ dengan Nilai Nama Perangkat Anda. Milik saya adalah Primo_RX5. 
# Ganti $$BRAND$$ dengan Nilai Merek  Pabrikan Anda, Milik Saya adalah WALTON

ifneq ( $( filter y21, $( TARGET_DEVICE ) ) ,)

LOCAL_PATH = perangkat VIVO Y21

sertakan $(panggil semua-makefiles-under,$(LOCAL_PATH))

berakhir jika