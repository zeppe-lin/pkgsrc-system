README cpufrequtils

---


KERNEL MODULE
=============

To autoload modules needed by `cpufrequtils`, add the following to
`/etc/rc.modules`:

    # CPUfreq policy governors.
    /sbin/modprobe cpufreq_powersave
    /sbin/modprobe cpufreq_userspace


---

End of file.
