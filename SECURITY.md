# Security Policy

## Supported Versions

The supported public release line is official Crimson Doctor v2.x builds.

Older preview, audit, or internal builds are not supported for public security review.

## Project Security Boundary

Crimson Doctor is a local Windows diagnostic and recovery-support tool.

The public safety boundary is:

- no telemetry upload
- no networking or phone-home behavior
- no runtime hooks
- no DLL injection
- no process memory writes
- no silent edits to another tool's private state
- no live PAZ/PAMT/PAPGT deployment claim
- no universal archive repack or LZ4 guarantee
- no named-field table editing guarantee
- no external game or manager acceptance guarantee

## Reporting a Vulnerability

If you find a security issue in an official Crimson Doctor release, report it through the official GitHub repository.

Preferred path:

1. Use GitHub Security Advisories if available.
2. If private advisories are not available, open a minimal public issue that says a security report exists, without posting exploit details, private paths, crash dumps, save data, or mod archives.
3. Wait for maintainer follow-up before sharing sensitive details.

Useful report details:

- Crimson Doctor version
- Windows version
- whether the EXE came from an official release channel
- SHA-256 of the ZIP or EXE you tested
- short description of the issue
- exact steps to reproduce, if safe to share privately
- whether the issue requires a malicious archive, malicious mod package, local file write, or user confirmation

Do not post:

- personal save files
- private local paths
- crash dumps with account names
- exploit payloads
- malicious archives
- third-party copyrighted mod files
- reverse-engineered game data

## Security Issues In Scope

Examples of issues worth reporting:

- path traversal or unsafe archive handling
- source file mutation without an explicit user action
- rollback failure that leaves files in an unsafe state
- report redaction failure that leaks private paths or usernames
- crash or hang from a crafted input file
- unsafe handling of untrusted mod packages
- hash mismatch in an official release artifact
- official package contents that do not match the published hashes

## Out Of Scope

The following are generally not security vulnerabilities in Crimson Doctor:

- warnings caused by unsigned freeware distribution
- SmartScreen unknown-publisher prompts
- antivirus heuristic warnings on unofficial, modified, or repackaged copies
- issues caused by third-party mod managers
- issues caused by unofficial reuploads
- requests to bypass anti-cheat, DRM, or platform restrictions
- requests for live process hooks, injection, or memory editing

## Official Builds

Only trust official release channels controlled by the author.

Before running a downloaded release, compare its SHA-256 hash with the published hash.

Unofficial repacks, modified builds, and reuploads are unsupported.

## No Bug Bounty

Crimson Doctor does not currently operate a paid bug bounty program.

Security reports are still appreciated and will be handled in good faith.
