import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrittleFractureTheoremCanonicalLaneLean

structure EnergyReleaseRatePackage where
  crackExtension : ℝ
  potentialEnergyChange : ℝ
  criticalRate : ℝ
  griffithCriterion : Prop
  stabilityCondition : Prop

structure EnergyReleaseRateEvidence (E : EnergyReleaseRatePackage) where
  griffithCriterionClosed : E.griffithCriterion
  stabilityConditionClosed : E.stabilityCondition

def EnergyReleaseRateClosed (E : EnergyReleaseRatePackage) : Prop :=
  E.griffithCriterion ∧ E.stabilityCondition

theorem energy_release_rate_closed_from_evidence (E : EnergyReleaseRatePackage) (Ev : EnergyReleaseRateEvidence E) :
    EnergyReleaseRateClosed E := by
  exact And.intro Ev.griffithCriterionClosed Ev.stabilityConditionClosed

end BrittleFractureTheoremCanonicalLaneLean
end HautevilleHouse