import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalMethodsHomotopyApproachesNumericalCanonicalLaneLean

structure SingularityAvoidancePackage where
  singularSetDetected : Prop
  projectiveCoordinateTransform : Prop
  bifurcationPathHandled : Prop
  endpointRegularity : Prop

structure SingularityAvoidanceEvidence (P : SingularityAvoidancePackage) where
  singularSetDetectedClosed : P.singularSetDetected
  projectiveCoordinateTransformClosed : P.projectiveCoordinateTransform
  bifurcationPathHandledClosed : P.bifurcationPathHandled
  endpointRegularityClosed : P.endpointRegularity

def SingularityAvoidanceClosed (P : SingularityAvoidancePackage) : Prop :=
  P.singularSetDetected ∧ P.projectiveCoordinateTransform ∧
  P.bifurcationPathHandled ∧ P.endpointRegularity

theorem singularity_avoidance_closed_from_evidence
    (P : SingularityAvoidancePackage) (E : SingularityAvoidanceEvidence P) :
    SingularityAvoidanceClosed P := by
  exact And.intro E.singularSetDetectedClosed
    (And.intro E.projectiveCoordinateTransformClosed
      (And.intro E.bifurcationPathHandledClosed E.endpointRegularityClosed))

end GlobalMethodsHomotopyApproachesNumericalCanonicalLaneLean
end HautevilleHouse