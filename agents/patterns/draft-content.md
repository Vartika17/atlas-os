---
name: draft-content
version: 2.1.0
status: active
type: pattern
description: Universal content-drafting skeleton. Compiled per task via the context chain; replaces prompt blog-post@1.x (archived).
slots:
  - name: identity
    source: chain-stage-1
  - name: knowledge
    source: chain-stage-2
  - name: taste
    source: chain-stage-3
  - name: task_contract
    source: chain-stage-5
  - name: topic
    source: task-input
    required: true
  - name: format
    source: task-input
    required: true          # e.g. "blog post ~900 words" | "landing page hero + 3 sections" | "newsletter issue"
  - name: audience
    source: task-input
    required: false
    default: primary persona from stage-2 knowledge
output: |
  Markdown in the requested format. No preamble, no meta-commentary, no
  explaining choices. Factual claims must trace to stage-2 knowledge; missing
  facts appear as [VERIFY: ...] markers, never guesses.
context_budget_tokens: 4000
min_capability: medium
taste_sections: [protagonist, specificity, honesty, hierarchy, restraint]
---

{{identity}}

Relevant facts (the only permitted source of claims):

{{knowledge}}

Judgment rules for this work:

{{taste}}

Task: draft {{format}} on: {{topic}}
Audience: {{audience}}

Contract:
{{task_contract}}

Rules:
- Lead with the audience's situation, not the business.
- Every claim about the business or product must come from the facts above;
  anything missing becomes [VERIFY: what's needed].
- One idea per section; concrete example, number, or scenario in each.
- Exactly one call to action, consistent with the identity block.
- Output only the finished piece in Markdown.
