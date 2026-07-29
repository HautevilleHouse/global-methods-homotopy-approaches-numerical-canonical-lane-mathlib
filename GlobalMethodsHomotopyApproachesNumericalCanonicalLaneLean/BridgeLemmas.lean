import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalMethodsHomotopyApproachesNumericalCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  (by
    have : A.object.conclusion := A.object.conclusion
    exact this)

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A :=
  A.object.conclusion

end GlobalMethodsHomotopyApproachesNumericalCanonicalLaneLean
end HautevilleHouse
