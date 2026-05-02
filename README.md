# Crimson Doctor

Crimson Doctor is the major successor to CD JSON Mod Auto Patcher.

Current public release: v1.0.4 Stable.

Crimson Doctor is a local Windows utility for Crimson Desert JSON mod patching, compatibility checks, diagnostics, audit reports, and recovery planning. It is strongest around modded setups, but several workflows also help vanilla players diagnose launch, save, cloud, baseline, and support-report issues.

The v1.0.4 Stable package is backed by 40,000+ lines of local app, GUI, CLI, patcher-engine, diagnostic, audit, and recovery code. The Windows compatibility package uses the PyInstaller folder build that proved most reliable in public startup testing, with bundled runtime files, bundled public docs, and no required Python install for normal users.

## Author Note

Crimson Doctor started as a tool I wanted for my own setup, then turned into a much larger attempt to fill a missing support layer around Crimson Desert modding. I like Pearl Abyss and this game enough that I wanted the community to have something better than "try disabling everything" when a setup breaks.

The GUI was not copied from an online template. The layout, tab structure, header, pulse monitor, Doctor Read panel, and workflow grouping were hand-curated through a lot of resize checks, visual cleanup, and "this still feels too cramped" passes. I am a bit obsessive about spacing and symmetry, so the interface went through more redesigns than I originally expected.

Doctor Read is probably the part I am secretly most proud of. It is deterministic local logic: evidence gets normalized, rule-style conclusions are selected, and the wording is varied through curated phrase libraries so reports feel less like a wall of raw crash text. Same evidence, same boundaries, just a more readable path through the mess. In v1.0.4, that wording layer includes 3 Your IQ readability modes, 65 Navigator issue/goal topics, 16 guided triage lanes, 132 curated notice/blocker phrase parts, 144 safe-operation failure phrase parts, 96 Hurry up acknowledgement lines, 18 JSON patcher interpretation categories, 108 JSON patcher next-step guidance lines, and 72 external manager conflict/load-order guidance lines.

The testing path was also not glamorous. I ran it through custom sandbox folders, fake saves, fake manager outputs, patched JSON samples, bad configs, missing paths, crash-style reports, backup/restore transactions, and a lot of repeated smoke tests. I lost sleep, lost a little weight, and somehow found out that building the tool was starting to feel as fun as playing the game. I am not sure it catches every edge case yet, but the design goal is simple: be useful, be honest about unsupported formats, and give users and mod authors evidence they can actually act on.

## What Doctor Does

Doctor is not another mod manager. It is meant to sit beside your current mod manager, patcher workflow, manual mod setup, or vanilla troubleshooting workflow.

Major workflows:

- **Doctor Navigator:** choose a public issue or goal first, then let Doctor route you through a guided evidence workflow in Doctor Read with Next, Back, Run This Step, Skip, and Mark Done controls.
- **JSON mod patching and validation:** patch JSON mods with the Doctor-native CD JSON Mod Auto Patcher v0.8.0 engine, validate JSON/config syntax, detect patcher metadata, explain patcher failures, and preview safe JSON merge candidates.
- **Launch and crash diagnostics:** classify FTS, startup crash, CTD, launcher handoff, abnormal exit, timeout, interruption, or clean exit, then explain what the evidence points toward.
- **Support reports and bundles:** generate redacted Markdown/JSON reports and report bundles for Nexus, GitHub, Discord, or mod-author support.
- **Toolchain and mod-output audit:** inspect visible traces from managers, patchers, save editors, logs, manifests, backups, native loaders, ASI/DLL plugins, stale output, and "manager says applied but game did not change" cases.
- **Save and recovery planning:** scan save folders, build recovery timelines, stage restore plans, apply verified Doctor backups, roll back restore transactions, and warn about cloud/platform save risk.
- **Safe testing lanes:** use Safe Mode isolation, Quarantine Sandbox planning, downloaded-save import quarantine, vanilla baseline quick-check, setup blueprinting, and read-only sample probes.
- **Headless sidecar use:** external tools can call Doctor CLI/JSON workflows for manager preflight, JSON validation, patcher reports, conflict evidence, save-risk checks, and support-report generation.

