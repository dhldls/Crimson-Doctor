# Changelog

Public versions are listed from newest to oldest.

## Crimson Doctor v2.0.1 - Stable

- Promoted DMM setup support from cautious external-manager recognition into official read-only DMM evidence full awareness.
- CDr can read visible DMM logs, state/config files, profiles, mount history, activity records, hash/baseline evidence, and output mismatch clues, then route users to matching DMM-side workflows when the evidence belongs there.
- DMM setup guidance recognizes Profiles / Load Order, Save Tools, Mod Packs / Snapshots, Texture / Browser UI, Language / Font, ReShade, OptiScaler, Mod Editor, Mount History, Activity Log, Game State, Pre-flight / Mount Preview, Backup Manager, ASI Mods, source-backed state recovery, interrupted mounts, stale mount locks, Force Reset DMM State, import/drag-drop, active overlay, force-in-place browser mods, and platform Launch Game evidence.
- Semantic table JSON intake recognizes DMM-family single-target and multi-target field-intent envelopes as parser-coupled evidence, including record-level operations. Durable application remains with DMM or another proven parser path.
- Ultimate JSON Mod Manager, CrimsonForge, and Swiss Knife visible evidence support was expanded for read-only logs, state files, package markers, output markers, and public/export surfaces where source or sample evidence supports it.
- Added a guided `Guide Package` Home route for after-game-update failures. It walks package intake, updated-game health, visible manager evidence, mod-output mismatch, and launch confirmation in order.
- Added the `Test My Mod` Home route for mod authors who want package-shape, JSON/manager readiness, setup context, visible output, launch evidence, and an author-facing receipt.
- Home route cards are now scenario bundles instead of raw backend tools. Additional pages cover setup help, DMM/manager help, ASI/DLL crash evidence, config planning, clean test sessions, broken/working package proof, old/new game update proof, setup blueprint drift, residue audit, archive/table proof, and dependency checks.
- Home search filters route cards live while typing. Pressing Enter asks the user to pick a matching card instead of starting a random fallback route.
- Route cards explain first instead of immediately opening pickers or running actions. Users press the route-specific action only after Doctor Read says what will happen next.
- Doctor Read controls separate the named primary action from `Follow-up`, so staged evidence steps no longer read like duplicate "next" buttons.
- Doctor Read gained a gated Y/N response layer: `Spacebar` accepts the current named action and `Backspace` cancels/stays only while Doctor is explicitly waiting for that answer.
- Settings now keeps `Save` in the page navigation/control row, fixes button overlap, and keeps the page controls aligned.
- Doctor Read layout polish: scroll direction, contained text scroll, pinned typing line, reduced panel harshness, resized settings pages, cleaner stamp, contained stamp tooltip, and smoother splash/loading presentation.
- Archive evidence gained a clean read-only PAMT entry listing surface, cross-checked against Lazorr's MIT Crimson Desert unpacker reference. Existing decode/copy-lab gates remain Doctor-owned and non-live.

## Crimson Doctor v2.0.0 - Native Refresh

- Rebuilt Crimson Doctor as the Rust/Slint native line with a single Windows executable
- Added the new Home, Advanced Tools, Reports, and Settings structure with Doctor Read as the central explanation and result panel.
- Added deterministic Doctor Read tone/readability handling for user-selected wording difficulty while keeping evidence, hashes, paths, findings, and safety gates unchanged.
- Ported launch/crash evidence routes into native code: path probe, launch watch, timeout/fail-to-start handling, exported Windows Event XML parsing, local event collection, and launch-history readouts.
- Ported JSON mod validation, merge preview, patch readiness, JMM-safe export, old/new author package parity, and Doctor-owned JSON copy output lanes.
- Ported mod package intake and manager handoff preview for downloaded archives, loose folders, JSON packages, ASI/DLL packages, config presets, manifest/files packages, modinfo/files packages, and archive/binary replacement evidence.
- Ported manager-report and toolchain evidence routes for CDUMM-style reports, DMM/QT-style visible logs/state, mod-output mismatch evidence, conflict evidence, and manager preflight aggregation.
- Ported save scan, save timeline, cloud guard, save import quarantine, restore planning, restore staging, confirmed restore apply, and rollback record flows.
- Ported config edit planning, request-gated apply, manifest writing, and rollback for supported text config workflows.
- Ported native plugin audit for ASI/DLL loader/plugin surfaces and fault-module correlation without injection, hooks, or plugin execution.
- Ported support reports, redacted support bundles, report indexing, report export/reveal planning, report comparison, and local evidence receipts.
- Ported setup blueprinting, dependency chain checks, residue audit, reference intake, reference corpus/case reports, save sample probes, workspace planning, and local settings persistence.
- Added archive/table proof lanes for read-only PAZ/PAMT/PAPGT/PABGB/PABGH evidence, PAMT map proof, copied-output copy-labs, PAB table/record proof, and version-audit drift reports. Live archive deployment remained locked.

## Crimson Doctor v1.1.0 - Native Preview

- Introduced the first native Slint shell direction.
- Added the cleaner top-level Home / Advanced Tools / Reports / Settings structure.
- Kept Doctor Read as the main result area.
- Added local read-only system checks and early native health/report wiring.

## Crimson Doctor v1.0.4 Stable

