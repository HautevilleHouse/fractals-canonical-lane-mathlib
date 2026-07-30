import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FractalsCanonicalLaneLean

structure FractalSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  metric : carrier → carrier → ℝ
  isMetricSpace : MetricSpace carrier
  hausdorffDimension : ℝ
  isFractal : Prop

structure FractalAdmittedObject where
  space : FractalSpace
  fractalDefinition : Prop
  selfSimilarity : Prop
  conclusion : fractalDefinition ∧ selfSimilarity

def FractalWitnessClosed (O : FractalAdmittedObject) : Prop :=
  O.fractalDefinition ∧ O.selfSimilarity

end FractalsCanonicalLaneLean
end HautevilleHouse