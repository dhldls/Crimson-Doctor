# Security

Crimson Doctor is a local Windows desktop utility. It does not require an online account and does not upload telemetry.

Official release files should be downloaded from the official Nexus Mods page or the GitHub Releases page for this repository.

## Official v1.0.2 Hashes

Release ZIP SHA-256:

```text
d67f807cbe63e17fc5b2075e45daac15e86227f4cf9a2419b5487e296e80f573
```

Executable SHA-256:

```text
5677e84e8aa2afb9af69d9b44bac888bb36ee4d72302c0cba022df6b6c86d319
```

## False Positive Notes

Crimson Doctor v1.0.2 is unsigned. It is packaged as a Python 3.13 / Nuitka / PySide6 Qt standalone Windows application and bundles runtime files so users do not need to install Python.

Some heuristic scanners may flag unsigned standalone modding tools because they scan folders, hash files, inspect logs, create backups, and monitor a user-started launch session.

Crimson Doctor does not use DLL injection, runtime hooks, hidden telemetry, silent downloaders, memory patching, credential collection, background persistence, or privilege escalation.

If you believe a detection is a false positive, submit the official ZIP or executable hash to the detecting vendor for review.

