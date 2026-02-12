README for lighttpd

---

NOTES
=====

As of `lighttpd` 1.4.23 `spawn-fcgi` was removed and is now provided
as a [separate project](http://redmine.lighttpd.net/projects/spawn-fcgi).

---

POST-INSTALL
============

`lighttpd` runs as a different user (`lighttpd`) by default for
security reasons.  Do the following after installing the package:

```sh
# as root
useradd -s /bin/false lighttpd
groupadd lighttpd
touch /var/www/logs/access_log
touch /var/www/logs/error_log
chown lighttpd:lighttpd /var/www/logs/*
```

If you wish to enable SSL support, uncomment the relevant lines in
`/etc/lighttpd.conf` and generate a self-signed certificate:

```sh
# as root
openssl req -new -x509 \
    -keyout /etc/ssl/certs/lighttpd.pem \
    -out    /etc/ssl/certs/lighttpd.pem \
    -days 365 -nodes
```

---

End of file.
