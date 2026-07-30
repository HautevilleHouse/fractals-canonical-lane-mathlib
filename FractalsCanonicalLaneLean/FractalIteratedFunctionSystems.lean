import FractalsCanonicalLaneLean.FractalAdmissibleClass

namespace HautevilleHouse
namespace FractalsCanonicalLaneLean

structure IFS where
  space : FractalSpace
  maps : List (FractalSpace.carrier → FractalSpace.carrier)
  contractions : ∀ f ∈ maps, LipschitzWith (fun x y => (dist (f x) (f y)) ≤ (0.5 : ℝ) * dist x y)

def IFSattractor (ifs : IFS) : Set (IFS.space.carrier) := by
  sorry

structure IFSAdmissibleEvidence (ifs : IFS) where
  attractorExists : Nonempty (Set (ifs.space.carrier))
  attractorCompact : IsCompact (IFSattractor ifs)
  attractorSelfSimilar : SelfSimilar (IFSattractor ifs) ifs.maps

end FractalsCanonicalLaneLean
end HautevilleHouse