Stage 3 of the LFM Schrodinger derivation is now public.

Repository:
https://github.com/gpartin/LeanSchrodingerDerivation

SCHRODINGER-003 selects the nonnegative energy branch of the mass-shell relation. Lean proves that whenever the energy is nonnegative and satisfies the mass-shell identity, it equals the principal square root of the mass-plus-momentum expression. The stage also proves that this relativistic energy is at least the nonnegative rest mass.

In plain terms, Stage 2 carried the native chi mass into the relativistic energy-momentum relation. Stage 3 chooses the physically relevant positive-energy solution instead of leaving both square-root signs mixed together. This is the branch needed before removing the rest energy and taking the nonrelativistic limit.

The result is an algebraic branch-selection theorem under explicit mass-shell assumptions. It does not claim that every c40 state has already been shown to satisfy those assumptions.

The public repository now contains the verified Stage 1, Stage 2, and Stage 3 Lean modules, pinned dependencies, verification scripts, and claim-boundary documentation.

To verify Stage 3:

lake build SchrodingerFormal.Core.Schrodinger003PositiveEnergy
powershell -ExecutionPolicy Bypass -File .\scripts\verify_stage3.ps1
