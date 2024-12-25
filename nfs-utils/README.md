README nfs-utils

---


KERNEL CONFIGURATION
====================

Enable the following options in the kernel configuration (choose client and/or
server support as appropriate) and recompile the kernel if necessary:

```
File systems  --->
  [*] Network File Systems  --->
      [CONFIG_NETWORK_FILESYSTEMS]
    <*/M> NFS client support
          [CONFIG_NFS_FS]
    <*/M> NFS server support
          [CONFIG_NFSD]
```

Select the appropriate sub-options that appear when the above options are
selected.


SETUP NFS
=========

This is a very brief description of how to setup the NFS client and server.
It is not intended to be a "Guide", but rather to show the things specific to
Zeppe-Lin.


On Server
---------

Start the required services:

```sh
/etc/rc.d/rpcbind   start
/etc/rc.d/nfs       start
/etc/rc.d/nfsserver start
```

To enable NFS server at boot time, add the following services to
`/etc/rc.conf`:

```sh
SERVICES='... rpcbind nfs nfsserver'
```

Create shared directory (if not existing one), i.e. `/data`:

```sh
mkdir -p /data
```

Export it, add the appropriate line to `/etc/exports`:

```
/data 192.168.1.0/24(ro,no_root_squash,no_subtree_check,insecure)
```

Note that your settings may (and should) differ.  See `exports(5)` for more
information.

Finally, apply changes to this file and restart the NFS server:

```sh
exportfs -ra
/etc/rc.d/nfsserver restart
```

On Client
---------

Create the mount directory (if not existing one), i.e. `/mnt/data`:

```sh
mkdir -p /mnt/data
```

Add server's exports to `/etc/fstab`, replace `SRV_IPADDR` with server's IP
address accordingly:

```
SRV_IPADDR:/data /mnt/data /nfs timeo=14,intr
```

Run the required services:

```sh
/etc/rc.d/rpcbind   start
/etc/rc.d/nfs       start
/etc/rc.d/nfsclient start
```

Add them to `/etc/rc.conf` to run NFS client at boot time.


---

End of file.
