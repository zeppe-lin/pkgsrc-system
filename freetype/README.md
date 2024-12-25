README freetype

---


SUBPIXEL HINTING MODE
=====================

Subpixel hinting mode can be chosen by setting the right TrueType interpreter
version.  The available settings are:

* `truetype:interpreter-version=35`: Classic mode (default in 2.6).
* `truetype:interpreter-version=38`: Infinality mode.
* `truetype:interpreter-version=40`: Minimal mode (default in 2.7).

There are more properties that can be set, separated by whitespace.  Please
refer to the [FreeType documentation][1] for details.

To enable your settings edit `/etc/profile` and add something like that:

```sh
export FREETYPE_PROPERTIES="truetype:interpreter-version=40"
```

Logout then in to see the change.

[1]: https://freetype.org/freetype2/docs/documentation.html


---

End of file.
