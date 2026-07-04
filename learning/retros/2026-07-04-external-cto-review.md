# External CTO Review — Atlas OS v0.3.0

- **Date:** 2026-07-04
- **Scope:** entire architecture, adversarial. Mandate: find weaknesses, do
  not defend prior decisions.
- **Reviewer stance:** hired outsider; assumes the design is guilty until
  proven useful.

## Critical (fix before first business instance)

### C1. No remote — the 20-year system currently dies with one disk

Everything lives on `V:\` on a single Windows machine, no git remote. One
drive failure erases the "20-year" system in year zero. This is the single
largest risk in the entire architecture and no document even mentions backup.
**Fix:** add a private remote (GitHub/Codeberg/self-hosted) + second local
clone today. Add a `backup posture` line to the Constitution or NORTH_STAR.
Also absent: a secrets policy — the first API key committed to a 20-year
repo is permanent. One sentence in the Constitution + a `.gitignore` now,
before habits form.

### C2. The core bet is untested

The context chain — the load-bearing idea of the whole OS — has never been
compiled once, against any model, local or cloud. Stage budgets
(300/1200/600/400/200 tokens) are invented numbers with the confidence of
measured ones. If a real compile on a 7-8B model produces mush, the
knowledge-first architecture needs revision *before* five businesses sit on
top of it. **Fix:** before instantiating Nazaria, run one end-to-end manual
compile (fake business is fine) on a local model and a frontier model;
record results in `knowledge/models/`. This is a one-hour test protecting a
20-year bet.

### C3. Registry is manual and will silently rot

"Update index.yaml in the same commit" is a rule enforced by nothing. Manual
registries have a half-life of weeks. When the registry rots, discovery
rots, and Constitution Art. III.9 ("check the registry first") becomes
theater. **Fix:** a ~100-line dependency-free script (Python/PowerShell)
that parses frontmatter and regenerates index.yaml + fails on spec
violations. This is the highest-value automation in the entire capability
map and should be Planned → done within weeks, not years.

## High (fix soon; will hurt within months)

### H1. Everything depends on one human's discipline, and the system knows it doesn't

Weekly promotion review, monthly retros, quarterly pruning + portability
tests, blind re-scoring calibration — the compounding engine assumes a
solo operator sustains four recurring rituals indefinitely. Every personal
system with this structure fails the same way: rituals skip once, twice,
then permanently. The architecture even documents the danger (EVOLUTION_RULES
overhead ceiling) without solving it. **Fix:** collapse ceremonies — one
monthly "Atlas hour" covering promotions + retro batch, one quarterly
half-day covering pruning + portability + calibration. Two rituals maximum.
Update learning/README and EVOLUTION_RULES accordingly. A lighter loop that
runs beats a complete loop that doesn't.

### H2. The taste layer contains a ghost's taste

principles.md and anti-patterns.md are the AI architect's defensible
defaults, correctly marked `draft` — but nothing *forces* replacement, and
drafts that sit become de facto law (they're already wired into patterns'
`taste_sections`). The owner's actual taste — the thing the user themselves
called the difference between generating work and signing work — is the one
input Atlas cannot generate. **Fix:** taste bootstrap session as an explicit
blocker: no business instance goes `active` while taste-principles is
`draft`. Add the gate to genome conformance or the Constitution.

### H3. Genome is heavy enough to become procrastination

15 files before a business is "active" invites filling in templates instead
of selling. For a `validating`-stage business, half the genome is fiction by
definition (metrics thresholds? competitor watch fields? automation
inventory?). **Fix:** tier the genome: **core-5** (DNA, positioning,
personas, offers, metrics) required for `validating`; full genome required
for `operating`. One-line amendment to genome.md + Constitution Art. VI.
Structure should trail reality, per the system's own EVOLUTION_RULES §4.

## Medium (watch; act when the event arrives)

### M1. Charter-document sprawl is the new prompt sprawl

v0.3.0 added seven philosophy/standards documents in one sitting — eloquent,
overlapping, and unproven by a single artifact of real work. NORTH_STAR,
FIRST_PRINCIPLES, Constitution, DESIGN_PHILOSOPHY, and THINKING_MODEL share
perhaps 40% conceptual surface. The system now has more words about quality
than shipped work it has quality-checked. Not fixable by more writing — only
by use: if two charters keep answering the same question, merge them at the
first quarterly prune. The irony (complexity monument warned against in
NORTH_STAR, built in the same commit) should stay named and watched.

### M2. Token budgets are false precision

`context_budget_tokens` assumes a stable tokenizer across 20 years of
models. Tokens-per-word varies ±30% across today's tokenizers alone.
**Fix eventually:** re-denominate budgets in words (portable, human-checkable)
with tokens as a derived note. Minor now; annoying at portability-test time.

### M3. Confidentiality is a frontmatter honor system

Art. VII protections are tags, not mechanisms. Solo-operator acceptable; the
day a collaborator or an autonomous agent fleet touches the repo, tags stop
being protection. Tripwire: first external collaborator → revisit (separate
repo or filtered sync for `clients/`).

### M4. Provenance requires hand-assembled YAML no human will maintain

`compiled_from` blocks are exactly the kind of bookkeeping humans skip on
deadline. Fine while agents do the compiling (they don't forget); the manual
fallback path will produce provenance gaps. Accept the gap explicitly for
manual work, or fold provenance into the future compile script (C2/C3's
sibling).

### M5. Windows-primary environment vs. POSIX-flavored docs

README examples use `cat`/`cp` on a Windows machine. Trivial today, but the
portability doctrine should include the *shell*: examples in both, or note
that Git Bash is assumed.

## What survives the teardown (kept honest — strengths, not defense)

- Plain-text + git substrate: correct and boring in the best way. No change.
- Knowledge-first compilation: right bet *architecturally* — but see C2; it
  is a hypothesis until compiled once.
- Two-use test + single promotion funnel + archive-never-delete: genuinely
  good immune system, if H1's cadence problem is solved.
- QUALITY_BENCHMARKS with "average tells" and mechanical tests (logo-swap,
  5-second, photocopy): the most immediately valuable file in the taste
  layer — concrete enough to gate real work today.
- Verdict vocabulary + hard-gated Evidence/Taste dimensions: enforceable and
  cheap.

## Recommended sequence (all reversible except #1's urgency)

1. Remote + `.gitignore` + secrets line — today (C1).
2. One end-to-end compile test, local + frontier model — before Nazaria (C2).
3. Registry lint script — within weeks (C3).
4. Ritual collapse to two ceremonies (H1) + genome tiering (H3) — one small
   ADR covering both.
5. Taste bootstrap with the owner — blocker for first `active` business (H2).

## Promotion candidates from this review

| Candidate | Target | Notes |
|---|---|---|
| Backup/secrets posture | CONSTITUTION.md amendment | via ADR |
| Genome core-5 tier | dna/genome.md + Art. VI | via ADR |
| Ritual collapse (2 ceremonies) | learning/README + EVOLUTION_RULES | via ADR |
| Word-denominated budgets | kernel/context-chain.md | at first portability test |
