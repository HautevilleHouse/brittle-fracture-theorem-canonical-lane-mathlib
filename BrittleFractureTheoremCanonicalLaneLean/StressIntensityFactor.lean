import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrittleFractureTheoremCanonicalLaneLean

structure StressIntensityFactorPackage where
  crackGeometry : Type u
  loadingConditions : Type v
  stressField : Type w
  stressIntensityFactorComputed : Prop
  modeIMixedMode : Prop
  KIcKnown : Prop

structure StressIntensityFactorEvidence (S : StressIntensityFactorPackage) where
  stressIntensityFactorComputedClosed : S.stressIntensityFactorComputed
  modeIMixedModeClosed : S.modeIMixedMode
  KIcKnownClosed : S.KIcKnown

def StressIntensityFactorClosed (S : StressIntensityFactorPackage) : Prop :=
  S.stressIntensityFactorComputed ∧ S.modeIMixedMode ∧ S.KIcKnown

theorem stress_intensity_factor_closed_from_evidence
    (S : StressIntensityFactorPackage) (E : StressIntensityFactorEvidence S) :
    StressIntensityFactorClosed S := by
  exact And.intro E.stressIntensityFactorComputedClosed
    (And.intro E.modeIMixedModeClosed E.KIcKnownClosed)

end BrittleFractureTheoremCanonicalLaneLean
end HautevilleHouse
