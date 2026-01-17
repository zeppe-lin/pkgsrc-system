README alsa-utils

---


POST-INSTALL
============

`alsa-utils` includes an rc.d service script at `/etc/rc.d/alsa`.  To
automatically save and restore mixer levels at shutdown and boot, add
`alsa` to `SERVICES` in `/etc/rc.conf`.

If mixer levels haven't been saved, the service script may throw this
error:

    alsactl: load_state:1677: Cannot open /var/lib/alsa/asound.state
        for reading: No such file or directory

Fix this by running:

    alsactl store


---

End of file.
