#!/bin/sh

# This script is a placeholder designed to be replaced when this
# software has been customized for distribution.  It should be
# symlinked linked to the distribution's update-ca-certificates or
# update-ca-trust command as appropriate.  In the future this script
# will be called when the PKCS#11 trust module is used to modify trust
# anchors and related data.

if [ $# -ne 0 ]; then
	echo "usage: $0" >&2
	exit 2
fi

uid=$(id -u)
if [ "$uid" != 0 ]; then
        echo "trust: running as non-root user: skip extracting compat bundles" >&2
        exit 0
fi

# Copy existing anchor modifications to /etc/ssl/local.
/usr/lib/make-ca/copy-trust-modifications

# Generate a new trust store.
/usr/sbin/make-ca -f -g

# End of file.
