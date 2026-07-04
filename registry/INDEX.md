# Atlas OS Registry (human view)

Canonical machine view: [index.yaml](index.yaml). Both update in the same
commit as the artifact they describe. Atlas OS **v0.2.0**.

## Law & Kernel
- [CONSTITUTION.md](../CONSTITUTION.md) v2.0.0 — the law
- [kernel/artifact-spec.md](../kernel/artifact-spec.md) v2.0.0 — frontmatter contracts
- [kernel/context-chain.md](../kernel/context-chain.md) — **the prompt compiler contract**
- [kernel/promotion.md](../kernel/promotion.md) — the funnel into shared layers
- [kernel/versioning.md](../kernel/versioning.md) · [kernel/portability.md](../kernel/portability.md)

## Taste
- [README](../taste/README.md) — charter
- [principles.md](../taste/principles.md) (draft) · [critique.md](../taste/critique.md) · [anti-patterns.md](../taste/anti-patterns.md) (draft) · [references/](../taste/references/README.md)

## DNA
- [genome.md](../dna/genome.md) — the structure every business implements

## Agents & Patterns
- [content-writer](../agents/content-writer.md) v2 — compiles chain, drafts, self-critiques, never publishes
- Patterns (target <12 ever): [draft-content](../agents/patterns/draft-content.md) · [critique](../agents/patterns/critique.md)
- [tool-map](../agents/tool-map.md) — abstract → concrete tools

## Workflows
- [content-pipeline](../workflows/content-pipeline.md) v2 — queue → compile+draft → critique → human gate → publish → retro

## Frameworks
- [decision-framework](../frameworks/decision-framework.md) — reversibility × stakes

## Learning
- [README](../learning/README.md) · [retro-template](../learning/retro-template.md) v2 · [PROMOTIONS.md](../learning/PROMOTIONS.md) (the queue)

## Decisions
- [ADR-0001](../decisions/0001-plain-text-substrate.md) plain-text substrate
- [ADR-0002](../decisions/0002-kernel-instance-split.md) kernel/instance split
- [ADR-0003](../decisions/0003-atlas-os-fifteen-layers.md) fifteen-layer Atlas architecture
- [ADR-0004](../decisions/0004-knowledge-first-compiled-prompts.md) knowledge-first, compiled prompts
- [ADR-0005](../decisions/0005-clients-first-class-layer.md) clients as first-class layer
- [TEMPLATE](../decisions/TEMPLATE.md)

## Assets · Clients · Knowledge
- [assets/README](../assets/README.md) — manifests only, binaries external
- [clients/README](../clients/README.md) — profiles + business-owned engagements
- [knowledge/README](../knowledge/README.md) — distilled cross-business facts

## Businesses
- `_template/` implements [genome](../dna/genome.md). No live instances yet.
- Planned: Nazaria, NobleGate, Qwikstone, MD's Lux, MD's Essentials.
