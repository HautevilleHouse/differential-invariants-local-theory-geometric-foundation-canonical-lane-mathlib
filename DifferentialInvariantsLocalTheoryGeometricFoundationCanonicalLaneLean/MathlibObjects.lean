import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialInvariantsLocalTheoryGeometricFoundationCanonicalLaneLean

structure DifferentialInvariantSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  smoothStructure : ContDiffOn ⊤

structure DifferentialInvariantAdmittedObject where
  space : DifferentialInvariantSpace
  localCurvatureInvariant : Prop
  connectionFlatnessCondition : Prop
  indexTheoremApplicable : Prop
  conclusion : localCurvatureInvariant ∧ connectionFlatnessCondition ∧ indexTheoremApplicable

structure DifferentialInvariantEndgameState where
  object : DifferentialInvariantAdmittedObject

def DifferentialInvariantWitnessClosed (O : DifferentialInvariantAdmittedObject) : Prop :=
  O.conclusion

end DifferentialInvariantsLocalTheoryGeometricFoundationCanonicalLaneLean
end HautevilleHouse