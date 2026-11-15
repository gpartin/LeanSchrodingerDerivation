import SchrodingerFormal.Core.Schrodinger001RootAction

namespace SchrodingerFormal

noncomputable section

/-!
SCHRODINGER-002 is a named interface to the prior c40 free-Dirac result.
The mass-shell relation is supplied as an explicit hypothesis; this stage
rewrites its native mass term using the Stage 1 identity.
-/

theorem c40_dirac_handoff_rewrites_mass_term
    (chi energy momentum : ℝ)
    (hShell : c40DiracMassShell chi energy momentum) :
    energy ^ 2 = c40OnsiteMassSquared chi + momentum ^ 2 := by
  unfold c40DiracMassShell at hShell
  rw [c40_native_rest_mass_square] at hShell
  exact hShell

theorem schrodinger_stage02 : SchrodingerStage02 := by
  intro chi energy momentum hShell
  exact c40_dirac_handoff_rewrites_mass_term chi energy momentum hShell

end
end SchrodingerFormal
