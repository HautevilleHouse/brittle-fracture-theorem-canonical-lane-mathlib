import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrittleFractureTheoremCanonicalLaneLean

structure JIntegral where
  contourIntegral : Type u
  pathIndependence : Prop
  energyReleaseRate : Prop
  nonlinearElastic : Prop
  fractureCriterion : Prop

structure JIntegralEvidence (J : JIntegral) where
  pathIndependenceClosed : J.pathIndependence
  energyReleaseRateClosed : J.energyReleaseRate
  nonlinearElasticClosed : J.nonlinearElastic
  fractureCriterionClosed : J.fractureCriterion

def JIntegralClosed (J : JIntegral) : Prop :=
  J.pathIndependence ∧ J.energyReleaseRate ∧
  J.nonlinearElastic ∧ J.fractureCriterion

theorem j_integral_closed_from_evidence (J : JIntegral)
    (E : JIntegralEvidence J) : JIntegralClosed J := by
  exact And.intro E.pathIndependenceClosed
    (And.intro E.energyReleaseRateClosed
      (And.intro E.nonlinearElasticClosed E.fractureCriterionClosed))

end BrittleFractureTheoremCanonicalLaneLean
end HautevilleHouse