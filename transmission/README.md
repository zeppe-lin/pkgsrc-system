README transmission

---


CAUTION
=======

If you've modified defaults in `/etc/rc.d/transmission` (e.g., running
under a specific user), prevent data loss during updates by adding
this line to `/etc/pkgadd.conf`:

    UPGRADE    ^/etc/rc.d/transmission$    NO


---

End of file.
