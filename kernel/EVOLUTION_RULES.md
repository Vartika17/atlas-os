---
name: evolution-rules
version: 2.0.0
status: active
type: kernel-doc
description: How Atlas OS grows, promotes, resists complexity, and prunes. Supersedes and absorbs promotion@1.0.0.
---

# Evolution Rules

Atlas evolves by improving knowledge quality, decision quality, and business
capability — never by accumulating structure. These rules govern all growth
and all removal.

## 1. What enters the kernel

Contracts only — *how things work*, never instances of work. Admission test,
all four required:

1. Governs every business instance (nothing business-specific — Art. V).
2. Stable: expected to survive years, not sprints.
3. Small: keeps the kernel readable end-to-end in one sitting.
4. Arrived through the funnel with an ADR if structural; version-bumped always.

Everything else that's shared lands in a **layer** (knowledge, taste,
frameworks, agents, workflows, dna) — the kernel is the constitution of
mechanisms, not the library of content.

## 2. What stays local

- Used once → stays in the instance/engagement that used it.
- Contains business identity, market facts, client material → stays local
  permanently (identity never generalizes; facts generalize only when true
  across businesses).
- Draft-quality → stays local until proven by use, whatever its ambition.

## 3. When knowledge is promoted

The funnel is single and mandatory: retro → `learning/PROMOTIONS.md` row →
weekly review → versioned artifact in the target layer.

- **Two-use test:** promoted on second use or clearly imminent second use.
  Speculative generalization is rejected as inventory, not investment.
- **Confidentiality check** at review for anything client-originated (Art. VII).
- Rejected rows keep their reason and stay forever — the record of what
  Atlas chose not to become.
- Promotion levels: most candidates → a layer artifact; contracts (rare) →
  kernel per §1.

## 4. How complexity is prevented

- **Event-driven growth only.** Every new folder, layer, workflow, agent, or
  pattern must cite the real-world event that demanded it — in its
  frontmatter description or its ADR. "We might need it" is a rejection.
- **Structural additions cost an ADR.** New top-level anything, new genome
  file, new pattern beyond the <12 target: ADR first. Friction is the
  feature.
- **One-in, one-out pressure.** A new artifact must state what it makes
  unnecessary. Not always something — but the question is always asked.
- **Overhead ceiling.** If maintaining Atlas exceeds ~10% of working time in
  a normal month, the response is removal, not tooling. The system serves
  the portfolio (First Principle 10).
- **Registry-or-nothing.** Anything not in the registry doesn't exist —
  which makes invisible sprawl impossible and visible sprawl embarrassing.

## 5. How the obsolete is removed — deliberately, on cadence

Quarterly **pruning review** (same sitting as the portability test):

1. **Usage audit.** Any shared artifact with zero uses since the last two
   reviews → deprecate (`superseded_by` or reason) → `archive/`.
2. **De-generalization.** Shared artifact serving only one business → demote
   into that instance; archive the shared copy. Wrong abstractions cost more
   than duplication.
3. **Benchmark/taste pruning.** Standards never cited in a critique within a
   year → archive. Dead standards teach nothing and dilute live ones.
4. **Contradiction sweep.** Two artifacts disagreeing = a bug (First
   Principle 2): merge, pick a winner, archive the loser — never leave both.
5. Removal is archival, never deletion (Art. IV). The archive is Atlas's
   memory of its former selves; the working tree is only its present.

## 6. How rules themselves evolve

This file, the Constitution, and FIRST_PRINCIPLES.md change only by ADR.
A rule violated repeatedly with good results is a wrong rule — the retro
that notices this queues the amendment; silent rule-drift is the one
evolution mode that is forbidden.
