---
name: assets-readme
version: 1.0.0
status: active
type: kernel-doc
description: Charter of the Assets layer — metadata manifests for binaries that live outside git.
---

# Assets

Git holds **manifests**, never binaries (Constitution Art. I). Logos, photos,
fonts, videos, source files live in external storage; Atlas knows *about*
them: where, what, whose, and under what rights.

## Layout

```
assets/
  <business-or-shared>/<slug>.md    # one manifest per asset (or per asset set)
```

## Manifest format

`type: asset-manifest` per kernel/artifact-spec.md:

```yaml
---
name: asset-nazaria-logo-primary
version: 1.0.0
status: active
type: asset-manifest
description: Nazaria primary logo, all lockups
asset_type: image
location: <storage path or URL — the actual binary home>
sha256: <hash of the canonical file>
license: owned-outright | licensed (terms summarized) | client-owned
used_by: [businesses/nazaria]
---
Body: provenance (who made it, when, from what), variants that exist,
usage rules (clear-space, don'ts), and what to do if the storage location dies.
```

## Rules

1. An asset without a manifest doesn't exist as far as Atlas is concerned —
   agents and workflows may only reference manifested assets.
2. `sha256` makes the manifest authoritative: if storage and hash disagree,
   storage is corrupt, not the manifest.
3. `license:` is mandatory and exact. "Found it online" is not a license;
   unlicensed assets are an anti-pattern with legal teeth.
4. Client-owned assets: manifest lives here, marked `license: client-owned` +
   `confidentiality: client`; Art. VII applies.
