import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AveragingPerturbationsNonlinearProblemsMechanicsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure AdmittedMechanicalSystem where
  stateSpace : Type
  perturbationOperator : Type
  averagingKernel : Type
  stabilityPredicate : Prop
  conclusion : stabilityPredicate

structure AveragingPerturbationsAdmittedObject where
  system : AdmittedMechanicalSystem
  perturbationModel : Prop
  averagingScheme : Prop
  stabilityMargins : Prop
  conclusion : system.conclusion

structure AveragingPerturbationsEndgameState where
  object : AveragingPerturbationsAdmittedObject

def AveragingPerturbationsWitnessClosed (O : AveragingPerturbationsAdmittedObject) : Prop :=
  O.system.conclusion

end AveragingPerturbationsNonlinearProblemsMechanicsCanonicalLaneLean
end HautevilleHouse