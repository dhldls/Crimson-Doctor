# Manager Integration Contract

This project must be compatibility-first. It should never emit files, reports, manifests, backups, or "repairs" that Crimson Desert or existing modding tools cannot actually understand.

## Quick Integration Summary

This document is for mod manager authors, patcher authors, support helpers, and tool maintainers who want Crimson Doctor to work beside their own tooling without replacing it.

Use Doctor for:

- JSON mod validation, patcher scans, patcher reports, and safe JSON merge previews
- Launch Watch, FTS/CTD/startup crash classification, and support reports
- conflict evidence, mod-output audit, toolchain audit, native plugin audit, and archive handoff evidence
- save-risk checks, recovery timelines, restore planning, cloud-risk notes, and downloaded-save quarantine
- redacted support bundles that users can send to mod authors or support threads

Call Doctor when:

- a user is about to launch a risky modded setup
- a mod manager needs one read-only preflight result before launch
- a mod author needs structured evidence instead of screenshots
- a user reports "the manager applied mods, but nothing changed in game"
- a game update breaks JSON/value mods and the community needs versioned evidence
- sample evidence is needed before deeper compatibility, parser, archive, or save work can be claimed

Sample-driven compatibility work:

- prefer Doctor support bundles, manager reports, JSON mod folders, copied save folders, copied archive/output evidence, and Launch Watch reports
- label samples clearly: known-working, known-broken, vanilla, modded, game version, manager used, what changed, and what failed
- do not request personal files, account data, passwords, unrelated folders, or full game installs
- larger copied samples should only be requested when they are truly needed for compatibility or format research

Short CLI surface for managers:

```powershell
python -m crimson_doctor manager-contract --output ".\reports\manager-contract.md" --json-output ".\reports\manager-contract.json"
python -m crimson_doctor manager-preflight --include-dir ".\mods" --game-root "C:\Steam\steamapps\common\Crimson Desert" --save-root "C:\Users\<Username>\AppData\Local\Pearl Abyss\CD\save" --current-exe "C:\Steam\steamapps\common\Crimson Desert\CrimsonDesert.exe" --output-dir ".\reports" --print-json
python -m crimson_doctor json-patcher scan --current-exe "C:\Path\To\CrimsonDesert.exe" --input ".\mods\example.json" --json-output ".\reports\json-scan.json" --tone mid
python -m crimson_doctor support-bundle --source ".\reports\support.md" --include-dir ".\reports" --output-dir ".\support-bundle" --print-json
```

Managers should consume Doctor's JSON output, not scrape Doctor's human-readable narration.

Doctor Read wording is intentionally a user-facing narration layer, not a data contract. In v1.0.4 Stable it includes 3 readability modes, 65 Navigator issue/goal topics, 16 guided triage lanes, 132 curated notice/blocker phrase parts, 144 safe-operation failure phrase parts, 96 Hurry up acknowledgement lines, 18 JSON patcher interpretation categories, 108 JSON patcher next-step guidance lines, and 72 external manager conflict/load-order guidance lines. The wording can vary by selected readability mode, but the evidence, hashes, classifications, and structured JSON output should remain stable for manager integrations.

When manager-facing or GUI-triggered operations fail after Doctor has already launched, Doctor attempts to contain the failure, write local operation-failure evidence, and return a Doctor Read explanation instead of crashing the app. Integrations should still treat structured JSON outputs as the authoritative contract; Doctor Read is for humans.

## Core Rule

If Crimson Desert, an external MM, a patcher, a save/editor tool, or another supported tool would look at our output and treat it as nonsense, then the feature is not done.

No invented aliases. No invented field names. No synthetic save structures. No "fixed" output unless the game/tool acceptance path is real and proven.

## Compatibility Tiers

A feature must declare its current tier.

### Tier 0: Inventory Only

- detects files, folders, timestamps, hashes, and logs
- lints strict JSON syntax and reports parser errors
- compares user-created hash baselines for user-owned files
- generates redacted setup blueprints from observed state
- no format claims beyond shallow metadata
- no writes except our own reports/backups

Acceptable for MVP.

### Tier 1: Verified Parser

- parses a real format from real samples
- has fixtures from known-good files
- rejects unknown versions instead of guessing
- records unsupported fields as unknown, not invented names

### Tier 2: Tool-Aware Adapter

