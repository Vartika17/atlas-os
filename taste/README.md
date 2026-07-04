---
name: taste-readme
version: 1.0.0
status: active
type: kernel-doc
description: Charter of the Taste layer — how creative judgment is captured, versioned, and consumed.
---

# Taste

Knowledge is what's true. Taste is what's *good*. This layer makes creative
judgment portable: writable in text, consumable by any model, improvable by
retro like everything else.

## Contents

| File | Job | Consumed at |
|---|---|---|
| `principles.md` | Positive judgment — what good looks like, in labeled sections | context chain, stage 3 |
| `critique.md` | Critique methodology — how to evaluate any creative output | review steps in workflows |
| `anti-patterns.md` | Negative judgment — defects that never ship, with tells | context chain + review |
| `rejections.md` | Owner's standing vetoes — directions never pursued | **brief/direction stage**, before work starts |
| `DESIGN_PHILOSOPHY.md` | Stances behind the rules — decides novel cases | human + agent judgment |
| `QUALITY_STANDARD.md` | The measurable scorecard + hard blockers | every delivery gate |
| `QUALITY_BENCHMARKS.md` | What great looks like per artifact class | critique + scorecard dim. 6 |
| `references/` | Reference studies of world-class work (no binaries) | source for principles; taste evolution |

## Why rules-and-rubrics, not example dumps

A folder of inspiration images is not taste — it's untranscribed taste, and it
dies with the person who collected it. Atlas records *why* a reference is good
(the reference note) and distills the why into principles and anti-patterns.
Text survives model changes, tool changes, and decades; image collections
survive none of those. Binaries, when worth keeping, are asset-manifests
pointing to external storage.

## How taste evolves

Only through the learning loop:
- A critique keeps flagging something no principle covers → retro proposes a
  new principle (via `learning/PROMOTIONS.md`).
- A principle keeps getting overridden with good results → weaken or delete
  it. A taste rule that's always overridden is noise.
- A shipped piece embarrasses us later → anti-pattern entry with the autopsy.

Businesses may **extend** taste in their instance (brand-specific rules in
`voice.md` / genome files) but may not contradict kernel-level anti-patterns;
a contradiction means either the instance is wrong or the anti-pattern is —
resolve via promotion review, not silent divergence.
