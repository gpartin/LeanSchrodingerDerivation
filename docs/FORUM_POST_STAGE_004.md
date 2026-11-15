Stage 4 of the LFM Schrodinger derivation is now public.

Repository:
https://github.com/gpartin/LeanSchrodingerDerivation

SCHRODINGER-004 removes the positive rest energy from the relativistic energy. Lean proves that the rest-phase-removed quantity plus the rest mass exactly recovers the full relativistic energy. It also proves that the remaining energy is nonnegative whenever the mass is nonnegative.

In plain terms, Stage 3 selected the positive-energy solution. Stage 4 changes the zero point so that the large constant rest energy is separated from the smaller energy associated with motion. This leaves the quantity that will become the slow envelope or kinetic frequency in the nonrelativistic limit.

This is an exact algebraic re-centering. It does not yet derive the quadratic Schrodinger kinetic term; that is the work of the following stages.

The public repository now contains the verified Stage 1 through Stage 4 Lean modules, pinned dependencies, verification scripts, and claim-boundary documentation.

To verify Stage 4:

lake build SchrodingerFormal.Core.Schrodinger004RestPhaseRemoval
powershell -ExecutionPolicy Bypass -File .\scripts\verify_stage4.ps1
