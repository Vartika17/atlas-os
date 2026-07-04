---
name: context-chain
version: 1.0.0
status: active
type: kernel-doc
description: The prompt compiler contract — how DNA, knowledge, taste, frameworks, workflows, and patterns assemble into an ephemeral prompt.
---

# Context Chain

Every agent task compiles its prompt from the layers, in this fixed order.
Concatenating the named files in order **is** a valid compilation — the
contract assumes nothing smarter than `cat`. Runners may get smarter
(slot-filling, budget-aware trimming); the order and budgets never change
without a major version bump here.

## Assembly order and default budgets

| # | Stage | Source | Default budget (tokens) | Droppable? |
|---|---|---|---|---|
| 1 | Identity | `businesses/<b>/DNA.md` — the Compiled Identity Block only | 300 | **never** |
| 2 | Knowledge | task-relevant notes: instance `knowledge/` first, then shared `knowledge/` | 1200 | trim to top-3 facts, never to zero |
| 3 | Taste | `taste/principles.md` slice + the one relevant critique rubric | 600 | drop for `small` tier |
| 4 | Framework | the framework the workflow step names, if any | 400 | drop for `small` tier |
| 5 | Task contract | the workflow step's input/output contract | 200 | **never** |
| 6 | Pattern | `agents/patterns/<pattern>.md` body with slots filled | remainder | **never** |

Default total: 4000 tokens (portability.md). Stages 1, 5, 6 are the invariant
core — a compiled prompt is invalid without all three.

## Degradation ladder (small models / tight context)

Drop in this order until under budget:

1. Taste references and examples (keep taste *rules*)
2. Framework body (keep its one-line conclusion if the step depends on it)
3. Knowledge → top-3 most task-relevant facts
4. Taste entirely
5. If still over: the task is mis-scoped — split the workflow step. Never
   truncate DNA, task contract, or pattern.

## Selection rules

- **Knowledge relevance** is decided by the workflow step (`knowledge:` hints
  in the step definition) or, absent hints, by the agent grepping instance
  knowledge for the task's nouns. When in doubt, less: irrelevant context
  degrades small models faster than missing context.
- **Taste slice**: `taste/principles.md` is written in labeled sections;
  include the section(s) the pattern's `taste_sections:` field names.
- **Conflicts**: lower stage number wins. DNA overrides knowledge; knowledge
  overrides taste defaults; everything overrides pattern boilerplate.

## What the compiled prompt is NOT

- Not stored as a reusable artifact. If it worked unusually well, the retro
  extracts *why* into knowledge or taste (ADR-0004).
- Not a place to add instructions absent from the layers. An instruction worth
  writing is worth homing in a layer first.

## Provenance

Outputs record what compiled them, in output frontmatter:

```yaml
compiled_from:
  dna: nazaria@1.2.0
  pattern: draft-content@1.0.0
  knowledge: [pricing-psychology@1.1.0, nazaria/market-notes@0.3.0]
  taste_sections: [typography, restraint]
  model_tier: medium
```

This makes every output reproducible and every regression diagnosable.
