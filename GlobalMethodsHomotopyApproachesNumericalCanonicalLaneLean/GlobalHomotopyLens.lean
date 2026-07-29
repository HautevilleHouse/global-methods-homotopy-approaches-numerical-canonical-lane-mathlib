import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalMethodsHomotopyApproachesNumericalCanonicalLaneLean

structure GlobalHomotopyDomain where
  sourceTargetPair : Type u
  homotopyFamily : sourceTargetPair → sourceTargetPair → Type v
  initialMap : sourceTargetPair → sourceTargetPair
  terminalMap : sourceTargetPair → sourceTargetPair

structure GlobalHomotopyLensPackage (D : GlobalHomotopyDomain) where
  continuationMethod : Prop
  stepSizeAdaptive : Prop
  predictorCorrector : Prop
  homotopyContinuation : Prop
  newtonConvergence : Prop

structure GlobalHomotopyLensEvidence {D : GlobalHomotopyDomain} (H : GlobalHomotopyLensPackage D) where
  continuationMethodClosed : H.continuationMethod
  stepSizeAdaptiveClosed : H.stepSizeAdaptive
  predictorCorrectorClosed : H.predictorCorrector
  homotopyContinuationClosed : H.homotopyContinuation
  newtonConvergenceClosed : H.newtonConvergence

def GlobalHomotopyLensClosed {D : GlobalHomotopyDomain} (H : GlobalHomotopyLensPackage D) : Prop :=
  H.continuationMethod ∧ H.stepSizeAdaptive ∧ H.predictorCorrector ∧ H.homotopyContinuation ∧ H.newtonConvergence

theorem global_homotopy_lens_closed_from_evidence
    {D : GlobalHomotopyDomain} (H : GlobalHomotopyLensPackage D) (E : GlobalHomotopyLensEvidence H) :
    GlobalHomotopyLensClosed H := by
  exact And.intro E.continuationMethodClosed
    (And.intro E.stepSizeAdaptiveClosed
      (And.intro E.predictorCorrectorClosed
        (And.intro E.homotopyContinuationClosed E.newtonConvergenceClosed)))

end GlobalMethodsHomotopyApproachesNumericalCanonicalLaneLean
end HautevilleHouse
