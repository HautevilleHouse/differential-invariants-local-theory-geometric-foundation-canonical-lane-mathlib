import DifferentialInvariantsLocalTheoryGeometricFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialInvariantsLocalTheoryGeometricFoundationCanonicalLaneLean

structure MovingFramePackage where
  framing : Type u
  structureGroup : Type v
  solderingForm : Type w
  connectionMatrix : Type x
  curvatureMatrix : Type y
  torsionMatrix : Type z
  maurerCartanStructure : Prop
  invarianceProperties : Prop
  differentialInvariantSystem : Prop

structure MovingFrameEvidence (M : MovingFramePackage) where
  maurerCartanStructureClosed : M.maurerCartanStructure
  invariancePropertiesClosed : M.invarianceProperties
  differentialInvariantSystemClosed : M.differentialInvariantSystem

def MovingFrameClosed (M : MovingFramePackage) : Prop :=
  M.maurerCartanStructure ∧ M.invarianceProperties ∧ M.differentialInvariantSystem

theorem moving_frame_closed_from_evidence (M : MovingFramePackage) (E : MovingFrameEvidence M) : MovingFrameClosed M := by
  exact And.intro E.maurerCartanStructureClosed (And.intro E.invariancePropertiesClosed E.differentialInvariantSystemClosed)

end DifferentialInvariantsLocalTheoryGeometricFoundationCanonicalLaneLean
end HautevilleHouse