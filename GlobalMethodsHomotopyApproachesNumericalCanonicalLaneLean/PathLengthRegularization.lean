import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalMethodsHomotopyApproachesNumericalCanonicalLaneLean

structure PathLengthRegularization where
  arclengthParameterization : Prop
  chordMethodDefect : Prop
  adaptiveResampling : Prop
  arclengthParameterizationClosed : arclengthParameterization
  chordMethodDefectClosed : chordMethodDefect
  adaptiveResamplingClosed : adaptiveResampling

def PathLengthRegularizationClosed (P : PathLengthRegularization) : Prop :=
  P.arclengthParameterization ∧ P.chordMethodDefect ∧ P.adaptiveResampling

theorem path_length_regularization_closed (P : PathLengthRegularization) (E : P.arclengthParameterization ∧ P.chordMethodDefect ∧ P.adaptiveResampling) : PathLengthRegularizationClosed P := by
  exact And.intro E.left (And.intro E.right.left E.right.right)

end GlobalMethodsHomotopyApproachesNumericalCanonicalLaneLean
end HautevilleHouse