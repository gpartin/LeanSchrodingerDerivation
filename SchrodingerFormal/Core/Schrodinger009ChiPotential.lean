import SchrodingerFormal.Core.Schrodinger008StrictCertificate

namespace SchrodingerFormal

noncomputable section

/-! SCHRODINGER-009: derive the potential from a chi rest-energy difference. -/

theorem c40_native_mass_is_reference_mass_plus_potential
    (chi referenceChi : ℝ) :
    c40NativeRestMass chi =
      c40NativeRestMass referenceChi + c40ChiDerivedPotential chi referenceChi := by
  unfold c40ChiDerivedPotential
  ring

theorem schrodinger_stage09 : SchrodingerStage09 := by
  intro chi referenceChi
  exact c40_native_mass_is_reference_mass_plus_potential chi referenceChi

end
end SchrodingerFormal
