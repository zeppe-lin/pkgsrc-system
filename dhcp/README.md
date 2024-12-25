README dhcp

---


KERNEL CONFIGURATION
====================

You must have Packet Socket support.  IPv6 support is optional.

```
[*] Networking Support --->
    [CONFIG_NET]
      Networking options --->
        <*> Packet socket
            [CONFIG_PACKET]
        <*> The IPv6 Protocol --->
            [CONFIG_IPV6]
```


---

End of file.
