# Atlas OS Registry (human view)

Canonical machine view: [index.yaml](index.yaml). Both update in the same
commit as the artifact they describe. Atlas OS **v0.3.0**.
UPPERCASE filename = permanent charter document.

## Charters (root)
- [CONSTITUTION.md](../CONSTITUTION.md) v2.0.0 — the law
- [NORTH_STAR.md](../NORTH_STAR.md) — why Atlas exists; what it never becomes
- [FIRST_PRINCIPLES.md](../FIRST_PRINCIPLES.md) — the ten irreducibles

## Kernel
- [kernel/artifact-spec.md](../kernel/artifact-spec.md) v2.0.0 — frontmatter contracts
- [kernel/context-chain.md](../kernel/context-chain.md) — **the prompt compiler contract**
- [kernel/EVOLUTION_RULES.md](../kernel/EVOLUTION_RULES.md) v2 — growth, promotion, pruning (supersedes promotion.md)
- [kernel/versioning.md](../kernel/versioning.md) · [kernel/portability.md](../kernel/portability.md)

## Taste
- [README](../taste/README.md) — charter
- [DESIGN_PHILOSOPHY.md](../taste/DESIGN_PHILOSOPHY.md) — stances: design, brand, AI, luxury vs functional…
- [QUALITY_STANDARD.md](../taste/QUALITY_STANDARD.md) — the 6-dimension scorecard + hard blockers
- [QUALITY_BENCHMARKS.md](../taste/QUALITY_BENCHMARKS.md) — what great looks like, per artifact class
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
- [THINKING_MODEL.md](../frameworks/THINKING_MODEL.md) — the 7-step reasoning sequence before any output
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

## Capability & Businesses
- [CAPABILITY_MAP.md](CAPABILITY_MAP.md) — Current / Planned / Future across 14 domains
- `_template/` implements [genome](../dna/genome.md). No live instances yet.
- Planned: Nazaria, NobleGate, Qwikstone, MD's Lux, MD's Essentials.
