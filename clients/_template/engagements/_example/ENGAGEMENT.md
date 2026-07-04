---
name: _template-engagement
version: 1.0.0
status: draft
type: client-doc
owner_business: <exactly-one-atlas-business>
confidentiality: client
description: Engagement record. Copy to clients/<client>/engagements/<yyyy-mm-slug>/.
---

# Engagement: <name>

- **Owner business:** <name — accountable for delivery>
- **Period:** YYYY-MM-DD → YYYY-MM-DD (or ongoing)
- **Status:** scoping | active | delivered | closed
- **Commercial:** <fee shape, one line; details can live in owner business records>

## Scope

What is being delivered, and explicitly what is not.

## Success criteria

How both sides know it worked. Measurable where possible.

## Client knowledge captured

Index of `knowledge/` files created for this engagement (their voice, their
positioning, their market facts) — these are stage-2 compile inputs.

## Close-out checklist

- [ ] Deliverables in `output/delivered/`, manifests for any binaries
- [ ] Retro completed → `learning/retros/`
- [ ] `CLIENT.md` preferences updated
- [ ] Promotion candidates queued (confidentiality-checked, Art. VII)
