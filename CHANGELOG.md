# Changelog

## Crimson Doctor v2.1.0 - Stable Public Release

- Crash reads now give additional plain verdicts: suspect modules, save and RAM ruled in or out, repeat detection, and a shareable signature.
- Doctor Read writes a shareable `.txt` next to each crash JSON, and Reports rows get a menu to open, reveal, save, or copy each log.
- Save Recovery can back up your saves on demand with a "Back Up Saves Now" action, and Crimson Doctor also makes a backup automatically right before a modded launch.
- Save backups rotate on their own, keeping the newest ten, and the Restore Plan picker now opens straight to your backup folder.
- Config Edit lets you choose a setting and value to change safely, with backup and rollback, instead of hand writing JSON.
- Launch Watch no longer freezes the app and shows live progress.
- Settings paths can be typed or pasted as well as picked.
- Save folder is now a setting and the default location is found automatically.
- Reworded and regrouped the Advanced Tools cards into cleaner pages, added Game Update Audit, and renamed Blueprint to Setup Snapshot.

## Crimson Doctor v2.0.3 - Crash Logger Release Candidate

- Adds `Game Crashed`, Reports > Crashes, and Verify Probe for crash-log triage.
- Ships Crimson Doctor and `CDrCrashProbe.asi` together as one product.
- Adds startup/load detection for `CDrCrashProbe.asi` in the selected Crimson Desert `bin64` folder.
- Moves crash logs to `%LOCALAPPDATA%\CrimsonDoctor\CrashLogs`.
- Separates High/Mid/Low Doctor Read output across the main app surfaces.
- Settings now autosave, and `Your IQ` settings becomes the default Doctor Read render selection.

## Crimson Doctor v2.0.2 - Public Hotfix

- Fixed startup, routing, report version context, and long Doctor Read output.
- Added startup checks, quick High/Mid/Low reread buttons, and clearer support-report routing.
- Improved public compatibility with pycrimson and CrimsonDesertTools evidence.

## Crimson Doctor v2.0.1 - Stable Beta

- Added DMM evidence awareness, manager routing, setup help, mod author routes, and searchable route cards.
- Expanded Doctor Read, report handling, archive evidence, and staged workflow controls.

## Crimson Doctor v2.0.0 - Current App Refresh

- Rebuilt Crimson Doctor as the current Windows app with Home, Advanced Tools, Reports, Settings, and Doctor Read.
- Added launch/crash, JSON mod, manager evidence, save, config, report, support bundle, and archive/table proof workflows.

## Earlier Versions

Earlier CD JSON Mod Auto Patcher and Crimson Doctor builds added the original JSON patcher, recovery, audit, launch watch, save, archive, and support-report foundations.