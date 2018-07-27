#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/bootdevice/by-name/recovery:67108864:114c6db36165cab21ac34ef7a6e3e9686a915a5c; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/bootdevice/by-name/boot:67108864:3f8019d322a13d725b5579fc5015952a344ae667 EMMC:/dev/block/platform/bootdevice/by-name/recovery 114c6db36165cab21ac34ef7a6e3e9686a915a5c 67108864 3f8019d322a13d725b5579fc5015952a344ae667:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
