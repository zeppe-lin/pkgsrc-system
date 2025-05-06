README lvm2

---


KERNEL CONFIGURATION
====================

Enable these options and recompile the kernel if needed:

    Device Drivers --->
      [*] Multiple devices driver support (RAID and LVM)          [CONFIG_MD]
        <*/M> Device mapper support                       [CONFIG_BLK_DEV_DM]
        <*/M> Crypt target support                          [CONFIG_DM_CRYPT]
        <*/M> Snapshot target                            [CONFIG_DM_SNAPSHOT]
        <*/M> Thin provisioning target          [CONFIG_DM_THIN_PROVISIONING]
        <*/M> Cache target                                  [CONFIG_DM_CACHE]
        <*/M> Mirror target                                [CONFIG_DM_MIRROR]
        <*/M> Zero target                                    [CONFIG_DM_ZERO]
        <*/M> I/O delaying target                           [CONFIG_DM_DELAY]
      [*] Block devices
        <*/M> RAM block device support                   [CONFIG_BLK_DEV_RAM]

    Kernel hacking --->
      Generic Kernel Debugging Instruments --->
        <*> Magic SysRq key                              [CONFIG_MAGIC_SYSRQ]

**NOTE:**
Additional Device Mapper options exist beyond those listed.  To run regression
tests properly, enable all necessary options as modules or built-in.  The tests
will time out if Magic SysRq key is not enabled.


---

End of file.
