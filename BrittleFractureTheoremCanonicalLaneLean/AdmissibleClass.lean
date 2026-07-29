import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BrittleFractureTheoremCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace BrittleFractureTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : FractureAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  FractureWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BrittleFractureTheoremCanonicalLaneLean
end HautevilleHouse