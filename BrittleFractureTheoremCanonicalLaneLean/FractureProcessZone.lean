import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrittleFractureTheoremCanonicalLaneLean

structure FractureProcessZone where
  damageZone : Type u
  cohesiveTraction : Prop
  softeningLaw : Prop
  processZoneSize : Prop
  smallScaleYielding : Prop

structure FractureProcessZoneEvidence (F : FractureProcessZone) where
  cohesiveTractionClosed : F.cohesiveTraction
  softeningLawClosed : F.softeningLaw
  processZoneSizeClosed : F.processZoneSize
  smallScaleYieldingClosed : F.smallScaleYielding

def FractureProcessZoneClosed (F : FractureProcessZone) : Prop :=
  F.cohesiveTraction ∧ F.softeningLaw ∧ F.processZoneSize ∧ F.smallScaleYielding

theorem fracture_process_zone_closed_from_evidence (F : FractureProcessZone)
    (E : FractureProcessZoneEvidence F) : FractureProcessZoneClosed F := by
  exact And.intro E.cohesiveTractionClosed
    (And.intro E.softeningLawClosed
      (And.intro E.processZoneSizeClosed E.smallScaleYieldingClosed))

end BrittleFractureTheoremCanonicalLaneLean
end HautevilleHouse