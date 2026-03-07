#!/bin/sh
if   [ -x /usr/bin/pinentry-qt5    ]; then
	exec /usr/bin/pinentry-qt5    "$@"
elif [ -x /usr/bin/pinentry-qt     ]; then
	exec /usr/bin/pinentry-qt     "$@"
elif [ -x /usr/bin/pinentry-gtk-2  ]; then
	exec /usr/bin/pinentry-gtk-2  "$@"
elif [ -x /usr/bin/pinentry-gnome3 ]; then
	exec /usr/bin/pinentry-gnome3 "$@"
elif [ -x /usr/bin/pinentry-curses ]; then
	exec /usr/bin/pinentry-curses "$@"
else
	echo "error: no pinentry binary available" 1>&2
	exit 1
fi
