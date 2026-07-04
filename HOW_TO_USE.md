---
name: how-to-use
version: 1.1.0
status: active
type: kernel-doc
description: The beginner's note — how to actually use Atlas OS day to day, written for someone who knows nothing about it.
---

# How to Use Atlas OS (for someone who knows nothing)

Atlas is a smart filing system + assistant for running businesses. You
don't code. You do three things: **answer questions, ask for work, and
say yes or no.** That's the whole job.

---

## Step 0 — Where Atlas is, and how to start talking to it

### Where it lives

Atlas is a **folder of plain files** on this computer:

```
V:\fable 5
```

That folder IS Atlas. Every business, every rule, every piece of saved
knowledge is a readable file inside it. A backup copy lives online in a
private vault: **github.com/Vartika17/atlas-os** (sign in as Vartika17).

### How to start a session (the normal way)

Atlas has no app of its own. You talk to it through an AI assistant that
can read and write files. Today that's **Claude Code** (the desktop app on
this machine); tomorrow it can be any other AI — Atlas doesn't care,
everything is plain text.

1. Open the **Claude Code** app (or type `claude` in a terminal).
2. Make sure it's opened in the Atlas folder: `V:\fable 5`.
   (In the app: open/select that folder as the project.)
3. Type what you want in plain English. Done — you're using Atlas.

### What to open and read first (in this order)

| Order | Open this file | Why |
|---|---|---|
| 1 | `HOW_TO_USE.md` | This note. How to operate it |
| 2 | `README.md` | The map — what every folder is |
| 3 | `registry/INDEX.md` | Table of contents of everything that exists |
| 4 | `businesses/nazaria/DNA.md` | Example of a real business's identity file |

All of them open in Notepad, Word, or any editor — they're just text.
Reading is always safe; you can't break anything by looking.

### Your first messages — copy these

Just type things like this into the assistant:

- *"Show me what businesses exist in Atlas."*
- *"What's in the content queue for Nazaria?"*
- *"Write an Instagram caption for Nazaria about identity systems."*
- *"Add a new client called <name> for Nazaria."*
- *"What did Atlas learn last month?"* (it reads the retro files)
- *"Run Atlas Hour."* (the monthly tidy-up)

You never need special commands. Plain sentences. The assistant reads the
Atlas files, follows Atlas's rules automatically, and shows you drafts
for approval.

### If there's no internet / no AI subscription

Atlas still works. A free local AI (Ollama, already installed on this
machine) can run it — slower and simpler, but everything opens and
everything is readable by hand. Nothing about Atlas depends on any
company's service.

---

## The 5 everyday steps

### Step 1 — Tell Atlas about the business (once, ever)

When a business or client is new, you answer a short list of questions:

- Who are your customers?
- What do you sell, and for how much?
- How do you talk (friendly? serious? premium?)
- Why should someone pick you?

Your answers get saved in that business's folder. You never repeat
yourself again — Atlas remembers forever.

> If you don't know an answer yet, say so. Atlas marks it "[VERIFY]" and
> will never guess or make it up.

### Step 2 — Ask for work (one line)

Whenever you need something, write one line in the business's request
list, like:

- "Write an Instagram caption about the new product"
- "Write the homepage headline"
- "Draft a proposal for this client"

No long explanations needed — Atlas already knows the business from
Step 1.

### Step 3 — Atlas works (you do nothing)

Atlas automatically gathers the business's identity, the facts it has
saved, and your quality rules — then writes a draft. Then it **grades its
own draft** against a strict checklist. If the draft invented a fact or
sounds cheap and generic, Atlas rejects it *itself* and tries again. You
never see the bad ones.

### Step 4 — You say yes or no (the golden rule)

Atlas shows you the draft and its score. You read it and:

- **Yes** → it can be published/sent
- **Fix this part** → Atlas revises
- **No** → rejected, and Atlas notes why

**Nothing ever goes out without your yes. Ever.** Atlas cannot publish,
send, spend money, or set prices on its own — that's a permanent rule,
not a setting.

### Step 5 — Atlas learns (automatic)

After the work is done, Atlas writes down what it learned — what you
fixed, what worked. Next time, the first draft is already better. Every
job makes all future jobs smarter. That's the whole trick.

---

## Your only two habits

| Habit | When | What you do |
|---|---|---|
| **Atlas Hour** | Once a month, ~1 hour | Look at the list of improvements Atlas suggests. Approve the good ones. Done. |
| **Deep check** | Once every 3 months, half a day | Throw out anything unused, quick health check. |

That's the entire maintenance. No daily upkeep.

---

## Quick answers

- **Where is everything?** One folder: `V:\fable 5` — plus a private
  online backup (GitHub). Laptop dies = nothing lost.
- **Which file matters most per business?** `DNA.md` — the business's
  identity. Everything is built from it.
- **Can it lie or make things up?** Designed not to. Unknown facts become
  "[VERIFY: ...]" instead of guesses, and fake facts are auto-blocked.
  (Tested: it caught and rejected a made-up statistic.)
- **New business?** One command copies the whole structure. Then just do
  Step 1 for it.
- **What if I stop using some AI tool?** Doesn't matter. Everything is
  plain text files. Any AI — or a human with a text editor — can run it.

---

## In one sentence

**Teach it once, ask in one line, approve with one yes — and it gets
smarter every single time.**
