#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:29857068:1b07fb31cdac83a72879b7dd4a9f206239b51930; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:17245480:0380831a2fb2931e3dcd35dae626a0510a4b0c1b EMMC:/dev/block/bootdevice/by-name/recovery 1b07fb31cdac83a72879b7dd4a9f206239b51930 29857068 0380831a2fb2931e3dcd35dae626a0510a4b0c1b:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
