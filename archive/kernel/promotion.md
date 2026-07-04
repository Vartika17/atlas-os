---
name: promotion
version: 1.0.0
status: archived
superseded_by: evolution-rules
type: kernel-doc
description: The single funnel by which anything becomes shared — instance → learning queue → layer → (rarely) kernel.
---

# Promotion Path

Compounding is a pipeline, not a habit. This is the pipeline.

## The funnel

```
instance work ──retro──> learning/PROMOTIONS.md (candidate)
                                │  review (owner, weekly batch)
                ┌───────────────┼────────────────────┐
                ▼               ▼                    ▼
           rejected        promoted to layer     structural change
        (note why, keep    knowledge/ taste/     → ADR + kernel spec
         row for pattern-  frameworks/ agents/     version bump
         spotting)         workflows/ dna/
```

## Rules

1. **Everything shared enters through the queue.** No direct commits of new
   shared artifacts from instance work — the queue row is where "used twice?"
   and "business-specific?" get checked (Constitution Art. III, V).
2. **Promotion levels.** Most candidates land in a layer (a knowledge note, a
   taste rule, a workflow tweak). Only *contracts* land in the kernel — and a
   kernel change always means an ADR if structural, a version bump always.
3. **The two-use test.** First use: stays in the instance. Second use (or
   clearly imminent second use): queue it. Speculative generalization is
   rejected at review — it is inventory, not investment.
4. **Confidentiality check.** Candidates originating in client work carry the
   engagement path; reviewer confirms Art. VII before promoting.
5. **De-generalization.** If a shared artifact turns out to serve only one
   business, demote it: move into that instance, deprecate the shared copy to
   `archive/`. Wrong abstractions cost more than duplication.

## Queue row format

See `learning/PROMOTIONS.md` header. One row per candidate; rows are never
deleted — rejected rows are the system's record of what it chose not to
become.
