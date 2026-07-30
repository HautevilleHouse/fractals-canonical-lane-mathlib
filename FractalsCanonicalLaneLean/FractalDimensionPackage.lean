import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FractalsCanonicalLaneLean

structure FractalDimensionPackage where
  hausdorffDimension : ℝ
  boxCountingDimension : ℝ
  packingDimension : ℝ
  hausdorffLeqBox : Prop
  boxLeqPacking : Prop
  dimensionsAgreeForSelfSimilar : Prop

structure FractalDimensionEvidence (D : FractalDimensionPackage) where
  hausdorffLeqBoxClosed : D.hausdorffLeqBox
  boxLeqPackingClosed : D.boxLeqPacking
  dimensionsAgreeForSelfSimilarClosed : D.dimensionsAgreeForSelfSimilar

def FractalDimensionClosed (D : FractalDimensionPackage) : Prop :=
  D.hausdorffLeqBox ∧ D.boxLeqPacking ∧ D.dimensionsAgreeForSelfSimilar

theorem fractal_dimension_closed_from_evidence (D : FractalDimensionPackage)
    (E : FractalDimensionEvidence D) : FractalDimensionClosed D := by
  exact And.intro E.hausdorffLeqBoxClosed
    (And.intro E.boxLeqPackingClosed E.dimensionsAgreeForSelfSimilarClosed)

end FractalsCanonicalLaneLean
end HautevilleHouse