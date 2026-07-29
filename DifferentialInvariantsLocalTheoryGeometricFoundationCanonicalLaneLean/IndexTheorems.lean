import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialInvariantsLocalTheoryGeometricFoundationCanonicalLaneLean

structure IndexTheoremPackage where
  manifold : Type u
  vectorBundle : Type v
  ellipticOperator : Type w
  analyticIndex : Type x
  topologicalIndex : Type y
  indexEquality : Prop
  operatorSmooth : Prop
  analyticIndexClosed : analyticIndex = topologicalIndex
  topologicalIndexComputed : Prop
  indexEqualityClosed : indexEquality
  operatorSmoothClosed : operatorSmooth

structure IndexTheoremEvidence (I : IndexTheoremPackage) where
  analyticIndexClosed : I.analyticIndexClosed
  topologicalIndexComputedClosed : I.topologicalIndexComputed
  indexEqualityClosed : I.indexEquality
  operatorSmoothClosed : I.operatorSmooth

def IndexTheoremClosed (I : IndexTheoremPackage) : Prop :=
  I.analyticIndexClosed ∧ I.topologicalIndexComputed ∧ I.indexEquality ∧ I.operatorSmooth

theorem index_theorem_closed_from_evidence
    (I : IndexTheoremPackage) (E : IndexTheoremEvidence I) : IndexTheoremClosed I := by
  exact And.intro E.analyticIndexClosed
    (And.intro E.topologicalIndexComputedClosed
      (And.intro E.indexEqualityClosed E.operatorSmoothClosed))

end DifferentialInvariantsLocalTheoryGeometricFoundationCanonicalLaneLean
end HautevilleHouse