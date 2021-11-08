#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:36875564:d82bdaa30e39723ee40c2f89fc477e72388e4dc2; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:33129768:0116d04831ea75d6adc4226e3c49e4c4fd06b7bd EMMC:/dev/block/bootdevice/by-name/recovery d82bdaa30e39723ee40c2f89fc477e72388e4dc2 36875564 0116d04831ea75d6adc4226e3c49e4c4fd06b7bd:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
