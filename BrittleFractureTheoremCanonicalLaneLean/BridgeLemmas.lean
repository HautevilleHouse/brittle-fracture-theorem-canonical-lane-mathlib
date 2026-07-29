import HautevilleHouse.BrittleFractureTheoremCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace BrittleFractureTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  FractureWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end BrittleFractureTheoremCanonicalLaneLean
end HautevilleHouse