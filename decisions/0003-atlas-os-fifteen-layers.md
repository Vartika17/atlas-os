# ADR-0003: Atlas OS — fifteen-layer architecture

- **Date:** 2026-07-04
- **Status:** accepted
- **Scope:** kernel

## Context

BOS v0.1 proved the substrate (ADR-0001) and the kernel/instance split
(ADR-0002) but organized everything around artifacts (prompts, templates).
The system must now run a portfolio — Nazaria, NobleGate, Qwikstone, MD's Lux,
MD's Essentials, future clients — for 20+ years. Missing entirely: creative
judgment (taste), a standard business genome (DNA), client engagements,
asset governance, and an explicit learning loop. "Project" thinking must be
replaced by "system" thinking: every layer is a permanent subsystem, not a
workspace.

## Decision

The repository is renamed **Atlas OS** and reorganized into fifteen layers:

| # | Layer | Path | One-line charter |
|---|---|---|---|
| 1 | Constitution | `CONSTITUTION.md` | Non-negotiable law; amended only by ADR |
| 2 | Kernel | `kernel/` | Specs and contracts only. Extremely small, extremely stable |
| 3 | Knowledge | `knowledge/` | Distilled cross-business facts; the source prompts compile from |
| 4 | Taste | `taste/` | Creative reasoning: principles, critique rubrics, references, anti-patterns |
| 5 | Business DNA | `dna/` | The genome schema every business instance must implement |
| 6 | Agents | `agents/` | Role charters + the few prompt patterns they consume |
| 7 | Workflows | `workflows/` | Pipelines with mandatory retrospectives |
| 8 | Frameworks | `frameworks/` | Reusable thinking tools |
| 9 | Learning | `learning/` | Retros, improvement log, promotion queue into kernel |
| 10 | Decision Logs | `decisions/` | ADRs, system-wide and per-scope |
| 11 | Assets | `assets/` | Metadata manifests only; binaries live outside git |
| 12 | Businesses | `businesses/` | One genome-conforming instance per business |
| 13 | Clients | `clients/` | Client records + engagements owned by a business (ADR-0005) |
| 14 | Registry | `registry/` | Machine + human index of everything above |
| 15 | Archive | `archive/` | Deprecated artifacts, path-mirrored, never deleted |

Dissolved: `templates/` (each template moves into the layer that owns it) and
`prompts/` (see ADR-0004).

## Alternatives considered

- **Keep artifact-centric layout, add folders ad hoc** — grows into a junk
  drawer; no layer has a charter, so nothing has a boundary to defend.
- **Fewer layers (merge Learning into Knowledge, Taste into Frameworks)** —
  merging kills the distinct lifecycle each has: knowledge is *facts*,
  learning is *process*, taste is *judgment*, frameworks are *procedure*.
  Distinct lifecycles need distinct homes or the faster-moving one buries the
  slower one.

## Consequences

Easier: every new thing has exactly one home; agents can navigate by charter.
Harder: fifteen surfaces to keep disciplined — mitigated by (a) kernel
minimalism (Constitution Art. V), (b) a single promotion funnel
(`learning/PROMOTIONS.md`), (c) registry listing required for anything to be
"real". Revisit if two layers exchange artifacts so often the boundary costs
more than it protects.
