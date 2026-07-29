import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialInvariantsLocalTheoryGeometricFoundationCanonicalLaneLean

structure DifferentialInvariantPackage where
  invariantType : Type u
  jetProlongation : Type v
  contactStructure : Prop
  symmetryGroup : Type w
  generatingSet : Type x
  invariantCondition : Prop
  differentialRank : Nat
  independenceCondition : Prop

structure DifferentialInvariantEvidence (P : DifferentialInvariantPackage) where
  contactStructureClosed : P.contactStructure
  invariantConditionClosed : P.invariantCondition
  independenceConditionClosed : P.independenceCondition

def DifferentialInvariantClosed (P : DifferentialInvariantPackage) : Prop :=
  P.contactStructure ∧ P.invariantCondition ∧ P.independenceCondition

theorem differential_invariant_closed_from_evidence 
    (P : DifferentialInvariantPackage) (E : DifferentialInvariantEvidence P) :
    DifferentialInvariantClosed P := by
  exact And.intro E.contactStructureClosed
    (And.intro E.invariantConditionClosed E.independenceConditionClosed)

end DifferentialInvariantsLocalTheoryGeometricFoundationCanonicalLaneLean
end HautevilleHouse