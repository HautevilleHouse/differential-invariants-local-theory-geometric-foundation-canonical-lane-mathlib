import HautevilleHouse.DifferentialInvariantsLocalTheoryGeometricFoundationCanonicalLaneLean.AdmissibleClass
import HautevilleHouse.DifferentialInvariantsLocalTheoryGeometricFoundationCanonicalLaneLean.RiemannianCurvature

namespace HautevilleHouse
namespace DifferentialInvariantsLocalTheoryGeometricFoundationCanonicalLaneLean

structure LocalInvariantStructure (G : RiemannianCurvaturePackage) where
  jetBundleOrder : Nat
  invariantPolynomial : Type u
  invariantMap : Type v
  invariantCondition : Prop
  invariantConditionTerm : invariantCondition

def LocalInvariantClosed {G : RiemannianCurvaturePackage} (L : LocalInvariantStructure G) : Prop :=
  L.invariantCondition

theorem local_invariant_closed_holds {G : RiemannianCurvaturePackage} (L : LocalInvariantStructure G) :
    LocalInvariantClosed L := by
  exact L.invariantConditionTerm

end DifferentialInvariantsLocalTheoryGeometricFoundationCanonicalLaneLean
end HautevilleHouse