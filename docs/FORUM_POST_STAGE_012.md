Stage 12 of the LFM Schrodinger derivation is now public.

The potential-bearing Schrodinger equation has now emerged in Lean:

E - m0 = Vchi + p^2/(2 m0) + Rfull

where

E = sqrt((m0 + Vchi)^2 + p^2)

and

Rfull = -p^2 Vchi/[2 m0 (m0 + Vchi)]
        -p^4/[2 (m0 + Vchi) (E + m0 + Vchi)^2]

Here m0 is the reference native rest-mass scale and Vchi is the potential derived from the difference between the local chi rest mass and the reference chi rest mass. The first two terms on the right are the familiar potential-bearing Schrodinger expression. Rfull is the explicit relativistic correction that Lean keeps visible.

In plain terms, this is the equation we set out to extract. The left side is the local relativistic energy after subtracting the reference rest energy. The right side separates that energy into the chi-derived potential, the quadratic kinetic term, and the correction required by the exact relativistic expression.

This result is exact under the stated positive-mass conditions. It does not claim that the correction vanishes, that every momentum is nonrelativistic, or that a general position-space wave equation has been established.

Stage 12 is the equation-emergence stage. Stage 13 now closes the derivation by assembling the chi-potential certificate and translating the leading Fourier symbol into the recognizable operator form for a single plane-wave mode.

Repository:
https://github.com/gpartin/LeanSchrodingerDerivation

The public repository now contains the verified Stage 1 through Stage 13 Lean modules, pinned dependencies, verification scripts, and claim-boundary documentation.

To verify Stage 12:

lake build SchrodingerFormal.Core.Schrodinger012FullSchrodingerRemainder
powershell -ExecutionPolicy Bypass -File .\scripts\verify_stage12.ps1
