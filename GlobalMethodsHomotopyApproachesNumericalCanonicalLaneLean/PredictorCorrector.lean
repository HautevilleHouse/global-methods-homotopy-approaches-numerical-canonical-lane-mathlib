import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalMethodsHomotopyApproachesNumericalCanonicalLaneLean

structure PredictorCorrectorPackage where
  predictorStep : Prop
  correctorStep : Prop
  stepSizeControl : Prop
  convergenceGuarantee : Prop

structure PredictorCorrectorEvidence (P : PredictorCorrectorPackage) where
  predictorStepClosed : P.predictorStep
  correctorStepClosed : P.correctorStep
  stepSizeControlClosed : P.stepSizeControl
  convergenceGuaranteeClosed : P.convergenceGuarantee

def PredictorCorrectorClosed (P : PredictorCorrectorPackage) : Prop :=
  P.predictorStep ∧ P.correctorStep ∧ P.stepSizeControl ∧ P.convergenceGuarantee

theorem predictor_corrector_closed_from_evidence
    (P : PredictorCorrectorPackage) (E : PredictorCorrectorEvidence P) :
    PredictorCorrectorClosed P := by
  exact And.intro E.predictorStepClosed
    (And.intro E.correctorStepClosed
      (And.intro E.stepSizeControlClosed E.convergenceGuaranteeClosed))

end GlobalMethodsHomotopyApproachesNumericalCanonicalLaneLean
end HautevilleHouse