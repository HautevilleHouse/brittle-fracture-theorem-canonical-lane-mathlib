import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrittleFractureTheoremCanonicalLaneLean

structure BrittleFractureObject where
  materialDomain : Type u
  crackTip : materialDomain
  stressIntensityFactor : ℝ
  fractureToughness : ℝ
  loadParameter : ℝ
  criticalLoad : Prop
  crackPropagationCondition : Prop

end BrittleFractureTheoremCanonicalLaneLean
end HautevilleHouse