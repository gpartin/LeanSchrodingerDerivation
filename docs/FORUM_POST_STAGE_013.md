Stage 13 is now public and closes the staged LFM Schrodinger derivation.

The final recognizable equation proved for a Fourier plane-wave mode is:

i partial_t psi = (-(1/(2 m0)) partial_x^2 + Vchi) psi

with hbar = 1, for the leading mode frequency

omega = Vchi + p^2/(2 m0).

The mode is:

psi(t,x) = exp(i (p x - omega t)).

Lean proves the time derivative, the first spatial derivative, the second spatial derivative, and the operator identity for this mode under the positive reference-mass condition. This is the formal translation from the Fourier symbol to the textbook operator form readers recognize.

The potential is not inserted as an arbitrary external term. It is derived from the difference between the local chi native rest mass and the reference chi native rest mass:

Vchi = mchi - m0.

The exact energy identity from Stage 12 remains part of the certificate:

E - m0 = Vchi + p^2/(2 m0) + Rfull

where

E = sqrt((m0 + Vchi)^2 + p^2)

and Rfull is the explicit relativistic correction retained by Lean. The final certificate therefore keeps the exact correction visible while identifying the familiar Schrodinger expression as the leading Fourier/operator term.

This closes the 13-stage formal battery. The result is a scoped derivation from the c40 root-action handoff through the chi-derived potential and the potential-bearing nonrelativistic limit. It is not a claim that the correction vanishes at arbitrary momentum, that an arbitrary position-space wavefunction has been fully formalized, that Born's rule has been derived, or that a complete quantum theory has been established.

Repository:
https://github.com/gpartin/LeanSchrodingerDerivation

To verify the final stage:

lake build SchrodingerFormal.Core.Schrodinger013FullStrictCertificate
powershell -ExecutionPolicy Bypass -File .\scripts\verify_stage13.ps1

Stage 13 is the closing post for this derivation. The public repository contains the complete verified Stage 1 through Stage 13 Lean chain.
