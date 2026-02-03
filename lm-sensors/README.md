README for lm-sensors

---

REQUIREMENTS
============

Kernel Configuration
--------------------

Getting your kernel config right is an iterative process that may
require that you recompile your kernel a couple of times.  The
simplest way to go about it is to start by enabling modules and then
compile everything that may be needed by `lm-sensors` as a module:

```
Bus options (PCI etc.)  --->
  [*] PCI support                                        [CONFIG_PCI]

[*] Enable loadable module support  --->             [CONFIG_MODULES]

Device Drivers  --->
  I2C support --->
    <*/M> I2C device interface                   [CONFIG_I2C_CHARDEV]
    I2C Hardware Bus support  --->
      <M> (configure all of them as modules)
  <*/M> Hardware Monitoring support  --->              [CONFIG_HWMON]
    <M> (configure all of them as modules)
```

---

CONFIGURATION
=============

Run `sensors-detect` to probe hardware and generate configuration.
It will suggest kernel modules and write
`/etc/modprobe.d/sensors.conf` (if required) and
`/etc/modules-load.d/sensors.conf`.

To apply sensor limits at boot, add `sensors` to the `SERVICES` line
in `/etc/rc.conf`.
If you prefer not to use `modules-load.d` or `/etc/rc.d/sensors`,
add the suggested `modprobe` lines and `sensors -s` call to
`/etc/rc.local`.

---

End of file.
