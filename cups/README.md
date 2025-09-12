README for cups 2.x.x

---


REQUIREMENTS
============

1. Since version 1.5, CUPS requires `libusb` for USB printing.  The `usblp`
   kernel module is no longer supported.

   * The package installs `/etc/modprobe.d/cups.conf` to blacklist `usblp`.

2. For additional printer drivers, install:

   * `gutenprint` (formerly `gimp-print`)
   * `hpcups` (for HP DeskJet/LaserJet)

3. Build and install in the following order:
   * `cups`
   * `ghostscript`
   * `cups-filters`
   * `gutenprint` (*optional*)
   * `hpcups` (*optional*)

Most printers should work with this setup.  If a printer isn't supported,
generate a PPD (Postscript Printer Description) file:

1. Select your printer from [Open Printing](https://openprinting.org/printers).
2. Ensure the driver is included in `ghostscript`
   (`gs -h` lists available drivers).
3. Download the PPD file for your printer.
4. Save the PPD file to `/usr/share/cups/model/<name>`.
5. Restart CUPS with `/etc/rc.d/cups restart`.


KERNEL MODULE
=============

Notes on USB printers
---------------------

CUPS uses the `usb` backend and does not require the kernel `usblp` module.  To
avoid conflicts, this package installs a `modprobe.d` configuration that
blacklists `usblp`:

    /lib/modprobe.d/cups-blacklist-usblp.conf

Administrators who prefer using the kernel `usblp` driver can override this by
creating a file in `/etc/modprobe.d/` that removes the blacklist.


POST-INSTALL
============

1. Remove the `usblp` kernel module before starting CUPS.
2. Configure your printer with the [web-interface](http://localhost:631).


---

End of file.
