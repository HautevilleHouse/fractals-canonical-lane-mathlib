import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FractalsCanonicalLaneLean

structure HausdorffDimensionPackage where
  metricSpace : Type u
  topology : TopologicalSpace metricSpace
  dimension : ℝ
  dimensionNonnegative : Prop
  fractalSet : Set metricSpace
  coveringDefined : Prop

def HausdorffDimensionClosed (H : HausdorffDimensionPackage) : Prop :=
  H.dimensionNonnegative ∧ H.coveringDefined

structure HausdorffDimensionEvidence (H : HausdorffDimensionPackage) where
  dimensionNonnegativeClosed : H.dimensionNonnegative
  coveringDefinedClosed : H.coveringDefined

theorem hausdorff_dimension_closed_from_evidence (H : HausdorffDimensionPackage)
    (E : HausdorffDimensionEvidence H) : HausdorffDimensionClosed H := by
  exact And.intro E.dimensionNonnegativeClosed E.coveringDefinedClosed

end FractalsCanonicalLaneLean
end HautevilleHouse