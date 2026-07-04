---
name: blog-post
version: 1.0.0
status: active
type: prompt
description: Draft a blog post from a topic + positioning context. Exemplar prompt for the library.
inputs:
  - name: topic
    description: Subject of the post, one sentence
    required: true
  - name: positioning
    description: Paste from businesses/<name>/strategy/positioning.md
    required: true
  - name: voice
    description: Paste from businesses/<name>/brand/voice.md
    required: true
  - name: audience
    description: Who reads this
    required: false
    default: prospective customers evaluating the category
  - name: word_count
    required: false
    default: "900"
output: |
  Markdown. H1 title, 3-5 H2 sections, one concrete example per section,
  closing section with a single call to action. No preamble, no meta-commentary.
context_budget_tokens: 4000
min_capability: medium
---

You are drafting a blog post for a business with this positioning:

{{positioning}}

Write in this voice:

{{voice}}

Topic: {{topic}}
Audience: {{audience}}
Length: about {{word_count}} words.

Rules:
- Lead with the reader's problem, not the business.
- One idea per H2 section. Each section must contain a concrete example,
  number, or scenario — no section of pure abstraction.
- No filler phrases ("in today's fast-paced world", "it's important to note").
- End with exactly one call to action consistent with the positioning.
- Output only the finished post in Markdown. Do not explain your choices.
