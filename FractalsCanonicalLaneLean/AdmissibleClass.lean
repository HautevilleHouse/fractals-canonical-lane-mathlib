import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FractalsCanonicalLaneLean

structure AdmissibleClass where
  object : FractalAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  FractalWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end FractalsCanonicalLaneLean
end HautevilleHouse