## Where It Fits

Use Doctor at these points:

- **When you do not know where to start:** open Navigator, pick the closest issue or goal, and let Doctor walk the first evidence path through Doctor Read.
- **Before modding:** validate JSON mods, run patcher scans, check conflicts, create backups, and build a clean baseline or timeline.
- **Before a risky launch:** keep Doctor open and use Launch Watch so it can capture the exact FTS/CTD/launcher-handoff session.
- **During stable gameplay:** you do not need to keep Doctor running forever. Use it when you want monitored launch evidence or are actively checking a risky setup.
- **After a crash or broken setup:** generate a crash explanation, support report, recovery timeline, restore plan, conflict evidence, mod-output audit, or support bundle.

Doctor gets the cleanest launch evidence when it runs the watched launch. If the game crashes while Doctor is closed, Doctor can still inspect existing logs, files, saves, reports, baseline differences, and Windows evidence afterward.

## Usability Standard

Doctor is built to answer the support question in a readable order: what happened, why it matters, and what to try next. Navigator turns common public problems into guided steps, Doctor Read remains the primary explanation surface, and the Evidence tab keeps structured rows available without crowding the narrative.

The pulse monitor in the header is a functional activity/status indicator, not just decoration. It idles calmly, reacts while Doctor is working, and changes behavior briefly when a failure path needs attention.

If the previous Crimson Doctor tool crash or startup failure produced a self-diagnostic record, Doctor shows that notice once in Doctor Read on the next successful launch. Public-facing in-app guides are limited to README, Changelog, and MM Integration so users do not need to dig through development notes.

If the app fails before the GUI appears, Doctor also writes early startup diagnostics to `%LOCALAPPDATA%\CrimsonDoctor\startup_diagnostic.log` whenever its launcher code starts. If Windows blocks the executable before that point, use the included startup helper from the extracted folder and send the generated report.

v1.0.4 also adds a safer operation boundary around GUI actions and report rendering. If an operation fails after Doctor is already open, Doctor tries to contain that failure, explain it in Doctor Read, and write local tool-side evidence instead of letting one bad path, parser result, or display step take down the whole app.

## Who Benefits

- **Players:** locate saves and game/mod roots, preserve backups, classify FTS/CTD/save-risk symptoms, and get a readable next step.
- **Mod authors:** receive structured reports with JSON validator output, patcher failure categories, conflict evidence, game version evidence, and mod-output audit results.
- **Manager/tool authors:** keep their own install/deploy logic while using Doctor as an evidence, validation, report, recovery, and JSON sidecar.
- **Vanilla players:** use Launch Watch, Crash Explanation, Self-Check, Vanilla Baseline Quick-Check, save inventory, cloud-risk checks, and support reports without installing mods.

## Main Feature List

### Patcher And JSON Tools

- Doctor-native CD JSON Mod Auto Patcher v0.8.0 engine.
- JSON patch scan and patched-copy generation.
- Optional source JSON input backups.
- Current EXE backup inventory and current EXE archiving.
- JSON Mod Validator for syntax, schema, alias, metadata, overlap, conflict, and output-risk checks.
- Safe JSON Merge Plan for copied final-mod merge candidates.
- Patcher artifact shortcuts for output folders, manifests, compatibility databases, reports, overlay plans, and backups.
- Your IQ profiles for report readability: High - Forensic Audit, Mid - Doctor Read, Low - Guided Recovery.

### Diagnostics And Reports

- Launch Watch with FTS, startup crash, CTD, launcher handoff, abnormal exit, timeout, interruption, and clean-exit classification.
- Crash Explanation for return codes, launch errors, faulting modules, and Windows event evidence.
- Doctor Verdict for final readable conclusions and next steps.
- Navigator home tab with a broad public issue/goal library and guided workflow controls routed through Doctor Read.
- Support Report and Support Bundle exports with redaction.
- Logs page for browsing, previewing, copying, opening, and revealing recent reports.
- Doctor Read panel with typed preview, WPM setting, complete-report view, read-only report surfaces, and deterministic phrase variation.
- Previous Doctor tool crash/startup failure notice shown once on the next successful launch.

