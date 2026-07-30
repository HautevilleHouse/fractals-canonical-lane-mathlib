import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FractalsCanonicalLaneLean

structure HausdorffDimensionPackage where
  metricSpace : Type u
  distance : metricSpace → metricSpace → ℝ
  dimension : ℝ
  coveringFamily : Set (Set metricSpace)
  hausdorffMeasureCondition : Prop
  dimensionBound : Prop

structure HausdorffDimensionEvidence (H : HausdorffDimensionPackage) where
  dimensionBoundClosed : H.dimensionBound
  hausdorffMeasureConditionClosed : H.hausdorffMeasureCondition

def HausdorffDimensionClosed (H : HausdorffDimensionPackage) : Prop :=
  H.dimensionBound ∧ H.hausdorffMeasureCondition

theorem hausdorff_dimension_closed_from_evidence
    (H : HausdorffDimensionPackage)
    (E : HausdorffDimensionEvidence H) : HausdorffDimensionClosed H :=
  And.intro E.dimensionBoundClosed E.hausdorffMeasureConditionClosed

end FractalsCanonicalLaneLean
end HautevilleHouse