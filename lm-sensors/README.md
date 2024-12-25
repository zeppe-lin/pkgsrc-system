README lm-sensors

---


KERNEL CONFIGURATION
====================

Getting your kernel config right is an iterative process that may require that
you recompile your kernel a couple of times.  The simplest way to go about it
is to start by enabling modules and then compile everything that may be needed
by `lm-sensors` as a module:

```
[*] Enable loadable module support  --->
    [CONFIG_MODULES]

Device Drivers  --->
  [*] PCI support --->
      [CONFIG_PCI]
  I2C support --->
    <*/M> I2C device interface
          [CONFIG_I2C_CHARDEV]
    I2C Hardware Bus support  --->
      <M> (configure all of them as modules)
  <*/M> Hardware Monitoring support  --->
        [CONFIG_HWMON]
    <M> (configure all of them as modules)
```


---

End of file.
