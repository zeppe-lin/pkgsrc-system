README freetype

---


NOTES
=====

Subpixel Hinting Mode
---------------------

You can set the TrueType interpreter version to control subpixel
hinting:

* `truetype:interpreter-version=35`: Classic mode (default in 2.6).
* `truetype:interpreter-version=38`: Infinality mode.
* `truetype:interpreter-version=40`: Minimal mode (default in 2.7).

Additional properties can be set, separated by whitespace.
See the [FreeType documentation][1] for details.

To apply your settings, edit `/etc/profile`:

    export FREETYPE_PROPERTIES="truetype:interpreter-version=40"

Log out and back in to see the changes.


REFERENCES
==========

[1]: https://freetype.org/freetype2/docs/documentation.html


---

End of file.
