import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrittleFractureTheoremCanonicalLaneLean

structure CrackTipPlasticZonePackage where
  plasticZoneSize : Prop
  yieldStress : Prop
  smallScaleYielding : Prop
  fractureToughnessValidity : Prop
  yieldStressTerm : yieldStress
  plasticZoneSizeTerm : plasticZoneSize
  smallScaleYieldingTerm : smallScaleYielding
  fractureToughnessValidityTerm : fractureToughnessValidity

structure CrackTipPlasticZoneEvidence (C : CrackTipPlasticZonePackage) where
  plasticZoneSizeClosed : C.plasticZoneSize
  yieldStressClosed : C.yieldStress
  smallScaleYieldingClosed : C.smallScaleYielding
  fractureToughnessValidityClosed : C.fractureToughnessValidity

def CrackTipPlasticZoneClosed (C : CrackTipPlasticZonePackage) : Prop :=
  C.plasticZoneSize ∧ C.yieldStress ∧ C.smallScaleYielding ∧ C.fractureToughnessValidity

theorem crack_tip_plastic_zone_closed_from_evidence (C : CrackTipPlasticZonePackage)
    (E : CrackTipPlasticZoneEvidence C) : CrackTipPlasticZoneClosed C := by
  exact And.intro E.plasticZoneSizeClosed
    (And.intro E.yieldStressClosed
      (And.intro E.smallScaleYieldingClosed E.fractureToughnessValidityClosed))

end BrittleFractureTheoremCanonicalLaneLean
end HautevilleHouse