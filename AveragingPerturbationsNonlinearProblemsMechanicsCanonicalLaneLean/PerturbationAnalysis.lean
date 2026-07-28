import AveragingPerturbationsNonlinearProblemsMechanicsCanonicalLaneLean.AveragingPerturbationsStatement

namespace HautevilleHouse
namespace AveragingPerturbationsNonlinearProblemsMechanicsCanonicalLaneLean

structure PerturbationAnalysisCertificate (R : AveragingPerturbationsObligations) where
  linearStability : Prop
  nonlinearGrowthBound : Prop
  averagingApproximation : Prop
  linearStabilityClosed : linearStability
  nonlinearGrowthBoundClosed : nonlinearGrowthBound
  averagingApproximationClosed : averagingApproximation
  evidence : AveragingPerturbationsEvidence R

def PerturbationAnalysisCertificateClosed (R : AveragingPerturbationsObligations)
    (C : PerturbationAnalysisCertificate R) : Prop :=
  C.linearStability ∧ C.nonlinearGrowthBound ∧ C.averagingApproximation ∧
  AveragingPerturbationsClosed R

theorem perturbation_analysis_certificate_closed (R : AveragingPerturbationsObligations)
    (C : PerturbationAnalysisCertificate R) : PerturbationAnalysisCertificateClosed R C := by
  exact And.intro C.linearStabilityClosed
    (And.intro C.nonlinearGrowthBoundClosed
      (And.intro C.averagingApproximationClosed
        (averaging_perturbations_closed_from_evidence R C.evidence)))

end AveragingPerturbationsNonlinearProblemsMechanicsCanonicalLaneLean
end HautevilleHouse