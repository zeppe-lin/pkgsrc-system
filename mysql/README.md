README mysql

---


PRECAUTION
==========

With the default configuration networking support for mysql is disabled,
meaning the mysql daemon is accessable from localhost only.  To add networking
support comment out the `skip-networking` line in `/etc/my.cnf`.


UPGRADE
=======

If you upgrade from mysql 5.6.x you must recompile the other packages on your
system that are linked against the mysql client libraries (libmysqlclient).
To obtain such a list of packages for your system, you may use the command
`pkgman rdep mysql` or use `revdep(1)`.


POST-INSTALL
============

Build the system database in `/var/lib/mysql`:

    mysql_install_db

Add new privileges and features to the MySQL privilege tables if you have
databases created with older versions of mysql:

    mysql_upgrade

Set a password for the mysql root user:

    mysqladmin -u root password <mysql_root_password>


---

End of file.
