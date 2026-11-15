import SchrodingerFormal.Core.Schrodinger011LocalEnergySplit

namespace SchrodingerFormal

noncomputable section

/-! SCHRODINGER-012: exact potential-bearing Schrodinger expansion. -/

theorem full_schrodinger_energy_expansion
    (referenceMass potential momentum : ℝ)
    (hReferenceMass : 0 < referenceMass)
    (hLocalMass : 0 < referenceMass + potential) :
    relativisticEnergy (referenceMass + potential) momentum - referenceMass =
      potentialSchrodingerEnergy referenceMass potential momentum +
        fullSchrodingerRemainder referenceMass potential momentum := by
  have hLocalExpansion := rest_phase_removed_energy_eq_schrodinger_plus_remainder
    (referenceMass + potential) momentum hLocalMass
  unfold restPhaseRemovedEnergy at hLocalExpansion
  unfold potentialSchrodingerEnergy fullSchrodingerRemainder
    schrodingerEnergy schrodingerRemainder at *
  have hReferenceNe : referenceMass ≠ 0 := ne_of_gt hReferenceMass
  have hLocalNe : referenceMass + potential ≠ 0 := ne_of_gt hLocalMass
  have hRelDenom : relativisticEnergy (referenceMass + potential) momentum +
      (referenceMass + potential) ≠ 0 :=
    relativistic_energy_plus_mass_ne_zero
      (referenceMass + potential) momentum hLocalMass
  field_simp [hReferenceNe, hLocalNe, hRelDenom] at hLocalExpansion ⊢
  nlinarith [hLocalExpansion]

theorem full_schrodinger_remainder_is_explicit
    (referenceMass potential momentum : ℝ)
    (_hReferenceMass : 0 < referenceMass)
    (_hLocalMass : 0 < referenceMass + potential) :
    fullSchrodingerRemainder referenceMass potential momentum =
      -(momentum ^ 2 * potential) /
          (2 * referenceMass * (referenceMass + potential)) +
        schrodingerRemainder (referenceMass + potential) momentum := by
  rfl

theorem schrodinger_stage12 : SchrodingerStage12 := by
  intro referenceMass potential momentum hReferenceMass hLocalMass
  exact full_schrodinger_energy_expansion referenceMass potential momentum
    hReferenceMass hLocalMass

end
end SchrodingerFormal
