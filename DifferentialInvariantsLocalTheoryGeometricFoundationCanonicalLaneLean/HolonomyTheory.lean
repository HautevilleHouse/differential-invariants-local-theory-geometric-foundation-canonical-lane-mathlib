import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialInvariantsLocalTheoryGeometricFoundationCanonicalLaneLean

structure HolonomyTheoryPackage where
  holonomyGroup : Type u
  reducedHolonomy : Type v
  holonomyClassified : Prop
  ambroiseSingerTheorem : Prop
  holonomyClassifiedTerm : holonomyClassified
  ambroiseSingerTheoremTerm : ambroiseSingerTheorem

structure HolonomyTheoryEvidence (H : HolonomyTheoryPackage) where
  holonomyClassifiedClosed : H.holonomyClassified
  ambroiseSingerTheoremClosed : H.ambroiseSingerTheorem

def HolonomyTheoryClosed (H : HolonomyTheoryPackage) : Prop :=
  H.holonomyClassified ∧ H.ambroiseSingerTheorem

theorem holonomy_theory_closed_from_evidence (H : HolonomyTheoryPackage)
    (E : HolonomyTheoryEvidence H) : HolonomyTheoryClosed H :=
  And.intro E.holonomyClassifiedClosed E.ambroiseSingerTheoremClosed

end DifferentialInvariantsLocalTheoryGeometricFoundationCanonicalLaneLean
end HautevilleHouse