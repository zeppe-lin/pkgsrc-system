README mkinitramfs

---


KERNEL CONFIGURATION
====================

For manual kernel setup, ensure these features are enabled (either
statically or as modules):

    General setup --->
      [*] Initial RAM filesystem and RAM disk (initramfs/initrd)
          support                             [CONFIG_BLK_DEV_INITRD]

    Device Drivers --->
      Generic Driver Options --->
        [*] Maintain a devtmpfs filesystem to mount at /dev
                                                    [CONFIG_DEVTMPFS]

To use `mkinitramfs` with an encrypted root, also enable:

    Device Drivers --->
      Multiple devices driver support (RAID and LVM) --->
        [*] Device mapper support
        [*] Crypt target support

    Cryptographic API --->
      <*> XTS support
      <*> SHA224 and SHA256 digest algorithm
      <*> AES cipher algorithms
      <*> AES cipher algorithms (x86_64)
      <*> User-space interface for hash algorithms
      <*> User-space interface for symmetric key cipher algorithms


USAGE
=====

Edit `/etc/mkinitramfs/config` to match your needs.  See
`mkinitramfs.config(5)` for details.  Then, generate the initramfs
image:

    mkinitramfs -o "/boot/initramfs-$(uname -r).img"

Update the bootloader configuration and specify the new initramfs
image:

    initrd /initramfs-${version}.img

For GRUB, `grub-mkconfig` will handle this automatically:

    grub-mkconfig -o /boot/grub/grub.cfg

Reboot.


---

End of file.
