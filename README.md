# Atlas OS

The operating system that runs every business in the portfolio — Nazaria,
NobleGate, Qwikstone, MD's Lux, MD's Essentials, every future business and
client engagement. Websites, brands, content, proposals, automation, and AI
teams are **outputs** of Atlas OS. Never the system itself.

Not a prompt library. Not an AI toolkit. A portable, plain-text,
vendor-agnostic operating system designed for a 20+ year horizon.

## The fifteen layers

| # | Layer | Path | Charter |
|---|---|---|---|
| 1 | Constitution | [CONSTITUTION.md](CONSTITUTION.md) | Law. Amended only by ADR |
| 2 | Kernel | [kernel/](kernel/) | Specs and contracts only. Small. Stable |
| 3 | Knowledge | [knowledge/](knowledge/) | Distilled cross-business facts |
| 4 | Taste | [taste/](taste/) | Creative judgment: principles, critique, references, anti-patterns |
| 5 | Business DNA | [dna/](dna/) | The genome every business implements |
| 6 | Agents | [agents/](agents/) | Role charters + prompt patterns (few, slot-based) |
| 7 | Workflows | [workflows/](workflows/) | Pipelines; retro step mandatory |
| 8 | Frameworks | [frameworks/](frameworks/) | Reusable thinking tools |
| 9 | Learning | [learning/](learning/) | Retros + the promotion funnel into kernel |
| 10 | Decision Logs | [decisions/](decisions/) | ADRs |
| 11 | Assets | [assets/](assets/) | Metadata manifests; binaries live outside git |
| 12 | Businesses | [businesses/](businesses/) | Genome-conforming instances |
| 13 | Clients | [clients/](clients/) | Client records; engagements owned by a business |
| 14 | Registry | [registry/](registry/) | Index of everything |
| 15 | Archive | [archive/](archive/) | Deprecated, never deleted |

## The one idea that matters

**Knowledge first.** Facts live in knowledge layers, judgment lives in taste,
identity lives in business DNA. Prompts are *compiled* from those sources per
task, along a fixed chain:

```
Business DNA → Knowledge → Taste → Framework → Workflow step → Prompt pattern
                                                                    │
                                                             compiled prompt
                                                              (ephemeral)
```

Contract: [kernel/context-chain.md](kernel/context-chain.md). The chain is
designed so that concatenating files in order is a valid compiler — no tooling
required, any tooling welcome.

## The loop that compounds

```
work happens (business/client) ──> retro (mandatory workflow step)
        ▲                                     │
        │                          learning/PROMOTIONS.md (single funnel)
        │                                     │
        └──── kernel / knowledge / taste / dna upgraded, versioned ◄──┘
```

Every completed project must leave Atlas OS better (Constitution Art. III).

## Running on any model

Everything is plain text with declared contracts: inputs, output format,
`context_budget_tokens`, `min_capability: small|medium|large`. Rules in
[kernel/portability.md](kernel/portability.md). Minimal runner:

```bash
# compile a prompt by hand: concatenate the chain, send to any model
cat businesses/<b>/DNA.md knowledge/<relevant>.md taste/principles.md \
    agents/patterns/draft-content.md | ollama run <any-model> "$(cat -)"
```

## Starting a new business

1. `cp -r businesses/_template businesses/<name>`
2. Fill the genome files (see [dna/genome.md](dna/genome.md)); DNA.md first.
3. Register it in `registry/index.yaml`.
4. Instance is `draft` until the genome is complete.

## Taking on a client

1. `cp -r clients/_template clients/<client-name>`
2. Create an engagement folder, set `owner_business`.
3. Confidentiality rules: Constitution Art. VII.
