import DifferentialInvariantsLocalTheoryGeometricFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialInvariantsLocalTheoryGeometricFoundationCanonicalLaneLean

structure LocalSymmetryPackage where
  killingVectorField : Type u
  conformalKillingField : Type v
  isometryGroupAction : Type w
  symmetryAlgebra : Type x
  localSymmetryDetected : Prop
  symmetryClassification : Prop
  invariantUnderFlow : Prop
  metricCompatibility : Prop

structure LocalSymmetryEvidence (L : LocalSymmetryPackage) where
  localSymmetryDetectedClosed : L.localSymmetryDetected
  symmetryClassificationClosed : L.symmetryClassification
  invariantUnderFlowClosed : L.invariantUnderFlow
  metricCompatibilityClosed : L.metricCompatibility

def LocalSymmetryClosed (L : LocalSymmetryPackage) : Prop :=
  L.localSymmetryDetected ∧ L.symmetryClassification ∧ L.invariantUnderFlow ∧ L.metricCompatibility

theorem local_symmetry_closed_from_evidence (L : LocalSymmetryPackage) (E : LocalSymmetryEvidence L) : LocalSymmetryClosed L := by
  exact And.intro E.localSymmetryDetectedClosed (And.intro E.symmetryClassificationClosed (And.intro E.invariantUnderFlowClosed E.metricCompatibilityClosed))

end DifferentialInvariantsLocalTheoryGeometricFoundationCanonicalLaneLean
end HautevilleHouse