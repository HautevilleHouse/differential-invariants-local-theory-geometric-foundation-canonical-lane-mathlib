import DifferentialInvariantsLocalTheoryGeometricFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialInvariantsLocalTheoryGeometricFoundationCanonicalLaneLean

structure HolonomyPackage where
  holonomyGroup : Type u
  restrictedHolonomy : Type v
  ambroiseSinger : Prop
  holonomyInvariant : Prop
  reduction : Prop
  holonomyCurvatureRelation : Prop
  parallelTransportHolonomy : Prop
  loopSpace : Prop

structure HolonomyEvidence (H : HolonomyPackage) where
  ambroiseSingerClosed : H.ambroiseSinger
  holonomyInvariantClosed : H.holonomyInvariant
  reductionClosed : H.reduction
  holonomyCurvatureRelationClosed : H.holonomyCurvatureRelation
  parallelTransportHolonomyClosed : H.parallelTransportHolonomy

def HolonomyClosed (H : HolonomyPackage) : Prop :=
  H.ambroiseSinger ∧ H.holonomyInvariant ∧ H.reduction ∧ H.holonomyCurvatureRelation ∧ H.parallelTransportHolonomy

theorem holonomy_closed_from_evidence (H : HolonomyPackage) (E : HolonomyEvidence H) : HolonomyClosed H := by
  exact And.intro E.ambroiseSingerClosed (And.intro E.holonomyInvariantClosed (And.intro E.reductionClosed (And.intro E.holonomyCurvatureRelationClosed E.parallelTransportHolonomyClosed)))

end DifferentialInvariantsLocalTheoryGeometricFoundationCanonicalLaneLean
end HautevilleHouse