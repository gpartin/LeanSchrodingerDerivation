import SchrodingerFormal.Core.Schrodinger005RationalizedKineticEnergy

namespace SchrodingerFormal

noncomputable section

/-! SCHRODINGER-006: leading term and explicit quartic remainder. -/

theorem rest_phase_removed_energy_eq_schrodinger_plus_remainder
    (mass momentum : ℝ) (hMass : 0 < mass) :
    restPhaseRemovedEnergy mass momentum =
      schrodingerEnergy mass momentum + schrodingerRemainder mass momentum := by
  rw [rest_phase_removed_energy_rationalized mass momentum hMass]
  unfold schrodingerEnergy schrodingerRemainder
  have hDenom : relativisticEnergy mass momentum + mass ≠ 0 :=
    relativistic_energy_plus_mass_ne_zero mass momentum hMass
  have hRootSquare : relativisticEnergy mass momentum ^ 2 =
      mass ^ 2 + momentum ^ 2 := by
    unfold relativisticEnergy
    exact Real.sq_sqrt (by positivity)
  field_simp [hDenom, ne_of_gt hMass]
  nlinarith

theorem abs_schrodinger_remainder_eq_positive_fraction
    (mass momentum : ℝ) (hMass : 0 < mass) :
    |schrodingerRemainder mass momentum| =
      momentum ^ 4 /
        (2 * mass * (relativisticEnergy mass momentum + mass) ^ 2) := by
  unfold schrodingerRemainder
  have hDenom : 0 < 2 * mass * (relativisticEnergy mass momentum + mass) ^ 2 := by
    have hPlus : 0 < relativisticEnergy mass momentum + mass := by
      have hEnergy : 0 ≤ relativisticEnergy mass momentum := by
        unfold relativisticEnergy
        exact Real.sqrt_nonneg _
      nlinarith
    positivity
  rw [abs_div, abs_neg, abs_of_nonneg (by positivity), abs_of_pos hDenom]

theorem schrodinger_remainder_bound
    (mass momentum : ℝ) (hMass : 0 < mass) :
    |schrodingerRemainder mass momentum| ≤ momentum ^ 4 / (8 * mass ^ 3) := by
  rw [abs_schrodinger_remainder_eq_positive_fraction mass momentum hMass]
  have hEnergyGe : mass ≤ relativisticEnergy mass momentum :=
    relativistic_energy_ge_mass mass momentum (le_of_lt hMass)
  have hPlus : 0 < relativisticEnergy mass momentum + mass := by
    nlinarith
  have hSquare : (2 * mass) ^ 2 ≤
      (relativisticEnergy mass momentum + mass) ^ 2 := by
    nlinarith [sq_nonneg (relativisticEnergy mass momentum - mass)]
  have hMassSquare : 0 ≤ mass ^ 2 := sq_nonneg mass
  have hMultiply := mul_le_mul_of_nonneg_left hSquare (le_of_lt hMass)
  have hDenomOrder : 8 * mass ^ 3 ≤
      2 * mass * (relativisticEnergy mass momentum + mass) ^ 2 := by
    nlinarith
  have hNumerator : 0 ≤ momentum ^ 4 := by positivity
  have hLeftDenom : 0 < 2 * mass *
      (relativisticEnergy mass momentum + mass) ^ 2 := by positivity
  have hRightDenom : 0 < 8 * mass ^ 3 := by positivity
  apply (div_le_div_iff₀ hLeftDenom hRightDenom).2
  exact mul_le_mul_of_nonneg_left hDenomOrder hNumerator

theorem schrodinger_stage06 : SchrodingerStage06 := by
  intro mass momentum hMass
  constructor
  · exact rest_phase_removed_energy_eq_schrodinger_plus_remainder
      mass momentum hMass
  · exact schrodinger_remainder_bound mass momentum hMass

end
end SchrodingerFormal
