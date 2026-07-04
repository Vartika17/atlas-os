---
name: business-compiler
version: 1.0.0
status: active
type: kernel-doc
description: Charter of the Business Compiler — Atlas OS's toolchain for transforming founder ideas into operating businesses. Adopted as subsystem, not identity, per ADR-0008.
---

# The Business Compiler

Atlas OS's toolchain. It transforms a founder's idea into an operating
business through defined stages, each with typed inputs, required knowledge
and taste, validation gates, and defined outputs. The stage contracts live
in `dna/lifecycle.md`; this charter defines what the compiler is, what it
solves, and what it is not.

**Boundary (ADR-0008):** the compiler is the forward pass. The business it
produces is a *process* that Atlas OS then runs — monitored by metrics,
improved by retros, evolved by promotions, eventually sunset. Compilation
ends; operation never does.

## What it solves

1. **The blank-page tax.** Every new business or client engagement starts
   from accumulated state — genome, taste, knowledge — never from zero.
2. **Skipped-step failure.** Businesses usually die from an unbuilt stage
   (no positioning, no sales system, no measurement). The lifecycle makes
   every stage explicit, gated, and inspectable.
3. **Quality variance.** Stage outputs pass the same validation
   (QUALITY_STANDARD + stage-specific rules) regardless of the owner's
   energy that week or which model did the drafting.
4. **Knowledge evaporation.** Every compilation teaches the toolchain
   (retro → promotion). Business #5 compiles better than business #1
   because businesses #1-4 happened.

## What it is not — and why the difference is structural

| Compared to | The structural difference |
|---|---|
| **ChatGPT / Claude (chat)** | A chat session holds no durable state; every conversation re-explains the business. Atlas holds the state; models are interchangeable labor plugged into it. |
| **AI agents** | Agents are workers. Without an OS they improvise context, invent facts, and forget lessons. Atlas agents compile from governed layers, pass hard gates, and write learnings back. |
| **Prompt libraries** | Prompts are frozen procedure that rots. Atlas stores sources (DNA, knowledge, taste) and compiles prompts fresh per task (ADR-0004). Fix a fact once; every future output inherits it. |
| **Workflow automation (Zapier-class)** | Automation moves data between tools; it cannot hold judgment. Atlas encodes judgment (taste, standards, decision rules) and gates automation with it. |
| **Traditional agencies** | An agency's method lives in employees and leaves with them. Atlas's method is written, versioned, and improves monotonically. Agencies also don't hand you the system — Atlas *is* the system. |
| **CRMs** | A CRM records what happened to contacts. It cannot conceive positioning, judge craft, or produce work. Atlas produces; a CRM may someday be a peripheral. |
| **No-code tools** | No-code builds artifacts (sites, forms) with zero opinion about whether they're right. Atlas decides *what should exist and why* before any artifact is built — artifacts are the last step, not the offer. |

One sentence: **all of these are either labor, memory, or plumbing; Atlas
is the governed state plus the toolchain that turns that state into
businesses — and gets better each time it does.**

## The 2035 rule (why this appreciates as AI improves)

Assume 2035 models are 100× today's. Then everything *procedural* — how to
write copy, structure a launch, design a funnel — approaches free: every
competitor's model knows it too. What cannot be derived by any model,
because it exists nowhere else:

- **Calibrated taste** — thousands of the owner's real ship/kill decisions
- **Proprietary knowledge** — what these specific markets and clients
  actually did, with provenance
- **Decision history** — ADRs and retros: why paths were chosen, what
  failed and why
- **Trust state** — client records, kept-promise history, brand equity

Therefore the design rule: **maximize owner-specific state, minimize
generic procedure.** Patterns and workflows are scaffolding — expected to
shrink as models improve. The state layers (knowledge, taste, DNA,
decisions, clients) are the asset — expected to grow forever. Better
models make the compiler *cheaper to run* and the state *more valuable to
own*. That is an architecture that appreciates with AI progress instead of
being obsoleted by it.

## Missing systems (identified 2026-07, built when reality demands — EVOLUTION_RULES §4)

| System | What it is | Trigger to build |
|---|---|---|
| **Measurement** | Metrics ingestion into `metrics.md` review logs (today: manual) | first business with real weekly numbers |
| **Simulation** | Cheap pre-mortem harness: compile a business hypothesis, attack it with adversarial critique before spending real weeks | second `idea`-stage candidate in the backlog |
| **Sunset playbook** | Orderly wind-down: what to archive, what to promote, obligations checklist | first business or offer that crosses a kill threshold |
| **Delegation** | Export workflows as human SOPs; onboarding for first non-owner operator | first hire or contractor |
| **Finance depth** | Portfolio cash view, unit-economics models per genome | first month two businesses both have revenue |
| **Interface layer** | How Atlas businesses transact with AI-native counterparties (agent-to-agent commerce, machine-readable offers) | first counterparty that asks for it |
| **Moat doctrine** | Explicit periodic audit: is owner-specific state growing faster than generic procedure? | first Deep Service (add to its checklist) |
