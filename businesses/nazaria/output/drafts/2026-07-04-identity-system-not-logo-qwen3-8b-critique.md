# Critique — qwen3:8b draft (compile test 01)

**Verdict: REWORK** (hard blocker + dimension at 0)

**Biggest problem:** fabricated statistic. "68% of consumers form opinions
about a brand within 10 seconds" appears nowhere in the compiled facts and
was invented despite an explicit ban in the prompt. This is the exact
fluent-fabrication failure THINKING_MODEL step 2 exists to prevent — and on
a claim a client could repeat publicly.

## Four passes

**1. Purpose:** does the step-1 job (argue system over logo for Farida) —
structure of the argument is actually sound. Pass with notes.

**2. Audience:** FAIL. Addresses the persona by her internal name
("Farida, you're not just selling...") — personas are lenses, not
addressees; a real reader named anything else is alienated in word one.
Objections from the persona sheet are handled well ("Can't articulate my
brand? That's okay") — the mechanics were understood, the frame was not.

**3. Taste:**
- honesty: "Nazaria's systems are tested for these scenarios" — implies an
  operational track record a validating-stage studio does not have
  (unearned-"we" anti-pattern, mild form). "We listen" process claims:
  invented, minor.
- specificity: "muted green for trust" is color-psychology cliché — the
  *form* of specificity without the substance.
- protagonist: held reasonably; customer stays the subject most of the way.
- restraint/hierarchy: acceptable; one CTA, one idea per section.

**4. Craft:** competent prose, heavy em-dash cadence, headline-case H2s
inconsistent with sentence-case convention. ~520 words vs ~800 contract.

## Scorecard (QUALITY_STANDARD)

| Dimension | Score | Note |
|---|---|---|
| Contract | 1 | structure ✓, one CTA ✓; length 65% of spec |
| Audience | 1 | persona-name leak; objection handling good |
| Evidence | **0** | fabricated 68% statistic — hard blocker |
| Taste | 1 | unearned track-record claim; clichéd specificity |
| Craft | 1 | readable; cadence + length issues |
| Benchmark | 1 | fails copy benchmark: "claims travel with proof" |
| **Total** | **5** | **Rework** (blocker + dimension at 0) |

## Recurring candidates (for taste/retro)

- Small-tier models produce *plausible statistics* under specificity
  pressure: the taste rule "concrete beats abstract" pushes a weak model to
  invent concreteness. Compile for small tier must pair specificity with a
  harder no-invented-numbers scaffold, or drop the specificity section.

## Notes

Run was DELIBERATELY below the pattern's `min_capability: medium` — this
result validates the capability-tier contract rather than condemning the
model. Structure, objection use, and positioning language transfer were all
genuinely good for an 8B. The failure modes are exactly the ones the tier
system predicts.
