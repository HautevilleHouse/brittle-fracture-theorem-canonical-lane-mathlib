import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrittleFractureTheoremCanonicalLaneLean

structure CrackPathStabilityPackage where
  crackFrontGeometry : Type u
  stressIntensityFactor : Type v
  energyReleaseRate : Type w
  crackPathStable : Prop
  criticalEnergyReleaseRate : Prop
  stabilityConditionSatisfied : Prop

structure CrackPathStabilityEvidence (C : CrackPathStabilityPackage) where
  crackPathStableClosed : C.crackPathStable
  criticalEnergyReleaseRateClosed : C.criticalEnergyReleaseRate
  stabilityConditionSatisfiedClosed : C.stabilityConditionSatisfied

def CrackPathStabilityClosed (C : CrackPathStabilityPackage) : Prop :=
  C.crackPathStable ∧ C.criticalEnergyReleaseRate ∧ C.stabilityConditionSatisfied

theorem crack_path_stability_closed_from_evidence
    (C : CrackPathStabilityPackage) (E : CrackPathStabilityEvidence C) :
    CrackPathStabilityClosed C := by
  exact And.intro E.crackPathStableClosed
    (And.intro E.criticalEnergyReleaseRateClosed E.stabilityConditionSatisfiedClosed)

end BrittleFractureTheoremCanonicalLaneLean
end HautevilleHouse
