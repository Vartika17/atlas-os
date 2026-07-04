# Atlas OS Registry (human view)

Canonical machine view: [index.yaml](index.yaml). Both update in the same
commit as the artifact they describe. Atlas OS **v0.3.0**.
UPPERCASE filename = permanent charter document.

## Charters (root)
- [CONSTITUTION.md](../CONSTITUTION.md) v2.2.0 — the law
- [NORTH_STAR.md](../NORTH_STAR.md) v1.1.0 — why Atlas exists; the 2035 rule
- [FIRST_PRINCIPLES.md](../FIRST_PRINCIPLES.md) — the ten irreducibles
- [BUSINESS_COMPILER.md](../BUSINESS_COMPILER.md) — the toolchain charter (ADR-0008)

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
- [principles.md](../taste/principles.md) **v1.0.0** — 11 sections distilled from the reference library
- [rejections.md](../taste/rejections.md) — owner's standing vetoes, checked at direction stage
- [critique.md](../taste/critique.md) · [anti-patterns.md](../taste/anti-patterns.md) (draft)
- [references/](../taste/references/README.md) — **20 reference studies** (Taste Bootstrap): brand-identity, luxury-brands, consumer-brands, packaging, websites, landing-pages, e-commerce, saas-products, typography, editorial-design, ui-ux, motion-design, product-design, architecture, photography, advertising, storytelling, copywriting, content-strategy, presentation-design

## DNA
- [genome.md](../dna/genome.md) — the structure every business implements
- [lifecycle.md](../dna/lifecycle.md) — the state machine idea → sunset, with stage contracts

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
- [ADR-0006](../decisions/0006-github-remote-and-git-strategy.md) GitHub remote, trunk-based git, secrets policy
- [TEMPLATE](../decisions/TEMPLATE.md)

## Assets · Clients · Knowledge
- [assets/README](../assets/README.md) — manifests only, binaries external
- [clients/README](../clients/README.md) — profiles + business-owned engagements
- [knowledge/README](../knowledge/README.md) — distilled cross-business facts

## Capability & Businesses
- [CAPABILITY_MAP.md](CAPABILITY_MAP.md) — Current / Planned / Future across 14 domains
- `_template/` implements [genome](../dna/genome.md). No live instances yet.
- Planned: Nazaria, NobleGate, Qwikstone, MD's Lux, MD's Essentials.
