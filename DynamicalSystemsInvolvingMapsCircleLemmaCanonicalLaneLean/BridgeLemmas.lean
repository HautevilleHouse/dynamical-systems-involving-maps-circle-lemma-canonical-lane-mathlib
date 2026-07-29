import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsCircleLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.endpointSatisfied

end DynamicalSystemsInvolvingMapsCircleLemmaCanonicalLaneLean
end HautevilleHouse
