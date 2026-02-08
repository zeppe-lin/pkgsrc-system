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

To auto‑load a driver/governor on boot:

- Declarative: add `cpufreq_ondemand` to
  `/etc/modules-load.d/cpufreq.conf`

- Imperative: add `/sbin/modprobe cpufreq_ondemand` to
  `/etc/rc.modules`

---

REFERENCES
==========

- [CPU Performance Scaling - The Linux Kernel documentation](https://www.kernel.org/doc/html/v5.1/admin-guide/pm/cpufreq.html#cpu-performance-scaling)

---

End of file.
