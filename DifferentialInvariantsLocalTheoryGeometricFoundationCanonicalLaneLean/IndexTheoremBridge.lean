import DifferentialInvariantsLocalTheoryGeometricFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialInvariantsLocalTheoryGeometricFoundationCanonicalLaneLean

structure IndexTheoremPackage where
  ellipticComplex : Type u
  analyticIndex : Type v
  topologicalIndex : Type w
  indexFormula : Prop
  integerIndex : Prop
  indexHomotopyInvariant : Prop
  chernCharacter : Prop
  toddClass : Prop

structure IndexTheoremEvidence (I : IndexTheoremPackage) where
  indexFormulaClosed : I.indexFormula
  integerIndexClosed : I.integerIndex
  indexHomotopyInvariantClosed : I.indexHomotopyInvariant
  chernCharacterClosed : I.chernCharacter
  toddClassClosed : I.toddClass

def IndexTheoremClosed (I : IndexTheoremPackage) : Prop :=
  I.indexFormula ∧ I.integerIndex ∧ I.indexHomotopyInvariant ∧ I.chernCharacter ∧ I.toddClass

theorem index_theorem_closed_from_evidence (I : IndexTheoremPackage) (E : IndexTheoremEvidence I) : IndexTheoremClosed I := by
  exact And.intro E.indexFormulaClosed (And.intro E.integerIndexClosed (And.intro E.indexHomotopyInvariantClosed (And.intro E.chernCharacterClosed E.toddClassClosed)))

end DifferentialInvariantsLocalTheoryGeometricFoundationCanonicalLaneLean
end HautevilleHouse