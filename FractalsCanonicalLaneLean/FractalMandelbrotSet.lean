import FractalsCanonicalLaneLean.FractalAdmissibleClass

namespace HautevilleHouse
namespace FractalsCanonicalLaneLean

structure MandelbrotSet where
  parameterPlane : Type
  top : TopologicalSpace parameterPlane
  mandelbrot : Set parameterPlane
  definition : mandelbrot = { c : ℂ | bounded (orbit (λ z => z*z + c) 0) }

def bounded (f : ℕ → ℂ) : Prop := by
  sorry

def orbit (f : ℂ → ℂ) (z0 : ℂ) : ℕ → ℂ := by
  intro n
  induction n with
  | zero => exact z0
  | succ n ih => exact f ih

structure MandelbrotAdmissibleEvidence (M : MandelbrotSet) where
  definitionMatches : M.mandelbrot = { c : ℂ | bounded (orbit (λ z => z*z + c) 0) }
  boundaryFractal : IsFractal (boundary M.mandelbrot)

end FractalsCanonicalLaneLean
end HautevilleHouse