README cpufrequtils

---


KERNEL MODULE
=============

Add the following lines to `/etc/rc.modules` to autoload modules needed by
`cpufrequtils`:

```sh
# CPUfreq policy governors.
/sbin/modprobe cpufreq_powersave
/sbin/modprobe cpufreq_userspace
```


---

End of file.
