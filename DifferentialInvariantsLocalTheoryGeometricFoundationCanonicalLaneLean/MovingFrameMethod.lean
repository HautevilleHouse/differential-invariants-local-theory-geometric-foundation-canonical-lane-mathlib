import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialInvariantsLocalTheoryGeometricFoundationCanonicalLaneLean

structure MovingFramePackage where
  bundleAdapted : Type u
  coframe : Type v
  structureEquations : Prop
  normalizationConditions : Prop
  recurrenceFormulas : Prop

structure MovingFrameEvidence (M : MovingFramePackage) where
  structureEquationsClosed : M.structureEquations
  normalizationConditionsClosed : M.normalizationConditions
  recurrenceFormulasClosed : M.recurrenceFormulas

def MovingFrameClosed (M : MovingFramePackage) : Prop :=
  M.structureEquations ∧ M.normalizationConditions ∧ M.recurrenceFormulas

theorem moving_frame_closed_from_evidence
    (M : MovingFramePackage) (E : MovingFrameEvidence M) :
    MovingFrameClosed M := by
  exact And.intro E.structureEquationsClosed
    (And.intro E.normalizationConditionsClosed E.recurrenceFormulasClosed)

end DifferentialInvariantsLocalTheoryGeometricFoundationCanonicalLaneLean
end HautevilleHouse