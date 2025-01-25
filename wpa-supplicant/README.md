README wpa-supplicant

---


KERNEL CONFIGURATION
====================

Enable the following options in the kernel configuration as well as specific
device drivers for your hardware and recompile the kernel if necessary:

```
[*] Networking support  --->
    [CONFIG_NET]
  [*] Wireless  --->
      [CONFIG_WIRELESS]
    <*/M> cfg80211 - wireless configuration API
          [CONFIG_CFG80211]
    [*]   cfg80211 wireless extensions compatibility
          [CONFIG_CFG80211_WEXT]
    <*/M> Generic IEEE 802.11 Networking Stack (mac80211)
          [CONFIG_MAC80211]
  Device Drivers  --->
    [*] Network device support  --->
        [CONFIG_NETDEVICES]
      [*] Wireless LAN  --->
          [CONFIG_WLAN]
```

Open the submenu and select the options that support your hardware: `lspci`
from `pciutils` package can be used to view your hardware configuration.


NETWORK CONFIGURATION
=====================

The `handbook` package has a brief documentation that describes a wireless
network configuration for Zeppe-Lin.

It can be viewed [online][1] or locally by the following command:

```sh
LESS='-p Wireless network' man handbook
```

[1]: https://zeppe-lin.github.io/handbook.7.html#Wireless-network


---

End of file.
