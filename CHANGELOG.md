# Changelog

Public versions are listed from earliest to newest. Entries describe user-facing capabilities and feature changes.

## CD JSON Mod Auto Patcher v0.4.4-beta

- Added the early JSON patching workflow for Crimson Desert JSON mods.
- Added basic patch preview and backup-oriented safety behavior.

## CD JSON Mod Auto Patcher v0.4.5-beta

- Added expected-byte checks before patching.
- Improved messages for unsafe or uncertain patch targets.

## CD JSON Mod Auto Patcher v0.5.0-beta

- Added richer JSON mod metadata support.
- Improved patched/skipped/blocked status output, compatibility wording, and byte matching.

## CD JSON Mod Auto Patcher v0.5.1

- Improved patch preview readability.
- Improved alias handling and safer failure messages when a patch cannot be located.

## CD JSON Mod Auto Patcher v0.5.2

- Improved GUI organization, backup/recovery guidance, and output folder naming.

## CD JSON Mod Auto Patcher v0.5.2a

- Improved app labeling and guide text while preserving v0.5.2 patching behavior.

## CD JSON Mod Auto Patcher v0.5.2b

- Added custom app/window icon support while preserving GUI and headless patching workflows.

## CD JSON Mod Auto Patcher v0.5.3

- Updated public app naming, window title behavior, embedded guides, and patcher documentation.

## CD JSON Mod Auto Patcher v0.5.4

- Added Current Mod Anchoring for current-version static JSON mods.
- Added anchored signature metadata, multi-signature relocation, ambiguity choice caching, conflict/overlap detection, and compatibility report export.

## CD JSON Mod Auto Patcher v0.6.0

- Standardized anchoring wording and generated `anchor_signatures`.
- Added legacy metadata import, output migration, common JSON layout normalization, field aliases, tolerant byte parsing, alias synchronization, and GUI refresh work.

## CD JSON Mod Auto Patcher v0.7.0

- Added normal JSON file browsing fallback.
- Improved loose asset ambiguity handling, safe failure for generic byte patterns, failure categories, next-step advice, conflict reports, manual choices, and resize behavior.

## CD JSON Mod Auto Patcher v0.7.1

- Improved drag/drop fallback, shared-delta relocation, bounded manual recovery, byte-context previews, saved recovery profiles, conflict reports, and schema output.
- Added compatibility databases/reports, UTF-8 BOM tolerance, stronger generated metadata, and GUI layout polish.

## CD JSON Mod Auto Patcher v0.8.0

- Renamed remaining placeholder terminology to `unanchored` while preserving relative-offset anchoring behavior.
- Added archive-backed target detection, `archive_overlay_plan.json`, patched loose asset handoff output, and archive overlay metadata without direct archive repacking.
- Improved loose asset relocation, conflict/overlap reports, compatibility output, generated anchor metadata, JSON normalization, UTF-8 BOM handling, GUI responsiveness, and optional safety controls.

## Crimson Doctor v1.0.1

- Rebranded the project as Crimson Doctor, the major successor to CD JSON Mod Auto Patcher.
- Merged the JSON patcher into Doctor as a first-class subsystem with scan, patch, capabilities, backup inventory, current EXE archiving, artifact shortcuts, patcher reports, and Your IQ explanations.
- Added JSON Mod Validator, Safe JSON Merge Plan, patcher-aware error explanations, and Doctor Patcher Read summaries.
- Added the PySide6/Qt release GUI with Recovery, Doctor, Patcher, Audit, Blueprints, Import, Settings, Logs, Doctor Read, bounded tooltips, typed previews, WPM setting, activity pulse monitor, and compact resize-safe layouts.
- Added Launch Watch, FTS/startup crash/CTD/launcher handoff classification, Crash Explanation, Windows crash evidence collection, and known native exception-code hints.
- Added Support Report, Support Bundle, redaction, Logs page report browsing, Doctor Verdict, Doctor Voice wording variation, and previous Doctor tool-crash reporting.
- Added Toolchain Audit, Mod Output Audit, Conflict Evidence Report, external manager bug-report intake, Manager Contract, Manager Preflight, Brain Audit, and local case-memory approval.
- Added Save Audit, Doctor backup archives, Recovery Timeline, Restore Plan, Restore Stage, Restore Apply, Restore Rollback, Cloud Conflict Guard, downloaded-save quarantine, Safe Mode, Quarantine Sandbox, Setup Blueprinting, and Vanilla Baseline Quick-Check.
- Added Reference Intake, Reference Corpus, Reference Case, Evidence Intake Plan, Save Sample Probe, and public guidance for copied/labeled sample packs needed for future compatibility or format work.
- Added Archive Workflow Audit, Archive Proof Plan, Native Plugin Audit, and strict INI/TOML/YAML/text config edit plan/apply/rollback workflows.
- Clarified safety boundaries: no generic mod-manager replacement, no blind save editing, no direct archive repacking, no binary plugin patching, and no runtime hook/injection lane in the MVP.
- Refreshed public docs and packaging around a minimal standalone Windows release: runtime files, README, changelog, and manager integration contract only.

## Crimson Doctor v1.0.2

- Compacted the README and changelog so new users can see the product identity, major features, workflow fit, and safety boundaries without reading a giant internal feature wall.
- Added clearer public guidance for copied, labeled sample packs when Doctor needs real-world evidence for future compatibility or format work.
- Added a quick-start summary to the Manager Integration Contract for external manager authors: when to call Doctor, what evidence to pass, what samples help, and which CLI surfaces matter most.
- Renamed the in-app guide button to `MM Integration` so the bundled manager integration document is easier to recognize.
- Kept the user download minimal and scanner-friendly: runtime files, README, changelog, and manager integration contract only.
- Moved structured evidence rows into a dedicated Evidence tab so Doctor Read stays large enough to serve as the primary explanation surface.
- Enlarged the permanent Doctor Read panel, increased its readable font size, and kept the visible splitter handle for user-controlled panel sizing.
- Added the Navigator home tab with a broad public issue/goal library, moved triage routing out of Settings, and wired Next, Back, Run This Step, Skip, and Mark Done guided workflows through Doctor Read.
- Expanded Doctor Read wording variation with 3 Your IQ readability modes, 65 Navigator issue/goal topics, 16 guided triage lanes, 132 curated notice/blocker phrase parts, 18 JSON patcher interpretation categories, 108 JSON patcher next-step guidance lines, 72 external manager conflict/load-order guidance lines, stable seeded wording selection, and short-term repeat avoidance.

## Crimson Doctor v1.0.3

- Promoted the public compatibility package to the PyInstaller folder build after public startup testing confirmed it opened on systems where the previous Nuitka package variants failed.
- Added full-package PyInstaller collection for Crimson Doctor modules so CLI, audit, case-memory, config edit, release-readiness, and save-sample probe surfaces are present in the compatibility build instead of relying only on static Qt GUI import discovery.
- Added earlier boot diagnostics that write a local `%LOCALAPPDATA%\CrimsonDoctor\startup_diagnostic.log` before entering the Qt GUI, while preserving the existing startup-error report path for failures Doctor can catch after its launcher starts.
- Trimmed safe PySide runtime baggage from the compatibility package, including unused PDF image support, non-user platform plugins, TLS/network-information plugins, and non-English/Korean Qt translation files.
- Kept the release lane focused on the working compatibility package rather than expanding the A/B/C/D matrix further.
