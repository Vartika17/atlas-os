# Promotion Queue

Single funnel into shared layers (kernel/EVOLUTION_RULES.md). Rows are append-only;
status changes edit the row in place. Never delete rows — rejected rows are
the record of what Atlas chose not to become.

Statuses: `candidate` → `promoted:<path>@<version>` | `rejected:<reason>` | `hold:<until/why>`

| Date | Origin (path) | Candidate (one line) | Proposed target layer | Confidential? | Status |
|---|---|---|---|---|---|
