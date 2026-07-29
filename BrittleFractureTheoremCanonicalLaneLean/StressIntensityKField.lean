import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrittleFractureTheoremCanonicalLaneLean

structure StressIntensityKField where
  modeIDominant : Type u
  stressSingularity : Prop
  asymptoticField : Prop
  KFactorDefined : Prop
  crackTipCoordinates : Prop

structure StressIntensityKFieldEvidence (S : StressIntensityKField) where
  stressSingularityClosed : S.stressSingularity
  asymptoticFieldClosed : S.asymptoticField
  KFactorDefinedClosed : S.KFactorDefined
  crackTipCoordinatesClosed : S.crackTipCoordinates

def StressIntensityKFieldClosed (S : StressIntensityKField) : Prop :=
  S.stressSingularity ∧ S.asymptoticField ∧ S.KFactorDefined ∧ S.crackTipCoordinates

theorem stress_intensity_k_field_closed_from_evidence (S : StressIntensityKField)
    (E : StressIntensityKFieldEvidence S) : StressIntensityKFieldClosed S := by
  exact And.intro E.stressSingularityClosed
    (And.intro E.asymptoticFieldClosed
      (And.intro E.KFactorDefinedClosed E.crackTipCoordinatesClosed))

end BrittleFractureTheoremCanonicalLaneLean
end HautevilleHouse