import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalMethodsHomotopyApproachesNumerical

structure ProjectiveHomotopyAlgorithm where
  projectiveSpace : Type u
  targetVariety : Type v
  homotopyFamily : Type w
  startSolutionSet : Prop
  pathLiftingMechanism : Prop
  projectiveTransformation : Prop

structure ProjectiveHomotopyEvidence (P : ProjectiveHomotopyAlgorithm) where
  startSolutionSetClosed : P.startSolutionSet
  pathLiftingMechanismClosed : P.pathLiftingMechanism
  projectiveTransformationClosed : P.projectiveTransformation

def ProjectiveHomotopyAlgorithmClosed (P : ProjectiveHomotopyAlgorithm) : Prop :=
  P.startSolutionSet ∧ P.pathLiftingMechanism ∧ P.projectiveTransformation

theorem projective_homotopy_algorithm_closed (P : ProjectiveHomotopyAlgorithm)
    (E : ProjectiveHomotopyEvidence P) : ProjectiveHomotopyAlgorithmClosed P := by
  exact And.intro E.startSolutionSetClosed
    (And.intro E.pathLiftingMechanismClosed E.projectiveTransformationClosed)

end GlobalMethodsHomotopyApproachesNumerical
end HautevilleHouse