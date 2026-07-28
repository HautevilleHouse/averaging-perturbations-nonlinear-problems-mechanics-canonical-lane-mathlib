import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AveragingPerturbationsNonlinearProblemsMechanicsCanonicalLaneLean

structure PerturbationExpansionPackage where
  expansionTerms : ℕ → ℝ → ℝ
  asymptoticValidity : ℝ → Prop
  residualEstimate : ℝ → ℝ
  convergenceRate : ℝ

structure PerturbationExpansionEvidence (P : PerturbationExpansionPackage) where
  expansionTermsClosed : P.expansionTerms = λ n t => (1 / (n+1)) * sin((n+1)*t)
  asymptoticValidityClosed : P.asymptoticValidity = λ ε => ε < 0.1
  residualEstimateClosed : P.residualEstimate = λ ε => ε^2
  convergenceRateClosed : P.convergenceRate = 0.5

def PerturbationExpansionClosed (P : PerturbationExpansionPackage) : Prop :=
  P.expansionTerms = λ n t => (1 / (n+1)) * sin((n+1)*t) ∧
  P.asymptoticValidity = λ ε => ε < 0.1 ∧
  P.residualEstimate = λ ε => ε^2 ∧
  P.convergenceRate = 0.5

theorem perturbation_expansion_closed_from_evidence (P : PerturbationExpansionPackage)
    (E : PerturbationExpansionEvidence P) : PerturbationExpansionClosed P := by
  exact And.intro E.expansionTermsClosed
    (And.intro E.asymptoticValidityClosed
      (And.intro E.residualEstimateClosed E.convergenceRateClosed))

end AveragingPerturbationsNonlinearProblemsMechanicsCanonicalLaneLean
end HautevilleHouse