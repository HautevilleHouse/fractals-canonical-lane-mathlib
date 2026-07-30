import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FractalsCanonicalLaneLean

structure SelfSimilarityPackage (X : Type u) [TopologicalSpace X] [MetricSpace X] where
  fractalSet : Set X
  scaledCopies : List (X → X)
  unionOfCopies : Prop
  exactCovering : Prop
  dimensionConsistent : Prop

def SelfSimilarityClosed {X : Type u} [TopologicalSpace X] [MetricSpace X]
    (S : SelfSimilarityPackage X) : Prop :=
  S.unionOfCopies ∧ S.exactCovering ∧ S.dimensionConsistent

structure SelfSimilarityEvidence {X : Type u} [TopologicalSpace X] [MetricSpace X]
    (S : SelfSimilarityPackage X) where
  unionOfCopiesClosed : S.unionOfCopies
  exactCoveringClosed : S.exactCovering
  dimensionConsistentClosed : S.dimensionConsistent

theorem self_similarity_closed_from_evidence {X : Type u} [TopologicalSpace X] [MetricSpace X]
    (S : SelfSimilarityPackage X) (E : SelfSimilarityEvidence S) : SelfSimilarityClosed S := by
  exact And.intro E.unionOfCopiesClosed (And.intro E.exactCoveringClosed E.dimensionConsistentClosed)

end FractalsCanonicalLaneLean
end HautevilleHouse