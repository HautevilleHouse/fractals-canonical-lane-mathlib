import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FractalsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  FractalWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end FractalsCanonicalLaneLean
end HautevilleHouse