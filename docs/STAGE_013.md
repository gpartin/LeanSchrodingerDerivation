# SCHRODINGER-013: integrated certificate and operator translation

This is the final closeout stage. It packages the chi-derived potential, the
exact potential-bearing energy expansion, and the leading Fourier symbol into
one certificate.

It also proves the mode-level translation for

psi(t,x) = exp(i (p x - omega t))

in natural units with hbar = 1. Lean proves the time-derivative eigenvalue,
the first and second spatial derivative eigenvalues, and the resulting
operator identity

i partial_t psi = (-(1/(2 m0)) partial_x^2 + Vchi) psi

for the leading mode frequency

omega = Vchi + p^2/(2 m0),

under the stated positive-mass condition.

The exact Stage 12 correction remains visible in the integrated certificate.
This stage does not claim that the correction vanishes, that an arbitrary
position-space wavefunction has been formalized, or that the program is a
complete quantum theory.
