import SchrodingerFormal.Core.Schrodinger004RestPhaseRemoval

namespace SchrodingerFormal

noncomputable section

/-! SCHRODINGER-005: exact rationalization of the kinetic energy. -/

theorem relativistic_energy_plus_mass_ne_zero
    (mass momentum : ℝ) (hMass : 0 < mass) :
    relativisticEnergy mass momentum + mass ≠ 0 := by
  have hEnergy : 0 ≤ relativisticEnergy mass momentum := by
    unfold relativisticEnergy
    exact Real.sqrt_nonneg _
  nlinarith

theorem rest_phase_removed_energy_rationalized
    (mass momentum : ℝ) (hMass : 0 < mass) :
    restPhaseRemovedEnergy mass momentum =
      momentum ^ 2 / (relativisticEnergy mass momentum + mass) := by
  unfold restPhaseRemovedEnergy relativisticEnergy
  have hArgument : 0 ≤ mass ^ 2 + momentum ^ 2 := by positivity
  have hRootSquare : (Real.sqrt (mass ^ 2 + momentum ^ 2)) ^ 2 =
      mass ^ 2 + momentum ^ 2 := by
    exact Real.sq_sqrt hArgument
  have hDenom : Real.sqrt (mass ^ 2 + momentum ^ 2) + mass ≠ 0 := by
    have hRoot : 0 ≤ Real.sqrt (mass ^ 2 + momentum ^ 2) := Real.sqrt_nonneg _
    nlinarith
  field_simp [hDenom]
  nlinarith

theorem schrodinger_stage05 : SchrodingerStage05 := by
  intro mass momentum hMass
  exact rest_phase_removed_energy_rationalized mass momentum hMass

end
end SchrodingerFormal
