---
name: genome
version: 1.0.0
status: active
type: kernel-doc
description: The standard structure every business instance must implement. Constitution Art. VI.
---

# Business Genome

Every folder under `businesses/` implements exactly this structure. Same
files, same names, same contracts — so every agent, workflow, and human can
navigate any business blind, and the context chain compiles identically for
all of them. `businesses/_template/` is the executable copy of this spec.

## The genome

| File / dir | Contains | Chain role |
|---|---|---|
| `DNA.md` | Identity core: mission, vision, values, story, stage, model — plus the **Compiled Identity Block** (≤300 tokens) | stage 1, every compile |
| `positioning.md` | For/who/category/unlike/we + proof points (≤300 tokens, paste-ready) | stage 1-2 |
| `voice.md` | Voice rules written as instructions to a writer (≤300 tokens) | stage 1-2 |
| `personas.md` | 1-5 named personas: situation, pain, buying trigger, objections, language they use | stage 2; critique audience-pass |
| `products.md` | What is sold (goods) — per item: promise, spec summary, status | stage 2 |
| `services.md` | What is sold (services) — per service: outcome, scope, delivery shape | stage 2 |
| `offers.md` | Packagings of products/services: bundles, tiers, guarantees, entry offers | stage 2 |
| `pricing.md` | Price points + the reasoning behind them (reasoning is the durable part) | stage 2 |
| `competitors.md` | Named alternatives incl. "do nothing"; their real strengths; our wedge | stage 2 |
| `website.md` | Site purpose, sitemap, key-page briefs. The site itself is an output |  |
| `sales.md` | How selling works: channel, funnel stages, objection handling, follow-up cadence |  |
| `marketing.md` | Channel strategy: where, why those, cadence, budget posture |  |
| `content.md` | Content strategy: pillars, formats, queue location, cadence |  |
| `automation.md` | What is automated, what deliberately isn't, tool mappings, manual fallbacks |  |
| `metrics.md` | The 3-7 numbers that matter, current values, review cadence, kill/scale thresholds |  |
| `knowledge/` | Business-specific facts (market, customers, lessons) — `knowledge` type artifacts | stage 2, searched first |
| `agents/` | Overrides/extensions of shared agents (shadowing, Art. V.16) | |
| `workflows/` | Overrides/extensions of shared workflows | |
| `output/` | Everything produced: `drafts/`, `published/`, queues. Outputs, never sources | |
| `decisions/` | Business-scoped ADRs | |

Mission and Vision live inside `DNA.md`, not as separate files: they are
consumed together at every compile, and identity fragments drift when split.

## DNA.md required sections

```markdown
# <Name> — DNA
## Mission        (why this business exists — one paragraph)
## Vision         (what the world/business looks like in 10 years — one paragraph)
## Values         (3-5, each with the trade-off it implies)
## Story          (origin + founder intent — the part marketing can't fake)
## Stage & model  (idea|validating|operating|scaling; revenue model; primary channel)
## Kernel pins    (yaml list; default empty = track latest active)
## Compiled Identity Block   <- THE contract: ≤300 tokens, self-contained,
                                what stage 1 of every compile injects
```

## Conformance

- Instance `status: active` requires every genome file present and non-stub.
  Until then: `draft` (Constitution Art. VI), whatever the revenue says.
- Genome changes are kernel changes: ADR + version bump here + template
  update + migration note for existing instances, same commit.
- A business may add files beyond the genome; it may never rename or repurpose
  genome files.
