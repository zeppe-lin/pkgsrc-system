README pm-utils

---


NOTES
=====

Some hardware modules can cause issues when suspending.  To unload
these modules, create a file named "default" in `/etc/pm/config.d`:

    SUSPEND_MODULES="button uhci_hcd ehci_hcd iwl3945"


CONFIGURATION
=============

When `pm-utils` are called, hooks are called from
`/usr/lib/pm-utils/sleep.d`.  Additional, user-created hooks can be
placed in `/etc/pm/sleep.d`.  These hooks will take precedence over
those in `/usr/lib/pm-utils/sleep.d`.  For example:

    #!/bin/sh
    case $1 in
    suspend) /etc/rc.d/wifi stop  ;;
     resume) /etc/rc.d/wifi start ;;
          *) echo "Something is broken" >&2 ;;
    esac

Place these commands as "66dummy" (or similar).  To allow this file to
run during suspend:

    sudo chmod +x /etc/pm/sleep.d/66dummy

To suspend to disk, you must append the swap partition in
`/etc/default/grub`:

    GRUB_CMDLINE_LINUX_DEFAULT="resume=/dev/zpln/swap"

For troubleshooting, log files should be available in `/var/log`.

If a hook is causing issues, create an empty equivalent in
`/etc/pm/sleep.d/`:

    sudo touch /etc/pm/sleep.d/55NetworkManager


KERNEL CONFIGURATION
====================

If needed, enable the following options in the kernel configuration
and recompile the kernel:

    Power management and ACPI options --->
      <*> Suspend to RAM and standby                 [CONFIG_SUSPEND]
      <*> Hibernation (aka 'suspend to disk')    [CONFIG_HIBERNATION]

Suspend to RAM allows the system to enter sleep states in which main
memory is powered and thus its contents are preserved.  The method
cuts power to most parts of the machine aside from the RAM.  Because
of the large power savings, it is advisable for laptops to
automatically enter this mode when the computer is running on
batteries and the lid is closed (or the user is inactive for some
time).

Suspend to disk (Hibernation) saves the machine's state into swap
space and completely powers off the machine.  When the machine is
powered on, the state is restored.  Until then, there is zero power
consumption.  Suspend to RAM and hibernation are normally appropriate
for portable devices such as laptops, but can be used on workstations.
The capability is not really appropriate for servers.

To use hibernation, the kernel parameter

    resume=/dev/<swap_partition>

has to be used on the kernel command line (in `grub.cfg`).  The swap
partition should be at least the size of the physical RAM on the
system.


---

End of file.
