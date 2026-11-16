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
It also contains `SCHRODINGER-006`, which separates the quadratic kinetic term
from an explicit quartic remainder and proves a bound on that remainder.
It also contains `SCHRODINGER-007`, which identifies the free Schrodinger
Fourier symbol while retaining the exact relativistic residual.
It also contains `SCHRODINGER-008`, an integrated certificate for the scoped
free nonrelativistic limit.
It also contains `SCHRODINGER-009`, which defines the chi-derived potential
from a local-versus-reference native-mass difference.
It also contains `SCHRODINGER-010`, which carries that potential into the
local shifted-energy split.
It also contains `SCHRODINGER-011`, which proves the exact local relativistic
energy split into potential plus rationalized kinetic energy.
It also contains `SCHRODINGER-012`, which assembles the full potential-bearing
energy identity with its explicit correction.
It also contains `SCHRODINGER-013`, which packages the chi-derived potential
certificate and proves the recognizable Schrodinger operator equation for a
single Fourier plane-wave mode in natural units.
Stage 1 proves that the native rest mass defined by the absolute value of chi
has square equal to the chi-squared onsite mass term, and that the chosen c40
vacuum reference has native rest mass 19. Stage 2 rewrites the named
mass-shell hypothesis into the Stage 1 onsite-mass form. Stage 3 proves the
positive-energy branch and the associated energy-above-mass inequality.
Stage 4 proves the exact rest-energy re-centering and nonnegativity of the
remaining energy.
Stage 5 proves the exact rationalized kinetic identity without using a Taylor
series or discarding the relativistic correction.
Stage 6 proves the exact quadratic-plus-remainder decomposition and the
positive-mass quartic remainder bound.
Stage 7 identifies the free Fourier-space symbol; it does not claim a general
position-space wave equation.
Stage 8 packages the preceding facts into one certificate while keeping the
mass-shell relation as an explicit input.
Stage 9 derives the potential as an exact difference of native mass readouts,
not as an arbitrary external term.
Stage 10 proves that the shifted local energy equals the chi potential plus
the kinetic energy associated with the local mass.
Stage 11 proves the exact local relativistic split into potential plus the
rationalized kinetic term.
Stage 12 assembles the potential-bearing Schrodinger energy plus the explicit
correction term. Stage 13 packages that result with the chi-potential
certificate and proves the time-derivative and second-space-derivative mode
identities that translate the leading Fourier symbol into the textbook
operator form.

Stage 2 is a conditional handoff: it does not independently prove the
mass-shell relation from c40 dynamics. Stage 13 is a mode-level operator
translation; it does not claim a fully formalized arbitrary-wavefunction
position-space PDE or a complete quantum theory.

## Verify

From a clean checkout with Lean 4.33.1 and network access for the pinned
Mathlib dependency:

```powershell
lake build SchrodingerFormal.Core.Schrodinger013FullStrictCertificate
powershell -ExecutionPolicy Bypass -File .\scripts\verify_stage13.ps1
```

The promoted proof contains no `sorry`, `admit`, or undeclared `axiom`.

## Publication and submission status

The evidence-based external-submission ledger is maintained in
[`docs/SUBMISSION_TRACKER.md`](docs/SUBMISSION_TRACKER.md). The tracker keeps
source publication, immutable archiving, verification, curated listings, and
community publicity separate and preserves incomplete or failed states.
