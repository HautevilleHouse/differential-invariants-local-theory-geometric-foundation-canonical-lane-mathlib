import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialInvariantsLocalTheoryGeometricFoundationCanonicalLaneLean

structure CurvatureInvariantPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  metric : Type v
  riemannCurvatureTensor : Type w
  ricciTensor : Type x
  scalarCurvature : Type y
  smoothManifold : Prop
  metricSmooth : Prop
  riemannTensorLawful : Prop
  ricciTensorContractedFromRiemann : Prop
  scalarCurvatureTraceOfRicci : Prop

structure CurvatureInvariantEvidence (G : CurvatureInvariantPackage) where
  smoothManifoldClosed : G.smoothManifold
  metricSmoothClosed : G.metricSmooth
  riemannTensorLawfulClosed : G.riemannTensorLawful
  ricciTensorContractedFromRiemannClosed : G.ricciTensorContractedFromRiemann
  scalarCurvatureTraceOfRicciClosed : G.scalarCurvatureTraceOfRicci

def CurvatureInvariantClosed (G : CurvatureInvariantPackage) : Prop :=
  G.smoothManifold ∧
  G.metricSmooth ∧
  G.riemannTensorLawful ∧
  G.ricciTensorContractedFromRiemann ∧
  G.scalarCurvatureTraceOfRicci

theorem curvature_invariant_closed_from_evidence
    (G : CurvatureInvariantPackage) (E : CurvatureInvariantEvidence G) :
    CurvatureInvariantClosed G := by
  exact And.intro E.smoothManifoldClosed
    (And.intro E.metricSmoothClosed
      (And.intro E.riemannTensorLawfulClosed
        (And.intro E.ricciTensorContractedFromRiemannClosed
          E.scalarCurvatureTraceOfRicciClosed)))

end DifferentialInvariantsLocalTheoryGeometricFoundationCanonicalLaneLean
end HautevilleHouse