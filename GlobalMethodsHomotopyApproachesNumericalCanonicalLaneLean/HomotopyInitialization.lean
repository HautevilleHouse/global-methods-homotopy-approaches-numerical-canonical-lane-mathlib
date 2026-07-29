import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalMethodsHomotopyApproachesNumericalCanonicalLaneLean

structure HomotopyInitializationPackage where
  startSystem : Prop
  continuationParameter : Prop
  startSolution : Prop
  homotopyPath : Prop

structure HomotopyInitializationEvidence (P : HomotopyInitializationPackage) where
  startSystemClosed : P.startSystem
  continuationParameterClosed : P.continuationParameter
  startSolutionClosed : P.startSolution
  homotopyPathClosed : P.homotopyPath

def HomotopyInitializationClosed (P : HomotopyInitializationPackage) : Prop :=
  P.startSystem ∧ P.continuationParameter ∧ P.startSolution ∧ P.homotopyPath

theorem homotopy_initialization_closed_from_evidence
    (P : HomotopyInitializationPackage) (E : HomotopyInitializationEvidence P) :
    HomotopyInitializationClosed P := by
  exact And.intro E.startSystemClosed
    (And.intro E.continuationParameterClosed
      (And.intro E.startSolutionClosed E.homotopyPathClosed))

end GlobalMethodsHomotopyApproachesNumericalCanonicalLaneLean
end HautevilleHouse