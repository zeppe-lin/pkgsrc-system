README wpa-supplicant


KERNEL CONFIGURATION
====================

Enable the following options in the kernel configuration as well as specific
device drivers for your hardware and recompile the kernel if necessary:

	[*] Networking support  --->                              [CONFIG_NET]
	  [*] Wireless  --->                                 [CONFIG_WIRELESS]
	    <*/M> cfg80211 - wireless configuration API      [CONFIG_CFG80211]
	    [*]     cfg80211 wireless extensions compatibility
	                                                [CONFIG_CFG80211_WEXT]
	    <*/M> Generic IEEE 802.11 Networking Stack (mac80211)
	                                                     [CONFIG_MAC80211]
	  Device Drivers  --->
	    [*] Network device support  --->               [CONFIG_NETDEVICES]
	      [*] Wireless LAN  --->                             [CONFIG_WLAN]

Open the submenu and select the options that support your hardware: lspci from
pciutils can be used to view your hardware configuration.


POST-INSTALL
============

1. Create a network setup for wpa_supplicant:

	wpa_passphrase <ssid> <your_secret> |
		sudo tee /etc/wpa_supplicant.conf

   See the sample configuration file  wpa_supplicant.conf  in the sources for
   a complete description of the available options for wpa_supplicant.

2. Change your wlan start script to use wpa_supplicant.

   Following an example for the centrino ipw2100 driver, no need to do
   anything with iwconfig:

	sudo modprobe ipw2100
	sudo ifconfig eth1 xxx.xxx.xxx.xxx netmask 255.255.255.xxx
	sudo route add default gw xxx.xxx.xxx.xxx
	sudo wpa_supplicant -B -Dnl80211 -ieth1 -c/etc/wpa.conf

   NOTE!  The above configuration makes use of the generic nl80211
   wpa_supplicant driver, which is the preferred nowadays and supersedes the
   wext (wireless extensions) driver.


End of file.
