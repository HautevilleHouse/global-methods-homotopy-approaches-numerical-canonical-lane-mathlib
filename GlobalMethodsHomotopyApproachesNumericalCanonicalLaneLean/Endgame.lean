import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GlobalMethodsHomotopyApproachesNumerical.BridgeLemmas

namespace HautevilleHouse
namespace GlobalMethodsHomotopyApproachesNumerical

def ConstrainedHomotopyNumericalClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_homotopy_numerical_endgame (A : AdmissibleClass) :
    ConstrainedHomotopyNumericalClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GlobalMethodsHomotopyApproachesNumerical
end HautevilleHouse