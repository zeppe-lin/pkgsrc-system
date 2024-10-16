README lvm2

---


KERNEL CONFIGURATION
====================

Enable the following options in the kernel configuration and recompile the
kernel:

    Device Drivers --->
      [*] Multiple devices driver support (RAID and LVM) --->  [CONFIG_MD]
        <*/M> Device mapper support                    [CONFIG_BLK_DEV_DM]
        <*/M> Crypt target support                       [CONFIG_DM_CRYPT]
        <*/M> Snapshot target                         [CONFIG_DM_SNAPSHOT]
        <*/M> Thin provisioning target       [CONFIG_DM_THIN_PROVISIONING]
        <*/M> Cache target                               [CONFIG_DM_CACHE]
        <*/M> Mirror target                             [CONFIG_DM_MIRROR]
        <*/M> Zero target                                 [CONFIG_DM_ZERO]
        <*/M> I/O delaying target                        [CONFIG_DM_DELAY]
      [*] Block devices
        <*/M> RAM block device support                [CONFIG_BLK_DEV_RAM]
    Kernel hacking --->
      Generic Kernel Debugging Instruments --->
        <*> Magic SysRq key                           [CONFIG_MAGIC_SYSRQ]

**NOTE!** There are several other Device Mapper options in the kernel beyond
those listed above.  In order to get reasonable results if running the
regression tests, all must be enabled either internally or as a module.  The
tests will all time out if Magic SysRq key is not enabled.


---

End of file.
