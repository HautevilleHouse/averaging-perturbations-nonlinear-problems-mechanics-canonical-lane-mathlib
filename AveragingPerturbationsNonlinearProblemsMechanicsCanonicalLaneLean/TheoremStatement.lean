import canonicalLaneMathlib.AdmissibleClass
import AveragingPerturbationsNonlinearProblemsMechanicsCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace AveragingPerturbationsNonlinearProblemsMechanicsCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  certificateLane : String
  carriedRemainder : String

def sourceRepository : String :=
  "canonical-lane-averaging-perturbations-nonlinear-problems-mechanics"

def sourceDescription : String :=
  "Averaging Perturbations in Nonlinear Problems of Mechanics"

def baselineCertificateLane : String :=
  "manifold_constrained_perturbation"

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := sourceRepository,
  theoremName := sourceRepository,
  certificateLane := baselineCertificateLane,
  carriedRemainder := "Classical source boundary carried by formalization certificate."
}

theorem theorem_statement_source_key_checked :
    sourceTheoremStatement.sourceKey = sourceRepository := by
  rfl

end AveragingPerturbationsNonlinearProblemsMechanicsCanonicalLaneLean
end HautevilleHouse