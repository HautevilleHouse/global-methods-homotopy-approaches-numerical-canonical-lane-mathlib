import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalMethodsHomotopyApproachesNumerical

structure GlobalConvergenceFramework where
  solutionBound : Type u
  homotopyPathSpace : Type v
  startingPoint : Type w
  continuationMap : Type x
  pathFiniteLength : Prop
  regularityCondition : Prop
  globalConvergence : Prop

structure GlobalConvergenceEvidence (G : GlobalConvergenceFramework) where
  pathFiniteLengthClosed : G.pathFiniteLength
  regularityConditionClosed : G.regularityCondition
  globalConvergenceClosed : G.globalConvergence

def GlobalConvergenceClosed (G : GlobalConvergenceFramework) : Prop :=
  G.pathFiniteLength ∧ G.regularityCondition ∧ G.globalConvergence

theorem global_convergence_closed_from_evidence (G : GlobalConvergenceFramework)
    (E : GlobalConvergenceEvidence G) : GlobalConvergenceClosed G := by
  exact And.intro E.pathFiniteLengthClosed
    (And.intro E.regularityConditionClosed E.globalConvergenceClosed)

end GlobalMethodsHomotopyApproachesNumerical
end HautevilleHouse