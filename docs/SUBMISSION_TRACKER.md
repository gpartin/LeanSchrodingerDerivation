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
| [Palomar Registry package](https://github.com/gpartin/LeanSchrodingerPalomar) | Two bounded algebraic theorems from the public chain | Full preflight PASS; intake not authorized | Dedicated repository commit `92766aed8f9fca5a020f924c6b6cf79caff06bb4` passed the pinned full Palomar preflight, including Comparator and challenge-provenance checks ([run 43823789458](https://github.com/gpartin/LeanSchrodingerPalomar/actions/runs/43823789458)); permanent intake has not been requested | Present the exact repository, commit, `comparator.json`, theorem names, and responsible-author relationship for explicit intake authorization | Awaiting author authorization |
| [Lax Lean Archive](https://laxarchive.org/lax-523824/) | Exact decomposition and quartic remainder bound | Public replaceable draft; not permanently registered | `lax-523824` passed layout, dependency, concept/proof compilation, kernel replay, statement inspection, and the archive rebuild from source commit `d6dcd1e3d916a20f3e523b993a8162350ff9762c`; it contains one concept and two proofs | Leave as a draft for review; irreversible `lax register` requires separate explicit approval | On review activity |
| [Lemmata](https://github.com/ZIB-IOL/lemmata/pull/20) | Exact decomposition and quartic remainder bound | Pull request submitted; requested fixes pushed | The maintainer found the statement and prose aligned and properly scoped, then requested a direct Zenodo record URL plus explicit `c=1`/approximation scope. Commit `784fdfe` supplies both; manifest validation, the target Lean build, and strict MyST rendering pass locally | Await maintainer re-review; do not treat submission as acceptance | On review activity |
| [VibeRegistry](https://github.com/GasStationManager/VibeRegistry/pull/15) | Independent statement/comparator for two released theorems | Pull request submitted; official verification PASS | PR #15 pins production commit `16c1f61538b824f006ed4a7c9496b4e1c48021b5`. The official Linux workflow passed the build, Comparator, NanoDa replay, and evidence upload ([run 43832000418](https://github.com/gpartin/VibeRegistry/actions/runs/43832000418)) | Await upstream maintainer review; do not treat a passing verification run as registry acceptance | On review activity |
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

