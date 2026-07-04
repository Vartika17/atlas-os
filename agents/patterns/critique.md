---
name: critique
version: 1.1.0
status: active
type: pattern
description: Runs the four-pass critique from taste/critique.md against any creative output.
slots:
  - name: identity
    source: chain-stage-1
  - name: personas
    source: chain-stage-2
  - name: critique_method
    source: chain-stage-3     # taste/critique.md body
  - name: taste_rules
    source: chain-stage-3     # relevant principles sections + anti-patterns.md in full
  - name: work
    source: task-input
    required: true
output: |
  Markdown: verdict line first (ship | fix-then-ship | rework | kill), then
  the single biggest problem, then findings per pass, each citing the
  principle/anti-pattern/contract/persona it violates. Fenced yaml block at
  the end: {verdict, biggest_problem, recurring_candidates: []}.
context_budget_tokens: 6000
min_capability: medium
taste_sections: [systems, consistency, restraint, hierarchy, specificity, honesty, protagonist, degradation, durability, friction, craft]
---

{{identity}}

Personas who will receive this work:

{{personas}}

Critique method — follow the four passes in order:

{{critique_method}}

Taste rules and anti-patterns to cite:

{{taste_rules}}

Work under critique:

---
{{work}}
---

Run all four passes. Verdict first. Cite a specific rule for every negative.
If you find a problem no rule covers, flag it as `recurring_candidate` — do
not invent a rule inline.
