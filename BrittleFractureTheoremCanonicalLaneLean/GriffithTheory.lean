import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrittleFractureTheoremCanonicalLaneLean

structure GriffithTheoryPackage where
  surfaceEnergy : ℝ
  elasticEnergyReleased : ℝ
  energyBalance : elasticEnergyReleased ≥ surfaceEnergy
  criticalCrackLength : ℝ

structure GriffithTheoryEvidence (G : GriffithTheoryPackage) where
  surfaceEnergyPositive : G.surfaceEnergy > 0
  elasticEnergyReleasedPositive : G.elasticEnergyReleased > 0
  energyBalanceClosed : G.energyBalance
  criticalCrackLengthFinite : G.criticalCrackLength > 0

def GriffithTheoryClosed (G : GriffithTheoryPackage) : Prop :=
  G.surfaceEnergy > 0 ∧ G.elasticEnergyReleased > 0 ∧ G.energyBalance ∧ G.criticalCrackLength > 0

theorem griffith_theory_closed_from_evidence (G : GriffithTheoryPackage)
    (E : GriffithTheoryEvidence G) : GriffithTheoryClosed G := by
  exact And.intro E.surfaceEnergyPositive
    (And.intro E.elasticEnergyReleasedPositive
      (And.intro E.energyBalanceClosed E.criticalCrackLengthFinite))

end BrittleFractureTheoremCanonicalLaneLean
end HautevilleHouse