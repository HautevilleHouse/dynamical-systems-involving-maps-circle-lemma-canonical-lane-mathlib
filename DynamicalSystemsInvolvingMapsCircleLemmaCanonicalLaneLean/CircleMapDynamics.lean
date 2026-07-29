import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsCircleLemmaCanonicalLaneLean

structure CircleMapPackage where
  circleCarrier : Type u
  topology : TopologicalSpace circleCarrier
  continuousMap : ContinuousMap circleCarrier circleCarrier
  degree : Int
  liftToReal : ContMap ℝ ℝ
  periodicPoints : Prop
  rotationNumber : Prop

structure CircleMapEvidence (M : CircleMapPackage) where
  periodicPointsClosed : M.periodicPoints
  rotationNumberClosed : M.rotationNumber

def CircleMapClosed (M : CircleMapPackage) : Prop :=
  M.periodicPoints ∧ M.rotationNumber

theorem circle_map_closed_from_evidence (M : CircleMapPackage) (E : CircleMapEvidence M) :
    CircleMapClosed M := by
  exact And.intro E.periodicPointsClosed E.rotationNumberClosed

end DynamicalSystemsInvolvingMapsCircleLemmaCanonicalLaneLean
end HautevilleHouse
