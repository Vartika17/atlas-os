---
name: clients-readme
version: 1.0.0
status: active
type: kernel-doc
description: Charter of the Clients layer — durable client records and business-owned engagements (ADR-0005).
---

# Clients

One folder per client; the relationship outlives any engagement and any single
Atlas business. Structure per ADR-0005.

## Layout

```
clients/
  _template/
  <client-slug>/
    CLIENT.md                # durable profile: who, context, preferences learned, history index
    engagements/
      <yyyy-mm-slug>/
        ENGAGEMENT.md        # scope, owner_business, dates, status, commercial summary
        output/              # deliverables (drafts/, delivered/)
        knowledge/           # engagement-specific facts, confidentiality-tagged
```

## Rules

1. Every `ENGAGEMENT.md` declares exactly one `owner_business`. That business's
   DNA, voice, and workflows drive the work — the *client's* brand facts enter
   as stage-2 knowledge (their voice/positioning captured in the engagement's
   `knowledge/`), not as a substitute DNA.
2. Everything under a client defaults to `confidentiality: client`.
   Promotion of any lesson to shared layers requires the reviewer to confirm
   Art. VII — anonymized-and-cleared or it stays put.
3. Engagement close = retro, mandatory, like every workflow. Client
   preferences learned get written back to `CLIENT.md` — that file is why the
   second engagement starts smarter than the first.
4. Prospects live here too (`CLIENT.md` with `status: prospect`) — the record
   starts at first contact, not first invoice.
