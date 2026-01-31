README for openvpn

---

REQUIREMENTS
============

Kernel Configuration
--------------------

Enable **Universal TUN/TAP device driver support** in your kernel:

```
Device Drivers  --->
  [*] Network device support  --->
    [*] Network core driver support
    <*> Universal TUN/TAP device driver support      [CONFIG_TUN]
```

Kernel Module
-------------

This package needs the **tun** kernel module.

It provides `/lib/modules-load.d/openvpn.conf` for `modules-load(8)`.
The module will be loaded at boot.

- To override: copy to `/etc/modules-load.d/` and edit.
- To disable: symlink `/etc/modules-load.d/openvpn.conf` to
  `/dev/null`.

Legacy `/etc/rc.modules` still works if you prefer manual loading.

---

End of file.
