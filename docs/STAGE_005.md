# SCHRODINGER-005: exact kinetic identity

This stage rationalizes the rest-phase-removed energy exactly. It does not use
a Taylor series or silently discard relativistic corrections.

The certificate proves:

- the denominator `relativisticEnergy mass momentum + mass` is nonzero for
  positive mass;
- the rest-phase-removed energy equals the exact quotient
  `momentum^2 / (relativisticEnergy mass momentum + mass)`;
- the packaged proposition `SchrodingerStage05`.

This exact identity is the algebraic bridge to the next stage, where the
quadratic Schrodinger term and its explicit remainder are separated.
