#
# Copyright (C) 2013 The CyanogenMod Project
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

$(call inherit-product, frameworks/native/build/phone-hdpi-dalvik-heap.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Specific overlay
DEVICE_PACKAGE_OVERLAYS += device/lge/msm8610-common/overlay

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:system/etc/permissions/android.hardware.sensor.stepcounter.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepdetector.xml:system/etc/permissions/android.hardware.sensor.stepdetector.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    device/lge/msm8610-common/prebuilt/etc/permissions/com.qualcomm.location.xml:system/etc/permissions/com.qualcomm.location.xml
#    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
#    frameworks/native/data/etc/android.hardware.nfc.hce.xml:system/etc/permissions/android.hardware.nfc.hce.xml \
#    frameworks/native/data/etc/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml

# Configs
PRODUCT_COPY_FILES += \
    device/lge/msm8610-common/prebuilt/etc/wifi/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf \
    device/lge/msm8610-common/prebuilt/etc/wifi/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf \
    kernel/lge/msm8610/drivers/staging/prima/firmware_bin/WCNSS_cfg.dat:system/etc/firmware/wlan/prima/WCNSS_cfg.dat \
    kernel/lge/msm8610/drivers/staging/prima/firmware_bin/WCNSS_qcom_cfg.ini:system/etc/firmware/wlan/prima/WCNSS_qcom_cfg.ini \
    kernel/lge/msm8610/drivers/staging/prima/firmware_bin/WCNSS_qcom_cfg.ini:system/etc/wifi/WCNSS_qcom_cfg.ini \
    device/lge/msm8610-common/prebuilt/etc/wifi/WCNSS_qcom_wlan_nv.bin:system/etc/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin \
    device/lge/msm8610-common/prebuilt/etc/wifi/WCNSS_qcom_wlan_nv.bin:system/etc/wifi/WCNSS_qcom_wlan_nv.bin \
    device/lge/msm8610-common/prebuilt/etc/hostapd/hostapd.accept:system/etc/hostapd/hostapd.accept \
    device/lge/msm8610-common/prebuilt/etc/hostapd/hostapd.deny:system/etc/hostapd/hostapd.deny \
    device/lge/msm8610-common/prebuilt/etc/hostapd/hostapd_default.conf:system/etc/hostapd/hostapd_default.conf \
    device/lge/msm8610-common/prebuilt/etc/audio_policy.conf:system/etc/audio_policy.conf \
    device/lge/msm8610-common/prebuilt/etc/audio_effects.conf:system/etc/audio_effects.conf \
    device/lge/msm8610-common/prebuilt/etc/media_codecs.xml:system/etc/media_codecs.xml \
    device/lge/msm8610-common/prebuilt/etc/media_profiles.xml:system/etc/media_profiles.xml \
    device/lge/msm8610-common/prebuilt/usr/idc/touch_dev.idc:system/usr/idc/touch_dev.idc \
    device/lge/msm8610-common/prebuilt/usr/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
    device/lge/msm8610-common/prebuilt/etc/init.zetaw.fm.sh:system/etc/init.zetaw.fm.sh \
    device/lge/msm8610-common/prebuilt/etc/init.zetaw.ssr.wifi.sh:system/etc/init.zetaw.ssr.wifi.sh \
    device/lge/msm8610-common/prebuilt/etc/init.zetaw.wifi.sh:system/etc/init.zetaw.wifi.sh \
    device/lge/msm8610-common/prebuilt/etc/init.crda.sh:system/etc/init.crda.sh \
    device/lge/msm8610-common/prebuilt/etc/init.zetaw.post_boot.sh:system/etc/init.zetaw.post_boot.sh \
    device/lge/msm8610-common/prebuilt/etc/sap.conf:system/etc/sap.conf \
    device/lge/msm8610-common/prebuilt/etc/gps.conf:system/etc/gps.conf \
    device/lge/msm8610-common/prebuilt/etc/msap.conf:system/etc/msap.conf \
    device/lge/msm8610-common/prebuilt/etc/clatd.conf:system/etc/clatd.conf \
    device/lge/msm8610-common/prebuilt/etc/sec_config:system/etc/sec_config \
    device/lge/msm8610-common/prebuilt/etc/izat.conf:system/etc/izat.conf \
    device/lge/msm8610-common/prebuilt/etc/boot_fixup:system/etc/boot_fixup \
    device/lge/msm8610-common/prebuilt/etc/quipc.conf:system/etc/quipc.conf
#    device/lge/msm8610-common/prebuilt/etc/libnfc-brcm.conf:system/etc/libnfc-brcm.conf \
#    device/lge/msm8610-common/prebuilt/etc/nfc-nci.conf:system/etc/nfc-nci.conf \
#    device/lge/msm8610-common/prebuilt/etc/libnfc-nxp.conf:system/etc/libnfc-nxp.conf \
#    device/lge/msm8610-common/prebuilt/etc/nfcee_access.xml:system/etc/nfcee_access.xml \

# Ramdisk
PRODUCT_COPY_FILES += \
    device/lge/msm8610-common/rootdir/init.class_main.sh:root/init.class_main.sh \
    device/lge/msm8610-common/rootdir/init.lge.early.rc:root/init.lge.early.rc \
    device/lge/msm8610-common/rootdir/init.lge.log.rc:root/init.lge.log.rc \
    device/lge/msm8610-common/rootdir/init.lge.rc:root/init.lge.rc \
    device/lge/msm8610-common/rootdir/init.mdm.sh:root/init.mdm.sh \
    device/lge/msm8610-common/rootdir/init.usb.rc:root/init.usb.rc \
    device/lge/msm8610-common/rootdir/init.msm8610.rc:root/init.msm8610.rc \
    device/lge/msm8610-common/rootdir/init.msm8610.usb.rc:root/init.msm8610.usb.rc \
    device/lge/msm8610-common/rootdir/init.msm8610_product.rc:root/init.msm8610_product.rc \
    device/lge/msm8610-common/rootdir/init.zetaw.bt_vendor.rc:root/init.zetaw.bt_vendor.rc \
    device/lge/msm8610-common/rootdir/init.zetaw.class_core.sh:root/init.zetaw.class_core.sh \
    device/lge/msm8610-common/rootdir/init.zetaw.cmm.usb.sh:root/init.zetaw.cmm.usb.sh \
    device/lge/msm8610-common/rootdir/init.zetaw.early_boot.sh:root/init.zetaw.early_boot.sh \
    device/lge/msm8610-common/rootdir/init.zetaw.factory.sh:root/init.zetaw.factory.sh \
    device/lge/msm8610-common/rootdir/init.zetaw.rc:root/init.zetaw.rc \
    device/lge/msm8610-common/rootdir/init.zetaw.ril.sh:root/init.zetaw.ril.sh \
    device/lge/msm8610-common/rootdir/init.zetaw.sh:root/init.zetaw.sh \
    device/lge/msm8610-common/rootdir/init.zetaw.ssr.sh:root/init.zetaw.ssr.sh \
    device/lge/msm8610-common/rootdir/init.zetaw.syspart_fixup.sh:root/init.zetaw.syspart_fixup.sh \
    device/lge/msm8610-common/rootdir/init.zetaw.usb.rc:root/init.zetaw.usb.rc \
    device/lge/msm8610-common/rootdir/init.zetaw.usb.sh:root/init.zetaw.usb.sh \
    device/lge/msm8610-common/rootdir/ueventd.msm8610.rc:root/ueventd.msm8610.rc \
    device/lge/msm8610-common/prebuilt/etc/init.zetaw.bt.sh:system/etc/init.zetaw.bt.sh 

# TWRP
PRODUCT_COPY_FILES += \
    device/lge/msm8610-common/rootdir/twrp.fstab:recovery/root/etc/twrp.fstab

# Offmode Charging
PRODUCT_PACKAGES += \
    charger_res_w7 \
    charger_w7

# Audio
PRODUCT_PACKAGES += \
    audio.primary.msm8610 \
    audio.a2dp.default \
    audio.usb.default \
    audio.r_submix.default \
    libaudio-resampler \
    libaudioparameter \
    libqcomvisualizer \
    libqcompostprocbundle \
    libqcomvoiceprocessing \
    tinycap \
    tinymix \
    tinypcminfo \
    tinyplay \
    libalsa-intf \
    libaudio-resampler \
    libaudioutils \
    aplay \
    amix \
    arec \
    alsaucm_test

# Misc
PRODUCT_PACKAGES += \
    curl \
    libbson \
    libcurl \
    tcpdump \
    libxml2

# Misc
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

# Crda
PRODUCT_PACKAGES += \
    crda \
    linville.key.pub.pem \
    regdbdump \
    regulatory.bin

# Qcom SoftAP
PRODUCT_PACKAGES += \
    libQWiFiSoftApCfg

# Live Wallpapers
PRODUCT_PACKAGES += \
    LiveWallpapers \
    LiveWallpapersPicker \
    MagicSmokeWallpapers \
    HoloSpiralWallpaper \
    VisualizationWallpapers \
    librs_jni

# Wifi
PRODUCT_PACKAGES += \
    p2p_supplicant_overlay.conf \
    wpa_supplicant_overlay.conf \
    libwcnss_qmi \
    dhcpcd.conf \
    hostapd \
    wpa_supplicant \
    wpa_supplicant.conf

# Charger
PRODUCT_PACKAGES += charger charger_res_images

# QRNGD
PRODUCT_PACKAGES += qrngd

# Ebtables
PRODUCT_PACKAGES += \
    ebtables \
    ethertypes \
    libebtc

# FM radio
PRODUCT_PACKAGES += \
    qcom.fmradio \
    libqcomfm_jni \
    FM2 \
    FMRecord

# GPS
PRODUCT_PACKAGES += \
    gps.msm8610

# HAL
PRODUCT_PACKAGES += \
    copybit.msm8610\
    gralloc.msm8610 \
    hwcomposer.msm8610 \
    keystore.msm8610 \
    lights.msm8610 \
    memtrack.msm8610 \
    power.msm8610

# QRNG
PRODUCT_PACKAGES += qrngp

# Utilities
PRODUCT_PACKAGES += \
    charge_only_mode \
    mkfs.f2fs \
    fsck.f2fs \
    fibmap.f2fs \
    wcnss_service

# EGL config
PRODUCT_COPY_FILES += \
    device/lge/msm8610-common/prebuilt/egl.cfg:system/lib/egl/egl.cfg

# Opengles version 3
PRODUCT_PROPERTY_OVERRIDES += \
    ro.opengles.version=196608

# QCOM Display
PRODUCT_PROPERTY_OVERRIDES += \
    persist.hwc.mdpcomp.enable=true \
    debug.sf.fb_always_on=1 \
    debug.composition.type=gpu \
    debug.gralloc.map_fb_memory=0 \
    debug.hwc.dynThreshold=1.5 \
    dalvik.vm.heapsize=36m \
    dev.pm.dyn_samplingrate=1

# QCOM Display
PRODUCT_PACKAGES += \
    libgenlock \
    libmemalloc \
    liboverlay \
    libqdutils \
    libtilerenderer

# Omx
PRODUCT_PACKAGES += \
    libdivxdrmdecrypt \
    libmm-omxcore \
    libOmxCore \
    libstagefrighthw \
    libOmxVdec \
    libOmxVenc \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxEvrcEnc \
    libOmxQcelp13Enc \
    libdashplayer \
    qcmediaplayer

# Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    e2fsck \
    resize2fs \
    setup_fs

#wifi
PRODUCT_PACKAGES += \
    hostapd.accept \
    hostapd.deny \
    hostapd_default.conf \
    libnetcmdiface

# QCOM
PRODUCT_PROPERTY_OVERRIDES += \
    com.qc.hardware=true

# Audio
PRODUCT_PROPERTY_OVERRIDES += \
    persist.audio.fluence.mode=endfire \
    persist.audio.vr.enable=false \
    persist.audio.handset.mic=digital \
    ro.qc.sdk.audio.ssr=false

# Bluetooth
PRODUCT_PROPERTY_OVERRIDES += \
    ro.bluetooth.hfp.ver=1.6 \
    ro.qualcomm.bluetooth.sap=true \
    ro.qualcomm.bt.hci_transport=smd \
    ro.bluetooth.request.master=true \
    ro.bluetooth.remote.autoconnect=true

# Media
PRODUCT_PROPERTY_OVERRIDES += \
    lpa.decode=true \
    af.resampler.quality=255 \
    persist.audio.lowlatency.rec=false

# WiFi
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.qc.sub.rstrtlvl=3 \
    persist.sys.qc.sub.rdump.on=1 \
    persist.sys.qc.sub.rdump.max=20 \
    wifi.interface=wlan0 \
    wifi.supplicant_scan_interval=15

# Media
PRODUCT_PROPERTY_OVERRIDES += \
    media.stagefright.enable-player=true \
    media.stagefright.enable-http=true \
    media.stagefright.enable-aac=true \
    media.stagefright.enable-qcp=true \
    media.stagefright.enable-fma2dp=true \
    media.stagefright.enable-scan=true \
    mmp.enable.3g2=true \
    ro.audio.fm_max_volume=4096 \
    ro.qualcomm.cabl=0 \
    use.voice.path.for.pcm.voip=false \
    qcom.bt.le_dev_pwr_class=1 \
    ro.qc.sdk.audio.ssr=false \
    persist.audio.fluence.voicecall=false \
    persist.audio.fluence.voicerec=false \
    ro.qc.sdk.audio.fluencetype=none \
    persist.audio.fluence.speaker=false \
    use.voice.path.for.pcm.voip=true \
    use.dedicated.device.for.voip=true \
    audio.offload.buffer.size.kb=32 \
    audio.offload.gapless.enabled=false \
    av.offload.enable=false \
    av.streaming.offload.enable=false \
    audio.offload.pcm.enable=false \
    mm.enable.smoothstreaming=true \
    persist.audio.calfile0=/etc/ACDB/Bluetooth_cal.acdb \
    persist.audio.calfile1=/etc/ACDB/General_cal.acdb \
    persist.audio.calfile2=/etc/ACDB/Global_cal.acdb \
    persist.audio.calfile3=/etc/ACDB/Handset_cal.acdb \
    persist.audio.calfile4=/etc/ACDB/Hdmi_cal.acdb \
    persist.audio.calfile5=/etc/ACDB/Headset_cal.acdb \
    persist.audio.calfile6=/etc/ACDB/Speaker_cal.acdb

# Media codecs
PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml

# Radio and Telephony
PRODUCT_PROPERTY_OVERRIDES += \
    ro.use_data_netmgrd=true \
    ro.ril.transmitpower=true \
    persist.radio.apm_sim_not_pwdn=1 \
    persist.radio.call_type=1 \
    ro.config.vc_call_vol_steps=7 \
    ro.modem.no_wdog_chk=1 \
    persist.call_recording.enabled=1

# NFC packages
#PRODUCT_PACKAGES += \
#    NfcNci \
#    Tag \
#    nfc_nci.w \
#    com.android.nfc_extras

#NFCEE_ACCESS_PATH := device/lge/w/prebuilt/etc/nfcee_access.xml

# Keyhandler
PRODUCT_PACKAGES += \
    com.cyanogenmod.keyhandler

# QC time services
PRODUCT_PROPERTY_OVERRIDES += \
    persist.timed.enable=true

# Enable KSM by default
PRODUCT_PROPERTY_OVERRIDES += \
    ro.ksm.default=1

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

$(call inherit-product, vendor/lge/msm8610-common/msm8610-vendor.mk)

PRODUCT_PROPERTY_OVERRIDES += \
    rild.libpath=/vendor/lib/libril-qc-qmi-1.so \
    rild.libargs=-d[SPACE]/dev/smd0 \
    persist.rild.nitz_plmn="" \
    persist.rild.nitz_long_ons_0="" \
    persist.rild.nitz_long_ons_1="" \
    persist.rild.nitz_long_ons_2="" \
    persist.rild.nitz_long_ons_3="" \
    persist.rild.nitz_short_ons_0="" \
    persist.rild.nitz_short_ons_1="" \
    persist.rild.nitz_short_ons_2="" \
    persist.rild.nitz_short_ons_3="" \
    ril.subscription.types=NV,RUIM \
    DEVICE_PROVISIONED=1 \
    persist.radio.msgtunnel.start=false \
    telephony.lteOnCdmaDevice=0 \
    ro.telephony.default_network=0 \
    ro.ril.enable.amr.wideband=1 \
    ro.lge.proximity.delay=25 \
    ro.telephony.call_ring.delay=0 \
    persist.radio.adb_log_on=1 \
    persist.radio.qcril_am_enabled=1 \
    wlan.chip.vendor=qcom \
    wlan.chip.version=wcn \
    wifi.lge.patch=true \
    wifi.lge.sleeppolicy=0 \
    wifi.lge.offdelay=false \
    wlan.lge.concurrency=MCC \
    wlan.lge.supportsimaka=YES \
    wifi.lge.hanglessid=false \
    drm.service.enabled=true \
    persist.lg.data.autoprof.msim=true \
    persist.cne.feature=1 \
    mmp.enable.3g2=true \
    media.aac_51_output_enabled=true \
    mm.enable.smoothstreaming=true \
    mm.enable.qcom_parser=37491 \
    vidc.debug.level=0 \
    ro.qualcomm.sensors.qmd=false \
    ro.qc.sdk.sensors.gestures=true \
    ro.qualcomm.sensors.pedometer=false \
    ro.qc.sensors.step_detector=true \
    ro.qc.sensors.step_counter=true \
    ro.qualcomm.sensors.pam=true \
    ro.qualcomm.sensors.scrn_ortn=true \
    ro.qualcomm.sensors.smd=true \
    ro.qualcomm.sensors.game_rv=false \
    ro.qualcomm.sensors.georv=true \
    ro.qc.sensors.smgr_mag_cal_en=false \
    ro.qc.sensors.max_grav_no_gyro=50 \
    ro.qc.sensors.max_geomag_rotvec=50 \
    debug.qualcomm.sns.hal=1 \
    debug.qualcomm.sns.daemon=e \
    debug.qualcomm.sns.libsensor1=e \
    persist.sys.ssr.restart_level=3 \
    persist.sys.strictmode.disable=true \
    persist.sys.logkit.ctrlcode=0 \
    ro.lge.irrc.type=sw \
    persist.debug.wfd.enable=1 \
    persist.sys.wfd.virtual=0 \
    tunnel.audio.encode=true \
    persist.gsm.sms.forcegsm7=1 \
    ro.qc.sdk.izat.premium_enabled=1 \
    ro.qc.sdk.izat.service_mask=0x0 \
    persist.gps.qc_nlp_in_use=0 \
    ro.gps.agps_provider=1 \
    persist.qcril.disable_retry=true \
    persist.service.crash.enable=0 \
    ro.config.vc_call_vol_steps=6 \
    persist.data.sbp.update=0 \
    persist.radio.rat_on=legacy \
    camera2.portability.force_api=1 \
    ro.lge.proximity.delay=25 \
    ro.telephony.ril_class=LgeRIL

# CmUpdater
PRODUCT_PROPERTY_OVERRIDES += \
cm.updater.uri=http://vasy.ru/CyanogenModOTA/api
