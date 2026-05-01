# Changelog

Public versions are listed from earliest to newest.

## CD JSON Mod Auto Patcher v0.4.4-beta to v0.8.0

- Added and matured the original Crimson Desert JSON mod patching workflow.
- Added safer patch previews, backup-oriented behavior, expected-byte checks, alias handling, metadata support, compatibility reports, conflict/overlap detection, anchored signatures, relocation helpers, generated patcher metadata, and archive overlay handoff metadata.
- Added the v0.8.0 patcher engine that now lives inside Crimson Doctor as a first-class subsystem.

## Crimson Doctor v1.0.1

- Rebranded the project as Crimson Doctor, the major successor to CD JSON Mod Auto Patcher.
- Merged the JSON patcher into Doctor with scan, patch, capabilities, backup inventory, current EXE archiving, artifact shortcuts, patcher reports, and readability-aware explanations.
- Added the PySide6/Qt release GUI with Recovery, Doctor, Patcher, Audit, Blueprints, Import, Settings, Logs, Doctor Read, bounded tooltips, typed previews, WPM setting, activity pulse monitor, and resize-safe layouts.
- Added Launch Watch, FTS/startup crash/CTD/launcher handoff classification, Crash Explanation, Windows crash evidence collection, Support Report, Support Bundle, redaction, Logs browsing, Doctor Verdict, and previous Doctor tool-crash reporting.
- Added Toolchain Audit, Mod Output Audit, Conflict Evidence Report, external manager report intake, Save Audit, Recovery Timeline, Restore Plan, Restore Stage, Restore Apply, Restore Rollback, Cloud Conflict Guard, save import quarantine, Safe Mode, Quarantine Sandbox, Setup Blueprinting, and Vanilla Baseline Quick-Check.

## Crimson Doctor v1.0.2

- Added Doctor Navigator as the first tab with public issue/goal topics and guided workflow controls.
- Moved structured evidence into its own Evidence tab so Doctor Read can remain the primary explanation surface.
- Expanded Doctor Read wording variation and readability handling with 3 Your IQ modes, 65 Navigator issue/goal topics, 16 guided triage lanes, 132 curated notice/blocker phrase parts, 18 JSON patcher interpretation categories, 108 JSON patcher next-step guidance lines, and 72 external manager conflict/load-order guidance lines.
- Added stricter public GUI cleanup around in-app guides, Doctor Read sizing, evidence visibility, tool-crash notices, and user-facing report navigation.
- Added archive workflow audit, archive proof planning, native plugin audit, strict INI/TOML/YAML/text config edit plan/apply/rollback workflows, sample/reference intake, and improved compatibility boundaries.
- Refreshed public packaging around a standalone Windows release and a binary-only public repository model.

