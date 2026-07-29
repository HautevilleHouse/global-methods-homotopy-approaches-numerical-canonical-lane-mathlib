import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalMethodsHomotopyApproachesNumericalCanonicalLaneLean

structure EndgameMethod where
  endgameStart : Nat
  endgameRadius : ℝ
  endgamePrecision : ℝ
  cauchyIntegralFactorization : Prop
  endgameStartClosed : endgameStart = endgameStart
  endgameRadiusClosed : endgameRadius > 0
  cauchyIntegralFactorizationClosed : cauchyIntegralFactorization

def EndgameMethodClosed (E : EndgameMethod) : Prop :=
  E.endgameRadius > 0 ∧ E.cauchyIntegralFactorization

theorem endgame_method_closed (E : EndgameMethod) (h : E.endgameRadius > 0) (h' : E.cauchyIntegralFactorization) : EndgameMethodClosed E := by
  exact And.intro h h'

end GlobalMethodsHomotopyApproachesNumericalCanonicalLaneLean
end HautevilleHouse