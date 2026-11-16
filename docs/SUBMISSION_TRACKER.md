# External submission tracker

Last reconciled: 2026-11-16 (America/Los_Angeles)

This ledger separates source publication, immutable preservation, formal
verification, curated listings, and community publicity. A listing is not an
endorsement of the physical interpretation. The current public source head and
archived release source are commit
`16c1f61538b824f006ed4a7c9496b4e1c48021b5`.

The public claim remains scoped: SCHRODINGER-013 proves a single-plane-wave
operator translation with an explicit correction, while the free-Dirac
mass-shell relation remains an input at SCHRODINGER-002. It does not establish
an arbitrary-wavefunction position-space PDE, Born's rule, or a complete
quantum theory.

| Destination | Scope | Status | Last event | Next action | Follow-up date |
| --- | --- | --- | --- | --- | --- |
| Production verification | Full 13-stage package | PASS for released source | All 16 tracked Lean sources contain no `sorry`, `admit`, or declared `axiom`; the clean Linux CI run passed for the released source ([run 43805766573](https://github.com/gpartin/LeanSchrodingerDerivation/actions/runs/43805766573)) | Re-run the same release audit before every later version | Each release |
| [GitHub repository](https://github.com/gpartin/LeanSchrodingerDerivation) | Full 13-stage package | Public immutable release | `main` and the release source are commit `16c1f61538b824f006ed4a7c9496b4e1c48021b5`; [v0.13.0-research](https://github.com/gpartin/LeanSchrodingerDerivation/releases/tag/v0.13.0-research) is public | Preserve this release; publish later changes only as a new version after verification | Closed for v0.13.0-research |
| [Zenodo](https://zenodo.org/records/24270168) | Full archived release | Published as a new standalone software record | Version DOI `10.5281/zenodo.24270168`; all-versions DOI `10.5281/zenodo.24270167`; archive MD5 `1b03a034b7448c2fbc883eebd8ac7f83`, local SHA-256 `C566B28E6AA84B108187688045C0EB716C71B0242FA06815A8CB1B755A2B3344`; CC0-1.0 | Use the version DOI for this exact release and the concept DOI for the evolving record | Closed for v0.13.0-research |
| [Software Heritage](https://archive.softwareheritage.org/api/1/origin/save/2654352/) | Full Git history | Save Code Now request accepted; archive result pending | Request ID `2654352` was accepted for the public repository | Poll the accepted request until a snapshot identifier is available | 2026-11-17 |
| Palomar Registry | Two bounded algebraic theorems from the public chain | Package prepared locally; intake not authorized | Dedicated challenge/solution package, Comparator configuration, and full-workflow preflight are being validated; permanent intake has not been requested | Publish the dedicated repository and show the exact repository, commit, config, theorem names, and responsible-author relationship before requesting explicit intake authorization | After preflight |
| Lax Lean Archive | Narrow concept/proof package | Preparation in progress; not submitted | A separate Lax package is being prepared from the released source; no public draft or immutable registration exists yet | Validate the bounded concept locally, obtain concept sign-off, then submit a replaceable draft; irreversible registration requires separate approval | After local build |
| [Lemmata](https://github.com/ZIB-IOL/lemmata/pull/20) | Exact decomposition and quartic remainder bound | Pull request submitted | PR #20 independently states and proves the bounded theorem; its export is kernel-checked with only the standard allowed foundations | Respond to archive review and CI; do not treat submission as acceptance | On review activity |
| VibeRegistry | Independent statement/comparator for two released theorems | Package prepared; validation in progress | Entry pins production commit `16c1f61538b824f006ed4a7c9496b4e1c48021b5` and enables Comparator and NanoDa; public PR waits on clean short-path validation | Complete Comparator/NanoDa verification, then open and track the public pull request | After validation |
| [Lean Pool](https://github.com/LeanPool/lean-pool/issues/827) | Full project proposal | Proposal submitted | Issue #827 requests bounded project review and links the immutable release and DOI | Respond to maintainer questions; do not treat the proposal as acceptance | On review activity |
| [Best-of-Lean4](https://github.com/34j/best-of-lean4/pull/300) | Project listing | Pull request submitted | PR #300 adds a narrowly scoped listing with explicit exclusions and the release DOI | Respond to listing review and CI | On review activity |
| [Formalization Corpus](https://github.com/dzackgarza/formalization-corpus/issues/12) | Repository indexing | Indexing request submitted | Issue #12 requests corpus indexing for the immutable release | Respond to curator questions and record any indexed identifier | On review activity |
| Project Intentions | Community coordination | Manual-only; not submitted | No Schrödinger issue was found | G. D. Partin must personally write any community post; do not submit AI-written Lean-community comments | Manual |
| [Constraint Systems Institute](https://constraintsystemsinstitute.org/index.html) | Project listing | Submitted; awaiting response | A bounded listing request was emailed to `amos@constraintsystemsinstitute.org` on 2026-11-16 with the repository, immutable release, DOI, CI evidence, claim boundary, and AI-assistance disclosure | Await a response and answer any scope or reproducibility questions | 2026-11-23 |
| Lean Zulip | Community publicity | Excluded | The existing user instruction excludes Zulip after the prior moderation event | Do not post | Closed |

## Update rule

For every status change, update the status, last event, next action, and
follow-up date in this file. Preserve failed, blocked, or incomplete
submissions as such; do not convert a prepared package, intake, listing,
announcement, or draft pull request into a verification or acceptance claim.

