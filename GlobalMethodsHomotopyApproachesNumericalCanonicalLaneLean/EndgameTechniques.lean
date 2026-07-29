import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalMethodsHomotopyApproachesNumericalCanonicalLaneLean

structure EndgameTechniqueData where
  endpointType : Type u
  singularSolution : endpointType → Prop
  endgameRefinement : Prop

structure EndgameTechniquesPackage (D : EndgameTechniqueData) where
  projectiveCoordinate : Prop
  adaptiveStep : Prop
  convergenceAcceleration : Prop
  errorEstimate : Prop

structure EndgameTechniquesEvidence {D : EndgameTechniqueData} (E : EndgameTechniquesPackage D) where
  projectiveCoordinateClosed : E.projectiveCoordinate
  adaptiveStepClosed : E.adaptiveStep
  convergenceAccelerationClosed : E.convergenceAcceleration
  errorEstimateClosed : E.errorEstimate

def EndgameTechniquesClosed {D : EndgameTechniqueData} (E : EndgameTechniquesPackage D) : Prop :=
  E.projectiveCoordinate ∧ E.adaptiveStep ∧ E.convergenceAcceleration ∧ E.errorEstimate

theorem endgame_techniques_closed_from_evidence
    {D : EndgameTechniqueData} (E : EndgameTechniquesPackage D) (Ev : EndgameTechniquesEvidence E) :
    EndgameTechniquesClosed E := by
  exact And.intro Ev.projectiveCoordinateClosed
    (And.intro Ev.adaptiveStepClosed
      (And.intro Ev.convergenceAccelerationClosed Ev.errorEstimateClosed))

end GlobalMethodsHomotopyApproachesNumericalCanonicalLaneLean
end HautevilleHouse
