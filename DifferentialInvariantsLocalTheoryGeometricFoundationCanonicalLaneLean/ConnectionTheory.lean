import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialInvariantsLocalTheoryGeometricFoundationCanonicalLaneLean

structure ConnectionPackage where
  principalBundle : Type u
  baseManifold : Type v
  connectionForm : Type w
  curvatureForm : Type x
  bianchiIdentity : Prop
  parallelTransportHolonomy : Prop
  flatnessCondition : Prop
  connectionSmooth : Prop
  curvatureSmooth : Prop
  bianchiIdentityClosed : bianchiIdentity
  parallelTransportHolonomyClosed : parallelTransportHolonomy
  flatnessConditionClosed : flatnessCondition
  connectionSmoothClosed : connectionSmooth
  curvatureSmoothClosed : curvatureSmooth

structure ConnectionEvidence (C : ConnectionPackage) where
  bianchiIdentityClosed : C.bianchiIdentity
  parallelTransportHolonomyClosed : C.parallelTransportHolonomy
  flatnessConditionClosed : C.flatnessCondition
  connectionSmoothClosed : C.connectionSmooth
  curvatureSmoothClosed : C.curvatureSmooth

def ConnectionClosed (C : ConnectionPackage) : Prop :=
  C.bianchiIdentity ∧ C.parallelTransportHolonomy ∧ C.flatnessCondition ∧
  C.connectionSmooth ∧ C.curvatureSmooth

theorem connection_closed_from_evidence
    (C : ConnectionPackage) (E : ConnectionEvidence C) : ConnectionClosed C := by
  exact And.intro E.bianchiIdentityClosed
    (And.intro E.parallelTransportHolonomyClosed
      (And.intro E.flatnessConditionClosed
        (And.intro E.connectionSmoothClosed E.curvatureSmoothClosed)))

end DifferentialInvariantsLocalTheoryGeometricFoundationCanonicalLaneLean
end HautevilleHouse