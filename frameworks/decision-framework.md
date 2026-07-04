---
name: decision-framework
version: 1.0.0
status: active
type: framework
description: How to classify and process any business decision — reversibility × stakes.
---

# Decision Framework

Classify every decision on two axes before spending time on it.

## The grid

|  | Low stakes | High stakes |
|---|---|---|
| **Reversible** | Decide now, by anyone/any agent. No record needed. | Decide fast, record one line in the business log. Set a review trigger. |
| **Irreversible** | Decide with a 10-minute checklist below. | Full ADR. Sleep on it. Seek disconfirming evidence first. |

Reversible = undoing costs less than 10% of doing. High stakes = outcome moves
revenue, reputation, or optionality by an amount you'd feel in a quarter.

## Irreversible-decision checklist

1. What would make this obviously wrong in 12 months?
2. Who loses if this goes well? (Second-order effects.)
3. What's the cheapest experiment that makes this reversible?
4. Am I deciding, or is sunk cost / ego / fatigue deciding?
5. Write the ADR *before* acting — if the Context section is hard to write,
   the decision isn't understood yet.

## Delegation rule for agents

Agents (human or LLM) may autonomously make **reversible/low-stakes** decisions
within their charter. Everything else escalates: reversible/high-stakes to the
business owner same-day; irreversible always to the owner with a drafted ADR.

## Anti-patterns

- Treating brand/naming decisions as reversible. They rarely are.
- Running the full ADR process on reversible decisions — process theater
  destroys the compounding this framework exists to protect.
