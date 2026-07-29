import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialInvariantsLocalTheoryGeometricFoundationCanonicalLaneLean

structure SignatureCurvePackage {J : JetBundlePackage} {inv : DifferentialInvariantObject}
    (M : MovingFramePackage inv) where
  curveParam : Type
  invariantMap : Type
  signatureDefined : Prop
  equivalenceUnderGroup : Prop

structure SignatureCurveEvidence {J : JetBundlePackage} {inv : DifferentialInvariantObject}
    {M : MovingFramePackage inv} (S : SignatureCurvePackage M) where
  signatureDefinedClosed : S.signatureDefined
  equivalenceUnderGroupClosed : S.equivalenceUnderGroup

def SignatureCurveClosed {J : JetBundlePackage} {inv : DifferentialInvariantObject}
    {M : MovingFramePackage inv} (S : SignatureCurvePackage M) : Prop :=
  S.signatureDefined ∧ S.equivalenceUnderGroup

theorem signature_curve_closed_from_evidence {J : JetBundlePackage} {inv : DifferentialInvariantObject}
    {M : MovingFramePackage inv} (S : SignatureCurvePackage M)
    (E : SignatureCurveEvidence S) : SignatureCurveClosed S := by
  exact And.intro E.signatureDefinedClosed E.equivalenceUnderGroupClosed

end DifferentialInvariantsLocalTheoryGeometricFoundationCanonicalLaneLean
end HautevilleHouse
