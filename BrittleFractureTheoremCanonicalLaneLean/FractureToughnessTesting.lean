import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrittleFractureTheoremCanonicalLaneLean

structure FractureToughnessTestingPackage where
  specimenGeometry : Type u
  loadingCondition : Type v
  criticalStressIntensity : Prop
  thicknessRequirement : Prop
  planeStrainCondition : Prop
  criticalStressIntensityTerm : criticalStressIntensity
  thicknessRequirementTerm : thicknessRequirement
  planeStrainConditionTerm : planeStrainCondition

structure FractureToughnessTestingEvidence (T : FractureToughnessTestingPackage) where
  criticalStressIntensityClosed : T.criticalStressIntensity
  thicknessRequirementClosed : T.thicknessRequirement
  planeStrainConditionClosed : T.planeStrainCondition

def FractureToughnessTestingClosed (T : FractureToughnessTestingPackage) : Prop :=
  T.criticalStressIntensity ∧ T.thicknessRequirement ∧ T.planeStrainCondition

theorem fracture_toughness_testing_closed_from_evidence
    (T : FractureToughnessTestingPackage) (E : FractureToughnessTestingEvidence T) :
    FractureToughnessTestingClosed T := by
  exact And.intro E.criticalStressIntensityClosed
    (And.intro E.thicknessRequirementClosed E.planeStrainConditionClosed)

end BrittleFractureTheoremCanonicalLaneLean
end HautevilleHouse