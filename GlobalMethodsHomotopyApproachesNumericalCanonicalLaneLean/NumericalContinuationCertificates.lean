import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalMethodsHomotopyApproachesNumerical

structure NumericalContinuationCertificate where
  newtonIterationCount : Nat
  residualTolerance : ℝ
  pathTrackingAccuracy : ℝ
  singularityAvoidance : Prop
  endgameRefinement : Prop
  certificateFieldsClosed : Prop

structure NumericalContinuationEvidence (C : NumericalContinuationCertificate) where
  singularityAvoidanceClosed : C.singularityAvoidance
  endgameRefinementClosed : C.endgameRefinement
  certificateFieldsClosedTerm : C.certificateFieldsClosed

def NumericalContinuationCertificateClosed (C : NumericalContinuationCertificate) : Prop :=
  C.singularityAvoidance ∧ C.endgameRefinement ∧ C.certificateFieldsClosed

theorem numerical_continuation_certificate_closed (C : NumericalContinuationCertificate)
    (E : NumericalContinuationEvidence C) : NumericalContinuationCertificateClosed C := by
  exact And.intro E.singularityAvoidanceClosed
    (And.intro E.endgameRefinementClosed E.certificateFieldsClosedTerm)

end GlobalMethodsHomotopyApproachesNumerical
end HautevilleHouse