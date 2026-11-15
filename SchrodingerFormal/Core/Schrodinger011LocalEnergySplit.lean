import SchrodingerFormal.Core.Schrodinger010PotentialEnergyShift

namespace SchrodingerFormal

noncomputable section

/-! SCHRODINGER-011: exact local relativistic energy split. -/

theorem local_relativistic_energy_split
    (referenceMass potential momentum : ℝ)
    (_hReferenceMass : 0 < referenceMass)
    (hLocalMass : 0 < referenceMass + potential) :
    relativisticEnergy (referenceMass + potential) momentum - referenceMass =
      potential + momentum ^ 2 /
        (relativisticEnergy (referenceMass + potential) momentum +
          (referenceMass + potential)) := by
  have hRationalized := rest_phase_removed_energy_rationalized
    (referenceMass + potential) momentum hLocalMass
  unfold restPhaseRemovedEnergy at hRationalized
  nlinarith

theorem schrodinger_stage11 : SchrodingerStage11 := by
  intro referenceMass potential momentum hReferenceMass hLocalMass
  exact local_relativistic_energy_split referenceMass potential momentum
    hReferenceMass hLocalMass

end
end SchrodingerFormal
