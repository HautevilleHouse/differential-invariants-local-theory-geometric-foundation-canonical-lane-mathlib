import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialInvariantsLocalTheoryGeometricFoundationCanonicalLaneLean

structure CurvatureInvariantPackage {J : JetBundlePackage} {inv : DifferentialInvariantObject}
    (M : MovingFramePackage inv) where
  curvatureTensor : Type
  ricciScalar : Type
  scalarCurvature : Type
  invariantUnderGroup : Prop
  curvatureTensorDefined : curvatureTensor
  ricciScalarDefined : ricciScalar
  scalarCurvatureDefined : scalarCurvature

structure CurvatureInvariantEvidence {J : JetBundlePackage} {inv : DifferentialInvariantObject}
    {M : MovingFramePackage inv} (C : CurvatureInvariantPackage M) where
  invariantUnderGroupClosed : C.invariantUnderGroup

def CurvatureInvariantClosed {J : JetBundlePackage} {inv : DifferentialInvariantObject}
    {M : MovingFramePackage inv} (C : CurvatureInvariantPackage M) : Prop :=
  C.invariantUnderGroup

theorem curvature_invariant_closed_from_evidence {J : JetBundlePackage}
    {inv : DifferentialInvariantObject} {M : MovingFramePackage inv}
    (C : CurvatureInvariantPackage M) (E : CurvatureInvariantEvidence C) :
    CurvatureInvariantClosed C := by
  exact E.invariantUnderGroupClosed

end DifferentialInvariantsLocalTheoryGeometricFoundationCanonicalLaneLean
end HautevilleHouse
