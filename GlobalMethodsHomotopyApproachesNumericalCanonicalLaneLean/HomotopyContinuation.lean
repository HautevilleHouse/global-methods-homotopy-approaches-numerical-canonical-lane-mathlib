import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalMethodsHomotopyApproachesNumericalCanonicalLaneLean

structure HomotopyContinuationPackage (A : AdmissibleClass) where
  startSystem : Prop
  targetSystem : Prop
  homotopyPath : Prop
  pathTracking : Prop
  endGame : Prop

structure HomotopyContinuationEvidence {A : AdmissibleClass} (H : HomotopyContinuationPackage A) where
  startSystemClosed : H.startSystem
  targetSystemClosed : H.targetSystem
  homotopyPathClosed : H.homotopyPath
  pathTrackingClosed : H.pathTracking
  endGameClosed : H.endGame

def HomotopyContinuationClosed {A : AdmissibleClass} (H : HomotopyContinuationPackage A) : Prop :=
  H.startSystem ∧ H.targetSystem ∧ H.homotopyPath ∧ H.pathTracking ∧ H.endGame

theorem homotopy_continuation_closed_from_evidence
    {A : AdmissibleClass} (H : HomotopyContinuationPackage A)
    (E : HomotopyContinuationEvidence H) : HomotopyContinuationClosed H :=
  And.intro E.startSystemClosed
    (And.intro E.targetSystemClosed
      (And.intro E.homotopyPathClosed
        (And.intro E.pathTrackingClosed E.endGameClosed)))

end GlobalMethodsHomotopyApproachesNumericalCanonicalLaneLean
end HautevilleHouse
