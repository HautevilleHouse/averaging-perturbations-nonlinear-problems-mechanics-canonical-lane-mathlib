import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AveragingPerturbationsNonlinearProblemsMechanicsCanonicalLaneLean

structure AveragingMethodPackage where
  averagingOperator : (ℝ → ℝ) → ℝ
  effectiveEquation : ℝ → ℝ → ℝ
  errorBound : ℝ → ℝ
  period : ℝ

structure AveragingMethodEvidence (A : AveragingMethodPackage) where
  averagingOperatorClosed : A.averagingOperator = λ f => (1 / A.period) * ∫ t in 0..A.period, f t
  effectiveEquationClosed : A.effectiveEquation = λ x t => x - t
  errorBoundClosed : A.errorBound = λ ε => ε^2
  periodClosed : A.period = 2 * π

def AveragingMethodClosed (A : AveragingMethodPackage) : Prop :=
  A.averagingOperator = λ f => (1 / A.period) * ∫ t in 0..A.period, f t ∧
  A.effectiveEquation = λ x t => x - t ∧
  A.errorBound = λ ε => ε^2 ∧
  A.period = 2 * π

theorem averaging_method_closed_from_evidence (A : AveragingMethodPackage)
    (E : AveragingMethodEvidence A) : AveragingMethodClosed A := by
  exact And.intro E.averagingOperatorClosed
    (And.intro E.effectiveEquationClosed
      (And.intro E.errorBoundClosed E.periodClosed))

end AveragingPerturbationsNonlinearProblemsMechanicsCanonicalLaneLean
end HautevilleHouse