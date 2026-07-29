import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialInvariantsLocalTheoryGeometricFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  DifferentialInvariantWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DifferentialInvariantsLocalTheoryGeometricFoundationCanonicalLaneLean
end HautevilleHouse