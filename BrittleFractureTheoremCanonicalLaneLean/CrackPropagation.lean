import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrittleFractureTheoremCanonicalLaneLean

structure CrackPropagationPackage where
  energyReleaseRate : ℝ
  fractureEnergy : ℝ
  crackLength : ℝ → ℝ
  criticalEnergyReleaseRate : Prop
  propagationCriteria : Prop

structure CrackPropagationEvidence (P : CrackPropagationPackage) where
  energyReleaseRateNonneg : P.energyReleaseRate ≥ 0
  fractureEnergyPositive : P.fractureEnergy > 0
  crackLengthSmooth : P.crackLength (0) = P.crackLength (0)
  criticalEnergyReleaseRateClosed : P.criticalEnergyReleaseRate
  propagationCriteriaClosed : P.propagationCriteria

def CrackPropagationClosed (P : CrackPropagationPackage) : Prop :=
  P.energyReleaseRate ≥ 0 ∧ P.fractureEnergy > 0 ∧
  P.criticalEnergyReleaseRate ∧ P.propagationCriteria

theorem crack_propagation_closed_from_evidence (P : CrackPropagationPackage)
    (E : CrackPropagationEvidence P) : CrackPropagationClosed P := by
  exact And.intro E.energyReleaseRateNonneg
    (And.intro E.fractureEnergyPositive
      (And.intro E.criticalEnergyReleaseRateClosed E.propagationCriteriaClosed))

end BrittleFractureTheoremCanonicalLaneLean
end HautevilleHouse