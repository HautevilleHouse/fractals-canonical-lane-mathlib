import canonicalLaneMathlib.AdmissibleClass
import FractalsCanonicalLaneLean.IteratedFunctionSystem

namespace HautevilleHouse
namespace FractalsCanonicalLaneLean

structure OpenSetCondition (X : Type u) [MetricSpace X] (IFS : IteratedFunctionSystem X) where
  openSet : Set X
  openSet_isOpen : IsOpen openSet
  nonempty : openSet.Nonempty
  pairwiseDisjoint : ∀ i j, i ≠ j → IFS.maps.get i '' openSet ∩ IFS.maps.get j '' openSet = ∅
  imageSubset : ∀ f ∈ IFS.maps, f '' openSet ⊆ openSet

def OSCClosed (X : Type u) [MetricSpace X] (IFS : IteratedFunctionSystem X) : Prop :=
  Nonempty (OpenSetCondition X IFS)

theorem osc_closed_from_condition (X : Type u) [MetricSpace X] (IFS : IteratedFunctionSystem X)
    (h : OpenSetCondition X IFS) : OSCClosed X IFS := by
  exact ⟨h⟩

end FractalsCanonicalLaneLean
end HautevilleHouse