README postgres

---


UPGRADING FROM A PREVIOUS VERSION
=================================

If upgrading from a non-compatible version (ie 8.0.x >> 8.1.x  or
8.x.y >> 9.a.b) be sure to dump the databases before upgrading and
restore them later.

Example: (for your convenience, there could be better ways to achieve
this)

    sudo pg_dumpall -U postgres > pg.dump
    sudo /etc/rc.d/postgresql stop

    sudo mv /var/pgsql/data /var/pgsql/data-backup
    sudo mkdir /var/pgsql/data
    sudo chown postgres /var/pgsql/data

    sudo -u postgres initdb -D /var/pgsql/data

    sudo /etc/rc.d/postgresql start
    sudo psql -U postgres -f pg.dump postgres

Do not forget to update/copy old config files to `/var/pgsql/data`.


NEW INSTALL
===========

To complete the installation and create a test database you need to do
some additional steps or use the included post-install script.

    sudo useradd -m -d /home/postgres -s /bin/false postgres
    sudo passwd -l postgres

    sudo mkdir -p /var/pgsql/data
    sudo touch /var/log/postgresql
    sudo chown postgres /var/pgsql/data /var/log/postgresql

    sudo sudo -u postgres initdb -D /var/pgsql/data

    sudo /etc/rc.d/postgresql start
    sudo -u postgres createdb test
    sudo psql -U postgres test

Edit `/etc/cron/weekly/syslog` as root and add the line
`/usr/sbin/rotatelog postgresql`.

The complete installation instructions are located here:
http://www.postgresql.org/docs/current/interactive/installation.html


---

End of file.
