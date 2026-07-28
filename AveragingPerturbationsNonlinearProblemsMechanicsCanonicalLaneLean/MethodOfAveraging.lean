import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AveragingPerturbationsNonlinearProblemsMechanicsCanonicalLaneLean

structure MethodOfAveragingPackage where
  averagedSystem : Type u
  errorEstimate : Prop
  resonanceConditions : Prop
  validityTimeScale : Prop

structure MethodOfAveragingEvidence (M : MethodOfAveragingPackage) where
  errorEstimateClosed : M.errorEstimate
  resonanceConditionsClosed : M.resonanceConditions
  validityTimeScaleClosed : M.validityTimeScale

def MethodOfAveragingClosed (M : MethodOfAveragingPackage) : Prop :=
  M.errorEstimate ∧ M.resonanceConditions ∧ M.validityTimeScale

theorem method_of_averaging_closed_from_evidence (M : MethodOfAveragingPackage) (E : MethodOfAveragingEvidence M) :
    MethodOfAveragingClosed M := by
  exact And.intro E.errorEstimateClosed (And.intro E.resonanceConditionsClosed E.validityTimeScaleClosed)

end AveragingPerturbationsNonlinearProblemsMechanicsCanonicalLaneLean
end HautevilleHouse
