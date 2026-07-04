# ADR-0008: The Business Compiler is Atlas's toolchain, not its master abstraction

- **Date:** 2026-07-04
- **Status:** accepted
- **Scope:** kernel

## Context

Owner proposal: redefine Atlas as a "Business Compiler" — transforming a
founder's idea into an operating business through a canonical ~20-stage
pipeline, and orienting every future feature to that mission. The proposal
correctly identifies a real gap: Atlas had no explicit idea→business
pipeline spec, only the pieces (genome, context chain, workflows). The
Chief Systems Architect was instructed to challenge the abstraction rather
than adopt it automatically.

## Decision

**Adopted, demoted, and bounded:**

1. **Atlas OS remains the master abstraction.** Businesses are *processes*:
   spawned, run, monitored, evolved, and eventually sunset. The OS provides
   what an OS provides — kernel contracts, shared services (knowledge,
   taste, learning), a scheduler (the two ceremonies), and isolation
   (instances, client confidentiality).
2. **The Business Compiler is the OS's toolchain**: the forward
   transformation from founder idea to operating business, specified in
   `BUSINESS_COMPILER.md` (charter) and `dna/lifecycle.md` (stage
   contracts). It is Atlas's flagship subsystem — most feature investment
   flows here — but it is a component, not the identity.
3. **The lifecycle is a state machine with mandatory loops, not a linear
   pipeline.** Validation-stage loops (offer ↔ market conversation ↔
   reposition) are first-class states, not deviations. A linear canonical
   pipeline is explicitly rejected.
4. **The 2035 design rule** (added to NORTH_STAR): *maximize owner-specific
   state, minimize generic procedure.* As models improve, procedural
   knowledge depreciates toward free; non-derivable state (calibrated
   taste, proprietary knowledge, decision history, trust records)
   appreciates. Atlas invests accordingly.

## Why the compiler metaphor was not adopted whole

- **Compilers terminate; businesses run.** "Continuously compile, operate,
  improve, scale" describes a runtime with a toolchain, which is an OS.
- **Compilers have no runtime→source feedback.** Atlas's compounding engine
  (retro → promotion) is precisely that feedback; making "compiler" the
  identity would marginalize the system's most valuable loop.
- **Linear pipelines institutionalize waterfall.** Contradicts ADR-0007
  (structure trails reality) and observed validation-stage behavior.

## Architecture review verdict (Task 1 of the proposal)

Every existing layer maps to OS-or-toolchain roles; no component exists as
"technically interesting only." Watched items: charter overlap (CTO review
M1) still stands. **Missing systems identified** for the roadmap (detailed
in BUSINESS_COMPILER.md §Missing): Measurement (metrics ingestion),
Simulation (cheap hypothesis testing), Sunset playbooks, Delegation (SOP
export for humans), Finance depth, Interface layer (AI-native
business-to-business transactions), and the Moat doctrine (proprietary
state accumulation).

## Consequences

Easier: feature prioritization gets a single question — "which lifecycle
stage does this serve, and does it add owner-specific state?" Harder: the
compiler charter adds a fourth root document; charter-overlap watch now
mandatory at next Deep Service. NORTH_STAR → 1.1.0, CAPABILITY_MAP → 2.0.0
(regrouped by lifecycle leverage), lifecycle spec lands in `dna/`.
