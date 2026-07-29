import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialInvariantsLocalTheoryGeometricFoundationCanonicalLaneLean

structure JetBundlePackage where
  baseDimension : Nat
  fiberDimension : Nat
  jetOrder : Nat
  localCoordinates : Prop
  jetSpaceSmooth : Prop

structure JetBundleEvidence (J : JetBundlePackage) where
  localCoordinatesClosed : J.localCoordinates
  jetSpaceSmoothClosed : J.jetSpaceSmooth

def JetBundleClosed (J : JetBundlePackage) : Prop :=
  J.localCoordinates ∧ J.jetSpaceSmooth

theorem jet_bundle_closed_from_evidence (J : JetBundlePackage) (E : JetBundleEvidence J) :
    JetBundleClosed J := by
  exact And.intro E.localCoordinatesClosed E.jetSpaceSmoothClosed

structure DifferentialInvariantObject where
  jetBundle : JetBundlePackage
  groupAction : Prop
  invariantFunctions : Prop
  infinitesimalGenerators : Prop
  operationAlgClosed : Prop
  conclusion : invariantFunctions

end DifferentialInvariantsLocalTheoryGeometricFoundationCanonicalLaneLean
end HautevilleHouse
