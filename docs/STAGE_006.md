# SCHRODINGER-006: Schrodinger term and remainder

This stage extracts the quadratic kinetic term and keeps the remaining
relativistic correction explicit.

The certificate proves:

- the rest-phase-removed energy equals `p^2/(2m)` plus the defined remainder;
- the absolute remainder is bounded by `p^4/(8m^3)` for positive mass;
- the packaged proposition `SchrodingerStage06`.

This is an exact decomposition with a proved bound. The remainder is not
silently discarded, so this stage does not yet claim the approximation is
valid for every momentum.
