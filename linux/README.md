README linux

---


PRE-INSTALL
===========

The current `pre-install` script removes old initramfs if mkinitramfs and
linux packages are already installed.  The path is:

    /boot/initramfs-$KERNEL_VERSION.img

This is a preliminary step for `post-install` script, which will generate the
new one.


POST-INSTALL
============

Since the linux package is installed/upgraded, the `post-install` script
prepares the new initramfs if mkinitramfs is installed.  Also it updates the
GRUB configuration file (`/boot/grub/grub.cfg`) if grub2 package is installed.


UPGRADE
=======

Since the upgrade will remove the current working kernel and its modules, you
may like to lock the Linux package and not upgrade it during regular system
upgrades.  If you plan not to turn off the computer for a long time, it is
better to do this and update the kernel separately through `pkgman-update(8)`
at a time that suits you.  See `pkgman-lock(8)` for more information about
package locking.


---

End of file.
