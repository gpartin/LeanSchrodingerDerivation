# LeanSchrodingerDerivation

Public promotion of the staged c40 Lattice Field Medium Schrodinger program.

## Current release

This release contains `SCHRODINGER-001`, the root-action and native-mass
handoff, and `SCHRODINGER-002`, the explicit free-Dirac mass-shell handoff.
It also contains `SCHRODINGER-003`, which selects the nonnegative energy
branch as the principal square root of the mass-shell expression.
It also contains `SCHRODINGER-004`, which removes the positive rest-energy
offset from the relativistic energy.
It also contains `SCHRODINGER-005`, which rationalizes the remaining energy
into an exact kinetic-energy quotient.
Stage 1 proves that the native rest mass defined by the absolute value of chi
has square equal to the chi-squared onsite mass term, and that the chosen c40
vacuum reference has native rest mass 19. Stage 2 rewrites the named
mass-shell hypothesis into the Stage 1 onsite-mass form. Stage 3 proves the
positive-energy branch and the associated energy-above-mass inequality.
Stage 4 proves the exact rest-energy re-centering and nonnegativity of the
remaining energy.
Stage 5 proves the exact rationalized kinetic identity without using a Taylor
series or discarding the relativistic correction.

Stage 2 is a conditional handoff: it does not independently prove the
mass-shell relation from c40 dynamics. The later nonrelativistic-limit and
chi-potential stages remain in the local research staging repository until
promoted one meaningful handoff at a time.

## Verify

From a clean checkout with Lean 4.33.1 and network access for the pinned
Mathlib dependency:

```powershell
lake build SchrodingerFormal.Core.Schrodinger005RationalizedKineticEnergy
powershell -ExecutionPolicy Bypass -File .\scripts\verify_stage5.ps1
```

The promoted proof contains no `sorry`, `admit`, or undeclared `axiom`.
