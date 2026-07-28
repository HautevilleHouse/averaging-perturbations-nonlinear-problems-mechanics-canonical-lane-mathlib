import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AveragingPerturbationsNonlinearProblemsMechanicsCanonicalLaneLean

structure NonlinearSystemPackage where
  stateSpace : Type u
  governingEquation : Type v
  wellposedness : Prop
  regularity : Prop
  stability : Prop

structure NonlinearSystemEvidence (N : NonlinearSystemPackage) where
  wellposednessClosed : N.wellposedness
  regularityClosed : N.regularity
  stabilityClosed : N.stability

def NonlinearSystemClosed (N : NonlinearSystemPackage) : Prop :=
  N.wellposedness ∧ N.regularity ∧ N.stability

theorem nonlinear_system_closed_from_evidence (N : NonlinearSystemPackage)
    (E : NonlinearSystemEvidence N) : NonlinearSystemClosed N := by
  exact And.intro E.wellposednessClosed (And.intro E.regularityClosed E.stabilityClosed)

end AveragingPerturbationsNonlinearProblemsMechanicsCanonicalLaneLean
end HautevilleHouse
