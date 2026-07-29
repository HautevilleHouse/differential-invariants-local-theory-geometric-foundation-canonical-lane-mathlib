import HautevilleHouse.DifferentialInvariantsLocalTheoryGeometricFoundationCanonicalLaneLean.RiemannianCurvature

namespace HautevilleHouse
namespace DifferentialInvariantsLocalTheoryGeometricFoundationCanonicalLaneLean

structure CurvatureInvariantsPackage (G : RiemannianCurvaturePackage) where
  riemannTensorSymmetries : Prop
  bianchiIdentities : Prop
  ricciContractionLaw : Prop
  scalarTraceLaw : Prop
  curvatureEvolutionInputs : Prop

structure CurvatureInvariantsEvidence {G : RiemannianCurvaturePackage} (C : CurvatureInvariantsPackage G) where
  riemannTensorSymmetriesClosed : C.riemannTensorSymmetries
  bianchiIdentitiesClosed : C.bianchiIdentities
  ricciContractionLawClosed : C.ricciContractionLaw
  scalarTraceLawClosed : C.scalarTraceLaw
  curvatureEvolutionInputsClosed : C.curvatureEvolutionInputs

def CurvatureInvariantsClosed {G : RiemannianCurvaturePackage} (C : CurvatureInvariantsPackage G) : Prop :=
  C.riemannTensorSymmetries ∧ C.bianchiIdentities ∧ C.ricciContractionLaw ∧ C.scalarTraceLaw ∧ C.curvatureEvolutionInputs

theorem curvature_invariants_closed_from_evidence
    {G : RiemannianCurvaturePackage} (C : CurvatureInvariantsPackage G) (E : CurvatureInvariantsEvidence C) :
    CurvatureInvariantsClosed C := by
  exact And.intro E.riemannTensorSymmetriesClosed
    (And.intro E.bianchiIdentitiesClosed
      (And.intro E.ricciContractionLawClosed
        (And.intro E.scalarTraceLawClosed E.curvatureEvolutionInputsClosed)))

end DifferentialInvariantsLocalTheoryGeometricFoundationCanonicalLaneLean
end HautevilleHouse