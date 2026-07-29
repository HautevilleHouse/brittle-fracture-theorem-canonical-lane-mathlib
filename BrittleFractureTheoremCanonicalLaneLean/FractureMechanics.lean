import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrittleFractureTheoremCanonicalLaneLean

structure FractureMechanicsPackage where
  stressIntensityFactor : Type u
  fractureToughness : Prop
  crackGrowthCriterion : Prop
  energyReleaseRate : Type v
  griffithCriterion : crackGrowthCriterion → energyReleaseRate → fractureToughness

structure FractureMechanicsEvidence (F : FractureMechanicsPackage) where
  stressIntensityFactorClosed : F.stressIntensityFactor
  fractureToughnessClosed : F.fractureToughness
  crackGrowthCriterionClosed : F.crackGrowthCriterion
  energyReleaseRateClosed : F.energyReleaseRate
  griffithCriterionClosed : F.griffithCriterion F.crackGrowthCriterionClosed F.energyReleaseRateClosed

def FractureMechanicsClosed (F : FractureMechanicsPackage) : Prop :=
  F.stressIntensityFactor ∧ F.fractureToughness ∧ F.crackGrowthCriterion ∧ F.energyReleaseRate

theorem fracture_mechanics_closed_from_evidence (F : FractureMechanicsPackage)
    (E : FractureMechanicsEvidence F) : FractureMechanicsClosed F := by
  exact And.intro E.stressIntensityFactorClosed
    (And.intro E.fractureToughnessClosed
      (And.intro E.crackGrowthCriterionClosed E.energyReleaseRateClosed))

end BrittleFractureTheoremCanonicalLaneLean
end HautevilleHouse