import Mathlib.Analysis.Real.Sqrt

/-!
---
title: Exact Schrödinger kinetic split and quartic remainder bound
type: theorem
---
For positive mass, the positive relativistic kinetic energy after rest-energy
removal is exactly the Schrödinger kinetic term plus the explicit correction
defined below.  The correction's magnitude is bounded by a quartic expression
in momentum.

The statements assume the positive relativistic mass shell encoded by
`relativisticEnergy`.  They do not derive that mass shell, an
arbitrary-wavefunction position-space Schrödinger equation, the Born rule, a
physical particle, or a complete quantum theory.
-/

namespace Lax523824.SchrodingerRemainderBound

noncomputable section

def relativisticEnergy (mass momentum : ℝ) : ℝ :=
  Real.sqrt (mass ^ 2 + momentum ^ 2)

def restPhaseRemovedEnergy (mass momentum : ℝ) : ℝ :=
  relativisticEnergy mass momentum - mass

def schrodingerEnergy (mass momentum : ℝ) : ℝ :=
  momentum ^ 2 / (2 * mass)

def schrodingerRemainder (mass momentum : ℝ) : ℝ :=
  -(momentum ^ 4) /
    (2 * mass * (relativisticEnergy mass momentum + mass) ^ 2)

axiom exactSchrodingerKineticSplit
    (mass momentum : ℝ) (hMass : 0 < mass) :
    restPhaseRemovedEnergy mass momentum =
      schrodingerEnergy mass momentum + schrodingerRemainder mass momentum

axiom schrodingerRemainderBound
    (mass momentum : ℝ) (hMass : 0 < mass) :
    |schrodingerRemainder mass momentum| ≤ momentum ^ 4 / (8 * mass ^ 3)

end
end Lax523824.SchrodingerRemainderBound
