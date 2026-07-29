import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrittleFractureTheoremCanonicalLaneLean

structure CrackTipAsymptoticField where
  modeIField : Type u
  modeIIField : Type v
  modeIIIField : Type w
  williamsExpansion : Prop
  stressIntensityFactors : Prop
  tStress : Prop

structure CrackTipAsymptoticFieldEvidence (C : CrackTipAsymptoticField) where
  williamsExpansionClosed : C.williamsExpansion
  stressIntensityFactorsClosed : C.stressIntensityFactors
  tStressClosed : C.tStress

def CrackTipAsymptoticFieldClosed (C : CrackTipAsymptoticField) : Prop :=
  C.williamsExpansion ∧ C.stressIntensityFactors ∧ C.tStress

theorem crack_tip_asymptotic_field_closed_from_evidence (C : CrackTipAsymptoticField)
    (E : CrackTipAsymptoticFieldEvidence C) : CrackTipAsymptoticFieldClosed C := by
  exact And.intro E.williamsExpansionClosed
    (And.intro E.stressIntensityFactorsClosed E.tStressClosed)

end BrittleFractureTheoremCanonicalLaneLean
end HautevilleHouse