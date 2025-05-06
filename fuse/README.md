README fuse

---


KERNEL CONFIGURATION
====================

Enable these options and recompile the kernel if needed:

    File Systems --->
      <*/M> FUSE (Filesystem in Userspace) support
            [CONFIG_FUSE_FS]

To run tests, also enable:

    File Systems --->
      <*/M> FUSE (Filesystem in Userspace) support
            [CONFIG_FUSE_FS]
      <*/M> Character device in Userspace support
            [CONFIG_CUSE]


---

End of file.
