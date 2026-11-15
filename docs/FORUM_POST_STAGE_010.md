Stage 10 of the LFM Schrodinger derivation is now public.

Repository:
https://github.com/gpartin/LeanSchrodingerDerivation

SCHRODINGER-010 carries the chi-derived potential into the local shifted energy. Lean proves that subtracting the reference rest energy leaves the derived chi potential plus the rest-phase-removed kinetic energy associated with the local mass.

In plain terms, Stage 9 defined the potential as the difference between local and reference native mass. Stage 10 shows how that difference actually appears in the energy bookkeeping: the local energy is the reference-relative potential shift plus the motion energy calculated using the local mass.

This is an exact algebraic split. It does not yet assemble the full potential-bearing Schrodinger symbol or a position-space wave equation.

The public repository now contains the verified Stage 1 through Stage 10 Lean modules, pinned dependencies, verification scripts, and claim-boundary documentation.

To verify Stage 10:

lake build SchrodingerFormal.Core.Schrodinger010PotentialEnergyShift
powershell -ExecutionPolicy Bypass -File .\scripts\verify_stage10.ps1
