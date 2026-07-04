---
name: lifecycle
version: 1.0.0
status: active
type: kernel-doc
description: The Business Lifecycle Map — canonical state machine from idea to sunset, with stage contracts (inputs, knowledge, taste, frameworks, agents, validation, outputs, promotions). The Business Compiler's specification.
---

# Business Lifecycle Map

The canonical lifecycle every Atlas business moves through. **A state
machine with mandatory loops — not a linear pipeline** (ADR-0008). Stages
may be revisited; two loops are structural, not exceptions.

```
IDEA
 └─> DISCOVERY ──────────────┐  (research / market / competitor — may kill the idea: cheapest exit)
      └─> DEFINITION         │  (DNA, positioning, brand strategy)
           └─> VALIDATION LOOP ◄─────────┐
                offers ↔ real sales      │  loop until close-rate threshold
                conversations ↔ reposition   (metrics.md) or kill trigger
           └─> EXPRESSION      (identity system, website, content strategy)
                └─> SYSTEMS    (marketing, sales, ops, automation)
                     └─> LAUNCH
                          └─> OPERATION LOOP ◄──┐  measure → learn → promote,
                               │                 │  forever
                               ├─ optimize ──────┘
                               ├─ reinvent ──> back to DEFINITION (equity preserved)
                               └─ sunset ───> SUNSET (archive, promote lessons, close obligations)
```

Genome tiers (ADR-0007) bind here: DISCOVERY→VALIDATION requires core-5
only; EXPRESSION onward requires the full genome. Every stage's output
passes QUALITY_STANDARD *plus* the stage validation below. Every stage
ends with its retro row — promotion opportunities listed per stage are the
expected kinds, not limits.

---

## Stage contracts

Format per stage — **In:** input · **Know:** required knowledge ·
**Taste:** sections that govern · **Frame:** frameworks · **Agent:** who
executes (h = human-led, a = agent-led, h+a = compiled draft, human gate) ·
**Gate:** validation to pass · **Out:** output artifact(s) · **Promote:**
typical promotions. **Support:** what exists in Atlas today.

### 1. IDEA
- **In:** founder's hypothesis, one paragraph. **Know:** portfolio backlog. **Taste:** honesty. **Frame:** decision-framework (reversible/low-stakes: just log it). **Agent:** h. **Gate:** stated in one sentence: who pays, for what, why us. **Out:** backlog note. **Promote:** rarely. **Support:** ✓ (backlog note; Simulation harness later).

### 2. DISCOVERY (research + market analysis + competitor analysis)
- **In:** backlog note. **Know:** shared knowledge/ first — prior market notes. **Taste:** specificity, honesty (base rates before enthusiasm — THINKING_MODEL step 2-3). **Frame:** THINKING_MODEL invert step; decision-framework for the go/kill call. **Agent:** h+a (research runs agent-led; synthesis human-gated). **Gate:** three piles explicit (known/assumed/unknown); competitor entries include honest strengths + "do nothing"; kill criteria written BEFORE research starts. **Out:** instance knowledge/ notes: market, competitors, demand evidence. **Promote:** market facts that transfer → shared knowledge/. **Support:** ◐ (knowledge layer ✓; research workflow not yet written — first Next-roadmap item).

### 3. DEFINITION (Business DNA + brand strategy + positioning)
- **In:** discovery notes. **Know:** instance knowledge. **Taste:** all of principles; rejections.md checked at direction stage. **Frame:** genome (dna/genome.md). **Agent:** h+a — drafts compiled, but identity is owner-ratified, always. **Gate:** core-5 non-stub; Compiled Identity Block ≤300 tokens; zero unresolved [VERIFY] in DNA for `active`; positioning passes the logo-swap test. **Out:** core-5 genome. **Promote:** genome friction → dna/ layer fixes. **Support:** ✓ (validated with Nazaria).

### 4. VALIDATION LOOP (offers ↔ market conversations ↔ reposition)
- **In:** core-5. **Know:** every real conversation logged into instance knowledge (persona corrections are the yield). **Taste:** honesty (no manufactured urgency to force validation), protagonist. **Frame:** metrics.md thresholds — the loop's exit conditions. **Agent:** h (selling is human at this stage) + a for collateral per iteration. **Gate:** EXIT when close-rate threshold hit (→ stage 5) or kill trigger hit (→ SUNSET small). Loop iterations are cheap by design — reposition edits core-5, not full genome. **Out:** evidence-backed offers + pricing.md reasoning + corrected personas. **Promote:** objection-handling language that works → knowledge; persona-interview method → workflows. **Support:** ◐ (metrics thresholds ✓; conversation-capture workflow not yet written).

