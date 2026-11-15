# LeanSchrodingerDerivation

Public promotion of the staged c40 Lattice Field Medium Schrodinger program.

## Current release

This release contains `SCHRODINGER-001`, the root-action and native-mass
handoff, and `SCHRODINGER-002`, the explicit free-Dirac mass-shell handoff.
Stage 1 proves that the native rest mass defined by the absolute value of chi
has square equal to the chi-squared onsite mass term, and that the chosen c40
vacuum reference has native rest mass 19. Stage 2 rewrites the named
mass-shell hypothesis into the Stage 1 onsite-mass form.

Stage 2 is a conditional handoff: it does not independently prove the
mass-shell relation from c40 dynamics. The later positive-energy, rest-phase,
nonrelativistic-limit, and chi-potential stages remain in the local research
staging repository until promoted one meaningful handoff at a time.

## Verify

From a clean checkout with Lean 4.33.1 and network access for the pinned
Mathlib dependency:

```powershell
lake build SchrodingerFormal.Core.Schrodinger002DiracMassShellHandoff
powershell -ExecutionPolicy Bypass -File .\scripts\verify_stage2.ps1
```

The promoted proof contains no `sorry`, `admit`, or undeclared `axiom`.
