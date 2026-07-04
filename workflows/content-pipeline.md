---
name: content-pipeline
version: 2.0.0
status: active
type: workflow
description: Idea → compile+draft → critique → human gate → publish → retro. Works for any content type, any business or engagement.
trigger: Row added to <scope>/output/content-queue.md, or weekly cadence pull.
actors: [human, content-writer]
---

# Content Pipeline

## Steps

### 1. Queue
- **Actor:** human or any agent spotting an opportunity
- **Input:** idea one-liner + intended audience + format
- **Output:** row in `<scope>/output/content-queue.md`
- **Fallback:** — (already manual)

### 2. Compile + draft
- **Actor:** `agents/content-writer.md`
- **Input:** queue row
- **Chain hints:** `knowledge:` per queue row topic; framework: none by default
- **Output:** `output/drafts/YYYY-MM-DD-<slug>.md` with `compiled_from` provenance
- **Fallback:** human compiles by hand — concatenate DNA identity block,
  relevant knowledge, taste sections, `agents/patterns/draft-content.md` —
  paste into any model, or write manually from the same stack.

### 3. Critique
- **Actor:** content-writer (self, via `critique` pattern) — automatic within step 2 handoff
- **Output:** `-critique.md` beside the draft; verdict gates progression
- **Fallback:** human runs the four passes from `taste/critique.md` directly.

### 4. Human gate (never automated)
- **Actor:** human
- **Input:** draft + critique
- **Output:** `status: approved` (with edits), or rejection note in the draft
- **Fallback:** —

### 5. Publish
- **Actor:** human or publisher automation when one exists
- **Output:** live artifact + copy in `output/published/` with `published_url`;
  binaries get asset manifests
- **Fallback:** manual paste into site/newsletter tool.

### 6. Retro (mandatory — Constitution Art. III)
- **Actor:** human, monthly batch acceptable
- **Input:** month's published + rejected pieces + critiques + performance data
- **Output:** `learning/retros/YYYY-MM-DD-content-<scope>.md` from
  `learning/retro-template.md`; candidates rowed into `learning/PROMOTIONS.md`;
  recurring critique findings become taste candidates; compile observations
  extracted per ADR-0004
- **Fallback:** —

## Notes

State is files; resumable at any step. New content type = same workflow,
different `format` input — do not fork the workflow.
