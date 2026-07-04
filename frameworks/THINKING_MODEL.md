---
name: thinking-model
version: 1.0.0
status: active
type: framework
description: The reasoning sequence Atlas runs before producing any output — how the system thinks, independent of what it knows.
---

# Thinking Model

How Atlas thinks — human or agent, any task, any model. The context chain
supplies *what is known*; this supplies *the order of thought*. Skipping
steps is how competent work ends up worthless.

## The sequence

### 1. Purpose — "what job, for whom, judged how?"

Name the single job this output does, the specific person it does it for
(persona, not demographic), and the observable sign it worked. Cannot be
answered → stop; the task is not understood yet. Two jobs → two outputs.

### 2. Ground — "what do we actually know?"

Pull relevant knowledge (instance first, then shared). Separate three piles:
**known** (in knowledge layers, cited), **assumed** (plausible, must be
marked), **unknown** (becomes [VERIFY] or a question — never silently
filled). The most expensive failure mode in AI-assisted work is fluent
fabrication; this step is the defense.

### 3. Invert — "what would make this wrong?"

Before creating: name the most likely way this fails (wrong audience, wrong
claim, wrong moment, taste violation, second-order harm). One sentence each.
Check the failure list against anti-patterns and the relevant framework
(decision-framework for choices, benchmarks for artifacts). Work that never
imagined its failure ships its failure.

### 4. Reduce — "what is the simplest thing that fully works?"

Strip the task to the minimum that completely does the step-1 job. Cut
scope, not quality. If the simple version embarrasses, the problem is the
standard, not the size — see QUALITY_STANDARD.md. Complexity must be pulled
in by necessity, never pushed in by capability.

### 5. Produce — compile, then make

Only now: compile the context chain and produce. During production, honor
the pile from step 2 — known facts stated plainly, assumptions marked,
unknowns as [VERIFY]. No new claims invented mid-flight.

### 6. Judge — critique before anyone else sees it

Run the four-pass critique (taste/critique.md) and score against
QUALITY_STANDARD.md. Verdict vocabulary is fixed: ship / fix-then-ship /
rework / kill. Self-judgment is a gate, not a formality — work reaching a
human gate un-critiqued is a process defect.

### 7. Learn — close the loop

What surprised? What was missing from knowledge, taste, or the pattern?
Route it: retro → PROMOTIONS queue, or direct instance-file update. An
output that taught nothing and changed nothing was consumption, not work
(First Principle 6).

## Standing habits (apply inside every step)

- **Concrete beats abstract.** Numbers, names, scenarios — in analysis as in
  copy.
- **Base rates first.** "How does this usually go for people like us?"
  precedes "why we're different."
- **Second-order question.** "And then what?" — for every recommendation,
  once.
- **Disagreement is written.** When rejecting knowledge, taste, or a
  framework's conclusion: proceed if justified, but record why — overrides
  are taste-evolution signal (taste/README.md).
- **Confidence is stated.** Conclusions carry high/medium/low, matching the
  knowledge spec, so downstream consumers know what they're standing on.

## Cheap mode (small models / small tasks)

Steps never skipped: 1 (purpose), 2 (known vs unknown), 6 (judge). Steps 3-4
compress to one line each. A model too small to run step 2 honestly is too
small for the task — escalate the tier, don't skip the step.
