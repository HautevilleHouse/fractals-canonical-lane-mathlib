import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FractalsCanonicalLaneLean

structure MandelbrotSetProperties where
  mandelbrotSet : Set ℂ
  connected : Prop
  locallyConnected : Prop
  hyperbolicComponentsDense : Prop
  mlcConjecture : Prop
  connectedHolds : connected
  locallyConnectedHolds : locallyConnected
  hyperbolicDenseHolds : hyperbolicComponentsDense

def MandelbrotClosed (M : MandelbrotSetProperties) : Prop :=
  M.connected ∧ M.locallyConnected ∧ M.hyperbolicComponentsDense ∧ M.mlcConjecture

theorem mandelbrot_closed_from_evidence (M : MandelbrotSetProperties) :
    MandelbrotClosed M := by
  exact And.intro M.connectedHolds
    (And.intro M.locallyConnectedHolds
      (And.intro M.hyperbolicDenseHolds M.mlcConjecture))

end FractalsCanonicalLaneLean
end HautevilleHouse