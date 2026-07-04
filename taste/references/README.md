---
name: taste-references-readme
version: 1.0.0
status: active
type: kernel-doc
description: How external reference works are recorded — as notes that outlive the link.
---

# References

One note per reference work (a site, identity system, campaign, essay, film
title sequence — anything that teaches taste). No binaries here — a reference
worth storing gets an asset-manifest in `assets/`.

## Note format

```yaml
---
name: ref-<slug>
version: 1.0.0
status: active
type: taste
description: <work> by <maker> — what it teaches
sources: [<url or citation>]
---
```

Body answers, in this order:

1. **What it is** — enough description to survive the link dying (Art. I.4).
2. **Why it's good** — the specific moves, named. Not "clean" — *which*
   choices produce the effect.
3. **What we steal** — the transferable principle, phrased so it could be
   promoted into `principles.md` if it keeps proving out.
4. **What we don't** — the parts that only work in the original's context
   (guards against borrowed-authority anti-pattern).
