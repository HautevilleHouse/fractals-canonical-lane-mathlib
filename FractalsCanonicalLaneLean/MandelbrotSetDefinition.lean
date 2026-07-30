import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FractalsCanonicalLaneLean

structure MandelbrotSetPackage where
  complexPlane : Type u
  seed : complexPlane
  iterationMap : complexPlane → complexPlane
  escapeRadius : ℝ
  boundedOrbit : Prop

structure MandelbrotSetEvidence (M : MandelbrotSetPackage) where
  escapeRadiusPositive : M.escapeRadius > 0
  boundedOrbitDefined : M.boundedOrbit

def MandelbrotSetClosed (M : MandelbrotSetPackage) : Prop :=
  M.boundedOrbit ∧ M.escapeRadius > 0

theorem mandelbrot_set_closed_from_evidence (M : MandelbrotSetPackage) (E : MandelbrotSetEvidence M) : MandelbrotSetClosed M := by
  exact And.intro E.boundedOrbitDefined E.escapeRadiusPositive

end FractalsCanonicalLaneLean
end HautevilleHouse
