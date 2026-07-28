import canonicalLaneMathlib.AdmissibleClass
import AveragingPerturbationsNonlinearProblemsMechanicsCanonicalLaneLean.AdmissibleClass
import AveragingPerturbationsNonlinearProblemsMechanicsCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace AveragingPerturbationsNonlinearProblemsMechanicsCanonicalLaneLean

def ConstrainedAveragingClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_averaging_endgame (A : AdmissibleClass) :
    ConstrainedAveragingClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end AveragingPerturbationsNonlinearProblemsMechanicsCanonicalLaneLean
end HautevilleHouse
