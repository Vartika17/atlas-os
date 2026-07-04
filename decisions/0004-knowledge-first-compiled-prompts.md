# ADR-0004: Knowledge-first — prompts are compiled artifacts, not source

- **Date:** 2026-07-04
- **Status:** accepted
- **Scope:** kernel

## Context

A prompt library grows without bound: hundreds of near-duplicate files, each
hard-coding fragments of business knowledge, voice, and judgment. When the
knowledge changes, no one updates fifty prompts. Prompt libraries rot; the
knowledge they embed rots invisibly inside them. Atlas OS's owner explicitly
rejects a prompt-library future.

## Decision

**Prompts are build outputs, never sources of truth.** The sources are the
layers; a prompt is compiled per task by assembling the context chain:

```
Business DNA → Knowledge → Taste → Framework → Workflow step → Prompt pattern
```

- The kernel defines the assembly contract in `kernel/context-chain.md`
  (order, token budgets, degradation ladder for small models).
- The only prompt-like artifacts under version control are **prompt
  patterns** — skeletons with declared slots, stored in `agents/patterns/`.
  Target count: under ~12, ever. A pattern hard-coding any business fact,
  voice rule, or taste judgment is a defect.
- Compiled prompts are ephemeral. If one is worth keeping (e.g. it worked
  unusually well), the retro extracts *why* into knowledge/taste — the
  compiled text itself is not archived as a reusable artifact.

## Alternatives considered

- **Curated prompt library with discipline** — discipline loses to entropy at
  hundreds of files; already visible at v0.1 with one prompt embedding voice
  assumptions.
- **Prompts as source + generated knowledge extraction** — backwards: derives
  durable facts from disposable text. Inversion of the correct dependency.

## Consequences

Easier: change a fact once in knowledge/, every future prompt inherits it;
model migration means re-tagging capability tiers, not rewriting a library.
Harder: needs an assembly step (manual concatenation at first; a script
later — the contract is designed so `cat` in the right order is a valid
compiler). Migration: `prompts/content/blog-post.md` v1 is deprecated to
`archive/` and its skeleton reborn as `agents/patterns/draft-content.md`.
