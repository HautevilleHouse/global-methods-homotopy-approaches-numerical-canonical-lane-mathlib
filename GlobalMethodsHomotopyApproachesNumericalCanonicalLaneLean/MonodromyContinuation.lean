import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalMethodsHomotopyApproachesNumerical

structure MonodromyContinuationPackage where
  basePoint : Type u
  loopSpace : Type v
  monodromyRepresentation : Type w
  liftedLoops : Prop
  solutionBranches : Prop
  branchJumpAlgorithm : Prop
  monodromyGroupGenerated : Prop

structure MonodromyContinuationEvidence (M : MonodromyContinuationPackage) where
  liftedLoopsClosed : M.liftedLoops
  solutionBranchesClosed : M.solutionBranches
  branchJumpAlgorithmClosed : M.branchJumpAlgorithm
  monodromyGroupGeneratedClosed : M.monodromyGroupGenerated

def MonodromyContinuationClosed (M : MonodromyContinuationPackage) : Prop :=
  M.liftedLoops ∧ M.solutionBranches ∧ M.branchJumpAlgorithm ∧ M.monodromyGroupGenerated

theorem monodromy_continuation_closed_from_evidence (M : MonodromyContinuationPackage)
    (E : MonodromyContinuationEvidence M) : MonodromyContinuationClosed M := by
  exact And.intro E.liftedLoopsClosed
    (And.intro E.solutionBranchesClosed
      (And.intro E.branchJumpAlgorithmClosed E.monodromyGroupGeneratedClosed))

end GlobalMethodsHomotopyApproachesNumerical
end HautevilleHouse