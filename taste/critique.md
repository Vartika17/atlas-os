---
name: critique-method
version: 1.0.0
status: active
type: taste
description: How any creative output is evaluated — by humans or agents — before shipping.
---

# Critique Methodology

Used at every workflow review gate. Works run by a human, an agent, or both
(agent critiques first, human decides — never the reverse order, and never
agent-only for publishing).

## The four passes (in order, separately)

1. **Purpose pass** — does this do the one job it was compiled for? Check the
   output against the task contract and the business's positioning. Wrong-job
   work can be beautifully executed; kill it anyway.
2. **Audience pass** — read as the persona, not as the maker. Would the
   persona understand it in one pass, believe it, and know what to do next?
3. **Taste pass** — walk `principles.md` sections relevant to the piece, then
   `anti-patterns.md` in full. Cite the specific section for every violation.
4. **Craft pass** — details only: consistency, typos, alignment, naming,
   links, edge cases. Last, so polish never excuses structural failure.

## Rules of critique

- **Verdict vocabulary is fixed:** `ship` | `fix-then-ship` (with the fixes
  enumerated) | `rework` (structural, back to draft step) | `kill` (with the
  lesson noted for retro).
- Every negative must cite a principle, anti-pattern, contract line, or
  persona fact. "I don't like it" is not a critique; it's a signal a taste
  rule is missing — log that in the retro.
- Every critique names the single biggest problem first. A list of ten equal
  nitpicks means the critic hasn't decided what matters.
- Critiques are kept with the work (same folder, `-critique.md` suffix).
  Recurring findings are the main input for taste evolution.

## Agent-critique compilation

An agent running critique compiles: DNA identity block + relevant personas +
this file + relevant principles sections + anti-patterns. Pattern:
`agents/patterns/critique.md`.