- understands a specific external tool's real config, backup, log, or manifest layout
- reads the tool's output without modifying it
- has version detection where possible
- fails closed when the layout changes

### Tier 3: Managed Write

- writes only to formats the target game/tool is documented or empirically proven to accept
- creates a backup first
- validates round-trip output before exposing it to the user
- records the exact tool/game version it was built against
- uses a restore manifest for any temporary safe-mode rename, bypass, symlink, or junction
- restores state after the session and verifies hashes match the pre-operation manifest

Avoid this tier until we have strong fixtures.

### Tier 4: Game/Tool Confirmed

- output is accepted by the actual target
- for saves: user or automated workflow confirms the game loaded the save
- for manager interop: target manager imports/reads the output without errors
- for archive output: game sees the file and behavior changes in-game

This is the only tier allowed to use words like "verified," "confirmed," or "repair."

## Supported Integration Style

Prefer read-only and sidecar integration.

Good:

- read external MM, patcher, and save/editor logs
- read backup folders
- read mod manifests
- read generated overlay outputs
- produce separate reports
- produce a standalone recovery bundle
- expose CLI JSON that mod managers can call
- run as an explicit launch wrapper or user-enabled watcher

Risky:

- writing into another tool's config
- modifying another tool's backup registry
- generating a mod package for another manager
- editing game archives or saves directly
- persistent process monitoring without a clear user-facing toggle
- temporary file renames to disable loaders without a restore manifest
- symlink/junction save redirection without proving the game used the redirected path

Forbidden until proven:

- acting as a mod manager
- fabricating manager metadata
- writing unproven save binaries
- writing a "repair" file that has not passed round-trip validation
- injecting into Crimson Desert for crash logging
- collecting or uploading telemetry without explicit consent
- purging orphaned data from save files without a verified parser and game-load validation
- claiming safe mode or sandbox isolation if Doctor cannot restore the exact prior state
- altering cloud-managed saves without explicit user confirmation and an out-of-band backup

## Runtime Memory Integration Gate

External runtime-memory tools prove that Python-based utilities can attach to a live game process when they deliberately use process-memory libraries, AOB scans, remote allocation, code caves, or overlay layers. That feasibility does not make runtime attachment appropriate for Crimson Doctor's normal diagnostic path.

Runtime memory work must be treated as a separate high-risk tier:

- opt-in only
- visible to the user
- never required for ordinary save recovery, support reports, FTS logging, CTD logging, or Doctor's own self-diagnostics
- no injection or code patches for MVP crash logging
- no silent persistent process attachment
- clear UAC/admin explanation if required
- version-gated AOB signatures with a hard fail when signatures do not match
- original bytes captured before any patch
- uninstall/restore path proven before exposing the feature
- local logs explaining every process attach, read, allocation, patch, and restore

Any runtime-memory adapter must remain separate from the normal product lane. The main product remains read-only, sidecar, and evidence-first.

## Transaction Requirements

Features such as Panic Button and Quarantine Sandbox are only acceptable when implemented as reversible transactions.

Required:

- pre-operation manifest of every file/folder/link that may change
- hash or metadata capture where practical
- lock/check that the game and conflicting managers are not already running
- exact restore plan before the operation begins
- post-restore verification
- emergency restore command if Doctor or the game exits unexpectedly
- local report explaining every temporary change

If Doctor cannot build a restore plan, it must not perform the operation.

## Blueprint Requirements

Setup blueprints are read-only fingerprints, not mod packages.

Allowed:

- schema version
- game version where detectable
- Doctor version
- manager/tool versions where detectable
- active mod IDs/names where available
- file hashes and sizes for mod outputs
- load/order metadata where available
- user-created vanilla baseline ID

Forbidden:

- personal filesystem paths
- account identifiers
- save contents
- proprietary game file contents
- embedded mod files
- secrets/tokens/API keys

## Adapter Design

Each tool integration gets its own adapter.

Examples:

- `external_mm_adapter`
- `external_json_manager_adapter`
- `json_mod_auto_patcher_adapter`
- `external_save_editor_adapter`

Each adapter should answer:

- What paths does this tool use?
- What files does it write?
- What logs can we read?
- What backups can we index?
- What version produced the output?
- What is safe to read?
- What is unsafe to touch?

Adapters should return structured data plus confidence levels. Low confidence should produce a warning, not an action.

## Doctor JSON Patcher Core

