import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalMethodsHomotopyApproachesNumerical

structure NewtonIterationPackage where
  initialApproximation : Type u
  iterationFunction : Type v
  convergenceRadius : Prop
  quadraticConvergence : Prop
  convergenceRadiusTerm : convergenceRadius
  quadraticConvergenceTerm : quadraticConvergence

structure NewtonIterationEvidence (N : NewtonIterationPackage) where
  convergenceRadiusClosed : N.convergenceRadius
  quadraticConvergenceClosed : N.quadraticConvergence

def NewtonIterationClosed (N : NewtonIterationPackage) : Prop :=
  N.convergenceRadius ∧ N.quadraticConvergence

theorem newton_iteration_closed_from_evidence (N : NewtonIterationPackage)
    (E : NewtonIterationEvidence N) : NewtonIterationClosed N :=
  And.intro E.convergenceRadiusClosed E.quadraticConvergenceClosed

end GlobalMethodsHomotopyApproachesNumerical
end HautevilleHouse