import Mathlib.Data.Real.Basic
import Mathlib.Analysis.Real.Sqrt
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Ring

namespace SchrodingerFormal

noncomputable section

/-! Shared definitions required by SCHRODINGER-001 through SCHRODINGER-007. -/

def c40Chi0 : ℝ := 19

def c40NativeRestMass (chi : ℝ) : ℝ := |chi|

def c40OnsiteMassSquared (chi : ℝ) : ℝ := chi ^ 2

def c40DiracMassShell (chi energy momentum : ℝ) : Prop :=
  energy ^ 2 = c40NativeRestMass chi ^ 2 + momentum ^ 2

def relativisticEnergy (mass momentum : ℝ) : ℝ :=
  Real.sqrt (mass ^ 2 + momentum ^ 2)

def restPhaseRemovedEnergy (mass momentum : ℝ) : ℝ :=
  relativisticEnergy mass momentum - mass

def schrodingerEnergy (mass momentum : ℝ) : ℝ :=
  momentum ^ 2 / (2 * mass)

def schrodingerRemainder (mass momentum : ℝ) : ℝ :=
  -(momentum ^ 4) /
    (2 * mass * (relativisticEnergy mass momentum + mass) ^ 2)

def freeSchrodingerFourierSymbol (mass momentum frequency : ℝ) : Prop :=
  frequency = schrodingerEnergy mass momentum

def SchrodingerStage01 : Prop :=
  ∀ chi : ℝ, c40NativeRestMass chi ^ 2 = c40OnsiteMassSquared chi

def SchrodingerStage02 : Prop :=
  ∀ (chi energy momentum : ℝ),
    c40DiracMassShell chi energy momentum →
      energy ^ 2 = c40OnsiteMassSquared chi + momentum ^ 2

def SchrodingerStage03 : Prop :=
  ∀ (mass momentum energy : ℝ),
    0 ≤ mass → 0 ≤ energy →
      energy ^ 2 = mass ^ 2 + momentum ^ 2 →
        energy = relativisticEnergy mass momentum

def SchrodingerStage04 : Prop :=
  ∀ (mass momentum : ℝ),
    restPhaseRemovedEnergy mass momentum + mass =
      relativisticEnergy mass momentum

def SchrodingerStage05 : Prop :=
  ∀ (mass momentum : ℝ), 0 < mass →
    restPhaseRemovedEnergy mass momentum =
      momentum ^ 2 / (relativisticEnergy mass momentum + mass)

def SchrodingerStage06 : Prop :=
  ∀ (mass momentum : ℝ), 0 < mass →
    restPhaseRemovedEnergy mass momentum =
      schrodingerEnergy mass momentum + schrodingerRemainder mass momentum ∧
    |schrodingerRemainder mass momentum| ≤ momentum ^ 4 / (8 * mass ^ 3)

def SchrodingerStage07 : Prop :=
  ∀ (mass momentum : ℝ), 0 < mass →
    freeSchrodingerFourierSymbol mass momentum
      (schrodingerEnergy mass momentum)

end
end SchrodingerFormal
