import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalMethodsHomotopyApproachesNumericalCanonicalLaneLean

structure NewtonHomotopyData where
  initialGuess : Type u
  homotopyParameter : Type v
  newtonStep : initialGuess → initialGuess
  residual : initialGuess → Prop

structure NewtonHomotopyPackage (D : NewtonHomotopyData) where
  affineInvariant : Prop
  globalConvergence : Prop
  quadraticTerminalRate : Prop
  homotopyContinuation : Prop

structure NewtonHomotopyEvidence {D : NewtonHomotopyData} (N : NewtonHomotopyPackage D) where
  affineInvariantClosed : N.affineInvariant
  globalConvergenceClosed : N.globalConvergence
  quadraticTerminalRateClosed : N.quadraticTerminalRate
  homotopyContinuationClosed : N.homotopyContinuation

def NewtonHomotopyClosed {D : NewtonHomotopyData} (N : NewtonHomotopyPackage D) : Prop :=
  N.affineInvariant ∧ N.globalConvergence ∧ N.quadraticTerminalRate ∧ N.homotopyContinuation

theorem newton_homotopy_closed_from_evidence
    {D : NewtonHomotopyData} (N : NewtonHomotopyPackage D) (E : NewtonHomotopyEvidence N) :
    NewtonHomotopyClosed N := by
  exact And.intro E.affineInvariantClosed
    (And.intro E.globalConvergenceClosed
      (And.intro E.quadraticTerminalRateClosed E.homotopyContinuationClosed))

end GlobalMethodsHomotopyApproachesNumericalCanonicalLaneLean
end HautevilleHouse
