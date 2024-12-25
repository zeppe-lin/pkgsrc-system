README subversion

---


NOTES
=====

This is a package for the subversion revision control; if you have apache
(version 2.0+) installed, you'll also get the apache modules to run a
subversion server via apache/WebDAV, else you'll still be able to create a
server with the svnserve application.  If you want absolutely no server parts,
add `--without-berkeley-db` to the configure line.

If you're going to install apache later on, you'll need to recompile this
package (solutions to this are already planned).

If you want Python Bindings, install SWIG and comment out the few lines in the
`build()` function


PRE-INSTALL (SERVER)
====================

Make sure you install expat before you install apache; also, note that you'll
get a footprint mismatch.


POST-INSTALL (SERVER)
=====================

Add something like this to your apache configuration:

    LoadModule dav_module         lib/apache/mod_dav.so
    LoadModule dav_svn_module     lib/apache/mod_dav_svn.so
    <Location /svn/repos>
        DAV svn
        SVNPath /home/svnroot

        # Limit write permission to list of valid users.
        <LimitExcept GET PROPFIND OPTIONS REPORT>
            # Require SSL connection for password
            # protection.
            #SSLRequireSSL

            AuthType Basic
            AuthName "Authorization Realm"
            AuthUserFile /absolute/path/to/passwdfile
            Require valid-user
        </LimitExcept>
    </Location>


---

End of file.
