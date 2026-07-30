import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FractalsCanonicalLaneLean

structure HausdorffDimensionPackage where
  metricSpace : Type u
  metric : MetricSpace metricSpace
  dimension : ℝ
  fractal : Prop
  sdefined : Prop
  hausdorffMeasure : Prop
  dimensionProperty : Prop

structure HausdorffDimensionEvidence (H : HausdorffDimensionPackage) where
  dimensionPropertyClosed : H.dimensionProperty

structure BoxCountingDimensionPackage where
  metricSpace : Type u
  metric : MetricSpace metricSpace
  dimension : ℝ
  fractal : Prop
  boxCount : ℕ → ℕ
  limitExists : Prop
  dimensionComputed : Prop

structure BoxCountingDimensionEvidence (B : BoxCountingDimensionPackage) where
  limitExistsClosed : B.limitExists
  dimensionComputedClosed : B.dimensionComputed

def HausdorffDimensionClosed (H : HausdorffDimensionPackage) : Prop :=
  H.dimensionProperty

def BoxCountingDimensionClosed (B : BoxCountingDimensionPackage) : Prop :=
  B.limitExists ∧ B.dimensionComputed

theorem hausdorff_dimension_closed_from_evidence (H : HausdorffDimensionPackage)
    (E : HausdorffDimensionEvidence H) : HausdorffDimensionClosed H :=
  E.dimensionPropertyClosed

theorem box_counting_dimension_closed_from_evidence (B : BoxCountingDimensionPackage)
    (E : BoxCountingDimensionEvidence B) : BoxCountingDimensionClosed B :=
  And.intro E.limitExistsClosed E.dimensionComputedClosed

end FractalsCanonicalLaneLean
end HautevilleHouse