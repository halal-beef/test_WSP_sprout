def FullOTA_InstallEnd(info):
    info.script.AppendExtra('mount("ext4", "EMMC", "/dev/block/platform/bootdevice/by-name/system", "/system_root");')
    info.script.AppendExtra('run_program("/sbin/sed", "-i", "/fuseblk/d", "/system_root/system/etc/selinux/plat_sepolicy.cil");')
    info.script.AppendExtra('run_program("/sbin/sed", "-i", "-e", "s/AT+EAIC=2/AT+EAIC=3/g", "/system_root/system/lib64/libmtk-ril.so");')
    info.script.AppendExtra('unmount("/system_root");')
    
