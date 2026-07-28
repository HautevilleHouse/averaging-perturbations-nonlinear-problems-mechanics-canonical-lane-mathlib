import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AveragingPerturbationsNonlinearProblemsMechanicsCanonicalLaneLean

structure AdmittedObject where
  system : Type u
  dynamics : system → system
  perturbationParameter : ℝ
  averagingTimeScale : ℝ
  averagedSystem : system → system
  errorBound : ℕ → ℝ
  conclusion : errorBound 0 = 0

structure AdmissibleClass where
  object : AdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

end AveragingPerturbationsNonlinearProblemsMechanicsCanonicalLaneLean
end HautevilleHouse
