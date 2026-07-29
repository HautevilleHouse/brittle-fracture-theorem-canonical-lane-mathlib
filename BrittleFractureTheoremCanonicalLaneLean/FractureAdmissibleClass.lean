import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrittleFractureTheoremCanonicalLaneLean

structure BrittleFractureObject where
  materialDomain : Type u
  crackGeometry : Type v
  stressField : Type w
  fractureToughness : Prop
  crackPropagation : Prop
  conclusion : fractureToughness → crackPropagation

structure BrittleFractureAdmittedObject where
  space : BrittleFractureObject
  crackPathRegular : Prop
  staticLoadCondition : Prop
  propagationCondition : Prop
  conclusionEmpty : crackPathRegular → staticLoadCondition → propagationCondition

def BrittleFractureWitnessClosed (O : BrittleFractureAdmittedObject) : Prop :=
  O.conclusionEmpty O.crackPathRegular O.staticLoadCondition O.propagationCondition

structure AdmissibleClass where
  object : BrittleFractureAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  BrittleFractureWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BrittleFractureTheoremCanonicalLaneLean
end HautevilleHouse