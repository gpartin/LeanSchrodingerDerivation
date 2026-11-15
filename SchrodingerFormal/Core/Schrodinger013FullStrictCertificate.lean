import SchrodingerFormal.Core.Schrodinger012FullSchrodingerRemainder
import Mathlib.Analysis.SpecialFunctions.ExpDeriv
import Mathlib.Tactic.Ring

namespace SchrodingerFormal

noncomputable section

/-!
SCHRODINGER-013: integrated potential-bearing certificate.

The potential is tied to a chi rest-energy difference. It is not an arbitrary
external function and no potential term is added to the c40 action.
-/

structure ChiPotentialSchrodingerCertificate
    (chi referenceChi momentum : ℝ) : Prop where
  referenceMassPositive : 0 < c40NativeRestMass referenceChi
  localMassPositive : 0 < c40NativeRestMass chi
  derivedPotential :
    c40NativeRestMass chi =
      c40NativeRestMass referenceChi +
        c40ChiDerivedPotential chi referenceChi
  exactExpansion :
    chiRestShiftedEnergy chi referenceChi momentum =
      potentialSchrodingerEnergy
          (c40NativeRestMass referenceChi)
          (c40ChiDerivedPotential chi referenceChi) momentum +
        fullSchrodingerRemainder
          (c40NativeRestMass referenceChi)
          (c40ChiDerivedPotential chi referenceChi) momentum
  leadingSymbol :
    potentialSchrodingerFourierSymbol
      (c40NativeRestMass referenceChi)
      (c40ChiDerivedPotential chi referenceChi) momentum
      (potentialSchrodingerEnergy
        (c40NativeRestMass referenceChi)
        (c40ChiDerivedPotential chi referenceChi) momentum)

def SchrodingerStage13Chi : Prop :=
  ∀ (chi referenceChi momentum : ℝ),
    0 < c40NativeRestMass referenceChi →
    0 < c40NativeRestMass chi →
    ChiPotentialSchrodingerCertificate chi referenceChi momentum

theorem potential_schrodinger_symbol_is_leading_energy
    (referenceMass potential momentum : ℝ)
    (_hReferenceMass : 0 < referenceMass)
    (_hLocalMass : 0 < referenceMass + potential) :
    potentialSchrodingerFourierSymbol referenceMass potential momentum
      (potentialSchrodingerEnergy referenceMass potential momentum) := by
  unfold potentialSchrodingerFourierSymbol
  rfl

theorem c40_to_potential_schrodinger_certificate
    (chi referenceChi momentum : ℝ)
    (hReferenceMass : 0 < c40NativeRestMass referenceChi)
    (hLocalMass : 0 < c40NativeRestMass chi) :
    ChiPotentialSchrodingerCertificate chi referenceChi momentum := by
  let referenceMass := c40NativeRestMass referenceChi
  let potential := c40ChiDerivedPotential chi referenceChi
  have hDerived := c40_native_mass_is_reference_mass_plus_potential chi referenceChi
  have hLocal : 0 < referenceMass + potential := by
    rw [hDerived.symm]
    exact hLocalMass
  have hExpansion := full_schrodinger_energy_expansion
    referenceMass potential momentum hReferenceMass hLocal
  have hSymbol := potential_schrodinger_symbol_is_leading_energy
    referenceMass potential momentum hReferenceMass hLocal
  refine {
    referenceMassPositive := hReferenceMass
    localMassPositive := hLocalMass
    derivedPotential := hDerived
    exactExpansion := ?_
    leadingSymbol := hSymbol
  }
  unfold chiRestShiftedEnergy
  rw [hDerived]
  exact hExpansion

theorem schrodinger_stage13 : SchrodingerStage13 := by
  intro referenceMass potential momentum hReferenceMass hLocalMass
  exact potential_schrodinger_symbol_is_leading_energy
    referenceMass potential momentum hReferenceMass hLocalMass

theorem schrodinger_stage13_chi_certificate : SchrodingerStage13Chi := by
  intro chi referenceChi momentum hReferenceMass hLocalMass
  exact c40_to_potential_schrodinger_certificate chi referenceChi momentum
    hReferenceMass hLocalMass

/-!
The next declarations make the Fourier-to-operator translation explicit for a
single plane-wave mode. The derivative proposition fixes the compatible
complex-module structure used by Mathlib's analytic derivative lemmas.
This is a mode-level bridge, not a claim of a full position-space PDE for an
arbitrary wavefunction.
-/

