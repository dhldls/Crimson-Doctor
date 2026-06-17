# Crimson Doctor v2.1.0 Release Notes

Crimson Doctor is a Windows freeware tool for Crimson Desert crashes, launch issues, saves, and modding support.



## Highlights


- Crash reads give plain verdicts: suspect modules, save and RAM ruled in or out, repeat detection, and a shareable crash signature.

- Doctor Read writes a shareable `.txt` next to each crash JSON, and Reports rows get a menu to open, reveal, save, or copy each log.

- Save Recovery can back up your saves on demand with "Back Up Saves Now", and Crimson Doctor also backs up automatically right before a modded launch.

- Save backups rotate on their own, keeping the newest ten, and the Restore Plan picker opens straight to your backup folder.

- Config Edit changes a setting and value safely with backup and rollback, instead of hand writing JSON.

- Launch Watch no longer freezes the app and shows live progress.

- Game Update Audit compares your current game install against the last saved snapshot.

- Advanced Tools cards were reworded and regrouped into cleaner pages, and Blueprint was renamed to Setup Snapshot.

- Settings paths can be typed or pasted as well as picked, and the save folder is now a setting found automatically.



## Install
 

1\. Find your Crimson Desert `bin64` folder and confirm an ASI loader (usually `version.dll`) is present.

2\. From the `Crash Probe` folder, copy the file `CDrCrashProbe.asi` (not the folder) directly into `bin64` so it sits as `bin64\\CDrCrashProbe.asi`, or import the `.asi` through your mod manager's ASI install flow.

3\. Run `CrimsonDoctor.exe`.
 

See `README.md` for full usage and `CHANGELOG.md` for the complete change history.

## Author Disclaimer

One honest heads-up: this round I was deep in save recovery and backups, so the focus was getting that loop right. Back Up Saves Now, the automatic pre-launch backup, retention, and the restore picker are the new core here. The rest of the app carried over from the crash-logging work, and I haven't re-verified every Advanced Tools card start-to-finish, so if you wander deep into those, some things may still be rough or unimplemented.

That's exactly why feedback matters. I've done what I can, and now the tool only gets better with real user input. I won't pretend I can call this "stable final release" on my own. I'll let your feedback decide that. If something's broken or confusing, especially anything that touches your saves, tell me. That's what points me at whatever still needs fixing.

