import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FractalsCanonicalLaneLean

structure MandelbrotSetPackage where
  parameterPlane : Type u
  mandelbrotSet : Set parameterPlane
  connectedness : Prop
  selfSimilarity : Prop
  localConnectivity : Prop
  
structure MandelbrotSetEvidence (M : MandelbrotSetPackage) where
  connectednessClosed : M.connectedness
  selfSimilarityClosed : M.selfSimilarity
  localConnectivityClosed : M.localConnectivity

def MandelbrotSetClosed (M : MandelbrotSetPackage) : Prop :=
  M.connectedness ∧ M.selfSimilarity ∧ M.localConnectivity

theorem mandelbrot_set_closed_from_evidence (M : MandelbrotSetPackage) (E : MandelbrotSetEvidence M) :
    MandelbrotSetClosed M := by
  exact And.intro E.connectednessClosed (And.intro E.selfSimilarityClosed E.localConnectivityClosed)

end FractalsCanonicalLaneLean
end HautevilleHouse