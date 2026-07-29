import canonicalLaneMathlib.AdmissibleClass
import BrittleFractureTheoremCanonicalLaneLean.FractureAdmissibleClass

namespace HautevilleHouse
namespace BrittleFractureTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  BrittleFractureWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusionEmpty A.object.crackPathRegular A.object.staticLoadCondition A.object.propagationCondition

end BrittleFractureTheoremCanonicalLaneLean
end HautevilleHouse