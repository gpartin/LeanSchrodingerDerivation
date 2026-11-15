import SchrodingerFormal.Core.Schrodinger003PositiveEnergy

namespace SchrodingerFormal

noncomputable section

/-! SCHRODINGER-004: remove the positive rest energy from the carrier. -/

theorem rest_phase_removal_adds_back (mass momentum : ℝ) :
    restPhaseRemovedEnergy mass momentum + mass =
      relativisticEnergy mass momentum := by
  unfold restPhaseRemovedEnergy
  ring

theorem rest_phase_removed_energy_nonnegative
    (mass momentum : ℝ) (hMass : 0 ≤ mass) :
    0 ≤ restPhaseRemovedEnergy mass momentum := by
  unfold restPhaseRemovedEnergy
  have hGe := relativistic_energy_ge_mass mass momentum hMass
  linarith

theorem schrodinger_stage04 : SchrodingerStage04 := by
  intro mass momentum
  exact rest_phase_removal_adds_back mass momentum

end
end SchrodingerFormal
