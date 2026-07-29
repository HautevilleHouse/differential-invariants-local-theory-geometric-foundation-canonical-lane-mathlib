import HautevilleHouse.DifferentialInvariantsLocalTheoryGeometricFoundationCanonicalLaneLean.CurvatureInvariants

namespace HautevilleHouse
namespace DifferentialInvariantsLocalTheoryGeometricFoundationCanonicalLaneLean

structure HolonomyInvariantsPackage {G : RiemannianCurvaturePackage} (C : CurvatureInvariantsPackage G) where
  holonomyGroup : Type u
  holonomyRepresentation : Type v
  curvatureHolonomyRelation : Prop
  invarianceUnderParallelTransport : Prop

structure HolonomyInvariantsEvidence {G : RiemannianCurvaturePackage} {C : CurvatureInvariantsPackage G} (H : HolonomyInvariantsPackage C) where
  curvatureHolonomyRelationClosed : H.curvatureHolonomyRelation
  invarianceUnderParallelTransportClosed : H.invarianceUnderParallelTransport

def HolonomyInvariantsClosed {G : RiemannianCurvaturePackage} {C : CurvatureInvariantsPackage G} (H : HolonomyInvariantsPackage C) : Prop :=
  H.curvatureHolonomyRelation ∧ H.invarianceUnderParallelTransport

theorem holonomy_invariants_closed_from_evidence
    {G : RiemannianCurvaturePackage} {C : CurvatureInvariantsPackage G} (H : HolonomyInvariantsPackage C) (E : HolonomyInvariantsEvidence H) :
    HolonomyInvariantsClosed H := by
  exact And.intro E.curvatureHolonomyRelationClosed E.invarianceUnderParallelTransportClosed

end DifferentialInvariantsLocalTheoryGeometricFoundationCanonicalLaneLean
end HautevilleHouse