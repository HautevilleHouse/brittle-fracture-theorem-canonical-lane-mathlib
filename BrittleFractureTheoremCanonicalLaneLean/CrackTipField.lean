import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace BrittleFractureTheoremCanonicalLaneLean

structure CrackTipFieldPackage where
  material : Type u
  crackGeometry : Type v
  stressField: Type w
  stressIntensityFactorK1 : Type x
  stressIntensityFactorK2 : Type x
  williamsExpansion : Type y
  linearElasticMaterial : Prop
  planeStrain : Prop
  asymptoticsValidated : Prop
  K1DerivedFromField : Prop
  K2DerivedFromField : Prop

structure CrackTipFieldEvidence (C : CrackTipFieldPackage) where
  linearElasticMaterialClosed : C.linearElasticMaterial
  planeStrainClosed : C.planeStrain
  asymptoticsValidatedClosed : C.asymptoticsValidated
  K1DerivedFromFieldClosed : C.K1DerivedFromField
  K2DerivedFromFieldClosed : C.K2DerivedFromField

def CrackTipFieldClosed (C : CrackTipFieldPackage) : Prop :=
  C.linearElasticMaterial ∧
  C.planeStrain ∧
  C.asymptoticsValidated ∧
  C.K1DerivedFromField ∧
  C.K2DerivedFromField

theorem crack_tip_field_closed_from_evidence
    (C : CrackTipFieldPackage) (E : CrackTipFieldEvidence C) :
    CrackTipFieldClosed C := by
  exact And.intro E.linearElasticMaterialClosed
    (And.intro E.planeStrainClosed
      (And.intro E.asymptoticsValidatedClosed
        (And.intro E.K1DerivedFromFieldClosed E.K2DerivedFromFieldClosed)))

end BrittleFractureTheoremCanonicalLaneLean
end HautevilleHouse