import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrittleFractureTheoremCanonicalLaneLean

structure EnergyReleaseRateCriterionPackage where
  energyReleaseRate : Type u
  criticalEnergyReleaseRate : Type v
  crackExtensionPredicted : Prop
  energyBalanceSatisfied : Prop
  rateExceedsCritical : Prop

structure EnergyReleaseRateCriterionEvidence (E : EnergyReleaseRateCriterionPackage) where
  crackExtensionPredictedClosed : E.crackExtensionPredicted
  energyBalanceSatisfiedClosed : E.energyBalanceSatisfied
  rateExceedsCriticalClosed : E.rateExceedsCritical

def EnergyReleaseRateCriterionClosed (E : EnergyReleaseRateCriterionPackage) : Prop :=
  E.crackExtensionPredicted ∧ E.energyBalanceSatisfied ∧ E.rateExceedsCritical

theorem energy_release_rate_criterion_closed_from_evidence
    (E : EnergyReleaseRateCriterionPackage) (Ev : EnergyReleaseRateCriterionEvidence E) :
    EnergyReleaseRateCriterionClosed E := by
  exact And.intro Ev.crackExtensionPredictedClosed
    (And.intro Ev.energyBalanceSatisfiedClosed Ev.rateExceedsCriticalClosed)

end BrittleFractureTheoremCanonicalLaneLean
end HautevilleHouse
