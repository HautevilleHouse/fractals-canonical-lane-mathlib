import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FractalsCanonicalLaneLean

structure SelfSimilarityStructurePackage where
  metricSpace : Type u
  fractalSet : Set metricSpace
  scalingFactors : List ℝ
  exactSelfSimilarity : Prop
  approximateSelfSimilarity : Prop

structure SelfSimilarityStructureEvidence (S : SelfSimilarityStructurePackage) where
  exactSelfSimilarityClosed : S.exactSelfSimilarity
  approximateSelfSimilarityClosed : S.approximateSelfSimilarity

def SelfSimilarityStructureClosed (S : SelfSimilarityStructurePackage) : Prop :=
  S.exactSelfSimilarity ∧ S.approximateSelfSimilarity

theorem self_similarity_structure_closed_from_evidence (S : SelfSimilarityStructurePackage) (E : SelfSimilarityStructureEvidence S) :
    SelfSimilarityStructureClosed S := by
  exact And.intro E.exactSelfSimilarityClosed E.approximateSelfSimilarityClosed

end FractalsCanonicalLaneLean
end HautevilleHouse