### Audit And Compatibility

- Toolchain Audit for visible manager/editor/patcher/log/backup/native-loader evidence.
- Manager bug-report intake where supported.
- Manager Preflight and Manager Contract for headless integration.
- Conflict Evidence Report for observable JSON target/record overlaps.
- Mod Output Audit for stale output, wrong paths, missing registration, and "nothing changed in game" cases.
- Native Plugin Audit for ASI/DLL loader surfaces and fault-module correlation without injecting into the game process.
- Archive Workflow Audit and Archive Proof Plan for copied PAZ/PAMT/PAPGT/PABGB/PABGH evidence, with live repacking blocked until proven safe.

### Save, Recovery, And Safety

- Save Audit with file inventory, hashes, entropy sampling, zero-byte warnings, duplicates, and save-like binary detection.
- Doctor backup archives with embedded manifests.
- Recovery Timeline across saves, backups, launch events, restore events, and report folders.
- Restore Plan, Restore Stage, Restore Apply, and Restore Rollback with transaction records.
- Cloud Conflict Guard for local and platform-managed save risk.
- Community Save Import Quarantine for downloaded saves.
- Safe Mode and Quarantine Sandbox planning for risky tests.
- Setup Blueprinting for known-good/current setup comparisons.
- Vanilla Baseline Quick-Check using user-created clean baselines.

### Evidence And Sample Work

- Reference Intake fingerprints supplied save/game/mod samples without editing them.
- Reference Corpus compares multiple intake reports into stable/variable groups.
- Reference Case builds a known-working/known-broken evidence package.
- Evidence Intake Plan lists what real reports or samples are needed before deeper parser, repair, or compatibility claims.
- Save Sample Probe compares known-working, broken, or unknown save samples without decoding or repairing internals.

When Doctor says real samples are needed, users and testers can help by sending copied sample packs to the author: known-working and known-broken examples, game version, Doctor reports, manager reports, JSON mod folders, config files, save-folder snapshots, and archive/output evidence when relevant. Labels matter more than volume: say what worked, what broke, what changed, and which tool touched the setup.

Do not send personal files, account data, passwords, unrelated folders, or full game installs. Prefer Doctor support bundles and copied minimal samples; only share larger files when the author specifically asks for them for compatibility or format research.

## Important Boundaries

Doctor intentionally avoids overclaiming.

- It is not a generic mod manager, load-order manager, Nexus downloader, or blind save editor.
- It does not invent save fields or write synthetic game data.
- Save repair remains unsupported until real known-good and broken save samples prove the structure and rollback path.
- Direct PAZ/PAMT/PAPGT/PABGB/PABGH repacking remains unsupported until archive metadata and deployment behavior are proven.
- DLL/ASI/native plugin work is audit and reversible isolation only; binary patching remains unsupported.
- Runtime hooks, DLL injection, memory patching, hotkey interception, and in-process crash catching are out of scope for the Python MVP.
- Unsupported formats should be reported as unknown, not guessed.

## Typical Save Locations

Known PC save candidates include:

```text
%LOCALAPPDATA%\Pearl Abyss\CD\save
%LOCALAPPDATA%\PearlAbyss\CrimsonDesert\SaveGames
%LOCALAPPDATA%\Packages\PearlAbyss.CrimsonDesert_*\SystemAppData\wgs
```

The Microsoft Store/Game Pass `wgs` path is treated cautiously because those files may be account-bound or platform-managed.

## Run

Normal users should run the packaged Windows app:

```powershell
CrimsonDoctor.exe
```

If running from source, use Python 3.10+:

```powershell
python -m pip install -r requirements-gui.txt
python -m crimson_doctor gui-qt
```

The old standalone patcher GUI is not part of the public Doctor flow. Its patching engine is exposed through Doctor's Patcher page and `json-patcher` CLI commands.

