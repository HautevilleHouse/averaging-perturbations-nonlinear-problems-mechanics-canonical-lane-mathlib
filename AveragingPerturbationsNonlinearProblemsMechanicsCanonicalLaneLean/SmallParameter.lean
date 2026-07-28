import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AveragingPerturbationsNonlinearProblemsMechanicsCanonicalLaneLean

structure SmallParameterPackage where
  parameterType : Type u
  orderNotation : Type v
  asymptoticScale : Prop
  boundedness : Prop
  limitBehavior : Prop

structure SmallParameterEvidence (S : SmallParameterPackage) where
  asymptoticScaleClosed : S.asymptoticScale
  boundednessClosed : S.boundedness
  limitBehaviorClosed : S.limitBehavior

def SmallParameterClosed (S : SmallParameterPackage) : Prop :=
  S.asymptoticScale ∧ S.boundedness ∧ S.limitBehavior

theorem small_parameter_closed_from_evidence (S : SmallParameterPackage) (E : SmallParameterEvidence S) :
    SmallParameterClosed S := by
  exact And.intro E.asymptoticScaleClosed (And.intro E.boundednessClosed E.limitBehaviorClosed)

end AveragingPerturbationsNonlinearProblemsMechanicsCanonicalLaneLean
end HautevilleHouse
