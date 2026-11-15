import SchrodingerFormal.Core.SchrodingerDefinitions

namespace SchrodingerFormal

noncomputable section

/-! SCHRODINGER-001: c40 root-action mass handoff. -/

theorem c40_native_rest_mass_square (chi : ℝ) :
    c40NativeRestMass chi ^ 2 = c40OnsiteMassSquared chi := by
  unfold c40NativeRestMass c40OnsiteMassSquared
  exact sq_abs chi

theorem c40_vacuum_rest_mass :
    c40NativeRestMass c40Chi0 = 19 := by
  norm_num [c40NativeRestMass, c40Chi0]

theorem schrodinger_stage01 : SchrodingerStage01 := by
  intro chi
  exact c40_native_rest_mass_square chi

end
end SchrodingerFormal
