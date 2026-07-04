---
name: versioning
version: 1.0.0
status: active
type: kernel-doc
description: How artifacts are versioned, changed, deprecated, and archived.
---

# Versioning

## Two layers

1. **Git** — the complete history of everything. Commit messages follow
   Conventional Commits (`feat:`, `fix:`, `docs:`, `refactor:`) with the
   artifact name as scope, e.g. `feat(blog-post): add audience input`.
2. **Frontmatter semver** — the contract version of each artifact, so consumers
   (workflows, agents, humans) know when they must adapt.

## Semver rules for artifacts

| Bump | When |
|---|---|
| **major** | Contract breaks: input removed/renamed, output format changed, workflow step order changed in a way that breaks downstream consumers |
| **minor** | Contract grows compatibly: new optional input, extra section in output, improved instructions with same contract |
| **patch** | Wording fixes, typo fixes, clarity edits with identical behavior |

## Lifecycle

```
draft ──> active ──> deprecated ──> archived
```

- **draft**: incomplete or unproven. Not listed as dependable in registry.
- **active**: contract stable at current major version. Safe to depend on.
- **deprecated**: superseded. Frontmatter must add `superseded_by: <name>`.
  Consumers migrate at their own pace.
- **archived**: moved under `archive/` mirroring its original path. Never
  deleted — old business outputs may still reference it.

## Business instances

Instances pin kernel artifact versions only when they must
(`pins:` list in the instance `BUSINESS.md`). Default is "track latest active".
