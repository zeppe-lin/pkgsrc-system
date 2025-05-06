README lighttpd

---


POST-INSTALL
============

`lighttpd` runs as a different user (`lighttpd`) by default for security
reasons.  Do the following after installing the package:

    sudo useradd -s /bin/false lighttpd
    sudo groupadd lighttpd
    sudo touch /var/www/logs/access_log
    sudo touch /var/www/logs/error_log
    sudo chown lighttpd:lighttpd /var/www/logs/*

If you wish to enable SSL support, uncomment the relevant lines in
`/etc/lighttpd.conf` and generate a self-signed certificate:

    sudo openssl req -new -x509              \
        -keyout /etc/ssl/certs/lighttpd.pem  \
        -out    /etc/ssl/certs/lighttpd.pem  \
        -days 365 -nodes


CAUTION
=======

As of `lighttpd` 1.4.23 `spawn-fcgi` was removed and is now provided as a
[separate project][1].

[1]: http://redmine.lighttpd.net/projects/spawn-fcgi


---

End of file.
