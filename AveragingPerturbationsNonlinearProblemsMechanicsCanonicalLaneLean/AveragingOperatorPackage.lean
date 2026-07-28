import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AveragingPerturbationsNonlinearProblemsMechanicsCanonicalLaneLean

structure AveragingOperatorPackage where
  averagingFunction : Type u
  domain : Type v
  range : Type w
  linearity : Prop
  boundedness : Prop
  approximationOrder : Nat

structure AveragingOperatorEvidence (A : AveragingOperatorPackage) where
  linearityClosed : A.linearity
  boundednessClosed : A.boundedness
  approximationOrderClosed : A.approximationOrder = A.approximationOrder

def AveragingOperatorClosed (A : AveragingOperatorPackage) : Prop :=
  A.linearity ∧ A.boundedness

theorem averaging_operator_closed_from_evidence (A : AveragingOperatorPackage)
    (E : AveragingOperatorEvidence A) : AveragingOperatorClosed A := by
  exact And.intro E.linearityClosed E.boundednessClosed

end AveragingPerturbationsNonlinearProblemsMechanicsCanonicalLaneLean
end HautevilleHouse
