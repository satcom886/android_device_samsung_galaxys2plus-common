# Camera
PRODUCT_PROPERTY_OVERRIDES += \
    camera2.portability.force_api=1

# Set default USB configuration
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

# Radio
PRODUCT_PROPERTY_OVERRIDES += \
    rild.libpath=/system/lib/libbrcm_ril.so \
    ro.telephony.ril_class=SamsungBCMRIL \
    ro.telephony.call_ring.multiple=0 \
    ro.telephony.call_ring=0 \
    mobiledata.interfaces=rmnet0 \
    ro.ril.gprsclass=10 \
    ro.ril.hsxpa=1

# Graphics
PRODUCT_PROPERTY_OVERRIDES += \
    brcm.hwc.no-hdmi-trans=1 \
    debug.hwui.render_dirty_regions=false \
    ro.opengles.version=131072 \
    ro.zygote.disable_gl_preload=1 \
    ro.lcd_brightness=180 \
    ro.lcd_min_brightness=40 \
    ro.sf.lcd_density=240

# FM Radio SNR
PRODUCT_PROPERTY_OVERRIDES += \
    service.brcm.fm.start_snr=41 \
    service.brcm.fm.stop_snr=20

# Misc
PRODUCT_PROPERTY_OVERRIDES += \
    persist.brcm.log=none \
    persist.brcm.ap_crash=none \
    persist.brcm.cp_crash=none \
    persist.brcm.gralloc.force_hdcp=1 \
    ro.tvout.enable=true \
    wifi.interface=wlan0 \
    wifi.supplicant_scan_interval=30

# Dalvik heap
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.heapgrowthlimit=56m

# ART
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.dex2oat-flags=--no-watch-dog

# Disable ADB authentication
ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.adb.secure=0 \
    ro.secure=0
