#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:29857068:8577d86f46ef3da5701a130f3b5f2a585be62d5c; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:17245480:abd22349e5dea7b3e81cb034e05eb3cdb8548280 EMMC:/dev/block/bootdevice/by-name/recovery 8577d86f46ef3da5701a130f3b5f2a585be62d5c 29857068 abd22349e5dea7b3e81cb034e05eb3cdb8548280:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
