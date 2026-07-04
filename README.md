# Business Operating System (BOS)

One operating system to run every business I own. Websites, marketing, content,
proposals, and new brands are **outputs** of this system — never the system itself.

## Design principles

1. **Compounding over speed.** Every artifact added here must be reusable by the
   next business. If it only serves one project once, it belongs in that
   business's `output/` folder, not in the kernel.
2. **Plain text, forever.** Markdown + YAML frontmatter only. No proprietary
   formats, no databases, no SaaS dependencies. Readable by a human in 2046 and
   by an 8B local model today.
3. **Versioned, always.** Git is the history. Artifacts carry semantic versions
   in frontmatter. Breaking changes to a contract bump the major version.
4. **Model-agnostic.** Prompts and agents declare their contract (inputs,
   outputs, context budget) and never rely on vendor-specific features. They must
   run on a local LLM via Ollama/llama.cpp as well as any cloud model.
5. **Kernel/instance split.** Shared logic lives in the kernel. Each business is
   an instance that inherits the kernel and overrides only what differs.
6. **Decisions are artifacts.** Every significant choice becomes an ADR in
   `decisions/`. The reasoning compounds, not just the outcome.

## Map

| Path | What lives there |
|---|---|
| `CONSTITUTION.md` | Non-negotiable rules of the system. Changes require an ADR. |
| `kernel/` | Conventions: naming, versioning, portability, artifact specs |
| `frameworks/` | Reusable thinking tools (decision-making, positioning, pricing…) |
| `prompts/` | Portable prompt library. One file = one prompt = one contract |
| `agents/` | Agent role definitions. Compose prompts + tools + guardrails |
| `workflows/` | Multi-step pipelines. Compose agents + prompts + humans |
| `templates/` | Document skeletons (proposal, brief, ADR, brand book…) |
| `knowledge/` | Evergreen distilled knowledge, one fact-cluster per file |
| `decisions/` | Architecture Decision Records — the why-log of the system |
| `registry/` | Machine-readable index of every artifact (INDEX.md + index.yaml) |
| `businesses/` | One folder per business instance. `_template/` is the seed |

## How to use with a local LLM

Every prompt/agent/workflow file is self-contained: frontmatter declares the
contract, the body is the instruction. Minimal loop:

```bash
# example: run a prompt against ollama
cat prompts/content/blog-post.md | ollama run llama3.1 "$(cat -)"
```

Richer runners can parse frontmatter (`inputs`, `context_budget_tokens`) and
assemble context automatically. The system never assumes a runner smarter than
"concatenate files and send".

## Lifecycle of an artifact

draft → active → deprecated → archived (moved to `archive/`, never deleted).
Status lives in frontmatter. The registry tracks all of it.

## Starting a new business

```
cp -r businesses/_template businesses/<new-name>
```

Fill in `BUSINESS.md`, `brand/voice.md`, `strategy/positioning.md`. Everything
else inherits from the kernel until you deliberately override it.
