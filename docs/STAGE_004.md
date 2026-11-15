# SCHRODINGER-004: rest-phase removal

This stage subtracts the positive rest energy from the relativistic energy.
The remaining quantity is the slow-envelope kinetic frequency.

The certificate proves:

- adding the rest energy back to `restPhaseRemovedEnergy` exactly recovers
  `relativisticEnergy`;
- the rest-phase-removed energy is nonnegative for nonnegative mass;
- the packaged proposition `SchrodingerStage04`.

This is an exact algebraic re-centering. It does not yet perform the
low-momentum approximation that produces the Schrodinger kinetic term.
