---
name: content-pipeline
version: 1.0.0
status: active
type: workflow
description: Idea → draft → review → publish → retro, for any content type in any business. Exemplar workflow.
trigger: Content idea logged in businesses/<name>/output/content-queue.md, or weekly cadence pull from queue.
actors: [human, content-writer-agent]
---

# Content Pipeline

## Steps

### 1. Queue
- **Actor:** human (or any agent that spots an opportunity)
- **Input:** idea, one line + intended audience
- **Output:** row in `businesses/<name>/output/content-queue.md`
- **Fallback:** — (already manual)

### 2. Draft
- **Actor:** `agents/content-writer.md`
- **Input:** queue row + instance voice/positioning files
- **Output:** `output/drafts/YYYY-MM-DD-slug.md` (frontmatter records prompt
  name + version used)
- **Fallback:** human writes draft directly from the same prompt file — open
  `prompts/content/blog-post.md`, fill placeholders by hand, paste into any LLM
  or write manually.

### 3. Review (gate)
- **Actor:** human — this gate is never automated (tool-map rule)
- **Input:** draft
- **Output:** either edits + `status: approved` in frontmatter, or rejection
  note in the draft explaining why (rejections feed step 5)
- **Fallback:** —

### 4. Publish
- **Actor:** human or publisher automation (when one exists)
- **Input:** approved draft
- **Output:** live artifact + `output/published/` copy with `published_url`
  in frontmatter
- **Fallback:** manual paste into the site/newsletter tool

### 5. Retro (the compounding step — do not skip)
- **Actor:** human, monthly batch
- **Input:** month's published pieces + rejections + any performance data
- **Output:**
  - Prompt improvements → version bump in `prompts/content/`
  - Recurring rejection cause → new guardrail on the agent
  - Voice drift discovered → update instance `brand/voice.md`
  - Anything used twice → promote to kernel (Constitution Art. II)
- **Fallback:** —

## Notes

State lives entirely in files; the pipeline is resumable at any step by anyone.
A different content type (newsletter, landing page section, proposal) reuses
this workflow with a different prompt in step 2 — do not fork the workflow.
