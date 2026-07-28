import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AveragingPerturbationsNonlinearProblemsMechanicsCanonicalLaneLean

structure NonlinearOscillatorPackage where
  stateSpace : Type u
  timeDomain : Type v
  differentialEquation : Prop
  nonlinearRestoringForce : Prop
  periodicOrbit : Prop

structure NonlinearOscillatorEvidence (N : NonlinearOscillatorPackage) where
  differentialEquationClosed : N.differentialEquation
  nonlinearRestoringForceClosed : N.nonlinearRestoringForce
  periodicOrbitClosed : N.periodicOrbit

def NonlinearOscillatorClosed (N : NonlinearOscillatorPackage) : Prop :=
  N.differentialEquation ∧ N.nonlinearRestoringForce ∧ N.periodicOrbit

theorem nonlinear_oscillator_closed_from_evidence (N : NonlinearOscillatorPackage) (E : NonlinearOscillatorEvidence N) :
    NonlinearOscillatorClosed N := by
  exact And.intro E.differentialEquationClosed (And.intro E.nonlinearRestoringForceClosed E.periodicOrbitClosed)

end AveragingPerturbationsNonlinearProblemsMechanicsCanonicalLaneLean
end HautevilleHouse
