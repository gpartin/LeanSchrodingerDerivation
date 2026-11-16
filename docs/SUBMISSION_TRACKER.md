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

