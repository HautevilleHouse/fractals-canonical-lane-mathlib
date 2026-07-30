import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FractalsCanonicalLaneLean

structure HausdorffDimensionPackage where
  metricSpace : Type u
  fractalSet : Set metricSpace
  hausdorffDimension : ℝ
  coverBasedDefinition : Prop
  scalingProperty : Prop

structure HausdorffDimensionEvidence (H : HausdorffDimensionPackage) where
  coverBasedDefinitionClosed : H.coverBasedDefinition
  scalingPropertyClosed : H.scalingProperty

def HausdorffDimensionClosed (H : HausdorffDimensionPackage) : Prop :=
  H.coverBasedDefinition ∧ H.scalingProperty

theorem hausdorff_dimension_closed_from_evidence (H : HausdorffDimensionPackage) (E : HausdorffDimensionEvidence H) :
    HausdorffDimensionClosed H := by
  exact And.intro E.coverBasedDefinitionClosed E.scalingPropertyClosed

end FractalsCanonicalLaneLean
end HautevilleHouse