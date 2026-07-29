import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialInvariantsLocalTheoryGeometricFoundationCanonicalLaneLean

structure MovingFramePackage {J : JetBundlePackage} (inv : DifferentialInvariantObject) where
  frameSections : Type
  normalizationEquations : Prop
  orthonormalFrame : Prop
  invariantsConstructed : Prop

structure MovingFrameEvidence {J : JetBundlePackage} {inv : DifferentialInvariantObject}
    (M : MovingFramePackage inv) where
  normalizationEquationsClosed : M.normalizationEquations
  orthonormalFrameClosed : M.orthonormalFrame
  invariantsConstructedClosed : M.invariantsConstructed

def MovingFrameClosed {J : JetBundlePackage} {inv : DifferentialInvariantObject}
    (M : MovingFramePackage inv) : Prop :=
  M.normalizationEquations ∧ M.orthonormalFrame ∧ M.invariantsConstructed

theorem moving_frame_closed_from_evidence {J : JetBundlePackage} {inv : DifferentialInvariantObject}
    (M : MovingFramePackage inv) (E : MovingFrameEvidence M) :
    MovingFrameClosed M := by
  exact And.intro E.normalizationEquationsClosed
    (And.intro E.orthonormalFrameClosed E.invariantsConstructedClosed)

end DifferentialInvariantsLocalTheoryGeometricFoundationCanonicalLaneLean
end HautevilleHouse
