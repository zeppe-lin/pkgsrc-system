#!/bin/sh

# This script is a placeholder designed to be replaced when this
# software has been customized for distribution.  It should be
# symlinked linked to the distribution's update-ca-certificates or
# update-ca-trust command as appropriate.  In the future this script
# will be called when the PKCS#11 trust module is used to modify trust
# anchors and related data.

set -e

if [ "$(id -u)" -ne 0 ]; then
	echo "$0: must be run as root" >&2
	exit 1
fi

# Copy existing anchor modifications to /etc/ssl/local.
/usr/lib/make-ca/copy-trust-modifications

# Generate a new trust store.
/usr/sbin/make-ca -f -g

# End of file.
