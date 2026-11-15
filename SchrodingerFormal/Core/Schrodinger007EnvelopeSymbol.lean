import SchrodingerFormal.Core.Schrodinger006SchrodingerRemainder

namespace SchrodingerFormal

noncomputable section

/-! SCHRODINGER-007: identify the free envelope Fourier symbol. -/

theorem free_schrodinger_symbol_is_leading_energy
    (mass momentum : ℝ) (_hMass : 0 < mass) :
    freeSchrodingerFourierSymbol mass momentum
      (schrodingerEnergy mass momentum) := by
  unfold freeSchrodingerFourierSymbol
  rfl

theorem exact_envelope_frequency_has_schrodinger_expansion
    (mass momentum : ℝ) (hMass : 0 < mass) :
    restPhaseRemovedEnergy mass momentum =
      schrodingerEnergy mass momentum + schrodingerRemainder mass momentum := by
  exact rest_phase_removed_energy_eq_schrodinger_plus_remainder
    mass momentum hMass

theorem schrodinger_stage07 : SchrodingerStage07 := by
  intro mass momentum hMass
  exact free_schrodinger_symbol_is_leading_energy mass momentum hMass

end
end SchrodingerFormal
