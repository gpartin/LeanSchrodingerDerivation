import SchrodingerFormal.Core.Schrodinger002DiracMassShellHandoff

namespace SchrodingerFormal

noncomputable section

/-! SCHRODINGER-003: select the nonnegative energy branch. -/

theorem positive_energy_is_square_root
    (mass momentum energy : ℝ)
    (_hMass : 0 ≤ mass)
    (hEnergy : 0 ≤ energy)
    (hShell : energy ^ 2 = mass ^ 2 + momentum ^ 2) :
    energy = relativisticEnergy mass momentum := by
  unfold relativisticEnergy
  have hArgument : 0 ≤ mass ^ 2 + momentum ^ 2 := by positivity
  have hRootSquare : (Real.sqrt (mass ^ 2 + momentum ^ 2)) ^ 2 =
      mass ^ 2 + momentum ^ 2 := by
    exact Real.sq_sqrt hArgument
  have hRootNonnegative : 0 ≤ Real.sqrt (mass ^ 2 + momentum ^ 2) :=
    Real.sqrt_nonneg _
  nlinarith

theorem relativistic_energy_ge_mass
    (mass momentum : ℝ) (_hMass : 0 ≤ mass) :
    mass ≤ relativisticEnergy mass momentum := by
  unfold relativisticEnergy
  have hArgument : 0 ≤ mass ^ 2 + momentum ^ 2 := by positivity
  have hRootSquare : (Real.sqrt (mass ^ 2 + momentum ^ 2)) ^ 2 =
      mass ^ 2 + momentum ^ 2 := by
    exact Real.sq_sqrt hArgument
  have hRootNonnegative : 0 ≤ Real.sqrt (mass ^ 2 + momentum ^ 2) :=
    Real.sqrt_nonneg _
  nlinarith [sq_nonneg momentum]

theorem schrodinger_stage03 : SchrodingerStage03 := by
  intro mass momentum energy hMass hEnergy hShell
  exact positive_energy_is_square_root mass momentum energy hMass hEnergy hShell

end
end SchrodingerFormal
