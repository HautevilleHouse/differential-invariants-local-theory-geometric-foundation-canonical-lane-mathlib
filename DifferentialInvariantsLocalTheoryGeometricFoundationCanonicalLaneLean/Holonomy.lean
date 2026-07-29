import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialInvariantsLocalTheoryGeometricFoundationCanonicalLaneLean

structure HolonomyPackage where
  manifold : Type u
  connection : Type v
  holonomyGroup : Type w
  restrictedHolonomyGroup : Type x
  ambroiseSingerTheorem : Prop
  holonomyInvariant : Prop
  reductionPossible : Prop
  ambroiseSingerTheoremClosed : ambroiseSingerTheorem
  holonomyInvariantClosed : holonomyInvariant
  reductionPossibleClosed : reductionPossible

structure HolonomyEvidence (H : HolonomyPackage) where
  ambroiseSingerTheoremClosed : H.ambroiseSingerTheorem
  holonomyInvariantClosed : H.holonomyInvariant
  reductionPossibleClosed : H.reductionPossible

def HolonomyClosed (H : HolonomyPackage) : Prop :=
  H.ambroiseSingerTheorem ∧ H.holonomyInvariant ∧ H.reductionPossible

theorem holonomy_closed_from_evidence
    (H : HolonomyPackage) (E : HolonomyEvidence H) : HolonomyClosed H := by
  exact And.intro E.ambroiseSingerTheoremClosed
    (And.intro E.holonomyInvariantClosed E.reductionPossibleClosed)

end DifferentialInvariantsLocalTheoryGeometricFoundationCanonicalLaneLean
end HautevilleHouse