- Added a Safe Operation Layer around GUI actions, menu actions, selected audit actions, and report-rendering callbacks so failures after Doctor is open are routed into Doctor Read instead of escaping as app crashes.
- Added local GUI operation-failure evidence records under the Crimson Doctor config folder for contained tool-side failures.
- Added controlled Doctor Read wording variation for contained operation failures and expanded Hurry up acknowledgements, including tone-aware lines for High, Mid, and Low Your IQ settings.
- Hardened background-operation success handling so a worker can finish successfully even if the final display/render step fails; Doctor resets the busy state and explains the contained failure.

## Crimson Doctor v1.0.3 Stable

- Promoted the public compatibility package after public startup testing confirmed it opened on systems where earlier package variants failed.
- Added full-package collection for Crimson Doctor modules so CLI, audit, case-memory, config edit, release-readiness, and save-sample probe surfaces are present in the compatibility build instead of relying only on static GUI import discovery.
- Added earlier boot diagnostics that write a local `%LOCALAPPDATA%\CrimsonDoctor\startup_diagnostic.log` before entering the Qt GUI, while preserving the existing startup-error report path for failures Doctor can catch after its launcher starts.

## Crimson Doctor v1.0.2

- Added clearer public guidance for copied, labeled sample packs when Doctor needs real-world evidence for future compatibility or format work.
- Added a quick-start summary to the Manager Integration Contract for external manager authors: when to call Doctor, what evidence to pass, what samples help, and which CLI surfaces matter most.
- Renamed the in-app guide button to `MM Integration` so the bundled manager integration document is easier to recognize.
- Kept the user download minimal and scanner-friendly: runtime files, README, changelog, and manager integration contract only.
- Moved structured evidence rows into a dedicated Evidence tab so Doctor Read stays large enough to serve as the primary explanation surface.
- Enlarged the permanent Doctor Read panel, increased its readable font size, and kept the visible splitter handle for user-controlled panel sizing.
- Added the Navigator home tab with a broad public issue/goal library, moved triage routing out of Settings, and wired Next, Back, Run This Step, Skip, and Mark Done guided workflows through Doctor Read.
- Expanded Doctor Read wording variation with 3 Your IQ readability modes, 65 Navigator issue/goal topics, 16 guided triage lanes, 132 curated notice/blocker phrase parts, 18 JSON patcher interpretation categories, 108 JSON patcher next-step guidance lines, 72 external manager conflict/load-order guidance lines, stable seeded wording selection, and short-term repeat avoidance.

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

## CD JSON Mod Auto Patcher v0.8.0-beta

- Renamed remaining placeholder terminology to `unanchored` while preserving relative-offset anchoring behavior.
- Added archive-backed target detection, `archive_overlay_plan.json`, patched loose asset handoff output, and archive overlay metadata without direct archive repacking.
- Improved loose asset relocation, conflict/overlap reports, compatibility output, generated anchor metadata, JSON normalization, UTF-8 BOM handling, GUI responsiveness, and optional safety controls.

## CD JSON Mod Auto Patcher v0.7.1-beta

- Improved drag/drop fallback, shared-delta relocation, bounded manual recovery, byte-context previews, saved recovery profiles, conflict reports, and schema output.
- Added compatibility databases/reports, UTF-8 BOM tolerance, stronger generated metadata, and GUI layout polish.

## CD JSON Mod Auto Patcher v0.7.0-beta

- Added normal JSON file browsing fallback.
- Improved loose asset ambiguity handling, safe failure for generic byte patterns, failure categories, next-step advice, conflict reports, manual choices, and resize behavior.

## CD JSON Mod Auto Patcher v0.6.0-beta

- Standardized anchoring wording and generated `anchor_signatures`.
- Added legacy metadata import, output migration, common JSON layout normalization, field aliases, tolerant byte parsing, alias synchronization, and GUI refresh work.

## CD JSON Mod Auto Patcher v0.5.4-beta

- Added Current Mod Anchoring for current-version static JSON mods.
- Added anchored signature metadata, multi-signature relocation, ambiguity choice caching, conflict/overlap detection, and compatibility report export.

## CD JSON Mod Auto Patcher v0.5.3-beta

- Updated public app naming, window title behavior, embedded guides, and patcher documentation.

## CD JSON Mod Auto Patcher v0.5.2b-beta

- Added custom app/window icon support while preserving GUI and headless patching workflows.

## CD JSON Mod Auto Patcher v0.5.2a-beta

- Improved app labeling and guide text while preserving v0.5.2 patching behavior.

## CD JSON Mod Auto Patcher v0.5.2-beta

- Improved GUI organization, backup/recovery guidance, and output folder naming.

## CD JSON Mod Auto Patcher v0.5.1-beta

- Improved patch preview readability.
- Improved alias handling and safer failure messages when a patch cannot be located.

## CD JSON Mod Auto Patcher v0.5.0-beta

- Added richer JSON mod metadata support.
- Improved patched/skipped/blocked status output, compatibility wording, and byte matching.

## CD JSON Mod Auto Patcher v0.4.5-beta

- Added expected-byte checks before patching.
- Improved messages for unsafe or uncertain patch targets.

## CD JSON Mod Auto Patcher v0.4.4-beta

- Added the early JSON patching workflow for Crimson Desert JSON mods.
- Added basic patch preview and backup-oriented safety behavior.
