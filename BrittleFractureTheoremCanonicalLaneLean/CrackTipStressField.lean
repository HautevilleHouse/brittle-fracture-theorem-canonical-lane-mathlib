import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrittleFractureTheoremCanonicalLaneLean

structure CrackTipStressFieldPackage where
  stressIntensityFactor : ℝ
  angularFunction : ℝ → ℝ
  nearTipAsymptoticExpansion : Prop
  modeIDecomposition : Prop
  modeIIDecomposition : Prop
  modeIIIDecomposition : Prop

structure CrackTipStressFieldEvidence (C : CrackTipStressFieldPackage) where
  nearTipExpansionClosed : C.nearTipAsymptoticExpansion
  modeIDecompositionClosed : C.modeIDecomposition
  modeIIDecompositionClosed : C.modeIIDecomposition
  modeIIIDecompositionClosed : C.modeIIIDecomposition

def CrackTipStressFieldClosed (C : CrackTipStressFieldPackage) : Prop :=
  C.nearTipAsymptoticExpansion ∧ C.modeIDecomposition ∧ C.modeIIDecomposition ∧ C.modeIIIDecomposition

theorem crack_tip_stress_field_closed_from_evidence (C : CrackTipStressFieldPackage) (E : CrackTipStressFieldEvidence C) :
    CrackTipStressFieldClosed C := by
  exact And.intro E.nearTipExpansionClosed (And.intro E.modeIDecompositionClosed (And.intro E.modeIIDecompositionClosed E.modeIIIDecompositionClosed))

end BrittleFractureTheoremCanonicalLaneLean
end HautevilleHouse