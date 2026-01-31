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

To auto‑load a governor, create a file such as:

```
/etc/modules-load.d/cpufreq.conf
```

with:

```
cpufreq_ondemand
```

The package does not install a default config, since requirements vary
by machine.

---

REFERENCES
==========

- [CPU Performance Scaling - The Linux Kernel documentation](https://www.kernel.org/doc/html/v5.1/admin-guide/pm/cpufreq.html#cpu-performance-scaling)

---

End of file.
