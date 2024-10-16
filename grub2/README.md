README grub2


POST-INSTALL
============

Once the grub2 package is installed, the boot loader itself can be installed
like so:

	sudo grub-install /dev/<device>

For example, to install grub2 into the master boot record of the first SCSI or
SATA drive:

	sudo grub-install /dev/sda

To install to the second partition of the first SCSI or SATA drive instead of
the MBR:

	sudo grub-install /dev/sda2

For EFI setup, you need to install grub2-efi package and specify the --target
and the  --efi-directory  option arguments:

	sudo grub-install --target=x86_64-efi --efi-directory=/boot /dev/sda

A configuration menu file is required for grub2 to do more than display a
command line.  It can be created automatically using the grub-mkconfig command
like so:

	sudo grub-mkconfig -o /boot/grub/grub.cfg

The file /etc/default/grub controls the operation of grub-mkconfig utility.
The typical usage is:

	GRUB_TIMEOUT=3
	GRUB_DISTRIBUTOR=Zeppe-Lin
	GRUB_CMDLINE_LINUX_DEFAULT="quiet resume=/dev/mapper/swap"

See the following URL for more information:
https://www.gnu.org/software/grub/manual/grub/html_node/Simple-configuration.html

For grub-mkconfig to work properly the following conditions should be met:

1) The kernel is expected to be named one of these ways:

	/boot/vmlinuz-*  /vmlinuz-*  /boot/kernel-*

If the kernel is located somewhere else grub-mkconfig will NOT find it!  For
example, '/boot/vmlinuz-3.10.28' is good and '/boot/linux-3.10.28' would not
be found.

2) When dual-booting with Linux installations on other partitions or drives,
grub-mkconfig will not find them without the extra program 'os-prober'
installed.

The configuration file can also be created manually.  A sample grub.cfg is
included in the package source:

	pkgman cat grub2 grub.cfg.sample


End of file.
