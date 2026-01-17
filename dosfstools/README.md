README dosfstools

---


KERNEL CONFIGURATION
====================

Enable the following option and recompile the kernel if needed:

    File systems --->
      <DOS/FAT/EXFAT/NT Filesystems --->
        <*/M> MSDOS fs support                      [CONFIG_MSDOS_FS]
        <*/M> VFAT (Windows-95) fs support           [CONFIG_VFAT_FS]

**NOTE:**
`CONFIG_MSDOS_FS` does not support long file names.
Use `CONFIG_VFAT_FS` unless you specifically need DOS-style 8.3
filenames.


---

End of file.