### 5. EXPRESSION (identity system + website strategy/copy + content strategy)
- **In:** validated core-5. **Know:** validated personas' exact language. **Taste:** full — benchmarks per artifact class (logo, typography, landing page, copy) gate here hardest. **Frame:** genome full-tier files (website.md, content.md). **Agent:** h+a; identity design direction h, production a, critique both. **Gate:** QUALITY_BENCHMARKS class standards — photocopy/blur test for marks, 5-second test for pages, logo-swap for copy; assets manifested with licenses. **Out:** identity system (written rules + manifested assets), website (strategy → copy → build), content strategy. **Promote:** reusable design-direction briefs → agents/patterns (respecting <12 cap). **Support:** ◐ (taste gates ✓; identity-system and website workflows not yet written — highest-leverage Next items).

### 6. SYSTEMS (marketing + sales + operations + automation)
- **In:** full genome files as specs. **Know:** channel economics from knowledge/. **Taste:** friction (respect for customer time is a system property), honesty. **Frame:** genome sales/marketing/automation files; portability rule 8 (manual fallback per automation). **Agent:** h+a. **Gate:** every funnel stage has owner + tool + manual fallback; every automation has a kill switch; human gates (Art. VIII) mapped explicitly. **Out:** operating systems for demand, conversion, delivery. **Promote:** channel playbooks that work → frameworks/. **Support:** ◐ (genome specs ✓; playbooks accumulate from real operation).

### 7. LAUNCH
- **In:** systems live. **Know:** launch checklist (grows from every launch's retro). **Taste:** restraint (launch is one focused promise, not everything at once). **Frame:** decision-framework — launch date is irreversible/high-stakes: ADR. **Agent:** h decides, a produces collateral. **Gate:** measurement wired BEFORE launch (metrics.md thresholds armed); rollback/fallback stated. **Out:** live business + launch retro. **Promote:** the checklist itself compounds. **Support:** ◐ (first launch writes the checklist).

### 8. OPERATION LOOP (measure → learn → promote — forever)
- **In:** live business. **Know:** metrics review log. **Taste:** honesty (report the numbers that embarrass). **Frame:** metrics thresholds force decisions; two ceremonies schedule attention. **Agent:** a drafts reviews, h decides. **Gate:** every metric crossing forces its written decision; every month has an Atlas Hour row. **Out:** review log, content/campaign output via content-pipeline, growing instance knowledge. **Promote:** the loop IS promotion — this stage feeds every layer. **Support:** ✓ (ceremonies, metrics, content-pipeline all live).

### 9. EVOLUTION (optimize | reinvent | scale)
- **In:** operation data crossing a threshold. **Know:** decision history (ADRs) — what was tried. **Taste:** consistency (evolve the inherited, never reset — brand equity math), durability. **Frame:** decision-framework: reinvention is irreversible/high-stakes → ADR mandatory. **Agent:** h. **Gate:** reinvention re-enters DEFINITION with equity explicitly listed (what must survive the change); scaling requires unit economics in pricing.md to hold at 10×. **Out:** amended DNA (minor bump = optimize; major = reinvent) or scale plan. **Promote:** reinvention lessons → dna/ + frameworks. **Support:** ✓ conceptually (versioned DNA + ADRs); playbooks accumulate.

### 10. SUNSET
- **In:** kill trigger crossed, or owner decision (ADR). **Know:** obligations list (clients, subscriptions, commitments). **Taste:** honesty — customers told the truth, promises closed out. **Frame:** decision-framework; Constitution Art. IV (nothing deleted). **Agent:** h. **Gate:** obligations checklist closed; final retro completed; instance archived path-mirrored; reusable knowledge/taste promoted BEFORE archive. **Out:** archived instance + sunset retro — the business's lessons outlive the business. **Promote:** mandatory — a sunset that teaches nothing wasted its death. **Support:** ✗ (playbook written at first sunset — see BUSINESS_COMPILER.md Missing).

---

## Reading the map

- **Legend:** ✓ supported today · ◐ partial (specs exist, workflow to be written from first real use) · ✗ missing by design until triggered.
- The ◐ pattern is deliberate: workflows are written from the first real
  pass (EVOLUTION_RULES §4 — event-driven growth), then compound. Writing
  all ten stages' workflows speculatively would be inventory, not
  investment.
- Nazaria's current position: stage 3→4 boundary (DEFINITION done pending
  owner ratification; VALIDATION LOOP next).
