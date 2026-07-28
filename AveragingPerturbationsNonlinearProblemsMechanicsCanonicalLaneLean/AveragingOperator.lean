import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AveragingPerturbationsNonlinearProblemsMechanicsCanonicalLaneLean

structure AveragingOperator where
  domain : Type u
  codomain : Type v
  kernel : Type w
  averagingFunction : domain → codomain
  perturbationSmallness : Prop
  averagingProperty : Prop

structure AveragingOperatorEvidence (A : AveragingOperator) where
  perturbationSmallnessClosed : A.perturbationSmallness
  averagingPropertyClosed : A.averagingProperty

def AveragingOperatorClosed (A : AveragingOperator) : Prop :=
  A.perturbationSmallness ∧ A.averagingProperty

theorem averaging_operator_closed_from_evidence (A : AveragingOperator) (E : AveragingOperatorEvidence A) : AveragingOperatorClosed A := by
  exact And.intro E.perturbationSmallnessClosed E.averagingPropertyClosed

end AveragingPerturbationsNonlinearProblemsMechanicsCanonicalLaneLean
end HautevilleHouse