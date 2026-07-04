---
name: tool-map
version: 1.0.0
status: active
type: kernel-doc
description: Maps abstract tool names used in agent definitions to concrete implementations per runtime.
---

# Tool Map

Agents declare abstract tools. This file maps them to whatever runtime is
current. Changing runtimes = editing this file only.

| Abstract tool | Claude Code (current) | Local runner (fallback) | Manual fallback |
|---|---|---|---|
| `file_read` | Read tool | script: read file | open in editor |
| `file_write` | Write/Edit tool | script: write file | edit in editor |
| `web_search` | WebSearch tool | SearXNG local instance | search in browser, save notes to knowledge/ |
| `web_fetch` | WebFetch tool | curl + readability script | copy-paste page text |
| `human_approval` | AskUserQuestion / pause | CLI prompt in runner | it's already a human |
| `git_commit` | Bash git | Bash git | Bash git |

| `model_run` | (cloud API of the session) | Ollama HTTP API: POST localhost:11434/api/generate | paste prompt into any chat UI |

Rules:
- New abstract tool names require a row here before any agent may declare them.
- `human_approval` may never be mapped to anything automated.
- `model_run` local: use the HTTP API, not interactive `ollama run` (hangs on
  Windows — compile test 01). Respect the pattern's `min_capability`
  (kernel/context-chain.md capability gate).
