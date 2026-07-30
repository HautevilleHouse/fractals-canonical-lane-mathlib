import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FractalsCanonicalLaneLean

structure IteratedFunctionSystemPackage where
  space : Type u
  contractions : List (space → space)
  attractor : Set space
  openSetCondition : Prop
  uniqueAttractor : Prop

structure IteratedFunctionSystemEvidence (I : IteratedFunctionSystemPackage) where
  openSetConditionClosed : I.openSetCondition
  uniqueAttractorClosed : I.uniqueAttractor

def IteratedFunctionSystemClosed (I : IteratedFunctionSystemPackage) : Prop :=
  I.openSetCondition ∧ I.uniqueAttractor

theorem iterated_function_system_closed_from_evidence (I : IteratedFunctionSystemPackage) (E : IteratedFunctionSystemEvidence I) :
    IteratedFunctionSystemClosed I := by
  exact And.intro E.openSetConditionClosed E.uniqueAttractorClosed

end FractalsCanonicalLaneLean
end HautevilleHouse