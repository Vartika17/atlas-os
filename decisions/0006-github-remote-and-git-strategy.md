# ADR-0006: GitHub private repo as canonical remote; trunk-based git strategy; secrets policy

- **Date:** 2026-07-04
- **Status:** accepted
- **Scope:** kernel

## Context

CTO review finding C1: the entire system lived on one local disk with no
remote — unacceptable for a 20-year horizon. Owner decision: git is the
source of truth; GitHub (private) is the backup and collaboration layer;
future mirrors (GitLab, self-hosted Gitea) must remain possible.

## Decision

1. **Remote:** private GitHub repository `atlas-os` is the primary remote
   (`origin`). Git history is canonical; GitHub is replaceable — no
   GitHub-only features (Issues, Wiki, Projects) may become sources of truth.
   Mirrors may be added as additional remotes at any time.
2. **Branch strategy:** trunk-based. `main` is the only long-lived branch and
   is always coherent (registry in sync, specs valid). Short-lived branches
   optional for experiments; merged or archived within days. OS releases are
   annotated tags (`v0.3.0` style) matching `registry/index.yaml` os.version.
3. **Secrets policy (absolute):**
   - No credentials, tokens, API keys, or client-confidential binaries in the
     repository, ever — enforced socially by this ADR and mechanically by
     `.gitignore` patterns.
   - Secrets live in environment files / OS credential stores outside the
     repo; artifacts reference them by abstract name only (like tool-map).
   - A leaked secret is treated as compromised immediately (rotate, then
     history-scrub if feasible) — prevention is the real control, since a
     20-year git history makes removal after the fact unreliable.
4. **Client work gate:** no client-confidential content enters the repo until
   this ADR's policy is active and the remote is live.

## Alternatives considered

- **Self-hosted Gitea as primary** — best sovereignty, but adds a server to
  maintain from day one; better as a mirror later.
- **Cloud-drive sync as backup** — syncs corruption as faithfully as data;
  no history semantics.
- **Git bundles to external disk** — good *supplementary* cold backup;
  manual, so it decays as the only mechanism.

## Consequences

Easier: disk failure stops being existential; collaboration possible later.
Harder: GitHub account is now infrastructure (2FA + recovery codes matter);
the vendor-agnostic rule must be actively defended against GitHub feature
creep. Constitution amended (Art. I) to require an off-machine remote and
forbid secrets in the repo.
