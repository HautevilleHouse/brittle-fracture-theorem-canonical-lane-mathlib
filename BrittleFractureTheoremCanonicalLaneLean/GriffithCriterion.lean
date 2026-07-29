import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrittleFractureTheoremCanonicalLaneLean

structure GriffithCriterion where
  criticalEnergyReleaseRate : Type u
  crackExtensionCondition : Prop
  fractureEnergyBalance : Prop
  thermodynamicDrivingForce : Prop
  stabilityCondition : Prop

structure GriffithCriterionEvidence (G : GriffithCriterion) where
  crackExtensionConditionClosed : G.crackExtensionCondition
  fractureEnergyBalanceClosed : G.fractureEnergyBalance
  thermodynamicDrivingForceClosed : G.thermodynamicDrivingForce
  stabilityConditionClosed : G.stabilityCondition

def GriffithCriterionClosed (G : GriffithCriterion) : Prop :=
  G.crackExtensionCondition ∧ G.fractureEnergyBalance ∧
  G.thermodynamicDrivingForce ∧ G.stabilityCondition

theorem griffith_criterion_closed_from_evidence (G : GriffithCriterion)
    (E : GriffithCriterionEvidence G) : GriffithCriterionClosed G := by
  exact And.intro E.crackExtensionConditionClosed
    (And.intro E.fractureEnergyBalanceClosed
      (And.intro E.thermodynamicDrivingForceClosed E.stabilityConditionClosed))

end BrittleFractureTheoremCanonicalLaneLean
end HautevilleHouse