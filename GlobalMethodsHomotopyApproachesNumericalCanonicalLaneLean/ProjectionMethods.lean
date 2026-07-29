import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalMethodsHomotopyApproachesNumericalCanonicalLaneLean

structure ProjectionMethodData where
  subspaceType : Type u
  projectionMap : subspaceType → subspaceType
  fixedPointProperty : Prop

structure ProjectionMethodsPackage (D : ProjectionMethodData) where
  subspaceIteration : Prop
  projectionConvergence : Prop
  subspaceDimension : Nat

structure ProjectionMethodsEvidence {D : ProjectionMethodData} (P : ProjectionMethodsPackage D) where
  subspaceIterationClosed : P.subspaceIteration
  projectionConvergenceClosed : P.projectionConvergence

def ProjectionMethodsClosed {D : ProjectionMethodData} (P : ProjectionMethodsPackage D) : Prop :=
  P.subspaceIteration ∧ P.projectionConvergence

theorem projection_methods_closed_from_evidence
    {D : ProjectionMethodData} (P : ProjectionMethodsPackage D) (E : ProjectionMethodsEvidence P) :
    ProjectionMethodsClosed P := by
  exact And.intro E.subspaceIterationClosed E.projectionConvergenceClosed

end GlobalMethodsHomotopyApproachesNumericalCanonicalLaneLean
end HautevilleHouse
