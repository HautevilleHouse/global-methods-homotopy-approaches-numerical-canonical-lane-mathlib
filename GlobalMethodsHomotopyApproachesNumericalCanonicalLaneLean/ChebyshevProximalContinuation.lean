import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalMethodsHomotopyApproachesNumericalCanonicalLaneLean

structure ChebyshevProximalContinuation where
  proximalOperator : Type
  chebyshevAcceleration : Prop
  globalConvergenceRate : Prop
  chebyshevAccelerationClosed : chebyshevAcceleration
  globalConvergenceRateClosed : globalConvergenceRate

def ChebyshevProximalContinuationClosed (C : ChebyshevProximalContinuation) : Prop :=
  C.chebyshevAcceleration ∧ C.globalConvergenceRate

theorem chebyshev_proximal_continuation_closed (C : ChebyshevProximalContinuation) (E : C.chebyshevAcceleration ∧ C.globalConvergenceRate) : ChebyshevProximalContinuationClosed C := by
  exact E

end GlobalMethodsHomotopyApproachesNumericalCanonicalLaneLean
end HautevilleHouse