import HautevilleHouse.BrittleFractureTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BrittleFractureTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def fractureProjection : Projection FractureEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem fracture_projection_idempotent (x : FractureEndgameState) :
    fractureProjection.toFun (fractureProjection.toFun x) = fractureProjection.toFun x := by
  exact fractureProjection.idempotent x

end BrittleFractureTheoremCanonicalLaneLean
end HautevilleHouse