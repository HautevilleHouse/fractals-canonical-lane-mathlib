import FractalsCanonicalLaneLean.FractalAdmissibleClass

namespace HautevilleHouse
namespace FractalsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  FractalWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  have h : FractalWitnessClosed A.object := by
    exact A.object.conclusion
  exact h

end FractalsCanonicalLaneLean
end HautevilleHouse