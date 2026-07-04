# Promotion Queue

Single funnel into shared layers (kernel/EVOLUTION_RULES.md). Rows are append-only;
status changes edit the row in place. Never delete rows — rejected rows are
the record of what Atlas chose not to become.

Statuses: `candidate` → `promoted:<path>@<version>` | `rejected:<reason>` | `hold:<until/why>`

| Date | Origin (path) | Candidate (one line) | Proposed target layer | Confidential? | Status |
|---|---|---|---|---|---|
| 2026-07-04 | learning/retros/2026-07-04-nazaria-compile-test.md | Instantiation script: copy template, rename frontmatter, emit registry rows | registry/ tooling | no | candidate |
| 2026-07-04 | learning/retros/2026-07-04-nazaria-compile-test.md | Stage-3 taste budget 600→800 tokens, or cap patterns at 4 sections | kernel/context-chain.md | no | candidate |
| 2026-07-04 | learning/retros/2026-07-04-nazaria-compile-test.md | Scripted local runs use Ollama HTTP API; fix manual-fallback guidance | kernel/portability.md, agents/tool-map.md | no | candidate |
| 2026-07-04 | learning/retros/2026-07-04-nazaria-compile-test.md | Small-tier anti-fabrication scaffold + refuse compile below min_capability | agents/patterns, kernel/context-chain.md | no | candidate |
| 2026-07-04 | learning/retros/2026-07-04-nazaria-compile-test.md | Windows encoding rule: UTF-8 via [IO.File] always | knowledge/ | no | candidate |
| 2026-07-04 | learning/retros/2026-07-04-nazaria-compile-test.md | Specificity principle: add small-model fabrication caveat | taste/principles.md | no | candidate |
