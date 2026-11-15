import SchrodingerFormal.Core.Schrodinger009ChiPotential

namespace SchrodingerFormal

noncomputable section

/-! SCHRODINGER-010: identify the local rest-energy shift. -/

theorem chi_rest_shifted_energy_split
    (chi referenceChi momentum : ℝ) :
    chiRestShiftedEnergy chi referenceChi momentum =
      c40ChiDerivedPotential chi referenceChi +
        restPhaseRemovedEnergy
          (c40NativeRestMass referenceChi +
            c40ChiDerivedPotential chi referenceChi) momentum := by
  have hMass := c40_native_mass_is_reference_mass_plus_potential chi referenceChi
  have hLocal : c40NativeRestMass referenceChi +
      c40ChiDerivedPotential chi referenceChi = c40NativeRestMass chi := by
    exact hMass.symm
  rw [hLocal]
  unfold chiRestShiftedEnergy restPhaseRemovedEnergy
  nlinarith [hMass]

theorem schrodinger_stage10 : SchrodingerStage10 := by
  intro chi referenceChi momentum
  exact chi_rest_shifted_energy_split chi referenceChi momentum

end
end SchrodingerFormal
