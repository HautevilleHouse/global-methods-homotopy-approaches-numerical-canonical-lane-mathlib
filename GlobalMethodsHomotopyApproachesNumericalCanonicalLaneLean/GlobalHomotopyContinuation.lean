import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalMethodsHomotopyApproachesNumericalCanonicalLaneLean

structure GloballyConvergentHomotopyContinuation where
  startSystem : Type
  targetSystem : Type
  homotopyMap : Type
  continuationPathExists : Prop
  pathLiftToTarget : Prop
  numericTracking : Prop

structure GlobalHomotopyContinuationEvidence (G : GloballyConvergentHomotopyContinuation) where
  continuationPathExistsClosed : G.continuationPathExists
  pathLiftToTargetClosed : G.pathLiftToTarget
  numericTrackingClosed : G.numericTracking

def GlobalHomotopyContinuationClosed (G : GloballyConvergentHomotopyContinuation) : Prop :=
  G.continuationPathExists ∧ G.pathLiftToTarget ∧ G.numericTracking

theorem global_homotopy_continuation_closed_from_evidence (G : GloballyConvergentHomotopyContinuation)
    (E : GlobalHomotopyContinuationEvidence G) : GlobalHomotopyContinuationClosed G := by
  exact And.intro E.continuationPathExistsClosed (And.intro E.pathLiftToTargetClosed E.numericTrackingClosed)

end GlobalMethodsHomotopyApproachesNumericalCanonicalLaneLean
end HautevilleHouse