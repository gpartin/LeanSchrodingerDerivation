Stage 9 of the LFM Schrodinger derivation is now public.

Repository:
https://github.com/gpartin/LeanSchrodingerDerivation

SCHRODINGER-009 derives the chi-dependent potential as the difference between a local native-mass readout and a reference native-mass readout. Lean proves that the local native mass equals the reference native mass plus this derived potential difference.

In plain terms, the potential is not inserted as a separate external ingredient in this stage. It is the change in the native mass scale caused by comparing the local chi value with a chosen reference chi value.

This stage proves the exact potential identity only. The next stages will carry that identity into the local energy expression and then assemble the full potential-bearing Schrodinger symbol.

The public repository now contains the verified Stage 1 through Stage 9 Lean modules, pinned dependencies, verification scripts, and claim-boundary documentation.

To verify Stage 9:

lake build SchrodingerFormal.Core.Schrodinger009ChiPotential
powershell -ExecutionPolicy Bypass -File .\scripts\verify_stage9.ps1
