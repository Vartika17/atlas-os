---
name: artifact-spec
version: 1.0.0
status: active
type: kernel-doc
---

# Artifact Specification

Every file in `frameworks/`, `prompts/`, `agents/`, `workflows/`, `templates/`,
and `knowledge/` is an **artifact** and starts with YAML frontmatter.

## Required fields (all artifacts)

```yaml
---
name: kebab-case-unique-name      # unique across the whole repo
version: 1.0.0                    # semver, see versioning.md
status: draft                     # draft | active | deprecated | archived
type: prompt                      # prompt | agent | workflow | framework | template | knowledge | kernel-doc
description: One line. What it does and when to reach for it.
---
```

## Additional fields by type

### prompt
```yaml
inputs:
  - name: topic
    description: The subject to write about
    required: true
  - name: audience
    description: Who reads the output
    required: false
    default: "general business audience"
output: |
  Markdown article, 800-1200 words, H2 sections, no preamble.
context_budget_tokens: 4000       # max tokens of context this prompt assumes
min_capability: small             # small (~7-8B) | medium (~30-70B) | large (frontier)
```

### agent
```yaml
role: One-line role statement
uses_prompts: [blog-post, headline-variants]   # names from prompts/
tools: [web_search, file_read]                 # abstract tool names, see agents/spec
guardrails:
  - Never publish without human review
min_capability: medium
```

### workflow
```yaml
trigger: What starts this workflow (event or cadence)
steps: enumerated in body                       # each step: actor, input, output, fallback
actors: [human, content-writer-agent]
```

### knowledge
```yaml
confidence: high | medium | low
last_verified: 2026-07-04
sources: [reference names or URLs]
```

## Body conventions

- Body is the artifact itself: the prompt text, the agent charter, the workflow
  steps, the framework explanation.
- Placeholders use `{{variable_name}}` matching declared `inputs`.
- Link between artifacts with relative repo paths, e.g.
  `see prompts/content/blog-post.md`.

## Rules

1. Frontmatter that fails these rules ⇒ artifact stays `status: draft`.
2. `name` never changes after first `active` release. Rename = new artifact +
   deprecate old one.
3. Registry (`registry/index.yaml`) must list every non-archived artifact.