abbrev ComplexHasDerivAt (f : ℂ → ℂ) (f' x : ℂ) : Prop :=
  @HasDerivAt ℂ _ ℂ
    DenselyNormedField.toNontriviallyNormedField.toDivisionRing.toAddCommGroup
    (NormedAlgebra.toNormedSpace ℂ).toModule
    PseudoMetricSpace.toUniformSpace.toTopologicalSpace
    (IsBoundedSMul.continuousSMul : ContinuousSMul ℂ ℂ) f f' x

def planeWave (omega momentum : ℝ) (time position : ℂ) : ℂ :=
  Complex.exp (Complex.I * (-(omega : ℂ) * time + (momentum : ℂ) * position))

theorem plane_wave_time_deriv
    (omega momentum : ℝ) (time position : ℂ) :
    ComplexHasDerivAt (fun t : ℂ => planeWave omega momentum t position)
      ((-(Complex.I * (omega : ℂ))) * planeWave omega momentum time position)
      time := by
  let inner : ℂ → ℂ := fun z =>
    Complex.I * (-(omega : ℂ) * z + (momentum : ℂ) * position)
  have hinner : HasDerivAt inner (Complex.I * (-(omega : ℂ))) time := by
    simpa [inner, mul_add, mul_assoc, mul_left_comm, mul_comm] using
      ((((hasDerivAt_id time).const_mul (-(omega : ℂ))).add_const
        ((momentum : ℂ) * position)).const_mul Complex.I)
  convert (Complex.hasDerivAt_exp (inner time)).comp time hinner using 1
  · funext z
    congr 1
  · simp [planeWave, inner, mul_comm, mul_assoc]

theorem plane_wave_space_deriv
    (omega momentum : ℝ) (time position : ℂ) :
    ComplexHasDerivAt (fun x : ℂ => planeWave omega momentum time x)
      ((Complex.I * (momentum : ℂ)) * planeWave omega momentum time position)
      position := by
  let inner : ℂ → ℂ := fun z =>
    Complex.I * (-(omega : ℂ) * time + (momentum : ℂ) * z)
  have hinner : HasDerivAt inner (Complex.I * (momentum : ℂ)) position := by
    simpa [inner, mul_add, mul_assoc, mul_left_comm, mul_comm] using
      ((((hasDerivAt_id position).const_mul (momentum : ℂ)).add_const
        (-(omega : ℂ) * time)).const_mul Complex.I)
  convert (Complex.hasDerivAt_exp (inner position)).comp position hinner using 1
  · funext z
    congr 1
  · simp [planeWave, inner, mul_comm, mul_assoc]

theorem plane_wave_space_second_deriv
    (omega momentum : ℝ) (time position : ℂ) :
    ComplexHasDerivAt
      (fun x : ℂ => (Complex.I * (momentum : ℂ)) *
        planeWave omega momentum time x)
      ((Complex.I * (momentum : ℂ)) *
        ((Complex.I * (momentum : ℂ)) *
          planeWave omega momentum time position))
      position := by
  have hfirst := plane_wave_space_deriv omega momentum time position
  exact hfirst.const_mul (Complex.I * (momentum : ℂ))

theorem plane_wave_time_operator_relation
    (omega momentum : ℝ) (time position : ℂ) :
    Complex.I * ((-(Complex.I * (omega : ℂ))) *
      planeWave omega momentum time position) =
      (omega : ℂ) * planeWave omega momentum time position := by
  ring_nf
  simp

theorem plane_wave_space_operator_relation
    (referenceMass potential momentum : ℝ) (time position : ℂ)
    (hMass : 0 < referenceMass) :
    -(1 / (2 * (referenceMass : ℂ))) *
        ((Complex.I * (momentum : ℂ)) *
          ((Complex.I * (momentum : ℂ)) *
            planeWave (potential + momentum ^ 2 / (2 * referenceMass)) momentum time position)) +
      (potential : ℂ) *
        planeWave (potential + momentum ^ 2 / (2 * referenceMass)) momentum time position =
      ((potential + momentum ^ 2 / (2 * referenceMass) : ℝ) : ℂ) *
        planeWave (potential + momentum ^ 2 / (2 * referenceMass)) momentum time position := by
  have hMassNe : (referenceMass : ℂ) ≠ 0 := by
    exact_mod_cast (ne_of_gt hMass)
  let ψ : ℂ :=
    planeWave (potential + momentum ^ 2 / (2 * referenceMass)) momentum time position
  change -(1 / (2 * (referenceMass : ℂ))) *
      ((Complex.I * (momentum : ℂ)) * ((Complex.I * (momentum : ℂ)) * ψ)) +
      (potential : ℂ) * ψ =
    ((potential + momentum ^ 2 / (2 * referenceMass) : ℝ) : ℂ) * ψ
  field_simp [hMassNe]
  ring_nf
  simp
  field_simp [hMassNe]
  ring

theorem plane_wave_schrodinger_equation
    (referenceMass potential momentum : ℝ) (time position : ℂ)
    (hMass : 0 < referenceMass) :
    Complex.I * ((-(Complex.I *
      ((potential + momentum ^ 2 / (2 * referenceMass) : ℝ) : ℂ))) *
        planeWave (potential + momentum ^ 2 / (2 * referenceMass)) momentum time position) =
      -(1 / (2 * (referenceMass : ℂ))) *
        ((Complex.I * (momentum : ℂ)) *
          ((Complex.I * (momentum : ℂ)) *
            planeWave (potential + momentum ^ 2 / (2 * referenceMass)) momentum time position)) +
      (potential : ℂ) *
        planeWave (potential + momentum ^ 2 / (2 * referenceMass)) momentum time position := by
  rw [plane_wave_time_operator_relation]
  exact (plane_wave_space_operator_relation referenceMass potential momentum time position hMass).symm

end
end SchrodingerFormal
