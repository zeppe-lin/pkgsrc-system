README iw

---


KERNEL CONFIGURATION
====================

To use iw, the kernel must have the appropriate drivers and other support
available.  The appropriate bus must also be available.  For older laptops,
the PCMCIA bus (`CONFIG_PCCARD`) needs to be built.  In some cases, this bus
support will also need to be built for embedded iw cards.  The appropriate
bridge support also needs to be built.  For many modern laptops, the CardBus
host bridge (`CONFIG_YENTA`) will be needed.

In addition to the bus, the actual driver for the specific wireless card must
also be available.  There are many wireless cards and they don't all work with
Linux.  The first place to look for card support is the kernel.  The drivers
are located at the following:

```
Device Drivers -> Network Device Support -> Wireless LAN (non-hamradio)
```

There are also external drivers available for some very common cards.  For more
information, look at the user notes.


---

End of file.
