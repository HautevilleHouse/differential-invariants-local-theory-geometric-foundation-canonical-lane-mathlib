import HautevilleHouse.DifferentialInvariantsLocalTheoryGeometricFoundationCanonicalLaneLean.HolonomyInvariants

namespace HautevilleHouse
namespace DifferentialInvariantsLocalTheoryGeometricFoundationCanonicalLaneLean

structure IndexTheoremPackage {G : RiemannianCurvaturePackage} {C : CurvatureInvariantsPackage G} {H : HolonomyInvariantsPackage C} where
  manifoldCompacted : Prop
  ellipticComplex : Prop
  analyticIndex : Prop
  topologicalIndex : Prop
  indexEquality : Prop

structure IndexTheoremEvidence {G : RiemannianCurvaturePackage} {C : CurvatureInvariantsPackage G} {H : HolonomyInvariantsPackage C} (I : IndexTheoremPackage G C H) where
  manifoldCompactedClosed : I.manifoldCompacted
  ellipticComplexClosed : I.ellipticComplex
  analyticIndexClosed : I.analyticIndex
  topologicalIndexClosed : I.topologicalIndex
  indexEqualityClosed : I.indexEquality

def IndexTheoremClosed {G : RiemannianCurvaturePackage} {C : CurvatureInvariantsPackage G} {H : HolonomyInvariantsPackage C} (I : IndexTheoremPackage G C H) : Prop :=
  I.manifoldCompacted ∧ I.ellipticComplex ∧ I.analyticIndex ∧ I.topologicalIndex ∧ I.indexEquality

theorem index_theorem_closed_from_evidence
    {G : RiemannianCurvaturePackage} {C : CurvatureInvariantsPackage G} {H : HolonomyInvariantsPackage C} (I : IndexTheoremPackage G C H) (E : IndexTheoremEvidence I) :
    IndexTheoremClosed I := by
  exact And.intro E.manifoldCompactedClosed
    (And.intro E.ellipticComplexClosed
      (And.intro E.analyticIndexClosed
        (And.intro E.topologicalIndexClosed E.indexEqualityClosed)))

end DifferentialInvariantsLocalTheoryGeometricFoundationCanonicalLaneLean
end HautevilleHouse