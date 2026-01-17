README iw

---


KERNEL CONFIGURATION
====================

Ensure the kernel has the necessary drivers and bus support.
For older laptops, enable:

    Device Drivers --->
      <*/M> PCMCIA                                    [CONFIG_PCCARD]
      <*/M> CardBus host bridge                        [CONFIG_YENTA]

For embedded cards, PCMCIA may also be required.

Wireless drivers are located under:

    Device Drivers --->
      Network Device Support --->
        Wireless LAN (non-hamradio)

Some wireless cards need external drivers.
Check [user notes][1] for details.


REFERENCES
==========

[1]: https://wireless.docs.kernel.org/en/latest/


---

End of file.
