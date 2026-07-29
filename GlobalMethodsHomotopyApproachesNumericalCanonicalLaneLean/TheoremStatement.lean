import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalMethodsHomotopyApproachesNumericalCanonicalLaneLean

structure HomotopyAdmittedObject where
  space : Type
  topology : TopologicalSpace space
  simplyConnected : Prop
  homotopyEquivalent : Prop
  conclusion : homotopyEquivalent

def HomotopyWitnessClosed (O : HomotopyAdmittedObject) : Prop :=
  O.homotopyEquivalent

end GlobalMethodsHomotopyApproachesNumericalCanonicalLaneLean
end HautevilleHouse
