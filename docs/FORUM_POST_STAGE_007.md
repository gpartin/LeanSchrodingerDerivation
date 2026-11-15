Stage 7 of the LFM Schrodinger derivation is now public.

Repository:
https://github.com/gpartin/LeanSchrodingerDerivation

SCHRODINGER-007 identifies the free Schrodinger Fourier symbol. Lean proves that the leading free-mode frequency is momentum squared divided by twice the mass, while the exact relativistic residual from Stage 6 remains available.

In plain terms, Stage 6 separated the motion energy into the familiar quadratic term plus a controlled correction. Stage 7 names the quadratic term as the free Fourier-space Schrodinger symbol. It also carries forward the exact correction instead of pretending the approximation is exact at every momentum.

This stage is intentionally limited to a Fourier-space relation for a free mode. It does not yet claim a general position-space wave equation, the Born rule, or a many-body quantum theory.

The public repository now contains the verified Stage 1 through Stage 7 Lean modules, pinned dependencies, verification scripts, and claim-boundary documentation.

To verify Stage 7:

lake build SchrodingerFormal.Core.Schrodinger007EnvelopeSymbol
powershell -ExecutionPolicy Bypass -File .\scripts\verify_stage7.ps1
