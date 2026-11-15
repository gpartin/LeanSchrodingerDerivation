Stage 8 of the LFM Schrodinger derivation is now public.

Repository:
https://github.com/gpartin/LeanSchrodingerDerivation

SCHRODINGER-008 assembles the preceding free-limit handoffs into one Lean certificate. The certificate records the native mass, positive-mass and nonnegative-energy conditions, the explicit mass-shell handoff, the positive branch, exact rest-energy removal, the exact quadratic-plus-remainder expansion, the quartic remainder bound, and the leading free Fourier symbol.

In plain terms, Stages 1 through 7 proved the pieces separately. Stage 8 checks that those pieces fit together in one formally verified object for the scoped free nonrelativistic limit.

The mass-shell relation remains an explicit input to the certificate. This stage therefore does not claim a new independent spinor construction, a hidden target equation, a general position-space wave equation, or a complete quantum-mechanics program.

The public repository now contains the verified Stage 1 through Stage 8 Lean modules, pinned dependencies, verification scripts, and claim-boundary documentation.

To verify Stage 8:

lake build SchrodingerFormal.Core.Schrodinger008StrictCertificate
powershell -ExecutionPolicy Bypass -File .\scripts\verify_stage8.ps1
