import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FractalsCanonicalLaneLean

structure MandelbrotSetPackage where
  complexPlane : Type u
  mandelbrotSet : Set ℂ
  mandelbrotSetCompact : Prop
  mandelbrotSetConnected : Prop
  mandelbrotLocallyConnected : Prop
  hyperbolicComponentsDense : Prop

def MandelbrotSetClosed (P : MandelbrotSetPackage) : Prop :=
  P.mandelbrotSetCompact ∧ P.mandelbrotSetConnected ∧
  P.mandelbrotLocallyConnected ∧ P.hyperbolicComponentsDense

structure MandelbrotSetEvidence (P : MandelbrotSetPackage) where
  mandelbrotSetCompactClosed : P.mandelbrotSetCompact
  mandelbrotSetConnectedClosed : P.mandelbrotSetConnected
  mandelbrotLocallyConnectedClosed : P.mandelbrotLocallyConnected
  hyperbolicComponentsDenseClosed : P.hyperbolicComponentsDense

theorem mandelbrot_set_closed_from_evidence (P : MandelbrotSetPackage)
    (E : MandelbrotSetEvidence P) : MandelbrotSetClosed P := by
  exact And.intro E.mandelbrotSetCompactClosed
    (And.intro E.mandelbrotSetConnectedClosed
      (And.intro E.mandelbrotLocallyConnectedClosed E.hyperbolicComponentsDenseClosed))

end FractalsCanonicalLaneLean
end HautevilleHouse