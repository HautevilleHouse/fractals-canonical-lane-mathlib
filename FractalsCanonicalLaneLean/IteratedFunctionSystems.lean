import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FractalsCanonicalLaneLean

structure IFS where
  space : Type u
  metric : space → space → ℝ
  contractionMaps : List (space → space)
  contractionRatios : List ℝ
  nonemptyCompactAttractor : Prop
  attractorSet : Set space

structure IFSEvidence (I : IFS) where
  nonemptyCompactAttractorClosed : I.nonemptyCompactAttractor
  attractorSetClosed : I.attractorSet ≠ ∅

def IFSClosed (I : IFS) : Prop :=
  I.nonemptyCompactAttractor ∧ I.attractorSet ≠ ∅

theorem ifs_closed_from_evidence (I : IFS) (E : IFSEvidence I) : IFSClosed I := by
  exact And.intro E.nonemptyCompactAttractorClosed E.attractorSetClosed

end FractalsCanonicalLaneLean
end HautevilleHouse