CD JSON Mod Auto Patcher v0.8.0 is now the Doctor-native patcher core. Publicly, Crimson Doctor should read as the major continuation of that patcher: JSON mod patching, JSON mod compatibility checking, and patcher-aware troubleshooting are first-class workflows, not hidden side utilities.

Internally, Doctor vendors the v0.8.0 engine and calls its headless scan/patch path in-process.

Doctor should recognize:

- canonical `patches` / `changes` JSON mods
- flat single-change JSON mods
- nested wrapper payloads such as `payload`, `data`, `mod`, or `config`
- aliases such as `target_file`, `targetFile`, `address`, `addr`, `original_bytes`, `expectedBytes`, `replacement_bytes`, and `replacementBytes`
- generated `anchor_signatures`
- `manual_choices`
- `archive_overlay_targets` and archive overlay handoff metadata
- capabilities/report JSON with `engine: "CD JSON Patcher"`

Doctor should not hardcode a local output folder layout from the old development sandbox. The contract is the JSON schema/lingo, the headless/capabilities report shape, and Doctor's wrapper around the vendored v0.8.0 engine.

Compatibility behavior:

- strict JSON syntax errors are still real errors
- supported patcher JSON shapes should be reported as patcher-compatible evidence
- unsupported semantic-only JSON should be reported as incomplete/unsupported for the patcher, not as a Doctor crash
- Doctor should explain patcher failure categories if present, such as `ASSET_WRONG_VERSION`, `ASSET_RELOCATION_AMBIGUOUS`, and `ASSET_RELOCATION_TOO_MANY_CANDIDATES`
- Doctor should expose patch generation as copied JSON output, not as source-file mutation
- Doctor may optionally copy source JSON inputs into a Doctor-owned backup folder before patched-copy generation
- Doctor should surface patcher-generated compatibility reports when the vendored engine writes them, without inventing a replacement report format
- Doctor should expose old/current EXE backup inventory through the v0.8.0 manifest logic, not through invented backup metadata
- Doctor should keep patcher runtime files under Doctor-owned runtime/output folders

## CLI Contract For Managers

If mod managers want to call Doctor, they should use the public command surface rather than importing Python internals. Source checkouts can call this surface through `python -m crimson_doctor ...`; packaged/installable builds expose the same parser as `crimson-doctor ...`.

Current headless-safe command families:

```text
crimson-doctor manager-preflight --include-dir <mods> --game-root <game> --save-root <saves> --current-exe <exe> --print-json
crimson-doctor manager-contract --print-json
crimson-doctor scan --save-root <path>
crimson-doctor timeline --save-root <path> --backup-dir <path> --print-json
crimson-doctor triage-plan --symptom <symptom> --print-json
crimson-doctor evidence-intake-plan --focus <focus> --print-json
crimson-doctor report --game-root <path> --include-dir <path> --print-json
crimson-doctor support-bundle --source <report.md> --include-dir <reports> --output-dir <path> --print-json
crimson-doctor brain-audit --game-root <path> --include-dir <path> --print-json
crimson-doctor case-memory approve --report <support.json> --case-memory <path> --print-json
crimson-doctor toolchain-audit --include-dir <path> --iq <high|mid|low> --print-json
crimson-doctor mod-output-audit --include-dir <path> --print-json
crimson-doctor archive-workflow-audit --include-dir <path> --print-json
crimson-doctor conflict-report --include-dir <path> --print-json
crimson-doctor json-merge-plan --include-dir <path> --print-json
crimson-doctor config-edit plan --file <config> --set <section.key> --value <value> --print-json
crimson-doctor config-edit apply --file <config> --set <section.key> --value <value> --backup-dir <path> --print-json
crimson-doctor config-edit rollback --manifest <manifest.json> --print-json
crimson-doctor orphaned-data-audit --include-dir <path> --print-json
crimson-doctor cloud-guard --save-root <path> --backup-root <path> --print-json
crimson-doctor inspect-save-import --source <archive-or-folder> --existing-save-root <path> --print-json
crimson-doctor json-mod-validator --include-dir <path> --print-json
crimson-doctor json-patcher capabilities --print-json
crimson-doctor json-patcher backup-inventory --print-json
crimson-doctor json-patcher archive-current-exe --current-exe <path> --print-json
crimson-doctor json-patcher scan --current-exe <path> --input <json-or-folder> --print-json
crimson-doctor json-patcher patch --current-exe <path> --input <json-or-folder> --output-dir <path> --print-json
crimson-doctor safe-mode plan --game-root <path> --print-json
crimson-doctor sandbox plan --game-root <path> --real-save-root <path> --sandbox-root <path> --print-json
crimson-doctor baseline create --game-root <path> --output <baseline.json>
crimson-doctor baseline check --game-root <path> --baseline <baseline.json>
crimson-doctor blueprint create --include-dir <path> --print-json
crimson-doctor blueprint compare --blueprint <string-or-file> --include-dir <path>
crimson-doctor watch-launch --output-dir <path> -- <CrimsonDesert.exe>
```

