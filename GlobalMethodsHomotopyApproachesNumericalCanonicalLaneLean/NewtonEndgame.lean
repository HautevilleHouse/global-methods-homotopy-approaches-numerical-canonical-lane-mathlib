import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalMethodsHomotopyApproachesNumericalCanonicalLaneLean

structure NewtonEndgamePackage (A : AdmissibleClass) where
  approximateRoot : Prop
  newtonIteration : Prop
  convergenceRadius : Prop
  endgameRefinement : Prop
  residualBound : Prop

structure NewtonEndgameEvidence {A : AdmissibleClass} (N : NewtonEndgamePackage A) where
  approximateRootClosed : N.approximateRoot
  newtonIterationClosed : N.newtonIteration
  convergenceRadiusClosed : N.convergenceRadius
  endgameRefinementClosed : N.endgameRefinement
  residualBoundClosed : N.residualBound

def NewtonEndgameClosed {A : AdmissibleClass} (N : NewtonEndgamePackage A) : Prop :=
  N.approximateRoot ∧ N.newtonIteration ∧ N.convergenceRadius ∧
  N.endgameRefinement ∧ N.residualBound

theorem newton_endgame_closed_from_evidence
    {A : AdmissibleClass} (N : NewtonEndgamePackage A)
    (E : NewtonEndgameEvidence N) : NewtonEndgameClosed N :=
  And.intro E.approximateRootClosed
    (And.intro E.newtonIterationClosed
      (And.intro E.convergenceRadiusClosed
        (And.intro E.endgameRefinementClosed E.residualBoundClosed)))

end GlobalMethodsHomotopyApproachesNumericalCanonicalLaneLean
end HautevilleHouse
