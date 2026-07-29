import HautevilleHouse.BrittleFractureTheoremCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace BrittleFractureTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure FractureBody where
  carrier : Type
  topology : TopologicalSpace carrier

structure FractureAdmittedObject where
  space : FractureBody
  crackGeometry : Prop
  boundaryConditions : Prop
  energyFunctional : Prop
  criticalityCondition : Prop
  conclusion : criticalityCondition

structure FractureEndgameState where
  object : FractureAdmittedObject

def FractureWitnessClosed (O : FractureAdmittedObject) : Prop :=
  O.criticalityCondition

end BrittleFractureTheoremCanonicalLaneLean
end HautevilleHouse