---
name: ops-windows-text-encoding
version: 1.0.0
status: active
type: knowledge
description: Writing UTF-8 text files on Windows without corrupting em-dashes and other non-ASCII — the encoding rule for all Atlas scripting on this environment.
confidence: high
last_verified: 2026-07-04
sources: [compile test 01 mojibake incident (Constitution edit); registry/lint.ps1]
---

# Windows text encoding rule

The reference machine runs Windows PowerShell 5.1, whose default output
encoding is **not** UTF-8. Writing Atlas artifacts (all UTF-8, many with
em-dashes `—`, arrows `→`, curly quotes) with default cmdlets corrupts them
into mojibake (`â€"`). This bit us during a Constitution edit and cost a
full-file rewrite.

## Rules

1. **Never** write governed artifacts with bare `Set-Content` / `Out-File` in
   PowerShell 5.1 — their default is UTF-16 or ANSI depending on cmdlet.
2. To write UTF-8 without BOM from PowerShell:
   ```powershell
   $enc = New-Object System.Text.UTF8Encoding($false)   # $false = no BOM
   [IO.File]::WriteAllText($path, $text, $enc)
   ```
3. To read: `[IO.File]::ReadAllText($path, [Text.Encoding]::UTF8)`.
4. Prefer the harness Write/Edit tools over shell writes for artifacts — they
   handle encoding correctly. Use the pattern above only when a script must
   generate files (e.g. the instantiation script, model-run output capture).
5. `registry/lint.ps1` reads with explicit UTF-8 for the same reason; follow
   that pattern in any new Atlas script.

## Why this is knowledge, not a one-off

Every future PowerShell script in Atlas (instantiation, compile runner,
future automation) hits this. Writing it once here means no one re-learns it
by corrupting a file. Portable note: on a POSIX runner this rule is moot
(UTF-8 default) — it is environment-specific, hence `knowledge/ops/`, not a
kernel rule.
