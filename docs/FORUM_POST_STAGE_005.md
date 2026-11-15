Stage 5 of the LFM Schrodinger derivation is now public.

Repository:
https://github.com/gpartin/LeanSchrodingerDerivation

SCHRODINGER-005 rationalizes the rest-phase-removed relativistic energy exactly. Lean proves that, for positive mass, the remaining energy equals momentum squared divided by relativistic energy plus mass. It also proves that this denominator cannot be zero.

In plain terms, Stage 4 separated the constant rest energy from the energy associated with motion. Stage 5 rewrites the remaining quantity into a form that exposes its kinetic content without approximating it. No Taylor series is used and no relativistic correction is silently discarded.

This exact identity is the bridge to the next stage, where the familiar quadratic Schrodinger kinetic term will be separated from an explicit higher-order remainder.

The public repository now contains the verified Stage 1 through Stage 5 Lean modules, pinned dependencies, verification scripts, and claim-boundary documentation.

To verify Stage 5:

lake build SchrodingerFormal.Core.Schrodinger005RationalizedKineticEnergy
powershell -ExecutionPolicy Bypass -File .\scripts\verify_stage5.ps1
