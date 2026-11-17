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
| [GitHub repository](https://github.com/gpartin/LeanSchrodingerDerivation) | Full 13-stage package | Public versioned release; GitHub tag and release remain mutable | [v0.13.0-research](https://github.com/gpartin/LeanSchrodingerDerivation/releases/tag/v0.13.0-research) identifies source commit `16c1f61538b824f006ed4a7c9496b4e1c48021b5`; later documentation commits on `main` do not change that released-source identity | Treat the Zenodo record as the immutable archive for this version; verify the GitHub tag target before every future release | Closed for v0.13.0-research |
| [Zenodo](https://zenodo.org/records/24270168) | Full archived release | Published as a new standalone software record | Version DOI `10.5281/zenodo.24270168`; all-versions DOI `10.5281/zenodo.24270167`; archive MD5 `1b03a034b7448c2fbc883eebd8ac7f83`, local SHA-256 `C566B28E6AA84B108187688045C0EB716C71B0242FA06815A8CB1B755A2B3344`; CC0-1.0 | Use the version DOI for this exact release and the concept DOI for the evolving record | Closed for v0.13.0-research |
| [Software Heritage](https://archive.softwareheritage.org/api/1/origin/save/2654352/) | Full Git history | Save Code Now request accepted; archive result pending | Request ID `2654352` was accepted for the public repository | Poll the accepted request until a snapshot identifier is available | 2026-11-17 |
| [Palomar Registry package](https://github.com/gpartin/LeanSchrodingerPalomar) | Two bounded algebraic theorems from the public chain | Mechanical verification passed; registration rejected by automated editorial review | Dedicated repository commit `bb837a7e7d12660704db514091590741db442c11` passed the pinned full preflight ([run 43833216184](https://github.com/gpartin/LeanSchrodingerPalomar/actions/runs/43833216184)), independent Comparator/challenge-provenance rebuild ([run 43866298256](https://github.com/PalomarRegistry/PalomarSubmission/actions/runs/43866298256)), and renderability checks. The private review on 2026-11-16 found that the wrapper did not pin the substantive source formalization at an immutable revision and that the selected elementary scalar identities did not establish sufficient standalone research interest | Do not register intake `vjmlhtm0ghi1`. Pin the underlying repository and commit in `repository.substantive_formalization`, document the wrapper relationship, and select a materially broader proved result before submitting a corrected commit as a new intake | On corrected commit |
| [Lax Lean Archive](https://laxarchive.org/lax-523824/) | Exact decomposition and quartic remainder bound | Permanently registered and citable | `lax-523824` passed layout, dependency, concept/proof compilation, kernel replay, statement inspection, and the archive rebuild from source commit `d6dcd1e3d916a20f3e523b993a8162350ff9762c`; permanent registration completed in [workflow run 43866361351](https://github.com/lax-archive/lax/actions/runs/43866361351) | Cite as `\cite{lax-523824}` and preserve the immutable registered record | Closed |
| [Lemmata](https://github.com/ZIB-IOL/lemmata/pull/20) | Exact decomposition and quartic remainder bound | Merged upstream | The maintainer found the statement and prose aligned and properly scoped; after the requested Zenodo-link and `c=1`/approximation clarifications, Sebastian Pokutta merged PR #20 on 2026-11-16 at 09:25 UTC as commit `d5efa2e47d700434a277db31f0e5b658dfe4988e` | Preserve the accepted upstream record and respond only if a maintainer opens a follow-up | Closed |
| [VibeRegistry](https://github.com/GasStationManager/VibeRegistry/pull/15) | Independent statement/comparator for two released theorems | Pull request submitted; official verification PASS | PR #15 pins production commit `16c1f61538b824f006ed4a7c9496b4e1c48021b5`. The official Linux workflow passed the build, Comparator, NanoDa replay, and evidence upload ([run 43832000418](https://github.com/gpartin/VibeRegistry/actions/runs/43832000418)) | Await upstream maintainer review; do not treat a passing verification run as registry acceptance | On review activity |
| [Lean Pool](https://github.com/LeanPool/lean-pool/issues/827) | Full project proposal | Licensing clarification prepared; awaiting renewed review | Lean Pool requested MIT or Apache-2.0. The project-authored Lean sources and other author-owned content are now offered under MIT or CC0-1.0, at the recipient's option, while third-party terms remain unchanged | Reply with the immutable merge commit, then await scope and quality review | On merge |
| [Best-of-Lean4](https://github.com/34j/best-of-lean4/pull/300) | Project listing | Pull request submitted | PR #300 adds a narrowly scoped listing with explicit exclusions and the release DOI | Respond to listing review and CI | On review activity |
| [Formalization Corpus](https://github.com/dzackgarza/formalization-corpus/issues/12) | Repository indexing | Indexing request submitted | Issue #12 requests corpus indexing for the versioned source and immutable Zenodo archive | Respond to curator questions and record any indexed identifier | On review activity |
| Project Intentions | Community coordination | Manual-only; not submitted | No Schrödinger issue was found | G. D. Partin must personally write any community post; do not submit AI-written Lean-community comments | Manual |
| [Constraint Systems Institute](https://constraintsystemsinstitute.org/index.html) | Project listing | Submitted; awaiting response | A bounded listing request was emailed to `amos@constraintsystemsinstitute.org` on 2026-11-16 with the repository release, immutable Zenodo archive, DOI, CI evidence, claim boundary, and AI-assistance disclosure | Await a response and answer any scope or reproducibility questions | 2026-11-23 |
| Lean Zulip | Community publicity | Excluded | The existing user instruction excludes Zulip after the prior moderation event | Do not post | Closed |

## Update rule

For every status change, update the status, last event, next action, and
follow-up date in this file. Preserve failed, blocked, or incomplete
submissions as such; do not convert a prepared package, intake, listing,
announcement, or draft pull request into a verification or acceptance claim.

