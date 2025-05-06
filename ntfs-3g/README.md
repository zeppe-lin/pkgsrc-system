README ntfs-3g

---


KERNEL CONFIGURATION
====================

Enable these options and recompile the kernel if needed:

    File systems  --->
      <*/M> FUSE (Filesystem in Userspace) support
            [CONFIG_FUSE_FS]

NTFS3
=====

Linux kernel 5.15 introduced NTFS3, a faster NTFS read-write driver.  To enable
it, configure the kernel as follows:

    File systems  --->
      <*/M> NTFS Read-Write file system support
            [CONFIG_NTFS3_FS]

To ensure NTFS3 is used when mounting NTFS partitions, create a wrapper script,
named `/usr/sbin/mount.ntfs`:

    #!/bin/sh
    exec mount -t ntfs3 "$@"

Make it executable:

    sudo chmod 0755 /usr/sbin/mount.ntfs

With the kernel support available, `ntfs-3g` is only needed if you require its
utilities (e.g., to create NTFS filesystems).


USER MOUNT
==========

To allow ordinary users to mount NTFS partitions, set `mount.ntfs` with the
root UID:

    sudo chmod -v 4755 /sbin/mount.ntfs

**NOTE**:
It is probably unsafe to do this on a computer that needs to be secure!


---

End of file.