## Common CLI Examples

Run the Doctor-native JSON patcher:

```powershell
python -m crimson_doctor json-patcher scan --current-exe "path\to\CrimsonDesert.exe" --input "path\to\mod.json" --json-output ".\scan.json" --tone mid
python -m crimson_doctor json-patcher patch --current-exe "path\to\CrimsonDesert.exe" --input "path\to\mod.json" --output-dir ".\patched-json" --tone low
```

Generate support output:

```powershell
python -m crimson_doctor report --output report.md --json-output report.json
python -m crimson_doctor support-bundle --source report.md --include-dir ".\reports" --output-dir ".\support-bundle" --print-json
```

Watch a launch:

```powershell
python -m crimson_doctor watch-launch --output-dir reports -- "C:\Path\To\CrimsonDesert.exe"
```

Scan saves and build recovery evidence:

```powershell
python -m crimson_doctor scan --save-root "C:\Users\<Username>\AppData\Local\Pearl Abyss\CD\save"
python -m crimson_doctor timeline --save-root "C:\Users\<Username>\AppData\Local\Pearl Abyss\CD\save" --backup-dir "C:\Path\To\Backups" --include-dir "C:\Path\To\CrimsonDoctorReports"
```

Generate sample and compatibility evidence:

```powershell
python -m crimson_doctor reference-intake --input "C:\Path\To\Samples" --sample-role known_working --sample-state vanilla --game-version "current" --label "clean baseline sample" --output reference-intake.md --json-output reference-intake.json
python -m crimson_doctor evidence-intake-plan --focus sample_collection --output ".\reports\sample-collection-plan.md" --json-output ".\reports\sample-collection-plan.json"
```

Run headless manager-side checks:

```powershell
python -m crimson_doctor manager-contract --output ".\reports\manager-contract.md" --json-output ".\reports\manager-contract.json"
python -m crimson_doctor manager-preflight --include-dir ".\mods" --game-root "C:\Steam\steamapps\common\Crimson Desert" --save-root "C:\Users\<Username>\AppData\Local\Pearl Abyss\CD\save" --current-exe "C:\Steam\steamapps\common\Crimson Desert\CrimsonDesert.exe" --output-dir ".\reports" --print-json
```

Your IQ is a readability setting, not an evidence filter. High, Mid, and Low collect the same context and keep the same classifications, files, hashes, and findings; they only change how Doctor explains the result and frames next steps.

## Report Integrity Notes

- Doctor report timestamps are written in UTC with an explicit offset.
- Support-report redaction covers home paths, username-like path components, computer/domain names, emails, IPv4 addresses, MAC addresses, and common drive serial text.
- Save backup manifests hash the bytes written into the backup archive.
- Directory scans avoid recursing into symlinked paths.
- Risky actions create backups, transaction records, or rollback evidence before touching user data.

## Community Problem Fit

Doctor is designed for common Crimson Desert support problems:

- save-folder confusion, including `0036` game/mod file confusion
- external manager or patcher apply failures
- game updates breaking JSON/value mods
- stale output after disabling or reinstalling mods
- save-editor and downloaded-save uncertainty
- mod authors needing repeatable evidence instead of screenshots
- vanilla launch failures where the user still needs a structured report

Doctor can reduce downgrade pressure by validating old/current executable evidence, relocating supported JSON mods where the patcher can prove the bytes, and identifying exactly when a mod must be updated by its author. It cannot make every outdated mod compatible, and it should never claim save repair or binary patching until the file format and rollback path are proven.

Navigator topic coverage intentionally includes common public support patterns: FTS, splash-screen crash, not responding, frame-generation or overlay suspicion, game-update mod breakage, JSON manager path failures, Epic/Steam/Linux install confusion, mod output not visible in game, cloud-save overwrite risk, failed-to-save slots, downloaded-save imports, and support-report handoff.

Release history is tracked in `CHANGELOG.md`, including the absorbed JSON Patcher lineage now maintained inside Doctor.
