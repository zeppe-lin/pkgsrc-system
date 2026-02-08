README for cpufrequtils

---

REQUIREMENTS
============

Kernel Module
-------------

`cpufrequtils` interacts with CPU scaling drivers and governors.
Which modules are needed depends on your hardware and policy.

Examples:
- Driver: `acpi-cpufreq` (AMD/Intel), `intel_pstate` (modern Intel)
- Governors: `cpufreq_ondemand`, `cpufreq_powersave`, `schedutil`

Load manually:

```sh
# as root
/sbin/modprobe <module>
```

Load automatically at boot:

- Add module names to `/etc/modules-load.d/*.conf` (one per line), or
- Add `/sbin/modprobe <module>` lines to `/etc/rc.modules`

This package does not install a default config; administrators should
add modules as needed by their hardware or usage.

---

REFERENCES
==========

- [CPU Performance Scaling - The Linux Kernel documentation](https://www.kernel.org/doc/html/v5.1/admin-guide/pm/cpufreq.html#cpu-performance-scaling)

---

End of file.
