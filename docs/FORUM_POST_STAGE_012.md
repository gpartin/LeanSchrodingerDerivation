Stage 12 of the LFM Schrodinger derivation is now public.

Repository:
https://github.com/gpartin/LeanSchrodingerDerivation

SCHRODINGER-012 assembles the full potential-bearing Fourier-energy identity. Lean proves that local relativistic energy minus the reference mass equals the familiar potential-bearing Schrodinger energy plus an explicit correction term.

In plain terms, Stages 9 through 11 showed how the chi-derived potential enters the local relativistic energy. Stage 12 combines that result with the quadratic kinetic term from the free derivation. The correction remains visible and is not silently discarded.

This is the complete potential-bearing energy identity in the staged program, but it is not a claim that the correction vanishes, that every momentum is in the nonrelativistic regime, or that a general position-space wave equation has been established.

The public repository now contains the verified Stage 1 through Stage 12 Lean modules, pinned dependencies, verification scripts, and claim-boundary documentation.

To verify Stage 12:

lake build SchrodingerFormal.Core.Schrodinger012FullSchrodingerRemainder
powershell -ExecutionPolicy Bypass -File .\scripts\verify_stage12.ps1
