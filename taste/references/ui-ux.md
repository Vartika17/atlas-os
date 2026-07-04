---
name: ref-ui-ux
version: 1.0.0
status: active
type: taste
description: UI/UX — exemplar studies and extracted timeless principles
sources: ["Apple Human Interface Guidelines: The Apple Desktop Interface (Addison-Wesley, 1987)", "Jakob Nielsen, 10 Usability Heuristics for User Interface Design (Nielsen Norman Group, 1994)", "Material Design guidelines (Google, 2014, material.io)", "Don Norman, The Design of Everyday Things (Basic Books, 1988)"]
---

# UI/UX — Reference Study

Excellence in UI/UX is when users accomplish intent without noticing the interface — errors prevented, actions reversible, next steps obvious. Commercially it is conversion, retention, and support cost in one lever: every point of friction is paid for either in churn or in tickets.

## Apple Human Interface Guidelines & the desktop metaphor (Apple, 1984/1987)

- **Why world-class:** The 1987 HIG codified direct manipulation, the menu bar, consistency, feedback, and forgiveness into a written contract between platform and developers. Its core interaction grammar (windows, undo, drag, clipboard) has run essentially unchanged for 40 years across billions of machines.
- **Design principles:**
  - Direct manipulation: users act on visible objects and see immediate results — no command incantations.
  - Consistency as law: the same gesture means the same thing in every application, enforced by published guidelines.
  - Forgiveness: actions are reversible or confirmed; exploration must be safe.
  - Metaphor borrows the user's existing knowledge (desktop, folders, trash) to zero out training.
- **Business problem solved:** Personal computers could not reach mainstream buyers while they required manuals; the HIG made third-party software feel pre-learned, which made the platform — not any single app — the product.
- **Psychology:** Recognition over recall (visible menus vs. memorized commands) and safe reversibility remove fear, the primary blocker of novice exploration; transfer of learning across apps compounds platform lock-in.
- **UX principles:** User control, immediate feedback, reversibility, consistency, perceived stability — the canon most later heuristic lists restate.
- **Branding principles:** The interaction feel itself became the brand — "it just works" is a UX claim, marketed as identity.
- **Visual principles:**
  - Visible affordances: buttons look pressable, handles look draggable.
  - One coherent spatial model (overlapping windows, persistent desktop) so state is externalized on screen, not held in memory.
  - Immediate visual response to every input — highlight on press, motion on drag — closing the action-feedback loop.
  - Restraint in ornament so signal (what can I do?) dominates decoration.
- **Learn:** Publish the rules of your interface and obey them everywhere; consistency across surfaces is worth more than local optimality on any one screen.
- **Do NOT copy:** Skeuomorphic metaphors for objects users no longer know (floppy disk saves, dial phones), or desktop idioms forced onto touch — metaphors expire with their referents.
- **Suitable industries:** Platforms and ecosystems, OS-level products, developer tools, any suite of products from one company.

## Nielsen's 10 Usability Heuristics (Jakob Nielsen / NN/g, 1994)

- **Why world-class:** A methodology, not a style: ten written heuristics (system status visibility, match to the real world, user control, consistency, error prevention, recognition over recall, flexibility, minimalist design, error recovery, help) that have governed usability evaluation for 30+ years, unchanged through desktop, web, mobile, and voice.
- **Design principles:**
  - Evaluation must be criterion-based: judge interfaces against named rules, not opinions.
  - Cheap, early inspection (a few evaluators, hours not months) catches most defects before code.
  - Principles are technology-agnostic because they encode human limits, not platform features.
  - Findings are severity-rated so fixes are prioritized by user cost, not reviewer passion.
- **Business problem solved:** Teams shipped unusable software because critique was subjective and testing was expensive; heuristics made quality checkable by any trained reviewer at near-zero cost.
- **Psychology:** Each heuristic maps to a cognitive constant — working-memory limits (recognition over recall), anxiety reduction (status visibility), error psychology (prevention beats recovery, blame the design not the user).
- **UX principles:** The list itself is the canonical principle set; its meta-lesson is that UX quality is auditable.
- **Branding principles:** n/a — deliberately brand-neutral; that neutrality is why it transfers.
- **Visual principles:**
  - Minimalist design as signal-to-noise: every extra element competes with the relevant ones.
  - Status must be visible where the user is looking, within an expected timeframe.
  - Error states designed with the same care as success states — plain language, precise, constructive.
- **Learn:** Adopt a written heuristic checklist for every critique; "I don't like it" is not a finding — name the violated rule and the user cost.
- **Do NOT copy:** Treating the ten as a rubber stamp — heuristic review complements observing real users, it does not replace it; a checklist pass is not proof of fit to task.
- **Suitable industries:** Universal — any business with an interface; especially valuable where formal QA exists but UX review does not (internal tools, enterprise, gov).

## Material Design (Google, 2014– )

- **Why world-class:** The first design system published as a complete, versioned, public specification — physics-based motion, elevation model, 8dp spacing grid, color and type roles, accessibility baked in — unifying thousands of Google and third-party apps for over a decade across phones, web, watches, and TVs.
- **Design principles:**
  - A single physical model (paper surfaces, ink, light, elevation) gives thousands of independent teams the same intuitions without case-by-case rulings.
  - Tokens and roles, not values: color/type defined by function (primary, surface, on-surface) so themes swap without redesign.
  - The spec is the product: documented, versioned, with reference code — design decisions ship as infrastructure.
- **Business problem solved:** Android's fragmentation across devices and OEMs made the ecosystem feel cheap against the iPhone; a public system raised the floor of every third-party app, defending the platform's perceived quality at scale.
- **Psychology:** Consistent elevation and motion grammar teach a causal model of the interface — users predict where things come from and go, reducing disorientation; system-wide familiarity lowers the adoption cost of every new app.
- **UX principles:** States (hover, focus, pressed, disabled, error) specified for every component; touch targets, contrast ratios, and motion durations given as numbers, making accessibility and quality enforceable rather than aspirational.
- **Branding principles:** Systematized theming proves rigor and brand expression coexist — the system owns behavior, the brand owns color, type, and shape within it.
- **Visual principles:**
  - 8dp baseline grid and keylines make spacing decisions mechanical and cross-team consistent.
  - Elevation/shadow as functional depth cue (what is above what), not decoration.
  - Bold intentional color and type roles; one primary action per context.
- **Learn:** Encode design decisions as named tokens and written component specs with all states; quality that depends on a designer reviewing every screen cannot scale past one team.
- **Do NOT copy:** Material's specific surfaces (shadows, ripples, FABs) as a shortcut to "looking designed" — adopting another platform's skin makes your product read as generic and off-brand on every platform at once.
- **Suitable industries:** Multi-product companies, marketplaces with third-party developers, enterprises with many internal tools, any org where more than two teams ship UI.

## Timeless principles extracted

- Recognition over recall, always: show available actions, current state, and location; any design that requires the user to remember what the system knows is defective.
- Make actions reversible and say so; undo beats confirmation, and confirmation beats silent destruction — fear of breaking things suppresses usage more than missing features do.
- Consistency outranks local cleverness: the same element must look and behave identically everywhere, and a written, enforced spec is the only mechanism that survives team growth.
- Every interactive element needs designed states — default, hover/focus, active, disabled, loading, empty, error — and a critique that hasn't seen the error and empty states hasn't reviewed the design.
- Feedback within the user's attention span for every action: acknowledge instantly, show progress past one second; a system that goes silent is experienced as broken even when it works.
- Judge interfaces against named heuristics and observed user behavior, never taste alone; if a reviewer cannot cite the violated rule and the user cost, it is a preference, not a finding.
