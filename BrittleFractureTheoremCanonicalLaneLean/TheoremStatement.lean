import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrittleFractureTheoremCanonicalLaneLean

structure BrittleFractureAdmittedObject where
  fractureEnergy : Prop
  crackPathRegular : Prop
  conclusion : fractureEnergy ∧ crackPathRegular

def BrittleFractureWitnessClosed (O : BrittleFractureAdmittedObject) : Prop :=
  O.fractureEnergy ∧ O.crackPathRegular

structure BrittleFractureTheorem where
  statement : Prop
  admittedClass : AdmissibleClass
  proof : statement

end BrittleFractureTheoremCanonicalLaneLean
end HautevilleHouse
