# ADR-0007: Two ceremonies maximum; genome tiers by business stage

- **Date:** 2026-07-04
- **Status:** accepted
- **Scope:** kernel

## Context

CTO review findings H1 and H3. The compounding engine assumed four recurring
rituals (weekly promotion review, monthly retros, quarterly pruning +
portability, quarterly calibration) sustained by one solo operator
indefinitely — the classic failure mode of personal systems. Separately, the
genome demanded 15 non-stub files before any business counts as more than
`draft`, inviting template-filling instead of selling for early-stage
businesses.

## Decision

**1. All recurring maintenance collapses into exactly two ceremonies:**

- **Atlas Hour** — monthly, ~60 minutes:
  - process `learning/PROMOTIONS.md` queue (promote / reject / hold)
  - batch retros for the month's completed work
  - run `registry/lint.ps1`; fix violations
  - push + tag if a release is due
- **Deep Service** — quarterly, ~half day:
  - pruning review (EVOLUTION_RULES §5: usage audit, de-generalization,
    benchmark pruning, contradiction sweep)
  - portability test (top prompts against current local model;
    `knowledge/models/` notes)
  - quality calibration (blind re-score of 3 past "ship" artifacts)
  - capability map + charter overlap review
  No third ceremony may be created; a new recurring need must fit inside one
  of these two or displace something.

**2. The genome tiers by stage:**

- **Core genome** (required for `validating` stage): `DNA.md`,
  `positioning.md`, `personas.md`, `offers.md`, `metrics.md`.
- **Full genome** (required for `operating` and beyond): all 15 files + dirs.
- A business below its stage's tier is `draft`. Files above the current tier
  may exist as stubs without penalty — structure trails reality
  (EVOLUTION_RULES §4).

## Alternatives considered

- **Keep four rituals, add calendar automation** — automation doesn't create
  the attention; it creates notifications to ignore.
- **No cadence at all, purely event-driven** — promotion queues and pruning
  demonstrably don't happen "when there's time"; two protected slots is the
  minimum viable discipline.
- **Single-tier genome, just tolerate stubs** — without a named tier, "stub"
  becomes permanent and conformance meaningless.

## Consequences

Easier: the loop is small enough to actually run; validating-stage businesses
reach useful status with 5 honest files. Harder: monthly (not weekly)
promotion latency — acceptable; the queue holds. Constitution → v2.2.0
(Art. VI.18 tiers), genome.md → 1.1.0, learning/README + EVOLUTION_RULES
updated in the same commit.
