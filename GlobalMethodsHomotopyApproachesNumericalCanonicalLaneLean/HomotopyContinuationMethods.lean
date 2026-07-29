import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalMethodsHomotopyApproachesNumerical

structure HomotopyContinuationPackage where
  targetSystem : Type u
  startSystem : Type v
  homotopyMap : Type w
  pathTracker : Type x
  predictorCorrector : Prop
  stepSizeControl : Prop
  convergenceGuarantee : Prop

structure HomotopyContinuationEvidence (H : HomotopyContinuationPackage) where
  predictorCorrectorClosed : H.predictorCorrector
  stepSizeControlClosed : H.stepSizeControl
  convergenceGuaranteeClosed : H.convergenceGuarantee

def HomotopyContinuationClosed (H : HomotopyContinuationPackage) : Prop :=
  H.predictorCorrector ∧ H.stepSizeControl ∧ H.convergenceGuarantee

theorem homotopy_continuation_closed_from_evidence (H : HomotopyContinuationPackage)
    (E : HomotopyContinuationEvidence H) : HomotopyContinuationClosed H := by
  exact And.intro E.predictorCorrectorClosed
    (And.intro E.stepSizeControlClosed E.convergenceGuaranteeClosed)

end GlobalMethodsHomotopyApproachesNumerical
end HautevilleHouse