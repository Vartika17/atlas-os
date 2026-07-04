# ADR-0002: Kernel/instance architecture for multiple businesses

- **Date:** 2026-07-04
- **Status:** accepted
- **Scope:** kernel

## Context

The system must serve multiple current and future businesses without either
(a) copy-pasting everything per business (divergence, no compounding) or
(b) forcing all businesses into identical processes (kills differentiation).

## Decision

One shared **kernel** (frameworks, prompts, agents, workflows, templates,
knowledge) that is strictly business-agnostic, plus one **instance folder per
business** under `businesses/`. Instances contain only what differs: brand
voice, positioning, market knowledge, overrides, and outputs. Instances shadow
kernel paths to override; they never edit kernel files.

## Alternatives considered

- **Repo per business** — cleanest isolation, but improvements stop flowing
  between businesses; the kernel would need packaging/distribution machinery.
  Wrong trade at this scale. Revisit if a business gains outside collaborators
  who must not see the rest.
- **Everything flat, tagged by business** — no structural boundary means
  business-specifics leak into shared artifacts within months.

## Consequences

Easier: every improvement made for one business is immediately available to
all; new brand = copy `_template/`. Harder: discipline required to keep the
kernel generic (enforced by Constitution Art. V). The promotion path
(instance → kernel when used twice) is the engine of compounding.
