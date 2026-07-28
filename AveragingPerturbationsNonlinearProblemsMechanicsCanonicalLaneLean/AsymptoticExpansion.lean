import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AveragingPerturbationsNonlinearProblemsMechanicsCanonicalLaneLean

structure AsymptoticExpansionPackage where
  expansionBase : Type u
  expansionParameter : Type v
  leadingOrderTerm : Prop
  higherOrderTerms : Prop
  errorEstimate : Prop

structure AsymptoticExpansionEvidence (A : AsymptoticExpansionPackage) where
  leadingOrderTermClosed : A.leadingOrderTerm
  higherOrderTermsClosed : A.higherOrderTerms
  errorEstimateClosed : A.errorEstimate

def AsymptoticExpansionClosed (A : AsymptoticExpansionPackage) : Prop :=
  A.leadingOrderTerm ∧ A.higherOrderTerms ∧ A.errorEstimate

theorem asymptotic_expansion_closed_from_evidence (A : AsymptoticExpansionPackage)
    (E : AsymptoticExpansionEvidence A) : AsymptoticExpansionClosed A := by
  exact And.intro E.leadingOrderTermClosed (And.intro E.higherOrderTermsClosed E.errorEstimateClosed)

end AveragingPerturbationsNonlinearProblemsMechanicsCanonicalLaneLean
end HautevilleHouse
