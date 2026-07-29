import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalMethodsHomotopyApproachesNumerical

structure PathTrackingPackage where
  predictorStep : Type u
  correctorStep : Type v
  stepSizeControl : Prop
  endpointReached : Prop
  stepSizeControlTerm : stepSizeControl
  endpointReachedTerm : endpointReached

structure PathTrackingEvidence (P : PathTrackingPackage) where
  stepSizeControlClosed : P.stepSizeControl
  endpointReachedClosed : P.endpointReached

def PathTrackingClosed (P : PathTrackingPackage) : Prop :=
  P.stepSizeControl ∧ P.endpointReached

theorem path_tracking_closed_from_evidence (P : PathTrackingPackage)
    (E : PathTrackingEvidence P) : PathTrackingClosed P :=
  And.intro E.stepSizeControlClosed E.endpointReachedClosed

end GlobalMethodsHomotopyApproachesNumerical
end HautevilleHouse