import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrittleFractureTheoremCanonicalLaneLean

structure FractureCriterionPackage where
  stressIntensityFactorMax : ℝ
  fractureToughness : ℝ
  criterionInequality : stressIntensityFactorMax ≤ fractureToughness

structure FractureCriterionEvidence (C : FractureCriterionPackage) where
  stressIntensityFactorMaxComputed : C.stressIntensityFactorMax > 0
  fractureToughnessMaterial : C.fractureToughness > 0
  criterionInequalityClosed : C.criterionInequality

def FractureCriterionClosed (C : FractureCriterionPackage) : Prop :=
  C.stressIntensityFactorMax > 0 ∧ C.fractureToughness > 0 ∧ C.criterionInequality

theorem fracture_criterion_closed_from_evidence (C : FractureCriterionPackage)
    (E : FractureCriterionEvidence C) : FractureCriterionClosed C := by
  exact And.intro E.stressIntensityFactorMaxComputed
    (And.intro E.fractureToughnessMaterial E.criterionInequalityClosed)

end BrittleFractureTheoremCanonicalLaneLean
end HautevilleHouse