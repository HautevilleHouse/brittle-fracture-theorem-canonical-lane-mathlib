import HautevilleHouse.BrittleFractureTheoremCanonicalLaneLean.BrittleFractureAdmissibleClass

namespace HautevilleHouse
namespace BrittleFractureTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  (CrackTipFieldClosed A.object.linearElasticProperty) ∧
  (EnergyReleaseRateClosed A.object.smallScaleYielding)

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  unfold bridgeClosed
  have htip : CrackTipFieldClosed A.object.linearElasticProperty := A.object.closedCrackTipField
  have herg : EnergyReleaseRateClosed A.object.smallScaleYielding := A.object.closedEnergyReleaseRate
  exact And.intro htip herg

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  unfold gateClosed
  exact A.gateWitness

end BrittleFractureTheoremCanonicalLaneLean
end HautevilleHouse