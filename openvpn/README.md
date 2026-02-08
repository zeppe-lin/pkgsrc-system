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

- Declarative: add `tun` to `/etc/modules-load.d/tun.conf`
- Imperative: add `/sbin/modprobe tun` to `/etc/rc.modules`

---

End of file.
