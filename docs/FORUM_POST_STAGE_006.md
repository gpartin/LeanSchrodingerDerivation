Stage 6 of the LFM Schrodinger derivation is now public.

Repository:
https://github.com/gpartin/LeanSchrodingerDerivation

SCHRODINGER-006 separates the rest-phase-removed energy into the familiar quadratic kinetic term and an explicit higher-order remainder. Lean proves the exact identity and proves that the absolute remainder is bounded by momentum to the fourth power divided by eight times the mass to the third power for positive mass.

In plain terms, Stage 5 rewrote the remaining energy into an exact kinetic quotient. Stage 6 shows what that quotient contains: the usual Schrodinger kinetic term plus a correction whose size is explicitly controlled. The correction is kept visible rather than silently thrown away.

This is the first stage where the familiar quadratic kinetic term appears, but the result is still an exact decomposition with a bound. It does not claim that the correction can be ignored at arbitrary momentum.

The public repository now contains the verified Stage 1 through Stage 6 Lean modules, pinned dependencies, verification scripts, and claim-boundary documentation.

To verify Stage 6:

lake build SchrodingerFormal.Core.Schrodinger006SchrodingerRemainder
powershell -ExecutionPolicy Bypass -File .\scripts\verify_stage6.ps1
