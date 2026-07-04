# ADR-0005: Clients are a first-class layer; engagements are owned by a business

- **Date:** 2026-07-04
- **Status:** accepted
- **Scope:** kernel

## Context

Nazaria and NobleGate are service businesses: they take on clients. A client
relationship can outlive any single engagement, and one client may buy from
more than one Atlas business (brand work from Nazaria, automation from
NobleGate). Modeling clients as subfolders of one business would fracture the
client record the moment a second business serves them.

## Decision

`clients/` is a top-level layer. One folder per client holds the durable
relationship record (profile, history, preferences learned). Inside it, one
folder per **engagement**; every engagement's frontmatter declares
`owner_business: <name>` — exactly one Atlas business is accountable for it.
Engagement outputs live with the engagement; reusable lessons flow through the
normal learning loop. Client-confidential material is marked
`confidentiality: client` in frontmatter and is never promoted into kernel or
knowledge layers, even anonymized, without an explicit note that it was
cleared.

## Alternatives considered

- **Clients under each business** (`businesses/nazaria/clients/`) — splits the
  client record across businesses; relationship history becomes unfindable.
- **Clients as just another business instance** — clients don't have DNA we
  author; they have profiles we observe. Different genome, different layer.

## Consequences

Easier: one place answers "what do we know about this client"; cross-sell
between Atlas businesses is visible. Harder: one more layer to govern; the
confidentiality rule requires discipline at retro time (checked by the retro
template's promotion table).
