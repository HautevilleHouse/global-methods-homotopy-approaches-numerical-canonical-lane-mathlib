import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalMethodsHomotopyApproachesNumericalCanonicalLaneLean

structure GlobalConvergencePackage where
  solutionCurveComplete : Prop
  endpointIsolated : Prop
  multiplicityAccounted : Prop
  certificationCriterion : Prop

structure GlobalConvergenceEvidence (P : GlobalConvergencePackage) where
  solutionCurveCompleteClosed : P.solutionCurveComplete
  endpointIsolatedClosed : P.endpointIsolated
  multiplicityAccountedClosed : P.multiplicityAccounted
  certificationCriterionClosed : P.certificationCriterion

def GlobalConvergenceClosed (P : GlobalConvergencePackage) : Prop :=
  P.solutionCurveComplete ∧ P.endpointIsolated ∧
  P.multiplicityAccounted ∧ P.certificationCriterion

theorem global_convergence_closed_from_evidence
    (P : GlobalConvergencePackage) (E : GlobalConvergenceEvidence P) :
    GlobalConvergenceClosed P := by
  exact And.intro E.solutionCurveCompleteClosed
    (And.intro E.endpointIsolatedClosed
      (And.intro E.multiplicityAccountedClosed E.certificationCriterionClosed))

end GlobalMethodsHomotopyApproachesNumericalCanonicalLaneLean
end HautevilleHouse