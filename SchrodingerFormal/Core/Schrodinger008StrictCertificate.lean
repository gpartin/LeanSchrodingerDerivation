import SchrodingerFormal.Core.Schrodinger007EnvelopeSymbol

namespace SchrodingerFormal

noncomputable section

/-!
SCHRODINGER-008: integrated certificate for the scoped free limit.

The certificate keeps the prior Dirac mass-shell statement as an explicit
handoff field. It therefore cannot be mistaken for a new independent spinor
construction or for a hidden target-equation assumption.
-/

structure FreeSchrodingerCertificate
    (chi mass momentum energy : ℝ) : Prop where
  nativeMass : mass = c40NativeRestMass chi
  positiveMass : 0 < mass
  positiveEnergy : 0 ≤ energy
  diracMassShell : energy ^ 2 = mass ^ 2 + momentum ^ 2
  positiveBranch : energy = relativisticEnergy mass momentum
  restPhaseRemoved :
    restPhaseRemovedEnergy mass momentum + mass = energy
  exactExpansion :
    restPhaseRemovedEnergy mass momentum =
      schrodingerEnergy mass momentum + schrodingerRemainder mass momentum
  quarticBound :
    |schrodingerRemainder mass momentum| ≤ momentum ^ 4 / (8 * mass ^ 3)
  leadingSchrodingerSymbol :
    freeSchrodingerFourierSymbol mass momentum
      (schrodingerEnergy mass momentum)

def SchrodingerStage08 : Prop :=
  ∀ (chi mass momentum energy : ℝ),
    mass = c40NativeRestMass chi →
    0 < mass →
    0 ≤ energy →
    c40DiracMassShell chi energy momentum →
    FreeSchrodingerCertificate chi mass momentum energy

theorem c40_to_free_schrodinger_certificate
    (chi mass momentum energy : ℝ)
    (hNativeMass : mass = c40NativeRestMass chi)
    (hMass : 0 < mass)
    (hEnergy : 0 ≤ energy)
    (hShell : c40DiracMassShell chi energy momentum) :
    FreeSchrodingerCertificate chi mass momentum energy := by
  have hShellMass : energy ^ 2 = mass ^ 2 + momentum ^ 2 := by
    unfold c40DiracMassShell at hShell
    rw [hNativeMass]
    exact hShell
  have hPositiveBranch := positive_energy_is_square_root
    mass momentum energy (le_of_lt hMass) hEnergy hShellMass
  have hExact := rest_phase_removed_energy_eq_schrodinger_plus_remainder
    mass momentum hMass
  have hBound := schrodinger_remainder_bound mass momentum hMass
  have hSymbol := free_schrodinger_symbol_is_leading_energy mass momentum hMass
  refine {
    nativeMass := hNativeMass
    positiveMass := hMass
    positiveEnergy := hEnergy
    diracMassShell := hShellMass
    positiveBranch := hPositiveBranch
    restPhaseRemoved := ?_
    exactExpansion := hExact
    quarticBound := hBound
    leadingSchrodingerSymbol := hSymbol
  }
  rw [rest_phase_removal_adds_back]
  exact hPositiveBranch.symm

theorem schrodinger_stage08 : SchrodingerStage08 := by
  intro chi mass momentum energy hNativeMass hMass hEnergy hShell
  exact c40_to_free_schrodinger_certificate chi mass momentum energy
    hNativeMass hMass hEnergy hShell

theorem c40_canonical_positive_branch_certificate
    (chi momentum : ℝ) (hChi : chi ≠ 0) :
    FreeSchrodingerCertificate chi (c40NativeRestMass chi) momentum
      (relativisticEnergy (c40NativeRestMass chi) momentum) := by
  apply c40_to_free_schrodinger_certificate
  · rfl
  · exact abs_pos.mpr hChi
  · exact Real.sqrt_nonneg _
  · unfold c40DiracMassShell relativisticEnergy
    exact Real.sq_sqrt (by positivity)

end
end SchrodingerFormal
