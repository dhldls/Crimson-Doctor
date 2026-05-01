# Crimson Doctor

Crimson Doctor is a local Windows companion tool for Crimson Desert JSON mod patching, diagnostics, launch/crash logging, audit reports, and recovery planning.

Current public release: **v1.0.2 RC**.

Crimson Doctor is the major successor to CD JSON Mod Auto Patcher. It is not another mod manager. It is the safety, diagnosis, explanation, and report layer that works beside your chosen mod manager, manual setup, or vanilla install.

## Download

Download official builds from the GitHub Releases page or the official Nexus Mods page.

- Nexus Mods: https://www.nexusmods.com/crimsondesert/mods/1595
- GitHub Releases: use the Releases panel on this repository

Normal users do not need Python. The Windows release is a standalone package.

## What It Does

- Patches supported JSON mods through the integrated CD JSON Mod Auto Patcher engine.
- Validates JSON mod syntax, patcher metadata, aliases, conflicts, and output-risk evidence.
- Watches launch sessions and classifies FTS, startup crash, CTD, launcher handoff, abnormal exit, timeout, interruption, or clean exit.
- Turns launch/crash evidence into readable next steps.
- Generates redacted support reports and support bundles for Nexus, GitHub, Discord, mod authors, or private review.
- Audits visible toolchain traces from managers, patchers, save editors, logs, manifests, backups, native loaders, and ASI/DLL plugins.
- Builds save timelines, recovery candidates, restore plans, restore stages, restore apply transactions, and rollback records.
- Warns about cloud/platform save risk before recovery work.
- Inspects downloaded community save packs before install.
- Creates setup blueprints and compares current state against known-good fingerprints.
- Supports vanilla users too: Launch Watch, Crash Explanation, Self-Check, Vanilla Baseline Quick-Check, save inventory, cloud-risk checks, and support reports do not require installed mods.

## Where It Fits

- Before modding: validate JSON mods, run patcher scans, check obvious conflicts, create backups, and build a clean baseline or timeline.
- Before a risky launch: open Doctor and use Launch Watch for clean FTS/CTD/launcher-handoff evidence.
- During stable gameplay: Doctor does not need to run forever.
- After a crash or broken setup: generate crash explanation, support report, recovery timeline, restore plan, conflict evidence, mod-output audit, or a support bundle.

## Important Boundaries

Crimson Doctor:

- does not replace your mod manager
- does not install, enable, disable, or deploy mods as a generic manager
- does not silently rewrite another manager's config, database, backup registry, or load order
- does not use runtime hooks, DLL injection, memory patching, hotkey interception, or in-process crash catching
- does not upload telemetry
- does not claim universal save repair
- does not invent save fields or generate fake game data

Deep save repair will only be added for specific proven corruption patterns after real known-good and broken save samples prove the format and the game accepts the result.

## Virus Scan / False Positive Notice

Crimson Doctor is a new unsigned Windows standalone tool. Because it is packaged as a Python/Nuitka/Qt executable, it bundles its own runtime files and may look unusual to some heuristic scanners.

The tool performs local diagnostic work that security engines often watch closely: scanning folders, hashing files, reading logs/reports, checking save folders, creating backups, inspecting archives, and monitoring a user-started game launch for FTS/CTD evidence.

Crimson Doctor does not use DLL injection, runtime hooks, hidden telemetry, silent downloaders, memory patching, credential collection, background persistence, or privilege escalation.

If your antivirus flags it, treat it seriously, but also check the source page, release hash, scan details, and official download location. Unsigned modding utilities can receive false positives during early public releases before reputation builds up.

## Permissions

Crimson Doctor is freeware for personal use.

You may download and use official releases for free. You may share links to the official Nexus or GitHub release pages.

You may not modify, repackage, reupload, redistribute, sell, decompile, reverse engineer, or publish unofficial builds without explicit written permission from the author.

See `LICENSE` for the full permission terms.

## Sample-Driven Compatibility

If Doctor reports that a format or corruption pattern is unknown, that is intentional. Doctor does not guess.

Useful samples for future compatibility work include copied/labeled JSON mod folders, manager reports, Doctor reports, config files, mod-output folders, known-working saves, known-broken saves, and copied archive/output evidence where relevant. Do not send passwords, account data, unrelated personal files, or full game installs.

## Current Version

Crimson Doctor v1.0.2 RC.

