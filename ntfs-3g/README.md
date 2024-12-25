README ntfs-3g

---


KERNEL CONFIGURATION
====================

Enable the following options in the kernel configuration and recompile the
kernel if necessary:

    File systems  --->
      <*/M> FUSE (Filesystem in Userspace) support        [CONFIG_FUSE_FS]


NTFS3
-----

A new read-write driver for NTFS, called NTFS3, has been added into the Linux
kernel since the 5.15 release.  The performance of NTFS3 is much better than
ntfs-3g.  To enable NTFS3, enable the following options in the kernel
configuration and recompile the kernel if necessary:

    File systems  --->
      <*/M> NTFS Read-Write file system support          [CONFIG_NTFS3_FS]

To ensure the mount command uses NTFS3 for ntfs partitions, create a wrapper
script, named `/usr/sbin/mount.ntfs`:

    #!/bin/sh
    exec mount -t ntfs3 "$@"

Make it executable:

    sudo chmod 0755 /usr/sbin/mount.ntfs

With the kernel support available, ntfs-3g is only needed if you need the
utilities from it (for example, to create NTFS filesystems).


USER MOUNT
==========

If you want ordinary users to be able to mount NTFS partitions you'll need to
set `mount.ntfs` with the root user ID.

**NOTE**:
It is probably unsafe to do this on a computer that needs to be secure !

    sudo chmod -v 4755 /sbin/mount.ntfs


---

End of file.
