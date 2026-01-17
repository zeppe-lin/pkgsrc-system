README openvpn

---


KERNEL CONFIGURATION
====================

Enable **Universal TUN/TAP device driver support** in your kernel:

    Device Drivers  --->
      [*] Network device support  --->
        [*] Network core driver support
        <*> Universal TUN/TAP device driver support      [CONFIG_TUN]


KERNEL MODULE
=============

If the device driver is compiled as a loadable module, autoload it by
adding this to `/etc/rc.modules`:

    # Universal TUN/TAP device driver.
    /sbin/modprobe tun


---

End of file.
