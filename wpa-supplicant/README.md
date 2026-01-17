README wpa-supplicant

---


KERNEL CONFIGURATION
====================

Enable these options along with device-specific drivers, then
recompile the kernel if needed:

    [*] Networking support  --->                         [CONFIG_NET]
      [*] Wireless  --->                            [CONFIG_WIRELESS]
        <*/M> cfg80211 - wireless configuration API [CONFIG_CFG80211]
        [*]   cfg80211 wireless extensions compatibility
                                               [CONFIG_CFG80211_WEXT]
        <*/M> Generic IEEE 802.11 Networking Stack (mac80211)
                                                    [CONFIG_MAC80211]
      Device Drivers  --->
        [*] Network device support  --->          [CONFIG_NETDEVICES]
          [*] Wireless LAN  --->                        [CONFIG_WLAN]

Open the submenu and select the options that support your hardware:
`lspci` from `pciutils` package can be used to view your hardware
configuration.


REFERENCES
==========

The Zeppe-Lin Handbook has a brief documentation that describes a
wireless network configuration:

* https://zeppe-lin.github.io/handbook.html#wireless-network


---

End of file.
