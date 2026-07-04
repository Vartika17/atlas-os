---
name: portability
version: 1.0.0
status: active
type: kernel-doc
description: Rules that keep every artifact runnable on local LLMs and any future model.
---

# Portability Rules

Target: every prompt, agent, and workflow works with (a) a local model via
Ollama/llama.cpp/LM Studio, (b) any cloud model, (c) a human with a text editor.

## Prompt portability

1. **Single-file self-sufficiency.** A prompt file plus its declared inputs is
   everything the model sees. No hidden system prompts, no vendor "features".
2. **Capability tiers, not model names.**
   - `small` — ~7-8B class. Simple transforms, extraction, formatting,
     classification. Short outputs.
   - `medium` — ~30-70B class. Drafting, summarization with judgment,
     structured multi-section outputs.
   - `large` — frontier class. Strategy, nuanced positioning, long-document
     reasoning, high-stakes drafting.
   Tag honestly: a prompt tagged `small` must actually produce acceptable
   output on a 7-8B model — test it.
3. **Context budgets.** `context_budget_tokens` caps what the prompt assumes.
   Default budget 4000; anything above 8000 needs justification in the body,
   because local context windows and speed degrade.
4. **Structured output = markdown or fenced blocks.** If machine parsing is
   needed, ask for fenced ```yaml/```json blocks — small models handle fenced
   blocks far better than bare JSON-mode.
5. **No tool-calling assumptions inside prompts.** Tools belong to agents.
   Prompts are pure text → text.

## Agent portability

6. Tools are named abstractly (`web_search`, `file_read`, `file_write`,
   `human_approval`) and mapped to concrete implementations per runtime in
   `agents/tool-map.md`. Swapping Claude Code for a local agent runner means
   editing one mapping file, not every agent.
7. Every agent declares guardrails that hold even on a weak model — i.e. the
   guardrail is enforced by the workflow (human gates), not by trusting the
   model to self-police.

## Workflow portability

8. Every automated step names a **manual fallback**. The business must survive
   the automation dying.
9. Steps pass artifacts as files in the repo, not as chat history. State on
   disk = resumable by anyone or anything.

## Test cadence

Quarterly: run the top-10 most-used prompts against the current local daily
driver model, note failures in `knowledge/`, and retag capability tiers.
