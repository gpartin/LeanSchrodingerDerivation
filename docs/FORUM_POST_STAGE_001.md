Stage 1 of the LFM Schrodinger derivation is now public.

Repository:
https://github.com/gpartin/LeanSchrodingerDerivation

SCHRODINGER-001 establishes the root-action and native-mass handoff for the canonical c40 framework. The Lean proof shows that, for every real chi, the square of the native rest mass defined by the magnitude of chi equals the chi-squared onsite mass term. It also proves that the selected c40 vacuum reference has native rest mass 19.

This is the first formal handoff, not the full Schrodinger equation. Later stages will handle the relativistic mass shell, the positive-energy branch, removal of the rest phase, the nonrelativistic expansion, and the chi-derived potential. Those stages remain in the research repository until each one is separately reviewed and promoted.

The public package includes the Lean source, the Lean 4.33.1 toolchain pin, the pinned Mathlib dependency manifest, a verification script, and claim-boundary documentation. A clean checkout passes both the Lean build and the source audit with no sorry, admit, or undeclared axiom in the promoted sources.

To verify Stage 1:

lake build SchrodingerFormal.Core.Schrodinger001RootAction
powershell -ExecutionPolicy Bypass -File .\scripts\verify_stage1.ps1
