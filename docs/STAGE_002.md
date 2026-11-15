# SCHRODINGER-002: Dirac mass-shell handoff

This stage records the formal interface to the prior c40 free-Dirac result.
Given the named mass-shell relation as an explicit hypothesis, Lean rewrites
the native mass term `|chi|^2` to the Stage 1 onsite term `chi^2`.

The certificate proves:

- `energy^2 = c40OnsiteMassSquared chi + momentum^2` whenever
  `c40DiracMassShell chi energy momentum` is supplied;
- the packaged proposition `SchrodingerStage02`.

This stage does not independently prove the free-Dirac mass shell from the c40
dynamics. It makes the prior result an explicit, checkable handoff for the
remaining Schrodinger derivation.
