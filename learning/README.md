---
name: learning-readme
version: 1.1.0
status: active
type: kernel-doc
description: Charter of the Learning layer — retros, the promotion queue, and improvement history.
---

# Learning

The layer that makes Constitution Art. III real. Work anywhere in Atlas ends
here before its lessons go anywhere else.

## Contents

| File | Job |
|---|---|
| `retro-template.md` | Copied for every project/engagement/monthly retro |
| `PROMOTIONS.md` | The single funnel: every candidate for shared status, reviewed weekly |
| `retros/` | Completed retros, named `YYYY-MM-DD-<scope>.md` |

## The loop — two ceremonies, never more (ADR-0007)

1. Workflow's final step = retro (a workflow without one is invalid).
2. Retro rows anything reusable into `PROMOTIONS.md`.
3. **Atlas Hour** (monthly, ~60 min): process the queue (promote /
   reject-with-reason / hold), batch the month's retros, run
   `registry/lint.ps1`, push + tag if a release is due.
4. **Deep Service** (quarterly, ~half day): pruning review, portability test,
   quality calibration, capability-map + charter-overlap review.
5. Promotions land as versioned artifacts; structural ones get ADRs.
   Full rules: `kernel/EVOLUTION_RULES.md`. No third ceremony may be created.

## What counts as learning

A promotion, a knowledge note, a taste refinement, an anti-pattern autopsy, a
version bump with reason, a rejected-candidate row — all valid. "Nothing
learned" is a permitted but suspicious retro outcome; three in a row from the
same workflow means the retro step is being performed, not done.
