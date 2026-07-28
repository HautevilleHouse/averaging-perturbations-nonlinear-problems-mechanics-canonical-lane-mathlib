import AveragingPerturbationsNonlinearProblemsMechanicsCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace AveragingPerturbationsNonlinearProblemsMechanicsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure AveragingPerturbationsObligations where
  stabilityUnderPerturbation : Prop
  convergenceOfAveraging : Prop
  errorBounds : Prop

structure AveragingPerturbationsEvidence (R : AveragingPerturbationsObligations) where
  stabilityUnderPerturbationClosed : R.stabilityUnderPerturbation
  convergenceOfAveragingClosed : R.convergenceOfAveraging
  errorBoundsClosed : R.errorBounds

def AveragingPerturbationsClosed (R : AveragingPerturbationsObligations) : Prop :=
  R.stabilityUnderPerturbation ∧ R.convergenceOfAveraging ∧ R.errorBounds

theorem averaging_perturbations_closed_from_evidence (R : AveragingPerturbationsObligations)
    (E : AveragingPerturbationsEvidence R) : AveragingPerturbationsClosed R := by
  exact And.intro E.stabilityUnderPerturbationClosed
    (And.intro E.convergenceOfAveragingClosed E.errorBoundsClosed)

end AveragingPerturbationsNonlinearProblemsMechanicsCanonicalLaneLean
end HautevilleHouse