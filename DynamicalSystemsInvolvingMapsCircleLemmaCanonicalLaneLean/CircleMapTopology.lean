import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsCircleLemmaCanonicalLaneLean

structure CircleMapTopologyPackage where
  circle : Type u
  circleTopology : TopologicalSpace circle
  rotationNumber : Type v
  liftToRealLine : Type w
  circleHomeomorphism : Prop
  degreeOneContinuousMaps : Prop
  liftToRealLineExists : Prop
  rotationNumberDefined : Prop

structure CircleMapTopologyEvidence (T : CircleMapTopologyPackage) where
  circleHomeomorphismClosed : T.circleHomeomorphism
  degreeOneContinuousMapsClosed : T.degreeOneContinuousMaps
  liftToRealLineExistsClosed : T.liftToRealLineExists
  rotationNumberDefinedClosed : T.rotationNumberDefined

def CircleMapTopologyClosed (T : CircleMapTopologyPackage) : Prop :=
  T.circleHomeomorphism ∧ T.degreeOneContinuousMaps ∧ T.liftToRealLineExists ∧ T.rotationNumberDefined

theorem circle_map_topology_closed_from_evidence (T : CircleMapTopologyPackage)
    (E : CircleMapTopologyEvidence T) : CircleMapTopologyClosed T := by
  exact And.intro E.circleHomeomorphismClosed
    (And.intro E.degreeOneContinuousMapsClosed
      (And.intro E.liftToRealLineExistsClosed E.rotationNumberDefinedClosed))

end DynamicalSystemsInvolvingMapsCircleLemmaCanonicalLaneLean
end HautevilleHouse