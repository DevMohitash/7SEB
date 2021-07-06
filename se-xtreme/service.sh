#!/system/bin/sh

# Setup tweaks
BB=/data/adb/magisk/busybox
CLOG=/data/media/0/YourSEchanges.log

kmsg3() {
	echo -e "[*] $@" >> $CLOG
}

$BB cp -rf /data/adb/modules/se-xtreme/system/etc/sextreme/sound_tuner.db /data/data/com.oneplus.sound.tuner/databases/sound_tuner.db

$BB rm -rf /data/adb/modules/se-xtreme/system/etc

kmsg3 $(date) 
kmsg3 "And Helper Worked"
kmsg3 "----"

$BB rm -rf /data/adb/modules/se-xtreme/service.sh