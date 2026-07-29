import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BrittleFractureTheoremCanonicalLaneLean.CrackPathStability
import HautevilleHouse.BrittleFractureTheoremCanonicalLaneLean.StressIntensityFactor
import HautevilleHouse.BrittleFractureTheoremCanonicalLaneLean.EnergyReleaseRateCriterion

namespace HautevilleHouse
namespace BrittleFractureTheoremCanonicalLaneLean

def ConstrainedBrittleFractureClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_brittle_fracture_endgame (A : AdmissibleClass) :
    ConstrainedBrittleFractureClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BrittleFractureTheoremCanonicalLaneLean
end HautevilleHouse
