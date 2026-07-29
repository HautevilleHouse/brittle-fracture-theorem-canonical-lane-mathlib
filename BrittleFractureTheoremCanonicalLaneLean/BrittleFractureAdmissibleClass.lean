import HautevilleHouse.BrittleFractureTheoremCanonicalLaneLean.EnergyReleaseRate

namespace HautevilleHouse
namespace BrittleFractureTheoremCanonicalLaneLean

structure FractureObject where
  crackFront : Type u
  loadingHistory : Type v
  crackPath : Type w
  linearElasticProperty : Prop
  smallScaleYielding : Prop
  fractureToughness : Prop

structure AdmissibleClass where
  object : FractureObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (CrackTipFieldClosed A.object.linearElasticProperty) ∧
  (EnergyReleaseRateClosed A.object.smallScaleYielding) ∧
  (A.endpointSatisfied ∨ A.remainderRecorded)

end BrittleFractureTheoremCanonicalLaneLean
end HautevilleHouse