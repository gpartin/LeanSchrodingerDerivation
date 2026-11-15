Stage 11 of the LFM Schrodinger derivation is now public.

Repository:
https://github.com/gpartin/LeanSchrodingerDerivation

SCHRODINGER-011 proves the exact local relativistic energy split. For positive reference mass and positive local mass, Lean shows that local relativistic energy minus the reference mass equals the derived potential plus the exact rationalized kinetic term.

In plain terms, Stage 10 showed how the chi potential enters the local energy bookkeeping. Stage 11 carries that split into the relativistic energy formula itself, without replacing the local motion term by an approximation.

This is still an exact relativistic identity. The quadratic Schrodinger approximation and the full potential-bearing symbol come in the following stages.

The public repository now contains the verified Stage 1 through Stage 11 Lean modules, pinned dependencies, verification scripts, and claim-boundary documentation.

To verify Stage 11:

lake build SchrodingerFormal.Core.Schrodinger011LocalEnergySplit
powershell -ExecutionPolicy Bypass -File .\scripts\verify_stage11.ps1
