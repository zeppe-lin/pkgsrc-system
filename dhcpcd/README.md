README dhcpcd

---


TROUBLESHOOTING
===============

Carrier Lost
------------

In case you get on the system start the `dhcpcd[ERROR]` and `/var/log/messages`
contains something like:

    dhcpcd[2464]: enp0s31f6: carrier lost

or even:

    dhcpcd[849]: dhcpcd-10.0.8 starting
    dhcpcd[852]: enp0s31f6: waiting for carrier
    dhcpcd[852]: enp0s31f6: carrier acquired
    dhcpcd[852]: enp0s31f6: soliciting an IPv6 router
    dhcpcd[852]: enp0s31f6: Router Advertisement from fe80::1
    dhcpcd[852]: enp0s31f6: no global addresses for default route
    dhcpcd[852]: timed out
    dhcpcd[852]: dhcpcd exited
    dhcpcd: timed out

Try adding to `/etc/dhcpcd/dhcpcd.conf` the following options:

- `nolink`  Don't receive link messages about carrier status.  You should only
            set this for buggy interface  drivers.

- `noipv6`  Don't solicit or accept IPv6 Router Advertisements and DHCPv6.


Client ID
---------

If you are on a network with DHCPv4 that filters Client IDs based on MAC
addresses, you may need to edit `/etc/dhcpcd/dhcpcd.conf` and change the
following line:

    # Use the same DUID + IAID as set in DHCPv6 for DHCPv4 Client ID as per
    # RFC4361.
    duid

To:

    # Use the hardware address of the interface for the Client ID (DHCPv4).
    clientid

Otherwise, you may not obtain a lease since the DHCP server may not read your
[DHCPv6-style][1] Client ID correctly.  See [RFC 4361][2] for more information.

[1]: https://en.wikipedia.org/wiki/DHCPv6
[2]: https://tools.ietf.org/html/rfc4361


Problems with noncompliant routers
----------------------------------

For some (noncompliant) routers, you will not be able to connect properly
unless you comment the line:

```
require dhcp_server_identifier
```

in `/etc/dhcpcd/dhcpcd.conf`.  This should not cause issues unless you have
multiple DHCP servers on your network (not typical); see [this page][3] for
more information.

[3]: https://technet.microsoft.com/en-us/library/cc977442.aspx


---

End of file.
