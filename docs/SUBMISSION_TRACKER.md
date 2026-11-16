# External submission tracker

Last reconciled: 2026-11-15 (America/Los_Angeles)

This ledger separates source publication, immutable preservation, formal
verification, curated listings, and community publicity. A listing is not an
endorsement of the physical interpretation. The current public source head is
commit `dd77a7e6fd628113871305075707a379a7e74085`; no immutable release tag has
yet been created.

The public claim remains scoped: SCHRODINGER-013 proves a single-plane-wave
operator translation with an explicit correction, while the free-Dirac
mass-shell relation remains an input at SCHRODINGER-002. It does not establish
an arbitrary-wavefunction position-space PDE, Born's rule, or a complete
quantum theory.

| Destination | Scope | Status | Last event | Next action | Follow-up date |
| --- | --- | --- | --- | --- | --- |
| Production verification | Full 13-stage package | Source audit passes; clean rebuild infrastructure-inconclusive | All 16 tracked Lean sources contain no `sorry`, `admit`, or declared `axiom`. A fresh Windows build reached dependency compilation, but the first toolchain/cache initialization produced missing standard-library artifact reads and a cache transfer did not complete; this is not evidence of a proof failure | Add a clean Linux CI build or complete the pinned Mathlib cache installation, then require the exact Stage 13 verification script to pass before release | Before release |
| [GitHub repository](https://github.com/gpartin/LeanSchrodingerDerivation) | Full 13-stage package | Public source; no immutable release | `main` currently points to `dd77a7e6fd628113871305075707a379a7e74085`; there are no release tags, GitHub releases, pull requests, or issues | Establish passing clean CI, then create a versioned immutable release | Before external submission |
| Zenodo | Full archived release | Not submitted | No Schrödinger DOI or deposit was found | Archive the exact immutable GitHub release after verification | After release |
| Software Heritage | Full Git history | Not requested | No Schrödinger snapshot identifier was found | Request Save Code Now after the immutable release exists | After release |
| Palomar Registry | Narrow theorem selected from the public chain | Not prepared or submitted | No dedicated Palomar repository, Comparator configuration, preflight, or intake was found | After release, select an eligible narrow theorem and complete Palomar's current preflight before requesting authorization for intake | After release |
| Lax Lean Archive | Narrow concept/proof package | Not prepared or submitted | No Schrödinger Lax package or archive identifier was found | After release, prepare a bounded concept/proof package and validate it locally; draft submission and irreversible registration remain separate decisions | After release |
| Lemmata | Narrow theorem | Not submitted | No Schrödinger pull request was found | Assess repository fit only after the immutable release and clean verification exist | After release |
| VibeRegistry | Narrow independent comparator | Not submitted | No Schrödinger pull request was found | Prepare an independent specification/comparator only if it adds verification beyond the production proof | After release |
| Lean Pool | Full project proposal | Not submitted | No Schrödinger proposal issue was found | Submit a bounded project-fit proposal after the immutable release and DOI exist | After DOI |
| Best-of-Lean4 | Project listing | Not submitted | No Schrödinger listing pull request was found | Submit one project listing after the immutable release and DOI exist | After DOI |
| Formalization Corpus | Repository indexing | Not submitted | No Schrödinger indexing request was found | Request indexing after the immutable release and DOI exist | After DOI |
| Project Intentions | Community coordination | Manual-only; not submitted | No Schrödinger issue was found | G. D. Partin must personally write any community post; do not submit AI-written Lean-community comments | Manual |
| Constraint Systems Institute | Project listing | Not submitted | No Schrödinger listing request or response was found | Send a bounded listing request after the immutable release and DOI exist | After DOI |
| Lean Zulip | Community publicity | Excluded | The existing user instruction excludes Zulip after the prior moderation event | Do not post | Closed |

## Update rule

For every status change, update the status, last event, next action, and
follow-up date in this file. Preserve failed, blocked, or incomplete
submissions as such; do not convert a prepared package, intake, listing,
announcement, or draft pull request into a verification or acceptance claim.

