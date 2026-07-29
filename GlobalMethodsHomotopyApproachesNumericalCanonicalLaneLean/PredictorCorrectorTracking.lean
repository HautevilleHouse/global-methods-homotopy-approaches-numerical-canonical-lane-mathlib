import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalMethodsHomotopyApproachesNumericalCanonicalLaneLean

structure PredictorCorrectorDiscretization where
  stepControl : Prop
  predictorOrder : Nat
  correctorResidual : Prop
  stepControlClosed : stepControl
  correctorResidualClosed : correctorResidual

def PredictorCorrectorClosed (P : PredictorCorrectorDiscretization) : Prop :=
  P.stepControl ∧ P.correctorResidual

theorem predictor_corrector_closed_from_evidence (P : PredictorCorrectorDiscretization) (E : P.stepControl ∧ P.correctorResidual) : PredictorCorrectorClosed P := by
  exact E

end GlobalMethodsHomotopyApproachesNumericalCanonicalLaneLean
end HautevilleHouse