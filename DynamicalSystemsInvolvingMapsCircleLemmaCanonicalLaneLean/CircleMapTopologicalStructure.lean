import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsCircleLemmaCanonicalLaneLean

structure CircleMapTopologicalStructure where
  circleCarrier : Type u
  circleTopology : TopologicalSpace circleCarrier
  rotationNumber : circleCarrier → ℝ
  orientationPreserving : Prop
  liftToUniversalCoverExists : Prop

structure CircleMapTopologicalEvidence (C : CircleMapTopologicalStructure) where
  rotationNumberContinuous : Continuous C.rotationNumber
  orientationPreservingClosed : C.orientationPreserving
  liftToUniversalCoverExistsClosed : C.liftToUniversalCoverExists

def CircleMapTopologicalClosed (C : CircleMapTopologicalStructure) : Prop :=
  Continuous C.rotationNumber ∧ C.orientationPreserving ∧ C.liftToUniversalCoverExists

theorem circle_map_topological_closed_from_evidence (C : CircleMapTopologicalStructure)
    (E : CircleMapTopologicalEvidence C) : CircleMapTopologicalClosed C := by
  exact And.intro E.rotationNumberContinuous
    (And.intro E.orientationPreservingClosed E.liftToUniversalCoverExistsClosed)

end DynamicalSystemsInvolvingMapsCircleLemmaCanonicalLaneLean
end HautevilleHouse