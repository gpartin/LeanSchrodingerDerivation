import Mathlib.Data.Real.Basic
import Mathlib.Tactic.NormNum

namespace SchrodingerFormal

noncomputable section

/-! Shared definitions required by SCHRODINGER-001. -/

def c40Chi0 : ℝ := 19

def c40NativeRestMass (chi : ℝ) : ℝ := |chi|

def c40OnsiteMassSquared (chi : ℝ) : ℝ := chi ^ 2

def SchrodingerStage01 : Prop :=
  ∀ chi : ℝ, c40NativeRestMass chi ^ 2 = c40OnsiteMassSquared chi

end
end SchrodingerFormal
