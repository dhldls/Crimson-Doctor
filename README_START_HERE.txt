Crimson Doctor 1.0.3 - Windows compatibility package

Use this file first:
  CrimsonDoctor-1.0.3\CrimsonDoctor.exe

This compatibility folder build replaces the old A/B/C/D testing package split. It keeps the same Doctor internals, but uses the folder-based PyInstaller package lane that public startup testing showed to be the most compatible.

If CrimsonDoctor.exe does not visibly open:
  1. Run Launch_CrimsonDoctor_with_startup_report.cmd.
  2. Let it finish or fail.
  3. Send CrimsonDoctor-startup-report.txt from this folder.
  4. Also send %%LOCALAPPDATA%%\CrimsonDoctor\startup_diagnostic.log if it exists.

No admin rights are required. The helper does not touch game files, does not modify saves, does not use the network, and only writes a local startup report for troubleshooting Doctor launch failures.
