#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:28994760:c9144db915e8eddfa7992e6be224d98db39e7046; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:21624004:5486d5c137d472ae680e228dffbe27aa7bc6e2f7 EMMC:/dev/block/bootdevice/by-name/recovery c9144db915e8eddfa7992e6be224d98db39e7046 28994760 5486d5c137d472ae680e228dffbe27aa7bc6e2f7:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
