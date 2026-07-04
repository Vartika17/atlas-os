---
name: quality-standard
version: 1.0.0
status: active
type: taste
description: The measurable review scorecard every artifact passes before delivery. critique.md is the method; this is the meter.
---

# Quality Standard

Every artifact leaving Atlas — draft to a human gate, deliverable to a
client, page to production — is scored here first. The four-pass critique
(critique.md) finds problems; this file decides pass/fail with numbers.

## The scorecard

Six dimensions, each scored **0 / 1 / 2**:

| # | Dimension | 2 | 1 | 0 |
|---|---|---|---|---|
| 1 | **Contract** | Meets every line of the task contract (format, scope, length) | Minor deviation, no re-work needed to use | Misses format, scope, or the job itself |
| 2 | **Audience** | The named persona understands in one pass and knows what to do | Understandable with effort; action fuzzy | Wrong reader, wrong language, or no clear action |
| 3 | **Evidence** | Every claim traces to knowledge; zero unresolved [VERIFY]; assumptions marked | ≤2 minor unsourced claims, none material | Material claim unsourced, invented, or wrong |
| 4 | **Taste** | Zero anti-pattern hits; relevant principles visibly applied | ≤2 minor principle violations, cited and defensible | Any anti-pattern hit, or principles ignored |
| 5 | **Craft** | Details clean: typography, alignment, naming, links, grammar, edge cases | ≤3 cosmetic defects | Defects a client would notice in the first minute |
| 6 | **Benchmark** | Meets the relevant QUALITY_BENCHMARKS.md class standard | Meets most of it; gaps named and accepted consciously | Reads as average per the benchmark's "average" tells |

## Verdict thresholds (mechanical — no negotiation with the meter)

- **Ship:** total ≥ 10, AND no dimension at 0, AND dimensions 3 (Evidence)
  and 4 (Taste) both at 2.
- **Fix-then-ship:** total ≥ 8, no dimension at 0 — fixes enumerated,
  re-score after.
- **Rework:** any dimension at 0, or total < 8.
- **Kill:** purpose itself failed (step 1 of THINKING_MODEL.md was wrong) —
  note the lesson, stop polishing.

Evidence and Taste are hard-gated because they are the two failures that
compound: a craft flaw embarrasses once; a false claim or off-brand piece
damages trust that took years.

## Hard blockers — automatic Rework regardless of score

1. Unresolved `[VERIFY: ...]` marker anywhere.
2. Asset used without a manifest + license (assets/README.md).
3. Anything on QUALITY_BENCHMARKS.md "never ships" list.
4. Client-confidential material outside its engagement folder (Art. VII).
5. No `compiled_from` provenance on an agent-produced artifact.

## Protocol

- Scorer: agent self-scores first (critique pattern includes the scorecard),
  human at the gate confirms or overrides. **Override rule:** a human may
  override any score except the hard blockers — overrides are recorded in
  the critique file with one line of why (they are taste-evolution data).
- The filled scorecard lives in the `-critique.md` file beside the work.
- Three consecutive artifacts from one workflow scoring < 10 → workflow
  retro immediately, not at month-end; something upstream (knowledge, taste,
  pattern) is broken.

## Calibration

Quarterly: re-score 3 randomly picked past "ship" artifacts blind. Scores
drifting > 2 points from the original = the standard is being bent — recalibrate
by critiquing the *scorer*, not softening the meter.
