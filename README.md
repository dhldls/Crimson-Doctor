# Crimson Doctor

Crimson Doctor is a Windows tool for Crimson Desert crashes, launch issues, saves, and modding support.

At its core it does one thing: it finds the evidence behind crashes, broken mods, save issues, and game-update changes, and points you to the next safe step.

It ships with `CDrCrashProbe.asi`, the crash logger used by CDr for Crimson Desert crash evidence.

## Installation

1. Find your Crimson Desert `bin64` folder.
2. Confirm an ASI loader is present in `bin64`, usually `version.dll`.
3. Extract the downloaded Crimson Doctor ZIP. Copy `Crash Probe\CDrCrashProbe.asi` into that same `bin64` folder, or import it through your mod manager's ASI install flow.
4. Run `CrimsonDoctor.exe`.

Crash logs are written to:

```text
%LOCALAPPDATA%\CrimsonDoctor\CrashLogs
```

## How To Use

A quick tour so you know where to go:

1. **Start on Home.** Type your symptom (for example "crash", "won't launch", "mods broke after update") or just pick the card closest to your problem.
2. **Read the Doctor Read panel** at the bottom before acting. It explains what happened, what evidence Doctor needs from you, and what the next safe step is. You can set the explanation style to High, Mid, or Low in Settings.
3. **Pick the action button** the panel offers (run, follow-up, etc.). Doctor will ask for any files or folders it needs.
4. **Check Reports** to review saved crash logs and Doctor output. Reports > Crashes lists captured `cdr-crash-*.json` logs; click a row to have Doctor Read explain that crash.
5. **Advanced Tools** is for when you already know the exact workflow you want. Anything that writes to live game files (like Archive Inspector's deploy) is walled behind clear, staged steps with a mandatory backup and one-click rollback.

Common starting points:

- **Game Crashed** for crash triage.
- **Verify Probe** to check the `bin64` folder, `CDrCrashProbe.asi`, ASI loader presence, and crash-log evidence.
- **External Launch Watch** for manual launch/process-health evidence.
- **After a game update** if mods or managers suddenly stop launching or loading correctly.
- **Save Recovery** for save timelines, restore plans, staged restores, and rollback records.

## What You Get

- `CDrCrashProbe.asi` crash evidence support
- Game Crashed route for crash triage
- Reports with separate Misc and Crash Logs tables
- Verify Probe install and crash-evidence checks
- External Launch Watch process-health audit
- Doctor Read explanations in High, Mid, and Low styles
- JSON mod patching and validation support
- downloaded save inspection, save and recovery planning
- mod compatibility and manager-output checks
- DMM-centered setup support from visible DMM evidence
- Archive Inspector: inspect, verify, and same-size patch deploy with mandatory backup and rollback

## Distribution

CDr is freeware for normal Crimson Desert troubleshooting and modding support.

Do not sell, reupload, repackage, modify, reverse engineer, or redistribute it without permission. Link back to the official release page when sharing it.

See `LICENSE.txt` for the full freeware license.

Third-party notices for referenced open-source components live in `THIRD_PARTY_NOTICES.md`.