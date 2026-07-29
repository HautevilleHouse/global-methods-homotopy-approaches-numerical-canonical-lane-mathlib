import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalMethodsHomotopyApproachesNumericalCanonicalLaneLean

structure PathTrackingPiecewise where
  predictorStep : Prop
  correctorIteration : Prop
  stepControl : Prop
  endgameStrategy : Prop

structure PathTrackingNumericalPackage (P : PathTrackingPiecewise) where
  predictorStepComputed : P.predictorStep
  correctorIterationConverged : P.correctorIteration
  stepControlAdaptive : P.stepControl
  endgameStrategyApplied : P.endgameStrategy

structure PathTrackingNumericalEvidence {P : PathTrackingPiecewise} (N : PathTrackingNumericalPackage P) where
  predictorStepComputedClosed : N.predictorStepComputed
  correctorIterationConvergedClosed : N.correctorIterationConverged
  stepControlAdaptiveClosed : N.stepControlAdaptive
  endgameStrategyAppliedClosed : N.endgameStrategyApplied

def PathTrackingNumericalClosed {P : PathTrackingPiecewise} (N : PathTrackingNumericalPackage P) : Prop :=
  N.predictorStepComputed ∧ N.correctorIterationConverged ∧ N.stepControlAdaptive ∧ N.endgameStrategyApplied

theorem path_tracking_numerical_closed_from_evidence
    {P : PathTrackingPiecewise} (N : PathTrackingNumericalPackage P) (E : PathTrackingNumericalEvidence N) :
    PathTrackingNumericalClosed N := by
  exact And.intro E.predictorStepComputedClosed
    (And.intro E.correctorIterationConvergedClosed
      (And.intro E.stepControlAdaptiveClosed E.endgameStrategyAppliedClosed))

end GlobalMethodsHomotopyApproachesNumericalCanonicalLaneLean
end HautevilleHouse
