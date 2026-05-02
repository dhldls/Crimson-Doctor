# Crimson Doctor v1.0.4 Stable Release Notes

v1.0.4 is a stability and compatibility hardening release on top of the v1.0.3 Stable package.

## What Changed

- Added a Safe Operation Layer around GUI button actions, menu actions, selected audit actions, and report-rendering callbacks.
- If an operation fails after Doctor is already open, Doctor now tries to contain the failure, explain it in Doctor Read, and write local tool-side evidence instead of letting the app crash.
- Added tone-aware wording variation for contained operation failures and a larger Hurry up acknowledgement pool.
- Hardened background-operation result display so a finished operation cannot leave Doctor stuck in a busy state if the final UI/render step fails.
- Kept the v1.0.3-compatible PyInstaller folder packaging lane and Python 3.12 target.
- Refreshed public version metadata and docs to v1.0.4 Stable.

## What Did Not Change

- No GUI layout redesign.
- No runtime hooks, DLL injection, memory patching, or in-process game crash catching.
- No direct PAZ/PAMT/PAPGT/PABGB/PABGH repacking claim.
- No universal save repair claim.
- No telemetry or network upload.

## If Doctor Itself Has Trouble

Doctor still writes early startup diagnostics to:

```text
%LOCALAPPDATA%\CrimsonDoctor\startup_diagnostic.log
```

If Doctor opens and then a specific operation fails, v1.0.4 also writes local operation-failure evidence under the Crimson Doctor config folder and explains the failure in Doctor Read.
