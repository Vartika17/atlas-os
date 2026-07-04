---
name: constitution
version: 2.0.0
status: active
type: kernel-doc
description: Non-negotiable law of Atlas OS. Amended only by ADR.
---

# Atlas OS Constitution

Non-negotiable rules. Amending this file requires an ADR in `decisions/`.
v2.0.0 per ADR-0003/0004/0005 (fifteen-layer architecture, knowledge-first
compilation, clients layer).

## Article I — Ownership of the substrate

1. All sources of truth are plain text (Markdown, YAML, JSON) in this git
   repository. Binary and proprietary formats are outputs or externally-stored
   assets referenced by metadata manifests — never sources of truth.
2. Atlas OS must remain fully operable offline with only: this repository,
   git, and a local LLM. Every other tool is an accelerator, never a
   dependency.
3. Vendor-agnostic, permanently. No artifact may name a model vendor as a
   requirement. Capability is expressed as tiers (`small | medium | large`);
   tools as abstract names mapped in `agents/tool-map.md`.
4. External resources get a reference note with enough context to survive the
   link dying.

## Article II — Knowledge first

5. Prompts are compiled, never authored as sources (ADR-0004). The compile
   chain is fixed: **Business DNA → Knowledge → Taste → Framework → Workflow →
   Prompt pattern**, governed by `kernel/context-chain.md`.
6. Prompt patterns are the only versioned prompt-like artifacts. They contain
   structure and slots only. A pattern embedding a business fact, voice rule,
   or taste judgment is a defect to be fixed on discovery.
7. Facts live in exactly one place: cross-business facts in `knowledge/`,
   business facts in that business's `knowledge/`, judgment in `taste/`.
   Duplication of a fact is a bug.

## Article III — Compounding

8. Before creating anything, check the registry. Extend or version an
   existing artifact rather than duplicating it.
9. Anything used twice gets promoted toward the kernel through the single
   funnel: `learning/PROMOTIONS.md` → review → versioned kernel/layer artifact
   (+ ADR when the change is structural).
10. Every workflow ends with a retrospective. A workflow without a retro step
    is invalid. Every completed engagement or project must leave Atlas OS
    measurably better: a promotion, a knowledge note, a taste refinement, a
    version bump, or an explicit "nothing learned" entry (rare, suspicious).

## Article IV — Versioning and history

11. Artifacts carry `version:` (semver) and `status:` (draft | active |
    deprecated | archived) in frontmatter. Contract break = major bump.
12. Nothing is deleted. Deprecated artifacts move to `archive/`, path-
    mirrored, history intact.
13. Significant decisions — architectural, strategic, irreversible — are
    recorded as ADRs before or immediately after they are made
    (`frameworks/decision-framework.md` decides which).

## Article V — Kernel minimalism

14. The kernel contains **specs and contracts only** — how things work, never
    instances of work. Target: readable end-to-end in under 30 minutes.
15. Kernel changes must benefit (or at least not harm) every business
    instance. Anything business-specific in the kernel is a defect.
16. Instances override by shadowing paths, never by editing kernel or shared
    layers.

## Article VI — Business genome

17. Every business instance implements the genome defined in
    `dna/genome.md` — same files, same names, same contracts. A business
    missing genome files is `status: draft` regardless of revenue.
18. Businesses do not reference each other's internals. Cross-pollination
    flows through kernel, knowledge, taste, and learning layers only.

## Article VII — Clients and confidentiality

19. Client records live in `clients/`; every engagement declares exactly one
    `owner_business` (ADR-0005).
20. Material marked `confidentiality: client` never enters kernel, knowledge,
    taste, or any other business's folder without an explicit clearance note.

## Article VIII — Humans at the gates

21. Publishing, spending, pricing, and anything irreversible pass a human
    gate. `human_approval` may never be mapped to automation.
22. Agents hold autonomous authority only over reversible, low-stakes
    decisions within their charter (`frameworks/decision-framework.md`).