Current contract:

- `manager-preflight` is the preferred single-call launch-gate command for external manager UI because it aggregates the main read-only pre-launch checks, Doctor Brain summary, and Doctor Verdict into one versioned payload
- `toolchain-audit` and `manager-preflight` may ingest supported external manager bug reports found under supplied include directories
- manager bug-report intake is read-only and only turns report rows into evidence, warning summaries, load-order test suggestions, and compatibility notes
- Doctor must not rewrite another manager's order, config, database, backup registry, or deployment state from a parsed report
- mount-time backup rows such as `vanilla_backup=n/a (mount-time)` must be treated as not applicable, not as missing backup evidence
- commands that support `--print-json` write machine-readable JSON to stdout
- commands that support `--json-output <path>` write the same evidence to disk
- Markdown output is for humans; JSON output is for managers and automation
- schemas must be versioned with `schema_version` where the workflow owns a schema
- managers should treat unknown schema versions, `unsupported`, `blocked`, or high-severity findings as user-review cases
- managers should not parse Doctor's human narration as an API
- `brain-audit` exposes Doctor's deterministic fact/rule summary for manager UI and support triage
- `case-memory approve` is opt-in local learning from a user-approved support JSON report; managers must not approve or upload cases silently
- `config-edit plan` is read-only; `config-edit apply` and `config-edit rollback` are managed-write actions that require an explicit user action, parser validation, backup evidence, and a visible manifest

Exit-code contract:

- `0`: pass, success, clean read-only report, or completed user-approved write workflow
- `1`: warning, difference, user-review state, or partial readiness without a destructive failure
- `2`: blocked, failed, unsafe, missing required input, or user-approved write workflow did not complete
- `4`: command dispatch fallback inside the CLI parser; treat this as an integration error and verify the command/version/argument shape

Manager API hardening:

- Manager Contract now publishes a first-pass exit-code matrix and primary schema index through `manager-contract --print-json`
- manager preflight examples require real external-manager output folders before being documented as supported recipes
- stricter machine-readable schema files should only be added when external callers need validation beyond the current schema index
- GUI-only features stay blocked until an equivalent CLI/JSON report path exists

This lets an external MM or adjacent tool consume Doctor results without guessing and without depending on unstable internals.

## Game File Truth Gates

Archive-related features must validate against actual Crimson Desert mechanics:

- real PAZ/PAMT/PAPGT/PABGB/PABGH layout
- real path routing
- real compression flags
- real encryption flags
- real hash/integrity expectations
- real game version

If a file is only "probably" valid, say "probably" and explain why.

## Save File Truth Gates

Save-related features must be stricter:

- preserve the original save folder before any write
- treat encryption/compression/signature/HMAC/checksum as blocking until proven
- never synthesize unknown fields
- never call a save fixed unless the game loads it
- prefer restoring last known working state over binary mutation

Repair adapters must be specific:

```text
Repair: rebuild missing slot manifest
Supports: Crimson Desert vX.Y.Z, Steam save layout, manifest version N
Does not support: encrypted slot body repair
Validation: game loaded restored slot
```

## Practical Acceptance Rules

Before calling a feature supported, collect:

- one clean vanilla install snapshot
- one modded install snapshot from each supported manager
- one known-good save folder
- one intentionally broken save folder
- one downloaded community save archive
- logs from successful and failed manager runs

Required checks:

- parse fixtures without crashing
- reject unknown samples clearly
- preserve byte-for-byte backups
- produce deterministic reports
- prove restore outputs match expected hashes
- confirm target tool/game accepts any generated output

## Product Promise

The user-facing promise is:

> We help you understand and recover your Crimson Desert mod/save state using real evidence from your game, your saves, and your tools.

The promise is not:

> We magically repair every save or replace your mod manager.
