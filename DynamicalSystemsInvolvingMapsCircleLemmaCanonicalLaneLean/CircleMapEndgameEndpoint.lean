import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsCircleLemmaCanonicalLaneLean

structure CircleMapEndgamePackage where
  topologicalFullClassification : Prop
  divergenceTypeClassified : Prop
  finalRotationSetAttained : Prop
  circleMapLemmaProven : Prop

structure CircleMapEndgameEvidence (C : CircleMapEndgamePackage) where
  topologicalFullClassificationClosed : C.topologicalFullClassification
  divergenceTypeClassifiedClosed : C.divergenceTypeClassified
  finalRotationSetAttainedClosed : C.finalRotationSetAttained
  circleMapLemmaProvenClosed : C.circleMapLemmaProven

def CircleMapEndgameClosed (C : CircleMapEndgamePackage) : Prop :=
  C.topologicalFullClassification ∧ C.divergenceTypeClassified ∧
  C.finalRotationSetAttained ∧ C.circleMapLemmaProven

theorem circle_map_endgame_closed_from_evidence (C : CircleMapEndgamePackage)
    (E : CircleMapEndgameEvidence C) : CircleMapEndgameClosed C := by
  exact And.intro E.topologicalFullClassificationClosed
    (And.intro E.divergenceTypeClassifiedClosed
      (And.intro E.finalRotationSetAttainedClosed E.circleMapLemmaProvenClosed))

end DynamicalSystemsInvolvingMapsCircleLemmaCanonicalLaneLean
end HautevilleHouse