# LeanSchrodingerDerivation

Public promotion of the staged c40 Lattice Field Medium Schrodinger program.

## Current release

This release contains only `SCHRODINGER-001`, the root-action and native-mass
handoff. It proves that the native rest mass defined by the absolute value of
chi has square equal to the chi-squared onsite mass term, and that the chosen
c40 vacuum reference has native rest mass 19.

It does not yet contain the later mass-shell, positive-energy, rest-phase,
nonrelativistic-limit, or chi-potential stages. Those remain in the local
research staging repository until promoted one meaningful handoff at a time.

## Verify

From a clean checkout with Lean 4.33.1 and network access for the pinned
Mathlib dependency:

```powershell
lake build SchrodingerFormal.Core.Schrodinger001RootAction
powershell -ExecutionPolicy Bypass -File .\scripts\verify_stage1.ps1
```

The promoted proof contains no `sorry`, `admit`, or undeclared `axiom`.
