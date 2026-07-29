import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrittleFractureTheoremCanonicalLaneLean

structure FractureEnergyFunctional where
  bulkEnergy : Type u
  surfaceEnergy : Type v
  crackSurface : Prop
  storedElasticEnergy : Prop
  fractureToughness : Prop
  energyBalance : Prop

structure FractureEnergyFunctionalEvidence (F : FractureEnergyFunctional) where
  crackSurfaceClosed : F.crackSurface
  storedElasticEnergyClosed : F.storedElasticEnergy
  fractureToughnessClosed : F.fractureToughness
  energyBalanceClosed : F.energyBalance

def FractureEnergyFunctionalClosed (F : FractureEnergyFunctional) : Prop :=
  F.crackSurface ∧ F.storedElasticEnergy ∧ F.fractureToughness ∧ F.energyBalance

theorem fracture_energy_functional_closed_from_evidence (F : FractureEnergyFunctional)
    (E : FractureEnergyFunctionalEvidence F) : FractureEnergyFunctionalClosed F := by
  exact And.intro E.crackSurfaceClosed
    (And.intro E.storedElasticEnergyClosed
      (And.intro E.fractureToughnessClosed E.energyBalanceClosed))

end BrittleFractureTheoremCanonicalLaneLean
end HautevilleHouse