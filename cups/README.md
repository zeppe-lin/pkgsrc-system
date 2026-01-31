README for cups 2.x.x

---


REQUIREMENTS
============

1. **USB support**
   Since version 1.5, CUPS requires `libusb` for USB printing.

2. **Additional printer drivers**
   - `gutenprint` (formerly *gimp-print*)
   - `hpcups` (for HP DeskJet / LaserJet)

3. **Build and install order**
   - `cups`
   - `ghostscript`
   - `cups-filters`
   - `gutenprint` (optional)
   - `hpcups` (optional)

Most printers should work with this setup.
If a printer is not supported, generate a
**PPD (Postscript Printer Description)** file:

- Select your printer from [Open Printing](https://openprinting.org/printers).
- Ensure the driver is included in `ghostscript`
  (`gs -h` lists available drivers).
- Download the PPD file for your printer.
- Save the PPD file to `/usr/share/cups/model/<name>`.
- Restart CUPS with `/etc/rc.d/cups restart`.

USB Kernel Module
-----------------

Since version 1.5, CUPS uses the `usb` backend (`libusb`) and does not
require the kernel `usblp` module.  If `usblp` is loaded, it may claim
the USB printer device and prevent CUPS from accessing it.

To avoid this conflict, this package installs a `modprobe.d`
configuration that blacklists `usblp`:

    /lib/modprobe.d/cups-blacklist-usblp.conf

Administrators who prefer using the kernel `usblp` driver can shadow
the package's setting by creating:

    /etc/modprobe.d/cups-blacklist-usblp.conf

Files in `/etc/modprobe.d/` override those in `/lib/modprobe.d/`.


POST-INSTALL
============

1. Remove the `usblp` kernel module before starting CUPS.
2. Configure your printer with the [web-interface](http://localhost:631).


---

End of file.
