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

`openvpn` requires the **tun** module to create virtual interfaces.

Load manually:

```
# as root
/sbin/modprobe tun
```

Load automatically at boot:

- Add `tun` to `/etc/modules-load.d/*.conf`, or
- Add `/sbin/modprobe tun` to `/etc/rc.modules`.

This package does not install a default config; administrators should
add modules as needed by their hardware or usage.

---

End of file.
