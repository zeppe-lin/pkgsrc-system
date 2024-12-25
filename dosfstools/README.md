README dosfstools

---


KERNEL CONFIGURATION
====================

Enable the following option in the kernel configuration and recompile the
kernel:

```
File systems --->
  <DOS/FAT/EXFAT/NT Filesystems --->
    <*/M> MSDOS fs support
          [CONFIG_MSDOS_FS]
    <*/M> VFAT (Windows-95) fs support
          [CONFIG_VFAT_FS]
```

**NOTE:** `CONFIG_MSDOS_FS` deliberately unsupport long file names.
`CONFIG_VFAT_FS` should be used instead unless you really want to enforce the
DOS-style "8.3" file names.


---

End of file.
