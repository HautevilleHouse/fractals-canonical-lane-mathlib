import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FractalsCanonicalLaneLean

structure MandelbrotConvergencePackage where
  quadraticMap : ℂ → ℂ
  iterationLimit : ℕ
  boundednessTest : ℂ → Prop
  orbitStart : ℂ
  orbitLength : ℕ
  boundedUpToLimit : ℂ → Prop

structure MandelbrotConvergenceEvidence (M : MandelbrotConvergencePackage) where
  boundedUpToLimitClosed : M.boundedUpToLimit M.orbitStart

def MandelbrotConvergenceClosed (M : MandelbrotConvergencePackage) : Prop :=
  M.boundedUpToLimit M.orbitStart

theorem mandelbrot_convergence_closed_from_evidence
    (M : MandelbrotConvergencePackage)
    (E : MandelbrotConvergenceEvidence M) : MandelbrotConvergenceClosed M :=
  E.boundedUpToLimitClosed

end FractalsCanonicalLaneLean
end HautevilleHouse