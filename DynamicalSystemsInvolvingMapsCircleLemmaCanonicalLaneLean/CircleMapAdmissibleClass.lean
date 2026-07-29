import canonicalLaneMathlib.AdmissibleClass
import DynamicalSystemsInvolvingMapsCircleLemmaCanonicalLaneLean.CircleMapPreliminaries

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsCircleLemmaCanonicalLaneLean

structure AdmissibleCircleSystem where
  object : CircleMap
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

structure ConstrainedCircleClosure (A : AdmissibleCircleSystem) : Prop where
  bridgeClosed : bridgeClosed A
  gateClosed : gateClosed A

end DynamicalSystemsInvolvingMapsCircleLemmaCanonicalLaneLean
end HautevilleHouse