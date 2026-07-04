---
name: _template-business
version: 1.0.0
status: draft
type: kernel-doc
description: Seed for every new business instance. Copy the whole _template folder, then fill this in.
---

# <Business Name>

- **One-liner:** what it sells, to whom, why they pick it
- **Stage:** idea | validating | operating | scaling | winding down
- **Owner:** <you>
- **Started:** YYYY-MM-DD

## Model

- Revenue model:
- Primary channel:
- Unit economics (best current guess):

## Kernel pins

Default: track latest active kernel artifacts. Pin only when necessary:

```yaml
pins: []   # e.g. [{name: blog-post, version: 1.x}]
```

## Overrides

Instance files that shadow kernel behavior (list them so they're findable):

- `brand/voice.md` — always instance-specific
- `strategy/positioning.md` — always instance-specific

## Folder map

| Path | Purpose |
|---|---|
| `brand/` | voice, visual identity notes, naming decisions |
| `strategy/` | positioning, pricing, quarterly focus |
| `knowledge/` | market/customer facts specific to this business |
| `output/` | everything produced: drafts, published, proposals, queue |
| `decisions/` | business-scoped ADRs |
