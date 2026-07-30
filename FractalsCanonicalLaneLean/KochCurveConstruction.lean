import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FractalsCanonicalLaneLean

structure KochCurvePackage where
  curveType : Type u
  initiator : curveType
  generator : curveType
  iterations : ℕ
  curveAtIteration : curveType

structure KochCurveEvidence (K : KochCurvePackage) where
  initiatorDefined : K.initiator = K.curveAtIteration
  generatorApplied : Prop
  limitCurveExists : Prop

def KochCurveClosed (K : KochCurvePackage) : Prop :=
  K.initiator = K.curveAtIteration ∧ K.generator ∉ K.curveAtIteration

theorem koch_curve_closed_from_evidence (K : KochCurvePackage) (E : KochCurveEvidence K) : KochCurveClosed K := by
  exact And.intro E.initiatorDefined E.generatorApplied

end FractalsCanonicalLaneLean
end HautevilleHouse
