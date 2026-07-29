import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialInvariantsLocalTheoryGeometricFoundationCanonicalLaneLean

structure LocalInvariantsClassificationPackage where
  invariantType : Type u
  invariantRank : Nat
  classificationComplete : Prop
  normalFormExists : Prop
  classificationCompleteTerm : classificationComplete
  normalFormExistsTerm : normalFormExists

structure LocalInvariantsClassificationEvidence (C : LocalInvariantsClassificationPackage) where
  classificationCompleteClosed : C.classificationComplete
  normalFormExistsClosed : C.normalFormExists

def LocalInvariantsClassificationClosed (C : LocalInvariantsClassificationPackage) : Prop :=
  C.classificationComplete ∧ C.normalFormExists

theorem local_invariants_classification_closed_from_evidence
    (C : LocalInvariantsClassificationPackage)
    (E : LocalInvariantsClassificationEvidence C) : LocalInvariantsClassificationClosed C :=
  And.intro E.classificationCompleteClosed E.normalFormExistsClosed

end DifferentialInvariantsLocalTheoryGeometricFoundationCanonicalLaneLean
end HautevilleHouse