import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalMethodsHomotopyApproachesNumericalCanonicalLaneLean

structure NumericalLinearAlgebraPackage where
  linearSystemSolver : Prop
  eigenvalueComputation : Prop
  conditionNumberEstimate : Prop
  iterativeRefinement : Prop

structure NumericalLinearAlgebraEvidence (P : NumericalLinearAlgebraPackage) where
  linearSystemSolverClosed : P.linearSystemSolver
  eigenvalueComputationClosed : P.eigenvalueComputation
  conditionNumberEstimateClosed : P.conditionNumberEstimate
  iterativeRefinementClosed : P.iterativeRefinement

def NumericalLinearAlgebraClosed (P : NumericalLinearAlgebraPackage) : Prop :=
  P.linearSystemSolver ∧ P.eigenvalueComputation ∧
  P.conditionNumberEstimate ∧ P.iterativeRefinement

theorem numerical_linear_algebra_closed_from_evidence
    (P : NumericalLinearAlgebraPackage) (E : NumericalLinearAlgebraEvidence P) :
    NumericalLinearAlgebraClosed P := by
  exact And.intro E.linearSystemSolverClosed
    (And.intro E.eigenvalueComputationClosed
      (And.intro E.conditionNumberEstimateClosed E.iterativeRefinementClosed))

end GlobalMethodsHomotopyApproachesNumericalCanonicalLaneLean
end HautevilleHouse