---
name: artifact-spec
version: 2.0.0
status: active
type: kernel-doc
description: Frontmatter contract for every Atlas OS artifact. v2 — knowledge-first types (ADR-0004), taste/asset/client types (ADR-0003/0005).
---

# Artifact Specification

Every governed file starts with YAML frontmatter. v2.0.0 replaces the `prompt`
type with `pattern` (prompts are compiled, not stored — ADR-0004).

## Required fields (all artifacts)

```yaml
---
name: kebab-case-unique-name      # unique across the whole repo
version: 1.0.0                    # semver, see versioning.md
status: draft                     # draft | active | deprecated | archived
type: pattern                     # see type table
description: One line. What it is and when to reach for it.
---
```

| type | Lives in | Notes |
|---|---|---|
| `kernel-doc` | `kernel/`, root | Specs and contracts |
| `pattern` | `agents/patterns/` | Prompt skeletons with slots. Target: <12 total |
| `agent` | `agents/` | Role charters |
| `workflow` | `workflows/` | Pipelines, retro step mandatory |
| `framework` | `frameworks/` | Thinking tools |
| `knowledge` | `knowledge/`, instance `knowledge/` | Facts, distilled |
| `taste` | `taste/` | Principles, rubrics, reference notes, anti-patterns |
| `template` | inside owning layer | Skeletons for documents (ADR, retro, genome files) |
| `asset-manifest` | `assets/` | Metadata for an externally-stored binary |
| `genome-doc` | `businesses/<b>/` | A business's implementation of a genome file |
| `client-doc` | `clients/` | Client profiles and engagement records |

## Additional fields by type

### pattern
```yaml
slots:                            # what the compiler fills, and from where
  - name: identity
    source: chain-stage-1         # stages defined in kernel/context-chain.md
  - name: knowledge
    source: chain-stage-2
  - name: topic
    source: task-input
    required: true
output: |
  Contract for the model's output: format + success criteria.
context_budget_tokens: 4000
min_capability: small             # small (~7-8B) | medium (~30-70B) | large (frontier)
taste_sections: [restraint]       # which taste/principles.md sections stage 3 pulls
```

### agent
```yaml
role: One-line role statement
uses_patterns: [draft-content]
tools: [file_read, file_write, human_approval]   # abstract names — agents/tool-map.md
guardrails:
  - Enforced by workflow gates, not model self-policing
min_capability: medium
```

### workflow
```yaml
trigger: event or cadence
actors: [human, content-writer]
# body enumerates steps; each step: actor, input, output, fallback,
# and optional framework:/knowledge: hints for the context chain.
# Final step MUST be a retro that feeds learning/PROMOTIONS.md.
```

### knowledge
```yaml
confidence: high | medium | low
last_verified: 2026-07-04
sources: [reference names or URLs]
```

### asset-manifest
```yaml
asset_type: image | video | font | audio | archive | other
location: where the binary actually lives (storage path/URL)
sha256: content hash
license: ownership/usage rights, exact
used_by: [business or engagement paths]
```

### client-doc
```yaml
owner_business: nazaria           # engagements only; exactly one
confidentiality: internal | client
```

## Body conventions

- Placeholders: `{{slot_name}}` matching declared slots/inputs.
- Cross-references: relative repo paths.
- Version references: `name@version` (e.g. `draft-content@1.0.0`).

## Rules

1. Frontmatter failing this spec ⇒ artifact stays `draft`.
2. `name` is immutable after first `active`. Rename = new artifact + deprecate.
3. Registry lists every non-archived governed artifact, same commit.
