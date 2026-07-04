---
name: knowledge-readme
version: 1.0.0
status: active
type: kernel-doc
description: How the knowledge base works.
---

# Knowledge

Distilled, evergreen, cross-business knowledge. One fact-cluster per file.

Rules:
- **Distilled** — conclusions and their basis, not raw dumps. A raw source
  worth keeping goes in as a quote block inside the note that interprets it.
- **Dated and confidence-tagged** — every file carries `confidence:` and
  `last_verified:` frontmatter (see kernel/artifact-spec.md). Stale knowledge
  is worse than none.
- **Business-specific facts do NOT live here** — they go in
  `businesses/<name>/knowledge/`. This folder is only for what transfers.
- Link liberally between notes with relative paths.

Seed categories (create folders as needed, not in advance):
`marketing/`, `sales/`, `operations/`, `finance/`, `models/` (LLM behavior
notes from quarterly portability tests).
