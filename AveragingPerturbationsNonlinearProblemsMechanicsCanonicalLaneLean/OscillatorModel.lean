import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AveragingPerturbationsNonlinearProblemsMechanicsCanonicalLaneLean

structure OscillatorModelPackage where
  naturalFrequency : ℕ → ℝ
  nonlinearRestoringForce : ℝ → ℝ
  perturbationParameter : ℝ
  initialConditions : ℝ × ℝ
  timeDomain : ℝ → Prop

structure OscillatorModelEvidence (O : OscillatorModelPackage) where
  naturalFrequencyClosed : O.naturalFrequency = λ _ => 1.0
  nonlinearRestoringForceClosed : O.nonlinearRestoringForce = λ x => x^3
  perturbationParameterClosed : O.perturbationParameter = 0.1
  initialConditionsClosed : O.initialConditions = (0.0, 1.0)
  timeDomainClosed : O.timeDomain = λ t => t ≥ 0.0

def OscillatorModelClosed (O : OscillatorModelPackage) : Prop :=
  O.naturalFrequency = λ _ => 1.0 ∧
  O.nonlinearRestoringForce = λ x => x^3 ∧
  O.perturbationParameter = 0.1 ∧
  O.initialConditions = (0.0, 1.0) ∧
  O.timeDomain = λ t => t ≥ 0.0

theorem oscillator_model_closed_from_evidence (O : OscillatorModelPackage)
    (E : OscillatorModelEvidence O) : OscillatorModelClosed O := by
  exact And.intro E.naturalFrequencyClosed
    (And.intro E.nonlinearRestoringForceClosed
      (And.intro E.perturbationParameterClosed
        (And.intro E.initialConditionsClosed E.timeDomainClosed)))

end AveragingPerturbationsNonlinearProblemsMechanicsCanonicalLaneLean
end HautevilleHouse