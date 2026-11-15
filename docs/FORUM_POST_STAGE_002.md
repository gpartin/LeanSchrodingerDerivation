Stage 2 of the LFM Schrodinger derivation is now public.

Repository:
https://github.com/gpartin/LeanSchrodingerDerivation

SCHRODINGER-002 is the formal handoff from the prior c40 free-Dirac result. It takes the named mass-shell relation as an explicit hypothesis and proves in Lean that its native mass term can be rewritten from the magnitude-of-chi form to the Stage 1 chi-squared onsite form.

In plain terms, Stage 1 established how the native chi mass becomes the onsite mass term used by this derivation. Stage 2 carries that result into the relativistic energy-momentum relation that the later nonrelativistic limit will expand.

This stage is intentionally conditional. It does not independently prove the free-Dirac mass shell from the c40 dynamics; it makes that prior result an explicit, checkable input. The next public stage will select the positive-energy branch.

The public repository now contains the verified Stage 1 and Stage 2 Lean modules, pinned dependencies, verification scripts, and claim-boundary documentation.

To verify Stage 2:

lake build SchrodingerFormal.Core.Schrodinger002DiracMassShellHandoff
powershell -ExecutionPolicy Bypass -File .\scripts\verify_stage2.ps1
