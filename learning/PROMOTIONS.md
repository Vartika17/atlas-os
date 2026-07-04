# Promotion Queue

Single funnel into shared layers (kernel/EVOLUTION_RULES.md). Rows are append-only;
status changes edit the row in place. Never delete rows — rejected rows are
the record of what Atlas chose not to become.

Statuses: `candidate` → `promoted:<path>@<version>` | `rejected:<reason>` | `hold:<until/why>`

| Date | Origin (path) | Candidate (one line) | Proposed target layer | Confidential? | Status |
|---|---|---|---|---|---|
| 2026-07-04 | learning/retros/2026-07-04-nazaria-compile-test.md | Instantiation script: copy template, rename frontmatter, emit registry rows | registry/ tooling | no | promoted:registry/new-business.ps1 (Atlas Hour 2026-07) |
| 2026-07-04 | learning/retros/2026-07-04-nazaria-compile-test.md | Stage-3 taste budget 600→800 tokens, or cap patterns at 4 sections | kernel/context-chain.md | no | promoted:kernel/context-chain.md@1.1.0 (budget 800, ≤5 sections) |
| 2026-07-04 | learning/retros/2026-07-04-nazaria-compile-test.md | Scripted local runs use Ollama HTTP API; fix manual-fallback guidance | kernel/portability.md, agents/tool-map.md | no | promoted:portability@1.1.0 + tool-map (model_run row) |
| 2026-07-04 | learning/retros/2026-07-04-nazaria-compile-test.md | Refuse compile below min_capability (capability gate) | kernel/context-chain.md | no | promoted:kernel/context-chain.md@1.1.0 (capability gate) |
| 2026-07-04 | learning/retros/2026-07-04-nazaria-compile-test.md | Small-tier anti-fabrication SCAFFOLD (pattern variant) | agents/patterns | no | hold: no small-tier generation need yet — build on first real small-tier task (avoid speculative abstraction, EVOLUTION_RULES §3) |
| 2026-07-04 | learning/retros/2026-07-04-nazaria-compile-test.md | Windows encoding rule: UTF-8 via [IO.File] always | knowledge/ | no | promoted:knowledge/ops/windows-text-encoding.md@1.0.0 |
| 2026-07-04 | learning/retros/2026-07-04-nazaria-compile-test.md | Specificity principle: add small-model fabrication caveat | taste/principles.md | no | promoted:taste/principles.md@1.1.0 |
