import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FractalsCanonicalLaneLean

structure JuliaSetPackage where
  complexPlane : Type u
  polynomial : ℂ → ℂ
  juliaSet : Set ℂ
  filledJuliaSet : Set ℂ
  juliaSetCompact : Prop
  juliaSetCompletelyInvariant : Prop
  juliaSetRepellingPeriodicDense : Prop

def JuliaSetClosed (P : JuliaSetPackage) : Prop :=
  P.juliaSetCompact ∧ P.juliaSetCompletelyInvariant ∧ P.juliaSetRepellingPeriodicDense

structure JuliaSetEvidence (P : JuliaSetPackage) where
  juliaSetCompactClosed : P.juliaSetCompact
  juliaSetCompletelyInvariantClosed : P.juliaSetCompletelyInvariant
  juliaSetRepellingPeriodicDenseClosed : P.juliaSetRepellingPeriodicDense

theorem julia_set_closed_from_evidence (P : JuliaSetPackage) (E : JuliaSetEvidence P) :
    JuliaSetClosed P := by
  exact And.intro E.juliaSetCompactClosed
    (And.intro E.juliaSetCompletelyInvariantClosed E.juliaSetRepellingPeriodicDenseClosed)

end FractalsCanonicalLaneLean
end HautevilleHouse