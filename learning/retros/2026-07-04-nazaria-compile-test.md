# Retro: Nazaria instantiation + compile test 01 (Atlas production validation)

- **Date:** 2026-07-04
- **Scope:** business/nazaria + kernel pipeline validation (CTO finding C2)
- **Work reviewed:** first real pass through the full loop — DNA → Knowledge
  → Taste → (Framework: none needed) → Workflow → Context Chain → Output →
  QA → Retro → Promotion — on a real business, two capability tiers.

## What worked

- **Manual compile is viable.** Hand-assembling the chain per
  kernel/context-chain.md produced a coherent single-file prompt in
  minutes; "cat is a valid compiler" holds.
- **Capability tiers are real contracts.** Same compiled prompt: frontier
  tier scored 11/12 (fix-then-ship), 8B scored 5/12 (rework) with exactly
  the failure modes the tier system predicts. `min_capability: medium` on
  draft-content is now evidence-backed, not guessed.
- **QUALITY_STANDARD gates mechanically.** Fabricated-statistic → Evidence
  0 → automatic Rework, no judgment call needed. Hard blockers earn their
  place on first contact.
- **[VERIFY] discipline held.** Neither the genome authoring nor the
  frontier draft invented owner-only facts; the draft was scoped so no
  unverified claim was needed.
- **Genome tiering (ADR-0007) paid off immediately** — core-5 took one
  sitting; full genome would have been 10 files of fiction.
- **Lint caught its job** (6/6 planted violations) and forced Nazaria's
  registry rows at instantiation.

## What failed or dragged

- **F1** `_template` shipped stale v0.1 dirs (brand/, strategy/) — fixed;
  template hygiene must be part of any genome change.
- **F2** Instantiation is manual toil: 15 frontmatter renames + 15 registry
  rows by hand. Error-prone at business #2, absurd by #5.
- **F3** Stage-3 budget math wrong: five ~150-token taste sections ≈ 750
  tokens vs. the 600 budget in context-chain.md. Compile worked because
  frontier context is cheap — a small-model compile would have to violate
  either the budget or the pattern.
- **F4** `ollama run` with prompt-as-argument hangs on Windows —
  the documented manual fallback was the unreliable path; HTTP API is the
  reliable one. Portability doc points the wrong way.
- **F5** Small-tier fabrication: specificity pressure makes an 8B invent
  numbers. Pattern needs a small-tier scaffold variant, or compiles below
  min_capability must be refused.
- **F6** PowerShell 5.1 default encodings corrupted em-dashes during a
  Constitution edit (mojibake incident) — cost a full-file rewrite.
- **F7** PR flow assumed `gh` CLI; machine has none and winget is broken —
  browser automation worked but is not a documented fallback.

## Promotion candidates → rows added to learning/PROMOTIONS.md

| Candidate | Origin | Target layer | Confidential? |
|---|---|---|---|
| Instantiation script (copy template, rename frontmatter, emit registry rows) | F2 | registry/ tooling (with lint.ps1) | no |
| Fix stage-3 budget to 800 tokens OR cap patterns at 4 taste sections | F3 | kernel/context-chain.md | no |
| Compile runner uses HTTP API; update manual-fallback guidance | F4 | kernel/portability.md + tool-map | no |
| Small-tier scaffold: "numbers only if quoted from FACTS" + refuse compiles below min_capability | F5 | agents/patterns + context-chain | no |
| Windows text-encoding rule (UTF-8 via [IO.File], never Set-Content default) | F6 | knowledge/ (ops) | no |

## Layer updates made directly (no promotion needed)

| Artifact | Change | Version |
|---|---|---|
| knowledge/models/qwen3-8b-2026-07.md | created — first model note | 1.0.0 |
| businesses/_template | stale dirs removed | — |

## Taste signals

- Specificity principle needs a small-model caveat — it actively induces
  fabrication below medium tier (see F5). Candidate refinement at next
  Atlas Hour, not a rewrite.

## Compiled-prompt observations (ADR-0004)

- Frontier output followed the persona's objection order without being
  told to — ordering objections in personas.md is doing real work; keep
  personas written as ordered objection lists.

## Decisions needing an ADR

- None new. F3/F4 fixes are minor versions of existing kernel docs.

## Verdict on CTO finding C2

**Closed.** The context chain compiles, gates, and discriminates between
capability tiers on a real business task. The architecture bet survives
first contact with production.
