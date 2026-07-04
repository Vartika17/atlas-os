# ADR-0001: The system's substrate is plain text in a git repository

- **Date:** 2026-07-04
- **Status:** accepted
- **Scope:** kernel

## Context

This operating system must run every business for ~20 years. Over that horizon,
every SaaS tool, model vendor, and file format in use today is likely to change
or die. The one stack with a 50-year survival record is plain text + version
control. Local LLMs must be able to consume everything without adapters.

## Decision

All sources of truth are Markdown/YAML files in one git repository. Databases,
SaaS tools, and rich formats may be used as accelerators or outputs, never as
the canonical home of a framework, prompt, agent, workflow, decision, or
knowledge item.

## Alternatives considered

- **Notion/Confluence as the home** — fast to start, but export quality decays,
  API access is a dependency, and local LLM consumption requires sync tooling.
  Fails the 20-year test.
- **Database-backed custom app** — maximum structure, but the app itself becomes
  a maintenance liability and a single point of failure.
- **Mixed (docs in SaaS, prompts in repo)** — splits the system's brain; the
  registry can no longer index everything; linking rots.

## Consequences

Easier: versioning, diffing, LLM consumption, backup (git clone), longevity.
Harder: no built-in collaboration UI, no per-field validation (mitigated by
frontmatter spec + future lint script). Revisit if the repo ever exceeds what
plain files can organize (~thousands of artifacts) — at that point generate a
database *from* the files, keeping files canonical.
