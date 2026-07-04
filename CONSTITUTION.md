---
name: constitution
version: 1.0.0
status: active
type: kernel-doc
---

# Constitution

Non-negotiable rules. Amending this file requires an ADR in `decisions/`
explaining what changed and why.

## Article I — Ownership of the substrate

1. All artifacts are plain text (Markdown, YAML, CSV). Binary and proprietary
   formats are outputs, never sources of truth.
2. The system must remain fully operable offline with only: this repository,
   git, and a local LLM. Any tool that breaks this is an optional accelerator,
   never a dependency.
3. No artifact may reference a SaaS URL as its only home. External resources get
   a `reference` file with enough context to survive the link dying.

## Article II — Compounding

4. Before creating anything, check the registry. Extend or version an existing
   artifact rather than duplicating it.
5. Anything used twice gets extracted into the kernel (prompt, framework,
   template, or workflow). Anything used once stays in the business instance.
6. Every completed project ends with a retro: what worked gets promoted into
   the kernel; what failed gets an ADR or a knowledge note.

## Article III — Versioning and history

7. Artifacts carry `version:` (semver) and `status:` (draft | active |
   deprecated | archived) in frontmatter.
8. Nothing is deleted. Deprecated artifacts move to `archive/` with their
   history intact.
9. Significant decisions — architectural, strategic, or irreversible — are
   recorded as ADRs before or immediately after they are made.

## Article IV — Portability contracts

10. Every prompt declares: `inputs`, `output` (format + success criteria), and
    `context_budget_tokens`. A prompt that cannot state its contract is a draft.
11. Prompts and agents use no vendor-specific syntax or features. Capability
    tiers (`min_capability: small | medium | large`) express model requirements,
    never vendor names.
12. Workflows must degrade gracefully: every automated step names its manual
    fallback.

## Article V — Kernel and instances

13. The kernel is business-agnostic. Business names, brand voice, and market
    specifics live only in `businesses/<name>/`.
14. Instances override the kernel by shadowing paths, never by editing kernel
    files. A kernel change must benefit (or at least not harm) every instance.
15. New businesses start from `businesses/_template/`. The template is updated
    whenever onboarding a real business reveals a gap.
