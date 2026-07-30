import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FractalsCanonicalLaneLean

structure JuliaSetPackage where
  rationalMap : ℂ → ℂ
  juliaSet : Set ℂ
  filledIn : Bool
  connectivity : Prop
  measurableDynamics : Prop

structure JuliaSetEvidence (J : JuliaSetPackage) where
  connectivityClosed : J.connectivity
  measurableDynamicsClosed : J.measurableDynamics

def JuliaSetClosed (J : JuliaSetPackage) : Prop :=
  J.connectivity ∧ J.measurableDynamics

theorem julia_set_closed_from_evidence (J : JuliaSetPackage) (E : JuliaSetEvidence J) :
    JuliaSetClosed J := by
  exact And.intro E.connectivityClosed E.measurableDynamicsClosed

end FractalsCanonicalLaneLean
end HautevilleHouse